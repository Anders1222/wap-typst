# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Warhammer Armies Project army books, re-typeset from their published PDFs into
Typst and published to GitHub Pages. `README.md` is thorough and is the
authority on *why* the pipeline is shaped the way it is; this file covers what
you need to work in the repo without re-deriving it.

## Commands

Requires the `typst` CLI on `PATH` (or `TYPST=` pointing at it) and, for
anything under `extract/`, Python 3.11+ with `pymupdf`. There is no package
manifest and no test suite; the verification scripts below are the tests.

```bash
# Compile one book. Both flags matter: --ignore-system-fonts makes the local
# render byte-identical to CI's, --root . resolves the /assets paths.
typst compile --ignore-system-fonts --root . src/lizardmen.typ out/lizardmen.pdf

# Rebuild site/index.html and build/render.json from the books in src/.
# Run this after adding, removing or renaming a book, or changing its
# #book-meta — CI walks render.json and compiles nothing that is not in it.
python emit.py

# Import a new book (one-off, needs the source PDF; see "Never re-import").
python extract/batch.py "path/to/Rules" "path/to/Warhammer - Lizardmen 3.0.pdf"
python extract/to_book.py lizardmen
# to_book.py still writes the #entry/#field sequence form. This rewrites those
# entries as #unit(..) records; it renders identically, so the check is a
# byte-compare of the PDF before and after.
python extract/to_records.py src/lizardmen.typ

# The three verification gates. Zero tolerance on all of them.
python extract/coverage.py "path/to/book.pdf" build/lizardmen.json   # words lost
python extract/welds.py build/lizardmen.json                         # words welded
python extract/roundtrip.py lizardmen --source "path/to/book.pdf"    # rendered PDF vs source

# Edition promises, checked against rendered PDFs (compile both first).
python extract/check_editions.py out/lizardmen-house.pdf out/lizardmen.pdf
python extract/check_editions.py out/rulebook-proposal.pdf out/rulebook-house.pdf \
  --identical-body --chapter PROPOSALS
```

`batch.py` skips a book whose JSON is newer than its PDF; `--force` re-extracts.

## Architecture

**`src/*.typ` is the source of truth and nothing regenerates it.** Each book is
one self-contained Typst file — front matter, metadata, colophon, every entry —
importing `src/template.typ`. There is no intermediate representation to keep
in step, no manifest listing the books, and no generator to re-run. Adding a
unit means copying the entry above it and editing the values.

Three things read *out* of that, none write back into it:

- **`emit.py`** runs `typst eval` against every `src/*.typ`, querying each
  book's `<book-meta>` and counting its own headings, and writes
  `site/index.html` and `build/render.json`. `site/index.html` is **generated
  output** — edit `emit.py` and `site/style.css` (which it inlines), never the
  HTML. Books declare their own allegiance and shelf, so emit fails loudly on a
  book with no `align:` or an unknown `shelf:` rather than silently hiding it.
- **`.github/workflows/publish.yml`** walks `build/render.json` on push to
  `main` and compiles each id with the same two flags as above. It has only the
  Typst compiler — no Python, and never the source PDFs — so anything Python
  produces must be committed before it can ship.
- **`extract/rule_nodes.py` / `item_nodes.py`** parse `src/rulebook.typ` into
  memory-graph nodes for an external consumer. They preserve hand-written
  `## Traps` sections across regeneration — don't clobber those.

**`extract/`** is the one-way import path: `extract.py` recovers structure from
the PDFs, `batch.py` orchestrates extract → coverage → welds into `build/`, and
`to_book.py` is the separate deliberate step that writes Typst, escaping the PDF
prose as it goes.

**Editions** are forks kept in git: `src/lizardmen-house.typ` beside
`src/lizardmen.typ`, so a change is a `git diff` and an upstream release is a
three-way merge. `editions/<slug>/edition.toml` holds the edition's identity and
colophon; `editions/<slug>/<book>.toml` records each change and why. The changed
rules are deliberately **not marked in the body** — the changelog chapter at the
back is the only place a reader learns the body was altered, which is exactly
what `check_editions.py` enforces.

## Invariants worth not breaking

- **IMPORTANT: never run `to_book.py` against a slug that already has a file in
  `src/`.** It overwrites, and a book is hand-owned from the moment it is
  imported, so re-importing silently throws away every edit since — including
  the edition forks derived from it.
- **Smart quotes stay off** (`set smartquote(enabled: false)` in `book()`), and
  hyphens before digits are handled at import. Typst would otherwise curl every
  apostrophe and turn `-1` into a minus sign in text the colophon promises is
  reproduced. The gates cannot catch this: they see a word *lost*, never a word
  *changed*, and are blind to punctuation entirely.
- **`build/` is gitignored except `render.json`.** Extraction JSON is not
  committed — keeping it would be keeping a second copy of a book that nothing
  reads. Source PDFs are never committed.
- **LF line endings** (`.gitattributes`): the publish workflow uses backslash
  continuations in a bash `run:` block and a stray CR breaks them. On Windows,
  `emit.py` writes CRLF, so `git status` flags `site/index.html` and
  `build/render.json` as modified even when the content is unchanged; git
  normalizes on commit, so check `git diff` before assuming a real change.

## After an edit, verify

There is no test suite, so verification is per-change and must be run, not
assumed:

- Changed a book or `template.typ` → compile the affected book(s) with the two
  flags above and confirm exit 0. A template change affects all 44 books, so
  compile more than one.
- Changed `#book-meta`, or added/removed/renamed a book → `python emit.py`, and
  commit the resulting `site/index.html` and `build/render.json`.
- Changed an edition's body → recompile it and its parent, then run
  `check_editions.py` on the two PDFs.
- Changed anything under `extract/` → the gates need the source PDFs, which are
  not in the repo. If you don't have them, say so rather than reporting the
  change as verified.

## Working in a book

`src/template.typ` is the whole API and is heavily commented; read the relevant
section before hand-writing markup. It validates rather than trusting: unknown
`#book-meta` keys are an error, `magic-item` takes an integer cost (not
`"45 points"`) and checks the type against the vocabulary for its category, and
the six categories are exposed as named functions (`magic-weapon`, `talisman`,
…) so a book states its category by the function it calls.

A unit entry is one `#unit(NAME, ..)` call: `profiles:` rows of the ten
characteristics as dictionaries, then the entry's fields as named arguments —
`troop-type:`, `equipment:`, `special-rules:` and the rest, listed in
`UNIT_FIELDS`. **The vocabulary is closed**: an unknown field is a compile error
naming the entry, which is what keeps EQIPMENT and HANDLER/HANDLERS from drifting
back in. Fields render in `UNIT_FIELDS` order whatever order they are written.

A field's value says by its type what shape it takes. A string is the label with
its value on the same line. A list of `rule("Name")[body]` records is the label
over named bullets; a list of `opt(..)`/`optgroup(..)` is the label over priced
option lines. Markup content is the label over that content verbatim. A field
needing both — SPECIAL RULES naming four rules inline and then explaining a fifth
— passes the string and puts the block in the companion `<field>-body`.

Four escape hatches, each used deliberately and each greppable: `subtitle:` for
the run-in line under a special character's name; `order:` for the ~98 entries
whose source genuinely deviates from the canonical field order; `labels:` where
the source misprints a label and the book reproduces it (Daemons of Chaos heads
four entries EQIPMENT); `before:`/`after:` for prose that sits outside the
fields. `#entry`/`#field` remain as primitives for the prose and design-notes
chapters, where a field is a bare mini-heading rather than a unit field.

Layout is derived, not configured: a book with stat blocks is an army book and
one without is the rulebook, and `magic-item-section` measures whether the
material fills two columns rather than counting characters. Prefer fixing a rule
in the template over writing an override into a book.

**How an entry meets the page** is the entry's own declaration, and there are
three answers. By default it **flows**: entries run one after another down the
page and a new page starts when the last one is full, in an unbreakable block so
an entry that does not fit moves whole rather than straddling. `solo: true` gives
it a page of its own — every entry under `= SPECIAL CHARACTERS`, where the entry
is the spread. `compact: true` is the character mount, a stat line and two fields
that would leave a page of its own empty. `breakable: true` lifts the no-split
rule for the 28 entries taller than a page, which have to break somewhere and
would otherwise overflow and lose their tail silently — so **never mark an entry
`breakable: false` by hand without checking it fits**; the gate is a word-bag
compare of the rendered PDF, which is what catches an overflow.

## Commits

Messages are a plain declarative sentence describing what changed, sometimes
two clauses joined by "and" — "The Cohort gets its Kroxigor back, and only two
words had to change". No conventional-commit prefixes, no bullet lists.
