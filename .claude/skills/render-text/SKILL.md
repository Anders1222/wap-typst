---
name: render-text
description: Prove a change to the template or a book moved no word - compare two renders of the corpus with extract/render_text.py. Use after any restatement (records, columns, spacing, escaping) before claiming the text is intact.
---

# render-text

`extract/render_text.py` answers one question: **do the books still say the
same words after this change?** It reads two rendered PDFs, or two directories
of them, reduces each book to a single stream of letters, and compares the
streams. It needs no source PDFs, so it can run anywhere.

## When to use it

- After a change that is meant to restate, not alter: a run of primitives
  rewritten as one record, a chapter moved into `balanced-columns`, a spacing
  or type-size change, a change to escaping in `extract/`.
- Before reporting any such change as verified. "It compiled" is not the claim;
  "no word moved" is, and this is the instrument for it.
- Not for a change that is *supposed* to change words - a rules edit, a fixed
  typo. Then the diff is the record, and this only tells you the words moved.

## How to run it

The comparison is between a render **before** the change and a render **after**
it. Build the baseline from the committed tree in a worktree so the working
copy is untouched:

```bash
# Baseline: the committed version, built in a worktree into its own out/
git worktree add "$TMP/base" HEAD
( cd "$TMP/base" && python build.py )

# After: the working copy, built into out/
python build.py

python extract/render_text.py "$TMP/base/out" out
git worktree remove --force "$TMP/base"
```

`build.py` compiles every book on `build/render.json` in parallel with the
two CI flags, so both renders are the ones that would publish.

For one book, pass the two PDFs instead of the directories. Books are paired
by filename, so the two directories must name them the same way; a book on one
side only is listed and skipped, not failed.

Needs `pymupdf` (Python 3.11+), as the other gates do.

## How to read the result

- `books whose text moved: 0/31` and exit 0: no word was lost or gained. Say
  so, and say how many books were compared.
- A book that moved prints its letter count before and after and the first
  point of difference with a little context on each side. That fragment is
  where to look in the source. Exit 1.

## What it is blind to, by design

- **Pagination and hyphenation.** Soft hyphens are dropped and words rejoined
  across line breaks, and every digit is discarded, so a change that reflows
  the whole corpus still passes. That is the point: a word bag reports 36 words
  "lost" on an untouched Bretonnia, each of them half of a hyphenated word.
- **A word changed to another word.** It compares the stream after the
  change, not against the source PDF; a substituted word moves the stream and
  is caught, but nothing here knows which is right. `extract/roundtrip.py`
  against the source PDF is the gate for faithfulness.
- **Structure.** An item name read as a section subtitle keeps every word in
  place. A structural claim wants `typst query` on the `<meta>` labels, not
  the page.
- **Layout.** A heading that moved half a page passes here. That is the
  `render-glyphs` skill's question.
