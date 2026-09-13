---
name: render-artefacts
description: Sweep rendered PDFs for Typst markup that leaked onto the page - a stray #call(, a lone *bold* marker, a \- escape - with extract/render_artefacts.py against a baseline render. Use after changing extracted prose, escaping, or any script under extract/.
---

# render-artefacts

`extract/render_artefacts.py` answers: **did any markup end up printed?** The
word gates cannot see this - a stray asterisk is not a lost word - and a
reader can. It sweeps rendered pages for five shapes that should never be
visible:

| label | pattern | typical cause |
|---|---|---|
| typst macro call | `#name(` | a call the importer escaped instead of emitting |
| call left open | `)[` | a call cut in half by a line break |
| escaped hyphen | `\-` | an escape that survived into markup mode |
| emphasis marker | `_X` | an underscore pair that lost its partner |
| bold marker | `*x` | an asterisk pair that lost its partner |

## When to use it

- After changing prose that came out of the importer, or the escaping in
  `extract/to_book.py`, `to_records.py`, `to_upgrades.py` or any script that
  writes Typst.
- After a hand edit to a book that touched markup rather than words.
- Alongside `render-text` when a change was meant to restate: the two see
  different failures.

## How to run it - always with `--against`

Some of these shapes occur legitimately: the asterisk that marks a *common*
magic item, footnote markers under a weapon table. A bare run reports every
one of them and teaches you to ignore the output. Given a baseline render,
only hits that are **new** are reported, which is the number that means
something.

```bash
# $TMP/base/out is the committed tree built in a worktree with build.py;
# see the render-text skill.
python extract/render_artefacts.py out/*.pdf --against "$TMP/base/out"
python extract/render_artefacts.py out/skaven.pdf --against "$TMP/base/out"
```

The baseline is matched by filename, so it must hold a PDF of the same name
for every book swept.

## How to read the result

- `new artefacts: 0` and exit 0: nothing leaked that was not already there.
- A hit prints the book, the page, the label and a fragment of the page text
  around it. Open that page in the source and fix the markup; then re-run.
- Without `--against` the count is `artefacts:` rather than `new artefacts:`,
  and includes the corpus's legitimate hits. Treat that number as a baseline
  to measure against, not a failure.

## What it is blind to

- Markup that leaked in a shape not on the list, and prose that legitimately
  contains one of the shapes. Both are rare; both are why the fragment is
  printed rather than just the count.
- A word lost or changed. That is `render-text` and `roundtrip.py`.
