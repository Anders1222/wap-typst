# wap-typst

Re-typesets the [Warhammer Armies Project](https://www.warhammerarmiesproject.com/)
army books from their published PDFs into [Typst](https://typst.app), and
publishes the result to GitHub Pages.

**30 army books and the core rulebook · 1,746 unit entries ·
1,599 typeset pages**.

The point is the *book*: proper stat tables, styled headings, real paragraph
structure — not a scrape. Every book was imported with **no missing words at
all**, verified against its source PDF at the time. That is a fact about the
import, not a standing property: a book is hand-owned once imported, so it can
be edited, and an edit is nobody's business but the editor's.

## Attribution

Unofficial and non-commercial. All rules text, army design and points values are
the work of **Mathias Eliasson**, who writes and freely distributes the Warhammer
Armies Project books. Only the typesetting differs here.

Warhammer, Warhammer Fantasy Battle and all associated names, races and places
are trademarks of Games Workshop Limited. This project is unaffiliated with both
and no challenge to their status is intended. Not for sale.

## Pipeline

```
source PDF ─► extract ─► verify ─► src/<slug>.typ ─► PDF
                                   (yours from here on)
           extract/batch.py + to_book.py            typst
```

**`src/` is the whole of it.** A book is a single Typst file: its own front
matter, its own metadata, its own text. Nothing generates it, nothing else holds
a copy of it, and there is no intermediate representation to keep in step. Adding
a unit means copying the entry above it and editing the values.

A book is imported *once*. `extract/batch.py` reads a PDF, verifies the
extraction, and stops there — deliberately writing no Typst, because a
re-extraction that overwrote a book would throw away every edit made since.
`extract/to_book.py <slug>` is the separate, deliberate step that writes the
book, escaping the source text as it goes so no PDF prose can be read back as
Typst syntax.

`emit.py` then reads the books themselves, with `typst eval`, to build the
landing page and `build/render.json` — the one list the publish workflow walks.
Each book declares its own allegiance and counts its own entries, so there is no
manifest to fall out of step with what is on disk. The page can be filtered by
allegiance and re-ordered alphabetically; it is built grouped and in source
order, so it reads correctly before the script runs.

Only the Typst and the cover art are committed, so CI needs the Typst compiler
and nothing else — no Python, and never the source PDFs.

```bash
# Extract and verify a directory of books. Writes no Typst: see below.
python extract/batch.py "path/to/Rules" "path/to/Warhammer - Lizardmen 3.0.pdf"

# Import one into src/. From here on the file is yours.
python extract/to_book.py lizardmen

# Rebuild the landing page and the render list from the books
python emit.py

# Compile one. Bundled fonts only, so this matches the CI render exactly.
typst compile --ignore-system-fonts --root . src/lizardmen.typ out/lizardmen.pdf

# Check a rendered book still carries every word of its source
python extract/roundtrip.py lizardmen --source "path/to/Warhammer - Lizardmen 3.0.pdf"
```

`batch.py` skips a book whose JSON is newer than its PDF, so re-runs are cheap;
pass `--force` to re-extract everything.

## How the extraction works

The books are digitally authored, so structure is recoverable without guessing:

| Signal | Meaning |
|---|---|
| PDF bookmark TOC | chapters and named entries, with page numbers |
| `CaslonAntique` 36pt / 16pt / 12pt | chapter · entry · field label or run-in name |
| `TimesNewRoman` 10pt (+Bold/Italic) | body text and inline emphasis |
| stable x-coordinates | stat-table columns, recovered by snapping to header anchors |
| blank lines | paragraph separators |

No army-specific code: the same parser handles all thirty books, from Halflings
(38 entries) to Warriors of Chaos (125).

Three details cost the most effort and are worth knowing about:

- **PyMuPDF splits a text line at every wide horizontal gap**, which is exactly
  how a stat table is laid out — each cell becomes its own "line". `merged_lines`
  re-joins lines sharing a baseline, inserting a space wherever the gap it closed
  stood for one. Without that, prose in positioned columns welds together
  (`direct damage` + `area spell` → `damagearea`).
- **Whitespace is never classified by font.** The books occasionally set an
  inter-word space in the display face; treating that as a field label files it
  on the wrong side of a `LABEL: value` split and welds the value's words.
- **Source text is escaped once, as the book is written.** PDF prose is full of
  characters Typst reads as markup, so `to_book.py` escapes them at import and
  the file is trusted from then on, because a person owns it. Two substitutions
  had to be handled that no word count can see: Typst curls quotes in markup,
  which would rewrite every apostrophe in text the colophon promises is
  reproduced, so smart quotes are off; and it turns a hyphen before a digit into
  a minus sign, which is 1,123 occurrences across the corpus.

## Verification

Three gates, because they catch different failures.

`extract/coverage.py` compares the word multiset of the source PDF against the
extraction. It runs at import time, at a **zero** tolerance — every book was
imported with no missing words, so anything above zero is worth reading rather
than tolerating. Apostrophes are tokenised identically on both sides, because the
source routinely sets a possessive or infix as its own span (`Sotek` + `'s`,
`K` + `'daai`) which this pipeline rejoins correctly.

`extract/welds.py` looks for words *welded together* by a lost space —
`damagearea`, `(6),Natural` — which a word count cannot see, since a weld removes
a space rather than a word. Three separate instances of this bug reached the
rendered page before the check existed.

`extract/roundtrip.py` closes the loop: the source PDF against the **rendered**
one, so it sees the finished book rather than a halfway house, and catches what
the extraction check cannot — broken markup, mangled emphasis, a table that
quietly lost a column. Reading words back out of our own typesetting needs two
corrections, both of which otherwise report good work as loss. Typst hyphenates
at a line break with a soft hyphen, so the halves are rejoined across it. And
letter-spaced display text comes back with spaces inside it — `ANIMOSITY` arrives
as `ANIMOSI TY` — which width alone cannot distinguish, since justification
squeezes real body spaces just as narrow; inside a tracked span, though, the two
separate cleanly.

All three checks walk chart cells. They did not at first, and that mattered: a
chart of dice scores is nearly invisible to a word count, because tokenising
`6+/2+` yields `6` and `2` — digits that occur in abundance elsewhere and cancel
out. The rulebook's to-hit chart was being rendered as a row of bold headings
while coverage reported nothing missing.

```bash
python extract/coverage.py "path/to/book.pdf" build/lizardmen.json
python extract/welds.py build/lizardmen.json
python extract/roundtrip.py lizardmen --source "path/to/book.pdf"
```

**What none of them can see** is worth stating plainly, because it has bitten
twice. A word bag notices a word *lost*; it does not notice a word *changed*, and
it is blind to punctuation entirely. Both markup substitutions described above
passed it, and so did a list item whose leading hyphen was emitted as a `1` in
nine books at once. Geometry comparison against the previous render is what
caught those.

Deliberately dropped from the comparison: each book's cover and its own contents
page. The rendered books generate their own outline from the headings.

## Two layouts

Chosen from the content, not configured per title: a book with stat blocks is an
army book, and one without is the rulebook.

| | army books | core rulebook |
|---|---|---|
| pagination | every entry opens its own page | sections flow |
| hierarchy | chapter → entry | chapter → section → subsection |
| columns | per entry (see below) | single, with wider margins |
| tables | stat lines, rebuilt from x-coordinates | ruled charts, read directly |
| diagrams | none (the art is vector) | 46, placed in the flow |

Heading depth is normalised per book rather than fixed to a font size. The army
books use one display tier below the chapter, so that tier becomes level 2; the
rulebook uses two (20pt and 16pt), so its larger tier takes level 2 and the
smaller drops to level 3.

## Known gaps

- **The army books' interior artwork is not carried over.** Their illustrations
  are vector drawings, not raster images — 13,708 drawing operations in Lizardmen
  3.0 alone — of which only the parchment background and the cover are
  extractable. Re-exporting the vector regions is not implemented. Covers *are*
  carried, into `assets/covers/`. The core rulebook is different: its diagrams
  are raster with known bounding boxes, so all 46 are placed in the flow at their
  original proportion of the measure.
- A multi-line diagram legend in the rulebook merges into one paragraph, since
  the source separates its lines without a blank line between them.
- `SACRIFICIAL HEART` in Lizardmen 3.0 has no description. That is a defect in
  the source PDF, faithfully reproduced.

## Layout

**Every entry opens its own page** — each unit, character and magic-item section
— so nothing straddles the space left over by whatever preceded it. The one
exception is an entry consisting of *only* a stat line and a few fields, such as
a character mount: a page of its own would be almost entirely empty, so these
share one, set unbreakable so none of them straddles a boundary either.

Entries containing stat blocks are single-column, since an eleven-column table
cannot survive an 8cm measure and floating it would sever it from its unit.
Magic-item sections, spell lores and the faction-upgrade chapters - Virtues,
Gifts, Honours, Knightly Orders, runes, set through `upgrade-chapter` - are
always set in two columns, whatever their length: the chapter reads as one
setting from its first section to its last, and a short second column is the
shape of a short section rather than a fault. Prose chapters such as the army special rules wrap themselves in
`#columns(2)[` by hand.
