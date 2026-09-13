---
name: check-site
description: Check a built site tree with check_site.py - every internal link resolves and every book PDF is linked from a page. Use after changing emit.py, site/style.css, the publish workflow, or adding, removing or renaming a book.
---

# check-site

`check_site.py` walks a built site tree and checks it in two directions:

- **Every link points at something.** A relative `href` or `src` on a page
  must name a file in the tree. A dead one renders as a link, publishes as a
  link, and only fails when a reader clicks it.
- **Every PDF is linked from somewhere.** A book that compiles and publishes
  but is named by no page has shipped into a corner nobody can reach, which no
  link check going the other way would notice.

Standard library only, so it needs no `pymupdf` and runs anywhere Python does.

## When to use it

- After editing `emit.py` or `site/style.css`, which generate `site/index.html`.
- After adding, removing or renaming a book, or changing its `#book-meta` -
  the index and `build/render.json` both move, and the link between them is
  what this checks.
- After touching `.github/workflows/publish.yml`, which assembles the tree.

## How to run it

The tree it checks is the one the publish workflow uploads: every PDF on
`build/render.json`, each book's cover copied beside it as
`<id>-cover.<ext>`, and `site/index.html`. `build.py --site` assembles
exactly that tree after compiling:

```bash
python build.py --site
python check_site.py _site
```

Assembling it by hand and leaving the covers out reports every cover link as
dead - that is the checker being right about an incomplete tree, not a fault
on the page.

## How to read the result

- `1 pages, 93 internal links, 31 books` then `OK: every link resolves, and
  every book is reachable`, exit 0.
- `N dead link(s):` lists `page -> target` for each; `N book(s) no page links
  to:` lists orphaned PDFs. Exit 1. A dead link usually means `emit.py` and
  `render.json` disagree about an id; an orphan usually means a book was
  added to `src/` without re-running `python emit.py`.

## What it is blind to

A link that resolves to the *wrong* page - Lizardmen's card pointing at the
Skaven book is two correct files and one wrong sentence. Nothing here reads
meaning; open the page for that.
