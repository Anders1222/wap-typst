# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this is

Warhammer Armies Revamped (WAR): a new edition of Warhammer fantasy battles,
built on the Warhammer Armies Project army books, which were re-typeset from
their published PDFs into Typst and are published to GitHub Pages.
`README.md` is being rewritten for the new edition and is empty for now; the
old README, which explained *why* the pipeline is shaped the way it is, is in
git history at commit f40f962. This file covers what you need to work in the
repo without re-deriving it.

## Commands

Requires the `typst` CLI on `PATH` (or `TYPST=` pointing at it) and, for
anything under `extract/`, Python 3.11+ with `pymupdf`. There is no package
manifest and no test suite; the verification scripts below are the tests.

```bash
# Compile the corpus: every book on build/render.json, in parallel, into out/.
# It is what CI does, with the same two flags, so a local render is the one
# that will publish. A compile error stops it with the diagnostic, exit 1.
python build.py
python build.py skaven dwarfs     # two books
python build.py --site            # and assemble _site/ for check_site.py

# Compile one book by hand. Both flags matter: --ignore-system-fonts makes the
# local render byte-identical to CI's, --root . resolves the /assets paths.
typst compile --ignore-system-fonts --root . src/lizardmen.typ out/lizardmen.pdf

# Rebuild site/index.html and build/render.json from the books in src/.
# Run this after adding, removing or renaming a book, or changing its
# #book-meta — CI walks render.json and compiles nothing that is not in it.
python emit.py

# Export the whole edition as one JSON file for the army builder
# (dkma26709/Warhammer_Calculator_Edition), into build/war.json. --check is
# its gate: every record the source declares is in the file, every string
# field is byte-identical to the source, and every line of exported text is
# on the rendered page in out/ (so build first). Needs pymupdf for --check.
python export.py --check

# The bundle ships by copy, on a release, not from here: build/ is gitignored
# and the builder commits its copy so its tests run against the file it ships.
# The file's `source` field is the commit it came from. One command, so the
# gate always runs before the file moves:
python export.py --check --out ../Warhammer_Calculator_Edition/Warhammer/wwwroot/data/war/war.json

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
```

`batch.py` skips a book whose JSON is newer than its PDF; `--force` re-extracts.

## Architecture

**`src/*.typ` is the source of truth and nothing regenerates it.** Each book is
one self-contained Typst file — front matter, metadata, colophon, every entry —
importing `src/template.typ`. There is no intermediate representation to keep
in step, no manifest listing the books, and no generator to re-run. Adding a
unit means copying the entry above it and editing the values.

Four things read *out* of that, none write back into it:

- **`emit.py`** runs `typst eval` against every `src/*.typ`, querying each
  book's `<book-meta>` and counting its own headings, and writes
  `site/index.html` and `build/render.json`. `site/index.html` is **generated
  output** — edit `emit.py` and `site/style.css` (which it inlines), never the
  HTML. Books declare their own allegiance, so emit fails loudly on a book with
  no `align:` rather than silently filing it nowhere.
- **`.github/workflows/publish.yml`** walks `build/render.json` on push to
  `main` and compiles each id with the same two flags as above. It has only the
  Typst compiler — no Python, and never the source PDFs — so anything Python
  produces must be committed before it can ship.
- **`extract/rule_nodes.py` / `item_nodes.py`** parse `src/rulebook.typ` into
  memory-graph nodes for an external consumer. They preserve hand-written
  `## Traps` sections across regeneration — don't clobber those.
- **`export.py`** runs `typst eval` against every book and writes the edition
  as one JSON file for the army builder. It parses no Typst: every record
  (`unit`, `magic-item`, `upgrade`, `spell`, a `namecost` head) drops a
  `<meta>` metadata element as it renders, and `balanced-columns` and
  `two-columns` drop their body, so the chapters with no record form (an
  army's special rules, the rulebook's prose) are cut at their heads from
  that. The template is the schema: a new `UNIT_FIELDS` key is exported
  without touching the script. The metadata is invisible on the page, and
  a template change there must stay so — prove it with `render_glyphs.py`.

**`extract/`** is the one-way import path: `extract.py` recovers structure from
the PDFs, `batch.py` orchestrates extract → coverage → welds into `build/`, and
`to_book.py` is the separate deliberate step that writes Typst, escaping the PDF
prose as it goes.

## Invariants worth not breaking

- **IMPORTANT: never run `to_book.py` against a slug that already has a file in
  `src/`.** It overwrites, and a book is hand-owned from the moment it is
  imported, so re-importing silently throws away every edit since.
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

- Changed a book or `template.typ` → `python build.py` and confirm exit 0. A
  template change affects all 31 books, and the whole corpus takes seconds, so
  build all of it rather than the one book you touched.
- Changed `#book-meta`, or added/removed/renamed a book → `python emit.py`, and
  commit the resulting `site/index.html` and `build/render.json`.
- Changed a record's metadata in `template.typ`, or `export.py` → `python
  export.py --check` after the build, and confirm `check: ok`.
- Changed anything under `extract/` → the gates need the source PDFs, which are
  not in the repo. If you don't have them, say so rather than reporting the
  change as verified.

## Working in a book

`src/template.typ` is the whole API and is heavily commented; read the relevant
section before hand-writing markup. It validates rather than trusting: unknown
`#book-meta` keys are an error, `magic-item` takes an integer cost (not
`"45 points"`) and checks the type against the vocabulary for its category, and
the six categories are exposed as named functions (`magic-weapon`, `talisman`,
…) so a book states its category by the function it calls. A faction's own
purchases — Virtues, Gifts, Honours, Knightly Orders, runes — are an
`upgrade-chapter` of `upgrade` records, the same shape as a magic item without
a category: `cost:` is an integer, `none`, a tuple like `(5, 35, 55)` for a
tiered rune, or `(who, price)` pairs for a per-model price list, and `group`
is the run-in heading inside the chapter (the gods, the bloodlines) — a level-2
heading the contents lists, with no page break.

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

An army special rules chapter is `#balanced-columns(whole: true)[..]`: each
rule - its `#namecost` head and everything to the next head - is one record
kept on one column, so a rule that does not fit moves whole to the top of the
next column or page rather than splitting. Only a rule taller than a column
still breaks. A magic-item section or lore is balanced without `whole:` and its
records run on as before.

**How an entry meets the page** is the entry's own declaration, and there are
three answers. By default it **flows**: entries run one after another down the
page and a new page starts when the last one is full, in an unbreakable block so
an entry that does not fit moves whole rather than straddling. `solo: true` gives
it a page of its own — every entry under `= SPECIAL CHARACTERS`, where the entry
is the spread. `compact: true` is the character mount, a stat line and two fields
that would leave a page of its own empty. An entry taller than a page has to
break somewhere, and the template finds those by measuring: such an entry opens
a page of its own and breaks where that page ends, instead of overflowing and
losing its tail silently. There is no `breakable:` flag to write — it used to
exist, went stale as the measure changed, and is now a compile error. A
magic-item section decides for itself the same way: one that fits on a page is
set as one unbreakable block that the page places where there is room, with
`SECTION_GAP` above it, and one longer than a page opens a page. Nothing in a
book says which.

## Commits

Messages are a plain declarative sentence describing what changed, sometimes
two clauses joined by "and" — "The Cohort gets its Kroxigor back, and only two
words had to change". No conventional-commit prefixes, no bullet lists.
