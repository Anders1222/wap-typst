"""Build the landing page and the render list from the books themselves.

src/ is the catalogue. Each book declares what it is in its own `#book-meta`
and counts its own entries, so this reads the books with `typst eval` rather
than a manifest that could fall out of step with them.

Nothing here generates a book: every one is owned by hand and imported once by
extract/to_book.py.
"""

from __future__ import annotations

import argparse
import html
import json
import os
import subprocess
import re
import sys
from pathlib import Path

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

ROOT = Path(__file__).parent


def lit(text: str) -> str:
    return '"' + text.replace("\\", "\\\\").replace('"', '\\"') + '"'


# --- alignment --------------------------------------------------------------

# Read from the rulebook rather than kept here as a second list, so the site
# follows the rules. `cue` matches the sentence introducing each list.
ALIGNMENTS = (
    ("order", "Forces of Order", "forces of order", "Order"),
    ("destruction", "Forces of Destruction", "forces of destruction", "Destruction"),
    ("neutral", "Non-Aligned Forces", "non-aligned", "Non-aligned"),
)

# Two armies are named in that list in a shorter or longer form than the book
# they belong to carries on its cover. Matching is otherwise exact: `Dwarfs` is
# a substring of `Chaos Dwarfs`, so anything looser would misfile an army.
ALIASES = {
    "cathay": "grandcathay",
    "zombiepiratesofthevampirecoast": "zombiepirates",
}


def army_key(name: str) -> str:
    key = re.sub(r"[^a-z]", "", name.casefold().removeprefix("the "))
    return ALIASES.get(key, key)


def read_alignments(rulebook: Path) -> dict[str, str]:
    data = json.loads(rulebook.read_text(encoding="utf-8"))
    entries = [e for c in data["chapters"] for e in c["entries"]
               if e["name"] == "ALLIANCE & ALIGNMENT"]
    if len(entries) != 1:
        raise SystemExit("emit: the rulebook has no ALLIANCE & ALIGNMENT section")

    out: dict[str, str] = {}
    slug = None
    for block in entries[0]["blocks"]:
        if block["type"] == "para":
            lowered = block["text"].casefold()
            slug = next((s for s, _, cue, _ in ALIGNMENTS if cue in lowered), None)
        elif block["type"] == "list" and slug:
            for item in block["items"]:
                out[army_key(item["text"])] = slug
            slug = None
    return out


BASE_COLOPHON = """(
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    {army}*, version {version} — written and freely distributed by Mathias
    Eliasson.
  ],
  [
    All rules text, army design and points values remain the work of their
    author. Only the typesetting differs here; the content is reproduced
    from the freely distributed PDF.
  ],
  [
    Warhammer, Warhammer Fantasy Battle and all associated names, races and
    places are trademarks of Games Workshop Limited. This document is
    unofficial and unaffiliated, and no challenge to their status is intended.
  ],
  [Typeset with Typst. Not for sale.],
)"""

def front_matter(book: dict) -> str:
    """Title, cover, colophon and outline. Shared with the whole-book emitter in
    extract/to_book.py, so the attribution wording has exactly one home."""
    # Root-relative, because `image()` consumes it inside template.typ.
    art = f'"/assets/{book["cover"]}"' if book["cover"] else "none"
    army, version = book["army"], book["version"]
    rules = book.get("layout") == "rules"
    # The rulebook is set in one column, so it takes a wider margin to keep the
    # line length readable, and its outline runs one level deeper.
    side = ", side: 3.1cm" if rules else ""
    depth = 3 if rules else 2

    title = f"Warhammer Armies Revamped — {army} {version}"
    subtitle = f"Warhammer Armies Revamped · {version}"
    colophon = BASE_COLOPHON.format(army=army, version=version)

    return f'''#show: book.with(title: {lit(title)}{side})

#cover(
  title: {lit(army)},
  subtitle: {lit(subtitle)},
  art: {art},
)

#colophon({colophon})

#outline(title: [Contents], depth: {depth})
'''


CARD = """      <li class="book"{data}>
        <a href="{id}.pdf">{thumb}</a>
        <div>
          <h2><a href="{id}.pdf">{army}</a></h2>
          <p>{meta}</p>
        </div>
      </li>"""

HEAD = """      <li class="head" data-align="{align}">
        <h2>{title}</h2><span>{count} books</span>
      </li>"""

# Re-orders and filters the army grid. The page is built grouped and in source
# order, so with this switched off it still reads correctly — which is why the
# controls are revealed here rather than being present in the markup.
SCRIPT = """
const grid = document.getElementById('armies');
const controls = document.getElementById('controls');
const cards = [...grid.querySelectorAll('.book')];
const heads = [...grid.querySelectorAll('.head')];
const alpha = [...cards].sort((a, b) => a.dataset.name.localeCompare(b.dataset.name));
const state = { align: 'all', sort: 'grouped' };

function apply() {
  for (const card of cards) {
    card.hidden = !(state.align === 'all' || card.dataset.align === state.align);
    card.style.order = '';
  }
  // A head is dropped when its group has nothing left to show. Its count follows
  // the filter too, since a band reading "14 books" above four of them is worse
  // than no count at all.
  for (const head of heads) {
    const shown = cards.filter(
      card => !card.hidden && card.dataset.align === head.dataset.align).length;
    head.hidden = state.sort === 'alpha' || shown === 0;
    head.querySelector('span').textContent = shown + (shown === 1 ? ' book' : ' books');
  }
  if (state.sort === 'alpha') alpha.forEach((card, i) => { card.style.order = i + 1; });
}

for (const button of controls.querySelectorAll('button')) {
  button.addEventListener('click', () => {
    state[button.dataset.group] = button.dataset.value;
    for (const sibling of button.parentElement.children) {
      sibling.setAttribute('aria-pressed', String(sibling === button));
    }
    apply();
  });
}
controls.hidden = false;
apply();
"""

BUTTON = ('      <button data-group="{group}" data-value="{value}" '
          'aria-pressed="{pressed}">{label}</button>')

SET = """    <div class="set" role="group" aria-label="{label}">
{buttons}
    </div>"""


def button_set(label: str, group: str, options: list[tuple[str, str]]) -> str:
    buttons = "\n".join(
        BUTTON.format(group=group, value=value, label=html.escape(text),
                      pressed="true" if n == 0 else "false")
        for n, (value, text) in enumerate(options)
    )
    return SET.format(label=label, buttons=buttons)


def controls() -> str:
    sets = [
        button_set("Filter by allegiance", "align",
                   [("all", "All")] + [(s, short) for s, _, _, short in ALIGNMENTS]),
        button_set("Order", "sort", [("grouped", "Grouped"), ("alpha", "A–Z")]),
    ]
    return ('  <div class="controls" id="controls" hidden>\n'
            + "\n".join(sets) + "\n  </div>")


def sort_name(book: dict) -> str:
    """`The Empire` files under E, as it would on a shelf."""
    return book["army"].casefold().removeprefix("the ")


def card(book: dict, align: str | None) -> str:
    """One card is one book."""
    army = html.escape(book["army"])
    # Images are copied without re-encoding, so the extension follows the
    # source rather than being assumed.
    thumb = '<span class="nothumb"></span>'
    if book["cover"]:
        ext = Path(book["cover"]).suffix
        thumb = (f'<img src="{book["slug"]}-cover{ext}" '
                 f'alt="{army} cover" loading="lazy">')
    data = ""
    if align:
        data = (f' data-align="{align}"'
                f' data-name="{html.escape(sort_name(book), quote=True)}"')
    meta = f"Version {book['version']} · {book['entries']} entries"
    return CARD.format(id=book["slug"], army=army, thumb=thumb, data=data,
                       meta=html.escape(meta))


def page(books: list[dict], align: dict[str, str], css: str) -> str:
    rules = [b for b in books if b.get("layout") == "rules"]
    armies = sorted((b for b in books if b.get("layout") != "rules"), key=sort_name)

    # Built grouped and in source order, so the page is correct before the
    # script runs; A–Z is a re-ordering of what is already here.
    rows = []
    for slug, title, _, _ in ALIGNMENTS:
        group = [b for b in armies if align[b["slug"]] == slug]
        rows.append(HEAD.format(align=slug, title=title, count=len(group)))
        rows.extend(card(b, slug) for b in group)

    # The rulebook's entries are sections of prose, not units, so they are not
    # added to a count the line below calls unit entries.
    total = sum(b["entries"] for b in armies)

    core = ""
    if rules:
        core = f"""
  <section id="core">
  <h2 class="section">The Rules</h2>
  <ul class="books core">
{chr(10).join(card(b, None) for b in rules)}
  </ul>
  </section>
"""

    return f"""<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Warhammer Armies Revamped — typeset army books</title>
<style>
{css}</style>
</head>
<body>
<main>
  <h1>Warhammer Armies Revamped</h1>
  <p class="sub">{len(armies)} army books and the core rulebook, {total:,} unit entries, re-typeset with Typst.</p>
{core}
  <h2 class="section">The Armies</h2>
{controls()}
  <ul class="books" id="armies">
{chr(10).join(rows)}
  </ul>

  <hr>

  <footer>
    <p>
      These are unofficial, non-commercial re-typesettings of the
      <strong>Warhammer Armies Project</strong> army books, written and freely
      distributed by Mathias Eliasson. All rules text, army design and points
      values remain the work of their author; only the typesetting differs.
    </p>
    <p>
      Warhammer, Warhammer Fantasy Battle and all associated names, races and
      places are trademarks of Games Workshop Limited. This site is unofficial
      and unaffiliated, and no challenge to their status is intended.
    </p>
    <p>Built from Typst sources. Not for sale.</p>
  </footer>
</main>
<script>
{SCRIPT}</script>
</body>
</html>
"""


# --- reading the books ------------------------------------------------------

TYPST = os.environ.get("TYPST", "typst")

# One query per book, answering both questions the landing page has: what the
# book says it is, and how many entries it holds. Counting headings rather than
# the markers `entry` drops keeps it layout-agnostic - the rulebook's sections
# are headings and drop no marker - and it is the book's own tally either way,
# rather than a number recorded elsewhere and hoped to still be true.
PROBE = ('(meta: query(<book-meta>).first().value, '
         'entries: query(heading).filter(h => h.level >= 2).len())')


def read_book(path: Path) -> dict:
    out = subprocess.run([TYPST, "eval", PROBE, "--in", str(path),
                          "--root", str(ROOT)],
                         capture_output=True, text=True, cwd=ROOT)
    if out.returncode != 0:
        raise SystemExit(f"emit: could not read {path.name}: "
                         f"{out.stderr.strip().splitlines()[:1]}")
    probed = json.loads(out.stdout)
    book = dict(probed["meta"])
    book["entries"] = probed["entries"]
    return book


def read_books() -> list[dict]:
    """Every book in src/.

    src/ is the catalogue now. A book that exists is a book that ships, so there
    is no manifest to fall out of step with what is on disk.
    """
    books = [read_book(path) for path in sorted(ROOT.glob("src/*.typ"))
             if path.name != "template.typ"]
    books.sort(key=lambda b: b["army"].casefold())
    return books


def main() -> None:
    argparse.ArgumentParser(description=__doc__).parse_args()

    books = read_books()

    # Each book declares its own allegiance, baked in when it was imported from
    # the rulebook's Alliance & Alignment lists. Reading it here rather than
    # re-deriving it means the site no longer depends on the rulebook's
    # extraction JSON, which no longer exists.
    valid = {s for s, _, _, _ in ALIGNMENTS}
    align, unaligned = {}, []
    for book in books:
        if book.get("layout") == "rules":
            continue
        slug = book.get("align")
        if slug not in valid:
            unaligned.append(book["army"])
            slug = None
        align[book["slug"]] = slug
    if unaligned:
        raise SystemExit(
            f"emit: no allegiance declared by: {', '.join(sorted(unaligned))}. "
            f"Add `align:` to the book's #book-meta - one of {sorted(valid)}.")

    css = (ROOT / "site" / "style.css").read_text(encoding="utf-8")

    # src/ is the catalogue: a book that is there is a book that ships.
    render = [{"id": b["slug"], "cover": b.get("cover")} for b in books]

    # No prune here, deliberately. It existed to clear away wrappers emit.py
    # had generated and no longer would; now that every book in src/ is owned
    # by hand, a prune can only ever delete somebody's book. It did exactly
    # that once, to nine books, before this comment replaced it.

    (ROOT / "site" / "index.html").write_text(page(books, align, css),
                                              encoding="utf-8")
    (ROOT / "build" / "render.json").write_text(
        json.dumps(render, ensure_ascii=False, indent=1) + '\n', encoding="utf-8")

    print(f"{len(books)} book(s) own their own Typst and were left alone")
    print("wrote site/index.html and build/render.json")


if __name__ == "__main__":
    main()
