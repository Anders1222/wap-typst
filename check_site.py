"""Check a built site: every link resolves, and every book is reachable.

The site is one page linking a PDF per book by relative path, and a relative
path is exactly the thing that breaks silently: a dead href renders as a link,
publishes as a link, and only fails when somebody clicks it.

Two directions, because they catch different failures.

  - **Every link points at something.** A missing target is a 404 for a reader
    and nothing at all for the build.
  - **Every PDF is linked from somewhere.** A book that compiles, publishes and
    is named by no page has shipped into a corner of the site nobody can reach,
    which no link check going the other way would notice.

What it cannot see is a link that resolves to the *wrong* page - Lizardmen's
card pointing at the Skaven book is two correct files and one wrong sentence.
Nothing here reads meaning.

    python check_site.py _site
"""

from __future__ import annotations

import argparse
import re
import sys
from pathlib import Path

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

# Attribute values are written by emit.py, always double-quoted.
LINK = re.compile(r'(?:href|src)="([^"]+)"')
EXTERNAL = ("http://", "https://", "mailto:", "//", "#", "data:")


def targets(page: Path, root: Path) -> list[tuple[str, Path]]:
    """Each internal link on a page, with the file it ought to reach."""
    out = []
    for raw in LINK.findall(page.read_text(encoding="utf-8")):
        if raw.startswith(EXTERNAL):
            continue
        # A fragment or query is part of the address, not of the filename.
        clean = raw.split("#", 1)[0].split("?", 1)[0]
        if not clean:
            continue
        # A directory address is served by the index inside it.
        resolved = (page.parent / clean).resolve()
        if clean.endswith("/"):
            resolved = resolved / "index.html"
        out.append((raw, resolved))
    return out


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("site", type=Path, help="the built site, e.g. _site")
    args = ap.parse_args()

    root = args.site.resolve()
    if not root.is_dir():
        raise SystemExit(f"check_site: {args.site} is not a directory")

    pages = sorted(root.rglob("*.html"))
    if not pages:
        raise SystemExit(f"check_site: no pages under {args.site}")

    dead, linked, links = [], set(), 0
    for page in pages:
        for raw, target in targets(page, root):
            links += 1
            if target.exists():
                linked.add(target)
            else:
                dead.append((page.relative_to(root).as_posix(), raw))

    orphans = [p.relative_to(root).as_posix()
               for p in sorted(root.rglob("*.pdf")) if p not in linked]

    print(f"{len(pages)} pages, {links} internal links, "
          f"{len(list(root.rglob('*.pdf')))} books")

    if dead:
        print(f"\n{len(dead)} dead link(s):")
        for page, raw in dead[:20]:
            print(f"  {page} -> {raw}")
    if orphans:
        print(f"\n{len(orphans)} book(s) no page links to:")
        for name in orphans[:20]:
            print(f"  {name}")

    if dead or orphans:
        raise SystemExit(1)
    print("OK: every link resolves, and every book is reachable")


if __name__ == "__main__":
    main()
