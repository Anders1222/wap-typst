"""Compare two renders glyph by glyph and report whether anything moved at all.

The stronger sibling of `render_text.py`. Where that one asks whether the books
still say the same words, this asks whether they still put every mark in the same
place: each character, its origin to a hundredth of a point, its size and its
font, page by page. Equality means the change was invisible on paper.

That is the check for a refactor that claims to be a pure restatement - a run of
primitives rewritten as one call, rendered through the same primitives underneath.
Text equality would pass such a change even if the layout shifted; this will not.

Use it where a claim is "nothing moved" and `render_text.py` where the claim is
"nothing was lost", since a deliberate layout change fails this one by design and
that is not a defect.

`cmp` on the PDFs themselves is not the instrument, and the reason is worth
knowing. Typst stamps a wall-clock `/CreationDate` into every file, so two renders
of the same commit on different days differ in bytes while being identical in
every way that matters - same size, same object count, one differing region. A
control that renders twice in quick succession passes, because both land in the
same second, which makes the trap easy to mistake for determinism.
`typst compile --creation-timestamp <unix>` pins it if byte-identity is what you
actually want.
"""

from __future__ import annotations

import argparse
import hashlib
import sys
from pathlib import Path

import pymupdf

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")


def page_signature(page) -> str:
    """Every glyph on a page: what it is, where it sits, how it is set."""
    h = hashlib.sha256()
    for block in page.get_text("rawdict")["blocks"]:
        if block.get("type") != 0:          # 0 is text; images have no glyphs
            continue
        for line in block["lines"]:
            for span in line["spans"]:
                for char in span["chars"]:
                    x, y = char["origin"]
                    h.update(f"{char['c']}|{x:.2f},{y:.2f}"
                             f"|{span['size']:.2f}|{span['font']}\n".encode())
    return h.hexdigest()


def signatures(pdf: Path) -> list[str]:
    return [page_signature(page) for page in pymupdf.open(pdf)]


def books_under(root: Path) -> dict[str, Path]:
    """Every render below a directory, keyed by its path under that directory.

    Recursive, and keyed on the path rather than the file name, because a book
    renders to `lizardmen/3.0.pdf` now and not `lizardmen.pdf`. A flat glob
    finds nothing whatever in that tree, and a key of `3.0.pdf` would be the
    name of half the corpus at once.
    """
    return {p.relative_to(root).as_posix(): p for p in root.rglob("*.pdf")}


def pairs(before: Path,
          after: Path) -> tuple[list[tuple[str, Path, Path]], list[str]]:
    """One (name, before, after) per book, plus the books only one side has."""
    if before.is_dir() != after.is_dir():
        sys.exit("render_glyphs: give two PDFs or two directories, not one of each")
    if not before.is_dir():
        return [(before.stem, before, after)], []
    a, b = books_under(before), books_under(after)
    names = sorted(a.keys() & b.keys())
    if not names:
        sys.exit("render_glyphs: the two directories share no PDF names")
    return [(n[:-4], a[n], b[n]) for n in names], sorted(a.keys() ^ b.keys())


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("before", type=Path, help="a rendered PDF, or a directory of them")
    ap.add_argument("after", type=Path, help="the same book(s) rendered after the change")
    ap.add_argument("-n", "--show", type=int, default=6,
                    help="how many differing pages to name per book (default 6)")
    args = ap.parse_args()

    moved = 0
    books, unpaired = pairs(args.before, args.after)
    for name, a, b in books:
        sa, sb = signatures(a), signatures(b)
        if sa == sb:
            continue
        moved += 1
        if len(sa) != len(sb):
            print(f"  {name}: {len(sa)} pages -> {len(sb)}")
            continue
        differing = [i + 1 for i, (x, y) in enumerate(zip(sa, sb)) if x != y]
        shown = ", ".join(str(p) for p in differing[:args.show])
        more = f" (+{len(differing) - args.show} more)" if len(differing) > args.show else ""
        print(f"  {name}: {len(differing)} of {len(sa)} pages differ - p{shown}{more}")

    if unpaired:
        print(f"\n{len(unpaired)} book(s) on one side only, not compared: "
              f"{', '.join(n[:-4] for n in unpaired)}")
    print(f"\nbooks whose layout moved: {moved}/{len(books)}")
    sys.exit(1 if moved else 0)


if __name__ == "__main__":
    main()
