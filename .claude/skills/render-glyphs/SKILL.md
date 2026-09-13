---
name: render-glyphs
description: Prove a refactor was invisible on paper - compare two renders glyph by glyph with extract/render_glyphs.py. Use when the claim is "nothing moved", such as rewriting primitives into a record that renders through the same primitives.
---

# render-glyphs

`extract/render_glyphs.py` answers the strongest question two renders can:
**is every mark in the same place?** For each page it hashes every character
with its origin to a hundredth of a point, its size and its font, and compares
the two renders page by page. Equality means the change was invisible on
paper.

## When to use it

- A refactor that claims to be a pure restatement: a run of `#entry`/`#field`
  calls rewritten as one `#unit(..)`, a template function reorganised without
  changing what it emits, a script that regenerates markup it promises to
  leave identical. `extract/to_records.py` was checked this way.
- Not for a deliberate layout change. Level columns, a new record gap, a
  chapter moved into two columns: these fail here by design, and that failure
  is not a defect. Use the `render-text` skill for those, where the claim is
  "no word lost" rather than "nothing moved".

## How to run it

Same two renders as `render-text`: the committed tree built in a worktree as
`out-before/`, the working copy built as `out/`. See that skill for the loop.

```bash
python extract/render_glyphs.py "$TMP/base/out-before" out
python extract/render_glyphs.py "$TMP/base/out-before" out -n 12   # list more pages
python extract/render_glyphs.py out-before/skaven.pdf out/skaven.pdf
```

Do **not** reach for `cmp` on the PDFs instead. Typst stamps a wall-clock
creation date into every file, so two renders of the same commit differ in
bytes while being identical in every way that matters; and two renders in the
same second match, which makes that trap look like determinism. If
byte-identity is what a check genuinely needs, pin it with
`typst compile --creation-timestamp <unix>`.

## How to read the result

- `books whose layout moved: 0/31` and exit 0: not a glyph moved. The change
  can be reported as invisible on paper.
- A moved book prints either `N pages -> M` when the page count changed, or
  `K of N pages differ - p6, p7 …` with the first few page numbers (`-n`
  shows more). Render one of those pages before and after and look; the
  difference is usually a spacing value.
- Books on one side only are listed and skipped.

## What it is blind to

- **Meaning.** Identical glyphs can come from different markup - a name read
  as a subtitle that happens to be set in the same face. Check the `<meta>`
  labels with `typst query` for a structural claim.
- **Faithfulness to the source.** Both renders could be equally wrong. That
  is `extract/roundtrip.py`'s question, and it needs the source PDF.
