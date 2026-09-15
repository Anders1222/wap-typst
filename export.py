"""Export the corpus as one JSON file for the army builder.

The army builder (Warhammer_Calculator_Edition) reads static JSON. This writes
the whole edition into one file - the rulebook and every army book - so the
builder loads one URL for the system and indexes the factions from it.

Nothing here parses Typst source. Every record in a book - a unit, a magic
item, an upgrade, a spell, a run-in head in a prose chapter - drops a
`<meta>` metadata element as it renders, and `typst eval` returns those with
the headings in document order, with content values serialised as trees. The
template is the schema: add a field to `UNIT_FIELDS` and it is exported;
rename a magic-item category and the export follows. The two chapters that
have no record form - an army's special rules, and the rulebook's prose - are
exported from the chapter body the column code drops, cut at the heads the
way `balanced-columns(whole: true)` cuts it.

Shape, top down:

  system, source            the edition and the commit it was exported from
  rulebook
    rules        {name: text}   every headed rule under SPECIAL RULES
    items        [..]           the common magic items, by category
    lores        [..]           the eight lores, spells with level and cast
    weapons      [..]           WEAPONS & ARMOUR heads with their profile rows
    chapters     [..]           the whole book as a heading tree, for the rest
  factions {slug:
    name, version, align
    rules        [{name, text}]         ARMY SPECIAL RULES
    items        [{category, name, cost, type, only, bound, oneUse, common, text}]
    upgrades     [{chapter, group, name, cost, only, bound, oneUse, text}]
    lores        [{name, spells: [{name, level, cast, text}]}]
    prose        [{chapter, name, text}]  heads of any other prose chapter
    units        [{name, chapter, category, profiles, <fields>..}]
  }

A unit's fields keep the template's vocabulary in camelCase: `unit-size` is
`unitSize`, and a companion `special-rules-body` is `specialRulesBody`. A
field's value says by its type what it is, as it does in the book: a string
is the printed line; a list of {name, text} is named rules; under `options`
a list of option records is priced options, each with the line as printed in
`raw` and the price parsed out of it where the line ends in "+N points[/model]";
a list of strings is a flat bullet list as printed (the lores under MAGIC,
the lines under NOTES). Anything else written as markup arrives as text,
paragraphs on their own lines, a table one row per line with cells divided
by " | ".

    python export.py                       # build/war.json
    python export.py --out path.json
    python export.py --check               # export, then verify against src/ and out/

`--check` is the gate: every unit, item, spell, upgrade and rule head the
source declares is in the file, every string field is byte-identical to the
source, and every word of exported text is a word on the rendered page.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import subprocess
import sys
from collections import Counter
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

ROOT = Path(__file__).parent
TYPST = os.environ.get("TYPST", "typst")

# Everything the export needs from a book, in document order: the headings,
# so a record knows the chapter it is in, and every record's metadata.
PROBE = (
    '(meta: query(<book-meta>).first().value, '
    'events: query(selector.or(heading.where(outlined: true), <meta>)).map(it => '
    'if it.func() == heading { (kind: "heading", level: it.level, body: it.body) } '
    'else { it.value }))'
)


def read_book(path: Path) -> dict:
    out = subprocess.run(
        [TYPST, "eval", PROBE, "--in", str(path), "--root", str(ROOT)],
        capture_output=True, text=True, encoding="utf-8", cwd=ROOT)
    if out.returncode != 0:
        raise SystemExit(f"export: could not read {path.name}:\n{out.stderr.strip()}")
    return json.loads(out.stdout)


# --- content trees to text ----------------------------------------------------

# Elements that carry no words a reader of the data wants: page furniture,
# pictures, the dotted leader of an option line, a floated diagram.
SKIP = {"pagebreak", "colbreak", "v", "h", "image", "place", "repeat", "line",
        "hline", "vline", "counter", "context", "hide", "outline", "entry"}

# Records whose head and text stand inside a prose body as well as in their own
# metadata. The walker drops them from the prose - the record is the source -
# up to the paragraph break that ends the record.
RECORDS = {"magic-item", "upgrade", "spell"}


class Walker:
    """Turn a serialised content tree into blocks.

    A block is one of:
      ("p", text)
      ("list", [item, ..])        item = {"text": str, "sub": [item, ..]}
      ("table", [[cell, ..], ..])  first row is the header
      ("head", name, cost)        a `namecost` head
      ("heading", level, text)
    """

    def __init__(self) -> None:
        self.out: list[tuple] = []
        self.cur: list[str] = []
        self.list_open = False
        self.suppress = False

    # -- inline -------------------------------------------------------------

    def inline(self, s: str) -> None:
        if not self.suppress:
            self.cur.append(s)

    def flush(self) -> None:
        text = clean("".join(self.cur))
        self.cur = []
        if text:
            self.out.append(("p", text))
            self.list_open = False

    def push(self, block: tuple) -> None:
        self.flush()
        if not self.suppress:
            self.out.append(block)
            self.list_open = False

    # -- walk ---------------------------------------------------------------

    def walk(self, node) -> None:
        if node is None:
            return
        if isinstance(node, str):
            self.inline(node)
            return
        if isinstance(node, list):
            for n in node:
                self.walk(n)
            return
        if not isinstance(node, dict):
            self.inline(str(node))
            return
        f = node.get("func")
        if f in SKIP:
            return
        if f == "text" and "text" in node:
            self.inline(node["text"])
        elif f == "space":
            self.inline(" ")
        elif f == "linebreak":
            self.inline("\n")
        elif f == "parbreak":
            self.flush()
            self.suppress = False
        elif f == "smartquote":
            self.inline('"' if node.get("double", True) else "'")
        elif f in ("symbol", "raw"):
            self.inline(node.get("text", ""))
        elif f == "sequence":
            for c in node.get("children", []):
                self.walk(c)
        elif f == "styled":
            self.walk(node.get("child"))
        elif f == "item":
            self.item(node)
        elif f == "block":
            self.block(node)
        elif f == "metadata":
            self.meta(node.get("value"))
        elif f == "heading":
            level = node.get("level", node.get("depth", 1))
            self.push(("heading", level, text_of(node.get("body"))))
        elif f == "table":
            self.table(node)
        elif f == "grid":
            self.flush()
            cells = [text_of(c) for c in node.get("children", [])]
            self.inline(" ".join(c for c in cells if c))
        elif "body" in node:
            self.walk(node["body"])
        elif "children" in node:
            for c in node["children"]:
                self.walk(c)
        elif "text" in node:
            self.inline(node["text"])

    def item(self, node: dict) -> None:
        self.flush()
        if self.suppress:
            return
        inner = Walker()
        inner.walk(node.get("body"))
        inner.flush()
        text = "\n".join(b[1] for b in inner.out if b[0] == "p")
        sub = [it for b in inner.out if b[0] == "list" for it in b[1]]
        item = {"text": text, "sub": sub}
        if self.list_open and self.out and self.out[-1][0] == "list":
            self.out[-1][1].append(item)
        else:
            self.out.append(("list", [item]))
            self.list_open = True

    def block(self, node: dict) -> None:
        self.flush()
        if node.get("sticky"):
            head = find_meta(node, "head")
            if head is not None:
                self.push(("head", head["name"], head["cost"]))
                return
        self.walk(node.get("body"))
        self.flush()

    def meta(self, value) -> None:
        if not isinstance(value, dict):
            return
        kind = value.get("kind")
        if kind in RECORDS:
            # The record's head and text follow, to the paragraph break; the
            # record itself arrives as its own event.
            self.flush()
            self.suppress = True

    def table(self, node: dict) -> None:
        self.flush()
        # A cell is one text however many lines it wraps to.
        cell = lambda x: " ".join(text_of(x).split())
        cells: list[str] = []
        for c in node.get("children", []):
            f = c.get("func")
            if f in ("hline", "vline"):
                continue
            if f == "header":
                cells.extend(cell(x) for x in c.get("children", []))
            else:
                cells.append(cell(c))
        ncols = len(node.get("columns", [])) or 1
        rows = [cells[i:i + ncols] for i in range(0, len(cells), ncols)]
        self.push(("table", rows))


def find_meta(node, kind: str):
    """The first metadata value of `kind` anywhere under a node."""
    if isinstance(node, dict):
        if node.get("func") == "metadata":
            v = node.get("value")
            if isinstance(v, dict) and v.get("kind") == kind:
                return v
        for k in ("body", "child", "children"):
            if k in node:
                found = find_meta(node[k], kind)
                if found is not None:
                    return found
    elif isinstance(node, list):
        for n in node:
            found = find_meta(n, kind)
            if found is not None:
                return found
    return None


def clean(s: str) -> str:
    """Collapse the whitespace markup leaves, keep the line breaks it means."""
    s = s.replace("­", "")
    lines = [re.sub(r"[ \t]+", " ", ln).strip() for ln in s.split("\n")]
    return "\n".join(lines).strip()


def blocks_of(node) -> list[tuple]:
    w = Walker()
    w.walk(node)
    w.flush()
    return w.out


def text_of(node) -> str:
    """A content tree as one string, paragraphs and list items on lines."""
    if node is None:
        return ""
    if isinstance(node, str):
        return node
    return render(blocks_of(node))


def render_items(items: list[dict], depth: int = 0) -> list[str]:
    lines = []
    for it in items:
        bullet = "• " if depth == 0 else "- "
        lines.append("  " * depth + bullet + it["text"])
        lines.extend(render_items(it["sub"], depth + 1))
    return lines


def render(blocks: list[tuple]) -> str:
    """Blocks as the text a description field holds."""
    parts = []
    for b in blocks:
        if b[0] == "p":
            parts.append(b[1])
        elif b[0] == "list":
            parts.append("\n".join(render_items(b[1])))
        elif b[0] == "table":
            # One line per row, cells divided by a bar, as the page reads it.
            parts.append("\n".join(" | ".join(r) for r in b[1]))
        elif b[0] == "head":
            parts.append(b[1] + (f" ({b[2]})" if b[2] else ""))
        elif b[0] == "heading":
            parts.append(b[2])
    return "\n".join(p for p in parts if p)


# --- options ------------------------------------------------------------------

# "+5 points", "+1 point/model", "+0.5 point/model", "+2 points per model".
COST = re.compile(
    r"\s*\+\s*(?P<n>\d+(?:\.\d+)?)\s*(?:points?|pts)"
    r"(?P<per>\s*/\s*model|\s+per\s+model)?\s*\.?\s*$", re.I)
LIMIT = re.compile(r"(?:up to|worth up to|of up to)\s+(\d+)\s*points", re.I)


def number(s: str) -> int | float:
    return float(s) if "." in s else int(s)


def option_of(text: str, cost: str | None = None, sub: list | None = None) -> dict:
    """One option line as data, the printed line kept in `raw`."""
    raw = text if cost is None else f"{text} {cost}".strip()
    opt: dict = {"raw": raw}
    m = COST.search(raw)
    if m:
        opt["text"] = raw[:m.start()].rstrip(" .")
        opt["cost"] = number(m.group("n"))
        opt["perModel"] = bool(m.group("per"))
    else:
        opt["text"] = raw
        lim = LIMIT.search(raw)
        if lim:
            opt["limit"] = int(lim.group(1))
    if sub:
        opt["sub"] = sub
    return opt


def options_from_items(items: list[dict]) -> list[dict]:
    return [option_of(it["text"], sub=options_from_items(it["sub"])) for it in items]


def options_from_records(records: list[dict]) -> list[dict]:
    out = []
    for r in records:
        if r.get("kind") == "opt":
            out.append(option_of(r["desc"], r["cost"]))
        else:
            out.append(option_of(r["head"], r.get("cost"),
                                 sub=options_from_records(r["subs"])))
    return out


# --- units --------------------------------------------------------------------

def camel(key: str) -> str:
    head, *rest = key.split("-")
    return head + "".join(w.capitalize() for w in rest)


def field_value(key: str, value):
    """A unit field's value, by the type it was written in."""
    if isinstance(value, str):
        return value
    if isinstance(value, list):
        if value and isinstance(value[0], dict) and value[0].get("kind") == "rule":
            return [{"name": r["name"], "text": text_of(r["body"])} for r in value]
        if value and isinstance(value[0], dict) and value[0].get("kind") in ("opt", "group"):
            return options_from_records(value)
        return [field_value(key, v) for v in value]
    if isinstance(value, dict) and "func" in value:
        blocks = blocks_of(value)
        if blocks and all(b[0] == "list" for b in blocks):
            items = [it for b in blocks for it in b[1]]
            # OPTIONS written as a markup list, which 953 entries are: priced
            # lines. Any other field that is only a flat list - the lores a
            # wizard may use under MAGIC, the lines under NOTES - is its items.
            if key in ("options", "options-body"):
                return options_from_items(items)
            if all(not it["sub"] and "\n" not in it["text"] for it in items):
                return [it["text"] for it in items]
        return render(blocks)
    return value


STAT_KEYS = {"m": "M", "ws": "WS", "bs": "BS", "s": "S", "t": "T", "w": "W",
             "i": "I", "a": "A", "ld": "Ld", "points": "points"}

SETTINGS = ("first", "compact", "solo", "order", "labels", "profiles")


def profile_row(row: dict) -> dict:
    out = {"name": row["name"]}
    for k, label in STAT_KEYS.items():
        v = row.get(k)
        out[label] = None if v == "" else v
    return out


def category_of(chapter: str) -> str:
    """The army-list section a chapter title names, or the title itself."""
    c = chapter.upper()
    for suffix, cat in (("SPECIAL CHARACTERS", "Special Characters"),
                        ("CHARACTER MOUNTS", "Mounts"),
                        ("CHARACTERS", "Characters"),
                        ("LORDS", "Lords"), ("HEROES", "Heroes"),
                        ("CORE UNITS", "Core"), ("SPECIAL UNITS", "Special"),
                        ("RARE UNITS", "Rare")):
        if c.endswith(suffix):
            return cat
    return chapter.title()


def build_unit(ev: dict, chapter: str) -> dict:
    args = ev["args"]
    unit: dict = {"name": ev["name"], "chapter": chapter,
                  "category": category_of(chapter)}
    if "subtitle" in args:
        unit["subtitle"] = args["subtitle"]
    for flag in ("solo", "compact"):
        if args.get(flag):
            unit[flag] = True
    unit["profiles"] = [profile_row(r) for r in args.get("profiles", [])]
    for key, value in args.items():
        if key in SETTINGS or key == "subtitle":
            continue
        unit[camel(key)] = field_value(key, value)
    return unit


# --- books --------------------------------------------------------------------

def item_of(ev: dict, chapter: str) -> dict:
    return {"category": ev["category"], "name": ev["name"], "cost": ev["cost"],
            "type": ev.get("type"), "only": ev.get("only"),
            "bound": ev.get("bound"), "oneUse": ev.get("one-use", False),
            "common": ev.get("common", False), "chapter": chapter,
            "text": text_of(ev.get("body"))}


def spell_of(ev: dict) -> dict:
    return {"name": ev["name"], "level": ev["level"], "cast": ev.get("cast"),
            "text": text_of(ev.get("body"))}


def upgrade_of(ev: dict, chapter: str, group: str | None) -> dict:
    return {"chapter": chapter, "group": group, "name": ev["name"],
            "cost": ev["cost"], "only": ev.get("only"), "bound": ev.get("bound"),
            "oneUse": ev.get("one-use", False), "text": text_of(ev.get("body"))}


def heads_of(blocks: list[tuple]) -> tuple[str, list[dict]]:
    """A prose chapter cut at its heads: the intro, then (name, text) records."""
    intro: list[tuple] = []
    records: list[dict] = []
    for b in blocks:
        if b[0] in ("head", "heading"):
            name = b[1] if b[0] == "head" else b[2]
            records.append({"name": name, "blocks": []})
            if b[0] == "head" and b[2]:
                records[-1]["cost"] = b[2]
        elif records:
            records[-1]["blocks"].append(b)
        else:
            intro.append(b)
    out = []
    for r in records:
        rec = {"name": r["name"], "text": render(r["blocks"])}
        if "cost" in r:
            rec["cost"] = r["cost"]
        tables = [b[1] for b in r["blocks"] if b[0] == "table"]
        if tables:
            rec["tables"] = tables
        out.append(rec)
    return render(intro), out


def is_lore(title: str) -> bool:
    return "LORE" in title.upper()


def build_faction(book: dict) -> dict:
    meta = book["meta"]
    fac: dict = {"name": meta["army"], "version": meta["version"],
                 "align": meta.get("align"), "rules": [], "items": [],
                 "upgrades": [], "lores": [], "prose": [], "units": []}
    chapter = ""
    section: str | None = None
    lore: dict | None = None
    for ev in book["events"]:
        kind = ev.get("kind")
        if kind == "heading":
            text = text_of(ev["body"])
            if ev["level"] == 1:
                chapter, section, lore = text, None, None
                if is_lore(text):
                    lore = {"name": text, "spells": []}
                    fac["lores"].append(lore)
            elif ev["level"] == 2:
                section = text
        elif kind == "unit":
            # The credits are set as entries so they share the page grammar;
            # they are not units.
            if chapter.upper() != "CREDITS":
                fac["units"].append(build_unit(ev, chapter))
        elif kind == "magic-item":
            fac["items"].append(item_of(ev, chapter))
        elif kind == "upgrade":
            fac["upgrades"].append(upgrade_of(ev, chapter, section))
        elif kind == "spell":
            if lore is None:
                lore = {"name": chapter, "spells": []}
                fac["lores"].append(lore)
            lore["spells"].append(spell_of(ev))
        elif kind == "prose":
            intro, records = heads_of(blocks_of(ev["body"]))
            if chapter.upper() == "ARMY SPECIAL RULES":
                fac["rules"].extend(records)
            else:
                for r in records:
                    fac["prose"].append({"chapter": chapter, **r})
    return fac


def build_rulebook(book: dict) -> dict:
    """The rulebook as a heading tree, with the parts the builder wants lifted out."""
    meta = book["meta"]
    chapters: list[dict] = []
    stack: list[dict] = []
    items: list[dict] = []
    lores: list[dict] = []
    seen_headings: list[str] = []   # headings a prose body already placed
    lore: dict | None = None

    def open_node(level: int, title: str) -> None:
        nonlocal stack
        node = {"title": title, "level": level, "text": "", "heads": [], "children": []}
        while stack and stack[-1]["level"] >= level:
            stack.pop()
        (stack[-1]["children"] if stack else chapters).append(node)
        stack.append(node)

    for ev in book["events"]:
        kind = ev.get("kind")
        if kind == "heading":
            text = text_of(ev["body"])
            # A heading inside a two-columns body was placed by the prose walk
            # already; the realised element is the same heading a second time.
            if seen_headings and seen_headings[0] == text:
                seen_headings.pop(0)
            else:
                open_node(ev["level"], text)
            if ev["level"] == 1:
                lore = {"name": text, "spells": []} if is_lore(text) else None
                if lore:
                    lores.append(lore)
        elif kind == "prose":
            blocks = blocks_of(ev["body"])
            pending: list[tuple] = []
            for b in blocks:
                if b[0] == "heading":
                    open_node(b[1], b[2])
                    seen_headings.append(b[2])
                    if b[1] == 1:
                        lore = {"name": b[2], "spells": []} if is_lore(b[2]) else None
                        if lore:
                            lores.append(lore)
                elif b[0] == "head":
                    if stack:
                        stack[-1]["heads"].append({"name": b[1], "cost": b[2],
                                                   "blocks": []})
                elif stack:
                    node = stack[-1]
                    if node["heads"]:
                        node["heads"][-1]["blocks"].append(b)
                    else:
                        node["text"] = "\n".join(t for t in (node["text"], render([b])) if t)
                else:
                    pending.append(b)
        elif kind == "magic-item":
            items.append(item_of(ev, stack[0]["title"] if stack else ""))
        elif kind == "spell":
            if lore is None:
                lore = {"name": stack[-1]["title"] if stack else "", "spells": []}
                lores.append(lore)
            lore["spells"].append(spell_of(ev))

    def finish(node: dict) -> None:
        heads = []
        for h in node["heads"]:
            rec = {"name": h["name"], "text": render(h["blocks"])}
            if h["cost"]:
                rec["cost"] = h["cost"]
            tables = [b[1] for b in h["blocks"] if b[0] == "table"]
            if tables:
                rec["tables"] = tables
            heads.append(rec)
        node["heads"] = heads
        for c in node["children"]:
            finish(c)

    for c in chapters:
        finish(c)

    def find(title: str) -> dict | None:
        return next((c for c in chapters if c["title"].upper() == title), None)

    # Every headed rule under SPECIAL RULES, whatever its depth: the chapter's
    # own level-3 heads and those under DEPLOYMENT / FORMATION SPECIAL RULES.
    rules: dict[str, str] = {}

    def collect(node: dict, depth: int) -> None:
        if depth >= 3 and node["level"] >= 3:
            rules[node["title"]] = "\n".join(
                t for t in ([node["text"]] + [h["name"] + "\n" + h["text"] for h in node["heads"]]
                            + [c["title"] + "\n" + c["text"] for c in node["children"]]) if t)
        for c in node["children"]:
            collect(c, c["level"])

    special = find("SPECIAL RULES")
    if special:
        for c in special["children"]:
            collect(c, c["level"])
        for h in special["heads"]:
            rules[h["name"]] = h["text"]

    weapons: list[dict] = []
    arms = find("WEAPONS & ARMOUR")
    if arms:
        def lift(node: dict, section: str) -> None:
            for h in node["heads"]:
                weapons.append({"section": section, **h})
            for c in node["children"]:
                lift(c, c["title"])
        lift(arms, arms["title"])

    return {"name": meta["army"], "version": meta["version"], "rules": rules,
            "items": items, "lores": lores, "weapons": weapons,
            "chapters": chapters}


# --- assembly -----------------------------------------------------------------

def git_head() -> str | None:
    try:
        out = subprocess.run(["git", "rev-parse", "HEAD"], capture_output=True,
                             text=True, cwd=ROOT)
        return out.stdout.strip() or None
    except OSError:
        return None


def export() -> tuple[dict, dict[str, dict]]:
    """The export, and the raw probe of each book by slug, for the gate."""
    paths = sorted(p for p in ROOT.glob("src/*.typ") if p.name != "template.typ")
    with ThreadPoolExecutor() as pool:
        books = list(pool.map(read_book, paths))
    data: dict = {"system": "war", "source": git_head(), "rulebook": None,
                  "factions": {}}
    raw: dict[str, dict] = {}
    for path, book in zip(paths, books):
        meta = book["meta"]
        raw[meta["slug"]] = book
        if meta["layout"] == "rules":
            data["rulebook"] = build_rulebook(book)
            data["version"] = meta["version"]
        else:
            data["factions"][meta["slug"]] = build_faction(book)
    if data["rulebook"] is None:
        raise SystemExit("export: no book declares layout: \"rules\"")
    return data, raw


# --- the gate -----------------------------------------------------------------

def unescape(typst_src: str) -> str:
    """Typst string-literal escapes undone, so a field can be found in the source."""
    return typst_src.replace('\\"', '"').replace("\\\\", "\\")


def words(text: str) -> list[str]:
    return re.findall(r"[a-z]+", text.lower())


def texts_of(value) -> list[str]:
    """Every string anywhere in a JSON value.

    A record's `tables` restate its `text` cell by cell, so they are skipped:
    the text is checked, and a lone cell has no row to say it is one.
    """
    if isinstance(value, str):
        return [value]
    if isinstance(value, dict):
        return [t for k, v in value.items() if k != "tables" for t in texts_of(v)]
    if isinstance(value, list):
        return [t for v in value for t in texts_of(v)]
    return []


def letters(text: str) -> str:
    return re.sub(r"[^a-z]", "", text.lower())


class Page:
    """What the rendered book says, two ways.

    `stream` is every letter in order and nothing else, as render_text.py
    reads a book: blind to spacing, hyphenation, folios and punctuation, so a
    line of exported text is on the page if its letters are a run of it.
    `words` is for lines too short for a run to mean much. A soft hyphen
    before a line break is a break the layout put in, and the halves are one
    word; a hard hyphen before one is either that or a compound the source
    wrote ("non-physical"), which the text cannot tell apart, so both
    readings count.
    """

    def __init__(self, pdf: Path) -> None:
        import pymupdf
        doc = pymupdf.open(pdf)
        text = "\n".join(page.get_text("text") for page in doc)
        text = text.replace("­\n", "").replace("­", "")
        joined = re.sub(r"(\w)-\n(\w)", r"\1\2", text)
        self.stream = letters(text)
        self.words = set(words(text)) | set(words(joined))

    def has(self, line: str, cell: bool = False) -> bool:
        run = letters(line)
        if len(run) >= 12 and not cell:
            return run in self.stream
        # Short lines, and table cells: a cell of prose beside another is
        # read by the PDF a line of each in turn, so its run is broken though
        # every word is there.
        return all(w in self.words or (len(w) >= 6 and w in self.stream)
                   for w in words(line))


def count_src(src: str, pattern: str) -> int:
    return len(re.findall(pattern, src, re.M))


def rules_heads_in_src(src: str) -> int:
    """The heads under ARMY SPECIAL RULES, to the chapter that follows it."""
    m = re.search(r"^= ARMY SPECIAL RULES\n(.*?)"
                  r"(?=^= |^#lore\(|^#upgrade-chapter\(|^#magic-item-chapter)",
                  src, re.S | re.M)
    return count_src(m.group(1), r'^#namecost\(') if m else 0


def rulebook_rules_in_src(src: str) -> int:
    m = re.search(r"^= SPECIAL RULES\n(.*?)(?=^= )", src, re.S | re.M)
    return count_src(m.group(1), r'^=== ') if m else 0


TEXT_PARTS = ("rules", "items", "upgrades", "lores", "prose", "units",
              "weapons", "chapters")


def check(data: dict, raw: dict[str, dict]) -> int:
    """Verify the export against the source and the render. Returns failures."""
    failures = 0

    def fail(msg: str) -> None:
        nonlocal failures
        failures += 1
        print("  FAIL " + msg)

    slugs = sorted(data["factions"])
    print(f"{len(slugs)} factions, rulebook {data['rulebook']['version']}")
    totals = Counter()
    unresolved: Counter = Counter()
    rulebook_rules = {k.casefold() for k in data["rulebook"]["rules"]}

    for slug in slugs + ["rulebook"]:
        src_path = ROOT / "src" / f"{slug}.typ"
        src = src_path.read_text(encoding="utf-8")
        book = data["rulebook"] if slug == "rulebook" else data["factions"][slug]

        # 1. Every record the source declares is in the file.
        want = {
            "units": count_src(src.split("\n= CREDITS\n")[0], r'^#unit\('),
            "items": count_src(src, r'^#(?:magic-weapon|magic-armour|talisman|arcane-item|enchanted-item|magic-standard)\('),
            "spells": count_src(src, r'^#spell\('),
            "upgrades": count_src(src, r'^#upgrade\('),
            "rules": rules_heads_in_src(src),
        }
        got = {
            "units": len(book.get("units", [])),
            "items": len(book["items"]),
            "spells": sum(len(l["spells"]) for l in book["lores"]),
            "upgrades": len(book.get("upgrades", [])),
            "rules": len(book["rules"]),
        }
        if slug == "rulebook":
            want["rules"] = rulebook_rules_in_src(src)
            for k in ("units", "upgrades"):
                want.pop(k); got.pop(k)
        for k in want:
            totals[k] += got[k]
            if want[k] != got[k]:
                fail(f"{slug}: {k} source {want[k]} exported {got[k]}")

        # 2. Every field written as a string is byte-identical to the source,
        # and every profile row is the row the source wrote.
        plain = unescape(src)
        units = [e for e in raw[slug]["events"] if e.get("kind") == "unit"]
        for ev, unit in zip(units, book.get("units", []), strict=False):
            if ev["name"] != unit["name"]:
                fail(f"{slug}: unit order differs at {ev['name']!r} / {unit['name']!r}")
            for key, value in ev["args"].items():
                if isinstance(value, str) and key not in SETTINGS:
                    if value not in plain:
                        fail(f"{slug}: {unit['name']} {key} not in source: {value[:60]!r}")
                    out = unit.get("subtitle") if key == "subtitle" else unit.get(camel(key))
                    if out != value:
                        fail(f"{slug}: {unit['name']} {key} exported as {out!r}")
            if [profile_row(r) for r in ev["args"].get("profiles", [])] != unit["profiles"]:
                fail(f"{slug}: {unit['name']} profiles differ from source")
            for row in unit["profiles"]:
                if row["name"] not in plain:
                    fail(f"{slug}: profile row {row['name']!r} not in source")

        # 3. Every line of exported text is on the rendered page.
        pdf = ROOT / "out" / f"{slug}.pdf"
        if pdf.exists():
            page = Page(pdf)
            # A table's row is tested a cell at a time: a cell holding a
            # paragraph is read whole by the PDF, but not in step with the
            # cell beside it.
            lines = [(cell, " | " in ln)
                     for t in texts_of({k: book[k] for k in TEXT_PARTS if k in book})
                     for ln in t.split("\n") for cell in ln.split(" | ") if cell.strip()]
            missing = [ln for ln, cell in lines if not page.has(ln, cell)]
            if missing:
                fail(f"{slug}: {len(missing)} of {len(lines)} lines not on the page, e.g. "
                     + "; ".join(repr(ln[:50]) for ln in missing[:3]))
        else:
            print(f"  skip {slug}: no render in out/ to compare text against")

        # 4. Diagnostic: rule names a unit cites that nothing defines.
        if slug != "rulebook":
            defined = rulebook_rules | {r["name"].casefold() for r in book["rules"]}
            for unit in book["units"]:
                own = {r["name"].casefold() for v in unit.values() if isinstance(v, list)
                       for r in v if isinstance(r, dict) and "name" in r}
                for name in cited(unit.get("specialRules", "")):
                    if name.casefold() not in defined | own:
                        unresolved[name] += 1

    print("exported: " + ", ".join(f"{totals[k]} {k}" for k in ("units", "items", "spells", "upgrades", "rules")))
    unparsed = [f"{s}/{u['name']}" for s in slugs for u in data["factions"][s]["units"]
                if isinstance(u.get("options"), str)]
    if unparsed:
        print(f"note: {len(unparsed)} units have OPTIONS that are not a plain list and "
              f"arrive as text: " + ", ".join(unparsed[:6]))
    if unresolved:
        print(f"note: {sum(unresolved.values())} special-rule citations name no defined rule "
              f"({len(unresolved)} distinct); most common: "
              + ", ".join(f"{n} ({c})" for n, c in unresolved.most_common(8)))
    print("check: " + ("ok" if failures == 0 else f"{failures} failures"))
    return failures


def cited(rules: str) -> list[str]:
    """The rule names in a SPECIAL RULES line, the value in brackets dropped."""
    if not isinstance(rules, str):
        return []
    parts = re.split(r",\s*(?![^()]*\))", rules)
    return [re.sub(r"\s*\([^)]*\)", "", p).strip().rstrip(".") for p in parts if p.strip()]


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--out", type=Path, default=ROOT / "build" / "war.json")
    ap.add_argument("--check", action="store_true",
                    help="verify the export against src/ and the renders in out/")
    args = ap.parse_args()

    data, raw = export()
    args.out.parent.mkdir(parents=True, exist_ok=True)
    text = json.dumps(data, ensure_ascii=False, indent=1)
    args.out.write_text(text, encoding="utf-8", newline="\n")
    print(f"wrote {args.out} ({len(text.encode('utf-8')) / 1e6:.1f} MB, "
          f"{len(data['factions'])} factions)")
    if args.check:
        sys.exit(1 if check(data, raw) else 0)


if __name__ == "__main__":
    main()
