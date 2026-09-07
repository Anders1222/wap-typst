"""One-off migration: rewrite unit entries written as a run of primitives
(#entry / #profile / #field / body) into a single #unit(..) record call.

Renders identically by construction, because unit() emits the same primitives
in the same order. The proof is a byte-compare of the PDF, not this script.
"""
import re
import sys
import io

LABEL_TO_KEY = {
    "UNIT SIZE": "unit-size", "TROOP TYPE": "troop-type", "MOUNT": "mount",
    "CREW": "crew", "HANDLER": "handler", "HANDLERS": "handlers",
    "DRAWN BY": "drawn-by", "BASE SIZE": "base-size", "EQUIPMENT": "equipment",
    "MAGIC": "magic", "DAEMONIC GIFTS": "daemonic-gifts",
    "DISCIPLINES OF THE OLD ONES": "disciplines-of-the-old-ones",
    "GIFTS OF THE GODS": "gifts-of-the-gods", "MAGIC ITEMS": "magic-items",
    "GIFTS OF KHAINE": "gifts-of-khaine", "VAMPIRIC POWERS": "vampiric-powers",
    "SPECIAL RULES": "special-rules", "UPGRADES": "upgrades",
    "OPTIONS": "options", "NOTES": "notes",
}
# Labels the source prints irregularly. Reproduced through labels:, not
# corrected: the colophon promises the text as printed, and this is what is
# printed.
IRREGULAR = {"EQIPMENT": "equipment", "UPGRADE": "upgrades", "NOTE": "notes"}
KEY_ORDER = list(LABEL_TO_KEY.values())

DQ = '"'
BS = "\\"


def read_string(s, i):
    """Read a Typst string literal starting at s[i] == quote. Return (raw, next_i)."""
    assert s[i] == DQ
    j = i + 1
    while j < len(s):
        if s[j] == BS:
            j += 2
            continue
        if s[j] == DQ:
            return s[i:j + 1], j + 1
        j += 1
    raise ValueError("unterminated string")


def match_call(s, i):
    """If a call starts at s[i], return (name, argtext, index just past it)."""
    m = re.compile(r'#([a-z-]+)\(').match(s, i)
    if not m:
        return None
    j = m.end()
    depth = 1
    while j < len(s):
        c = s[j]
        if c == DQ:
            _, j = read_string(s, j)
            continue
        if c in "([{":
            depth += 1
        elif c in ")]}":
            depth -= 1
            if depth == 0:
                return m.group(1), s[m.end():j], j + 1
        j += 1
    raise ValueError("unterminated call at %r" % s[i:i + 40])


def match_bracket(s, i):
    """s[i] == '['. Return (inner, index just past the closing bracket)."""
    assert s[i] == "["
    j = i + 1
    depth = 1
    while j < len(s):
        c = s[j]
        if c == DQ:
            _, j = read_string(s, j)
            continue
        if c == "[":
            depth += 1
        elif c == "]":
            depth -= 1
            if depth == 0:
                return s[i + 1:j], j + 1
        j += 1
    raise ValueError("unterminated bracket")


def split_args(t):
    """Split a call's argument text on top-level commas."""
    out, depth, start, i = [], 0, 0, 0
    while i < len(t):
        c = t[i]
        if c == DQ:
            _, i = read_string(t, i)
            continue
        if c in "([{":
            depth += 1
        elif c in ")]}":
            depth -= 1
        elif c == "," and depth == 0:
            out.append(t[start:i])
            start = i + 1
        i += 1
    if t[start:].strip():
        out.append(t[start:])
    return [a.strip() for a in out]


# A line at column 0 that ends the current entry block.
BOUNDARY = re.compile(
    r'^(=+ |#entry\(|#compact-entry\(|#magic-item-chapter\(|#magic-item-section\(|'
    r'#lore\(|#colophon\(|#cover\(|#book-meta\(|#pagebreak)')


def indent_code(text, n):
    """Indent the FIRST line only, for a block of Typst *code* - the arguments of
    an opt(..) call. Indenting such a block wholesale corrupts it: a string
    literal that spans lines carries its own newlines into the rendered text, so
    four spaces added for tidiness are four spaces printed on the page."""
    return (" " * n) + text if text else text


def verbatim(text):
    """Markup goes across untouched. Indentation is not cosmetic in markup: four
    spaces in front of `- *Name:*` nest that bullet under the one above it."""
    return text


def unquote(lit):
    return lit[1:-1]


def parse_entry_body(body):
    """Tokenise an entry body into (profile_rows, seq), where seq holds
    ('field', label_lit, value_lit) and ('content', text) in source order."""
    lines = body.split("\n")
    profiles = None
    seq = []
    buf = []
    i = 0

    def flush():
        text = "\n".join(buf).strip("\n")
        if text.strip():
            seq.append(("content", text))
        del buf[:]

    subtitle = None
    # A run-in line between the name and the profile - "High King of
    # Karaz-a-Karak". Lifted out so the profile behind it can still be hoisted
    # into profiles:, which is what 463 special characters need.
    if lines and lines[0].startswith("#namecost("):
        call = match_call(lines[0], 0)
        if call and call[2] == len(lines[0]):
            a = split_args(call[1])
            if len(a) == 2 and a[1] == '""' and a[0].startswith(DQ):
                subtitle = a[0]
                lines = lines[1:]

    while i < len(lines):
        line = lines[i]
        if (line.startswith("#profile(") and profiles is None and not seq
                and not [b for b in buf if b.strip()]):
            rest = "\n".join(lines[i:])
            call = match_call(rest, 0)
            if call:
                _, args, end = call
                profiles = split_args(args)
                i += rest[:end].count("\n") + 1
                continue
        if line.startswith("#field("):
            call = match_call(line, 0)
            if call and call[2] == len(line):
                a = split_args(call[1])
                if (len(a) == 2 and a[0].startswith(DQ) and a[1].startswith(DQ)
                        and a[0].endswith(DQ) and a[1].endswith(DQ)):
                    flush()
                    seq.append(("field", a[0], a[1]))
                    i += 1
                    continue
        buf.append(line)
        i += 1
    flush()
    return subtitle, profiles, seq


BULLET = re.compile(r'^- \*([^*"]+):\*\s?(.*)$')


def parse_option_block(text):
    """If the block is exactly one #options(..) call, return its argument list."""
    t = text.strip()
    if not t.startswith("#options("):
        return None
    call = match_call(t, 0)
    if not call or t[call[2]:].strip():
        return None
    return split_args(call[1]) or None


def parse_rule_block(text):
    """If the block is nothing but adjacent `- *Name:* body` bullets, return
    [(name, body)]. Anything else stays the markup it already is.

    Strict on purpose. A column-0 paragraph after the list is a sibling of the
    list, not part of the last item, and renders at the full measure; folding it
    into a rule(..) body would indent it. A blank line between two bullets makes
    the list loose, which sets differently again. Both appear in the corpus, and
    neither is a rule record, so both are left alone."""
    lines = [line for line in text.split("\n")]
    while lines and not lines[-1].strip():
        lines.pop()
    if not lines:
        return None
    items = []
    for line in lines:
        m = BULLET.match(line)
        if not m:
            return None
        items.append((m.group(1), m.group(2)))
    return items


def emit_records(entries, pad):
    """Render rule(..) records, one per line, opening out a multi-line body."""
    out = []
    for name, body in entries:
        if "\n" in body:
            out.append('%srule("%s")[\n%s\n%s],'
                       % (pad, name, verbatim(body), pad))
        else:
            out.append('%srule("%s")[%s],' % (pad, name, body))
    return "\n".join(out)


def emit_field(key, value_lit, btext, out):
    """Write one field, preferring records to the markup they were written as."""
    inline = unquote(value_lit)
    if inline != "":
        out.write("  %s: %s,\n" % (key, value_lit))
        target = key + "-body"
    else:
        target = key
    if btext is None:
        if inline == "":
            out.write('  %s: "",\n' % key)
        return
    opts = parse_option_block(btext)
    if opts is not None:
        out.write("  %s: (\n" % target)
        for a in opts:
            out.write("%s,\n" % indent_code(a, 4))
        out.write("  ),\n")
        return
    rules = parse_rule_block(btext)
    if rules is not None:
        out.write("  %s: (\n%s\n  ),\n" % (target, emit_records(rules, "    ")))
        return
    out.write("  %s: [\n%s\n  ],\n" % (target, verbatim(btext)))


def convert_entry(name_lit, first, compact, body, path, problems):
    subtitle, profiles, seq = parse_entry_body(body)
    fields = []   # [key, value_lit, body_text, printed_label_or_None]
    pre = None
    for item in seq:
        if item[0] == "content":
            if not fields:
                pre = item[1] if pre is None else pre + "\n\n" + item[1]
            else:
                f = fields[-1]
                f[2] = item[1] if not f[2] else f[2] + "\n\n" + item[1]
        else:
            _, lab_lit, val_lit = item
            lab = unquote(lab_lit)
            if lab in LABEL_TO_KEY:
                key, printed = LABEL_TO_KEY[lab], None
            elif lab in IRREGULAR:
                key, printed = IRREGULAR[lab], lab
            else:
                problems.append("%s: %s: unknown field label %r"
                                % (path, unquote(name_lit), lab))
                return None
            if any(f[0] == key for f in fields):
                problems.append("%s: %s: field %r set twice"
                                % (path, unquote(name_lit), lab))
                return None
            fields.append([key, val_lit, None, printed])

    if profiles is None and not fields and subtitle is None:
        return None

    keys = [f[0] for f in fields]
    canonical = sorted(keys, key=KEY_ORDER.index)
    overrides = [(f[0], f[3]) for f in fields if f[3]]

    out = io.StringIO()
    out.write("#unit(%s,\n" % name_lit)
    if first:
        out.write("  first: true,\n")
    if compact:
        out.write("  compact: true,\n")
    if subtitle:
        out.write("  subtitle: %s,\n" % subtitle)
    if profiles:
        out.write("  profiles: (\n")
        for p in profiles:
            out.write("    %s,\n" % p)
        out.write("  ),\n")
    if pre:
        out.write("  before: [\n%s\n  ],\n" % verbatim(pre))
    for key, val_lit, btext, _printed in fields:
        emit_field(key, val_lit, btext, out)
    if keys != canonical:
        out.write("  order: (%s),\n" % ", ".join('"%s"' % k for k in keys))
    if overrides:
        out.write("  labels: (%s),\n"
                  % ", ".join('%s: "%s"' % (k, v) for k, v in overrides))
    out.write(")\n")
    return out.getvalue()


def convert_file(path, problems):
    src = open(path, encoding="utf8").read()
    lines = src.split("\n")
    out = []
    i = 0
    converted = 0
    while i < len(lines):
        line = lines[i]
        m = re.match(r'^#(compact-)?entry\("', line)
        if not m:
            out.append(line)
            i += 1
            continue
        compact = bool(m.group(1))
        call = match_call(line, 0)
        if not call:
            out.append(line)
            i += 1
            continue
        _, args, end = call
        a = split_args(args)
        name_lit = a[0]
        first = any(x.replace(" ", "") == "first:true" for x in a[1:])
        rest_of_line = line[end:]

        if compact:
            joined = "\n".join(lines[i:])
            k = end
            while k < len(joined) and joined[k] in " \t":
                k += 1
            if k >= len(joined) or joined[k] != "[":
                out.append(line)
                i += 1
                continue
            inner, after = match_bracket(joined, k)
            body_text = inner.strip("\n")
            nxt = i + joined[:after].count("\n") + 1
        else:
            if rest_of_line.strip():
                out.append(line)
                i += 1
                continue
            j = i + 1
            body = []
            while j < len(lines) and not BOUNDARY.match(lines[j]):
                body.append(lines[j])
                j += 1
            body_text = "\n".join(body).strip("\n")
            nxt = j

        res = convert_entry(name_lit, first, compact, body_text, path, problems)
        if res is None:
            out.append(line)
            out.extend(body_text.split("\n"))
            if compact:
                out.append("]")
            out.append("")
            i = nxt
            continue
        out.append(res.rstrip("\n"))
        out.append("")
        converted += 1
        i = nxt
    text = "\n".join(out)
    text = re.sub(r"\n{3,}", "\n\n", text)
    return text, converted


if __name__ == "__main__":
    problems = []
    total = 0
    for path in sys.argv[1:]:
        text, n = convert_file(path, problems)
        open(path, "w", encoding="utf8", newline="\n").write(text)
        total += n
        print("%s: %d entries" % (path, n))
    print("total %d" % total)
    for p in problems[:40]:
        print("  !", p)
    if len(problems) > 40:
        print("  ... and %d more" % (len(problems) - 40))
