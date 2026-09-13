"""Emit a whole book as hand-editable Typst.

The successor to the old to_typst.py, which wrote a content fragment full of
serialised run dictionaries for a generated wrapper to include. This writes the complete
book - front matter and all - as markup a person can read and extend, and once
it has run the file is the source of truth and this script is not involved again.

Escaping happens here, at import time, rather than at render time. That is what
retires the dictionary API: text out of a PDF is hostile, so the sigils are
escaped as the file is written, and thereafter the file is trusted because a
person owns it.

Layout decisions - two-column, shared pages, run-in chart labels - were carried
over from the script it replaced rather than rewritten, so an imported book
paginates exactly as the generated one did.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT))
sys.path.insert(0, str(ROOT / "extract"))

import emit  # noqa: E402

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

BS = chr(92)

# Every character Typst reads as markup.
SPECIAL = set(BS + "#[]*_$<>@~" + chr(96))

# --- carried over from the generator this script replaced -------------------
# The layout decisions have to stay exactly as they were or a re-import would
# repaginate a book that has not changed.

def lit(text: str) -> str:
    return '"' + text.replace("\\", "\\\\").replace('"', '\\"') + '"'


def arr(items: list[str]) -> str:
    """A Typst array. Single-element arrays need the trailing comma or they are
    parsed as a parenthesised expression."""
    if not items:
        return "()"
    if len(items) == 1:
        return f"({items[0]},)"
    return "(" + ", ".join(items) + ")"

def has_statblock(blocks: list[dict]) -> bool:
    return any(b["type"] == "statblock" for b in blocks)


def text_length(blocks: list[dict]) -> int:
    total = 0
    for block in blocks:
        kind = block["type"]
        if kind == "para":
            total += len(block["text"])
        elif kind == "field":
            total += len(block["value"])
        elif kind == "namecost":
            total += len(block["name"])
        elif kind == "list":
            total += sum(
                len(it["text"]) + sum(len(s["text"]) for s in it["sub"])
                for it in block["items"]
            )
    return total


# One column of a full A4 page holds roughly this much prose. Below it a
# two-column setting leaves the second column stranded empty, which reads as a
# layout fault rather than a choice.

# One column of a full A4 page holds roughly this much prose. Below it a
# two-column setting leaves the second column stranded empty, which reads as a
# layout fault rather than a choice.
TWO_COLUMN_MIN = 3000


def two_column(blocks: list[dict]) -> bool:
    """Decided per entry rather than per chapter, because every entry now starts
    its own page and so has a full page of column height to fill or waste."""
    return not has_statblock(blocks) and text_length(blocks) >= TWO_COLUMN_MIN

# A stat line plus a handful of fields comes to a couple of hundred characters.
# The ceiling is a safety margin as much as a threshold: a compact entry is set
# unbreakable, and content taller than a page cannot be laid out that way.
COMPACT_MAX = 400


def compact(blocks: list[dict]) -> bool:
    """True for an entry that is only a stat line and fields — nothing to say
    beyond its profile. These share a page instead of each taking one."""
    if not has_statblock(blocks):
        return False
    if {b["type"] for b in blocks} - {"statblock", "field"}:
        return False
    return text_length(blocks) < COMPACT_MAX

STAT_COLUMNS = ["M", "WS", "BS", "S", "T", "W", "I", "A", "Ld", "Points"]
CHARS = ["m", "ws", "bs", "s", "t", "w", "i", "a", "ld", "points"]


def esc(text: str) -> str:
    """Escape what Typst would reinterpret.

    Substitutions markup gets that a string literal never saw. A hyphen between
    letters is left alone - Doom-flayer must stay readable - but one before a
    digit would become MINUS SIGN, and there are 1,123 of those across the
    corpus. Quote curling is handled once in the template, by disabling
    smartquote, because it would otherwise rewrite text the colophon promises is
    reproduced. Neither substitution is visible to the word-bag gate.
    """
    assert "--" not in text, "double hyphen would become a dash: " + repr(text[:60])
    out = "".join(BS + c if c in SPECIAL else c for c in text)
    out = re.sub(r"-(?=[0-9])", BS + "-", out)
    out = out.replace("...", (BS + ".") * 3)
    # A paragraph or list item must not open with something that would become a
    # heading, a nested bullet or an enumeration. Lambda replacements, not
    # replacement strings: a backslash in the latter is itself an escape, so
    # "BS + r'\1'" emits a literal backslash-then-one and Norsca's "- Trample:"
    # came out as "1 Trample:" - which the word gate cannot see, a hyphen being
    # no token.
    out = re.sub(r"^([-+/=])", lambda m: BS + m.group(1), out)
    out = re.sub(r"^([0-9]+)[.]", lambda m: m.group(1) + BS + ".", out)
    return out


EMPH = {"bold": "*", "italic": "_"}
WORDCH = re.compile(r"\w")


def runs_markup(runs: list[dict]) -> str:
    """Inline emphasis as native markup.

    Safe because no emphasised run in the corpus begins or ends mid-word, which
    is asserted rather than assumed: Typst renders `pre*fix*post` with the
    asterisks literal, so a mid-word run would silently print its delimiters.
    """
    out = []
    for i, run in enumerate(runs):
        kind, text = run["emph"], run["text"]
        if not kind:
            out.append(esc(text))
            continue
        prev = runs[i - 1]["text"] if i else ""
        nxt = runs[i + 1]["text"] if i + 1 < len(runs) else ""
        opens = bool(prev[-1:] and WORDCH.match(prev[-1])
                     and text[:1] and WORDCH.match(text[0]))
        closes = bool(nxt[:1] and WORDCH.match(nxt[0])
                      and text[-1:] and WORDCH.match(text[-1]))
        assert not (opens or closes), (
            "emphasis would land mid-word and print its delimiters: "
            + repr(prev[-8:] + "|" + text + "|" + nxt[:8]))
        if kind == "label":
            out.append("#runin[" + esc(text) + "]")
        else:
            mark = EMPH[kind]
            out.append(mark + esc(text) + mark)
    return "".join(out)


def num(value: str) -> str:
    """Bare where it reads as a number, quoted otherwise: a characteristic is not
    always numeric - '-', 'As user' and '2D6' all appear."""
    return value if re.fullmatch(r"-?[0-9]+", value or "") else lit(value or "")


def profile_call(block: dict) -> list[str]:
    rows = []
    for row in block["rows"]:
        values = row["values"]
        pairs = [f"name: {lit(row['name'])}"]
        pairs += [f"{key}: {num(values.get(col, ''))}"
                  for key, col in zip(CHARS, block["columns"])]
        rows.append("  (" + ", ".join(pairs) + "),")
    return ["#profile("] + rows + [")"]


def block_lines(block: dict, neighbours: tuple, figures: str) -> list[str]:
    kind = block["type"]

    if kind == "statblock":
        assert block["columns"] == STAT_COLUMNS, \
            f"unexpected stat columns: {block['columns']}"
        return profile_call(block)

    if kind == "namecost":
        # A bare display-font name touching a chart is one of its axis labels,
        # not a heading for what follows.
        if not block["cost"] and "chart" in neighbours:
            return [f"#chartlabel({lit(block['name'])})"]
        return [f"#namecost({lit(block['name'])}, {lit(block['cost'])})"]

    if kind == "field":
        return [f"#field({lit(block['label'])}, {lit(block['value'])})"]

    if kind == "para":
        body = runs_markup(block["runs"])
        if block.get("style") == "italic":
            return ["", "#note[" + body + "]", ""]
        return ["", body, ""]

    if kind == "list":
        out = [""]
        for item in block["items"]:
            out.append("- " + runs_markup(item["runs"]))
            for sub in item.get("sub", []):
                out.append("  - " + runs_markup(sub["runs"]))
        out.append("")
        return out

    if kind == "minitable":
        cols = block["columns"]
        rows = block.get("rows") or [block["row"]]
        vals = [lit(r.get(c, "")) for r in rows for c in cols]
        return [f"#minitable({arr([lit(c) for c in cols])}, {arr(vals)})"]

    if kind == "chart":
        # Padded to a rectangle: a ragged row would shift every cell after it
        # into the wrong column.
        width = max(len(r) for r in block["rows"])
        rows = [arr([lit(c) for c in r + [""] * (width - len(r))])
                for r in block["rows"]]
        return [f"#chart({arr(rows)})"]

    if kind == "figure":
        return [f"#diagram({lit(figures + '/' + block['file'])}, {block['fraction']})"]

    raise SystemExit(f"to_book: unhandled block type {kind!r}")


def blocks_lines(blocks: list[dict], figures: str) -> list[str]:
    out: list[str] = []
    for i, block in enumerate(blocks):
        near = tuple(blocks[j]["type"] for j in (i - 1, i + 1)
                     if 0 <= j < len(blocks))
        out.extend(block_lines(block, near, figures))
    return out


def wrap(lines: list[str], columns: bool) -> list[str]:
    if not columns:
        return lines
    # A blank line immediately inside the bracket opens a paragraph and pushes
    # the column down, which re-breaks every line after it.
    inner = list(lines)
    while inner and not inner[0].strip():
        inner.pop(0)
    while inner and not inner[-1].strip():
        inner.pop()
    return ["#columns(2)["] + inner + ["]"]


META_KEYS = ("slug", "army", "version", "layout", "cover", "align")


def book_meta(book: dict) -> list[str]:
    out = ["#book-meta("]
    for key in META_KEYS:
        value = book.get(key)
        if value is None or value is False:
            continue
        out.append(f"  {key}: " + ("true" if value is True else lit(str(value))) + ",")
    out.append(")")
    return out


HEAD = [
    "// {army} {version} - re-typeset from the Warhammer Armies Project PDF.",
    "// Imported once by extract/to_book.py; this file is the source of truth",
    "// now, so edit it directly. Nothing regenerates it.",
    "//",
    "// Rules text, army design and points values are Mathias Eliasson's work.",
    "// Only the typesetting differs here - see the colophon below.",
]


def render(data: dict, book: dict) -> str:
    figures = f"/assets/figures/{book['slug']}"
    rules = book.get("layout") == "rules"

    lines = [line.format(army=book["army"], version=book["version"])
             for line in HEAD]
    lines += ["", '#import "template.typ": *', ""]
    lines += book_meta(book)
    lines += ["", emit.front_matter(book).rstrip()]

    for chapter in data["chapters"]:
        lines += ["", f"= {chapter['title']}", ""]
        intro = chapter.get("intro", [])
        if intro:
            body = blocks_lines(intro, figures)
            lines += body if rules else wrap(body, two_column(intro))
        for n, entry in enumerate(chapter["entries"]):
            body = blocks_lines(entry["blocks"], figures)
            lines.append("")
            if rules:
                # The rulebook flows: a section takes a heading at its own depth
                # and nothing claims a page of its own.
                lines.append("=" * entry.get("level", 2) + " " + entry["name"])
                lines += body
                continue
            body = wrap(body, two_column(entry["blocks"]))
            if compact(entry["blocks"]):
                lines += [f"#compact-entry({lit(entry['name'])})["] + body + ["]"]
                continue
            first = ", first: true" if (n == 0 and not intro) else ""
            lines.append(f"#entry({lit(entry['name'])}{first})")
            lines += body

    out: list[str] = []
    for line in lines:
        if not line.strip() and out and not out[-1].strip():
            continue
        out.append(line.rstrip())
    return chr(10).join(out).strip() + chr(10)


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("slug")
    ap.add_argument("--manifest", type=Path, default=ROOT / "build" / "books.json")
    ap.add_argument("-o", "--out", type=Path,
                    help="defaults to src/<id>.typ")
    args = ap.parse_args()

    books = json.loads(args.manifest.read_text(encoding="utf-8"))["books"]
    book = next((b for b in books if b["slug"] == args.slug), None)
    if book is None:
        raise SystemExit(f"to_book: {args.slug} is not in the manifest")
    book = dict(book, id=book["slug"])
    source = ROOT / "build" / f"{args.slug}.json"
    if not source.exists():
        raise SystemExit(f"to_book: {source} does not exist")

    data = json.loads(source.read_text(encoding="utf-8"))
    out = (args.out or ROOT / "src" / f"{book['slug']}.typ").resolve()
    text = render(data, book)
    out.write_text(text, encoding="utf-8", newline=chr(10))
    entries = sum(len(c["entries"]) for c in data["chapters"])
    print(f"wrote {out.relative_to(ROOT) if out.is_relative_to(ROOT) else out}  {len(text.splitlines())} lines, "
          f"{len(data['chapters'])} chapters, {entries} entries")


if __name__ == "__main__":
    main()
