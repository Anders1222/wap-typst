"""Compile the corpus - every book on the render list, in parallel, with the
two flags CI uses.

The publish workflow walks build/render.json and compiles each id with
`--ignore-system-fonts --root .`; this does the same thing on the machine in
front of you, so a local render is the render that will publish. It is a
script because a loop retyped from memory is exactly where one of the two
flags goes missing, and because Typst compiles one book at a time: thirty-one
books take a minute in a row and a fraction of that side by side.

    python build.py                    # every book, into out/
    python build.py skaven dwarfs      # two of them
    python build.py --site             # and assemble _site/ as the workflow does

A compile error stops the build: nothing new is started, the diagnostic is
printed with the book's name, and the exit code is 1. Warnings are printed and
do not fail the build - Typst's warnings are a reader's business, not CI's.

`--site` copies the PDFs, each book's cover beside it as `<id>-cover.<ext>`,
and site/index.html into `_site/`, which is the tree check_site.py checks and
the one the workflow uploads. Both `out/` and `_site/` are gitignored.
"""
import argparse
import json
import os
import shutil
import subprocess
import sys
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

ROOT = Path(__file__).resolve().parent
MANIFEST = ROOT / "build" / "render.json"
# Both flags matter: --ignore-system-fonts makes the local render byte-identical
# to CI's, --root . resolves the /assets paths.
FLAGS = ("--ignore-system-fonts", "--root", str(ROOT))


def typst() -> str:
    """The compiler: $TYPST if set, else `typst` on PATH."""
    exe = os.environ.get("TYPST") or shutil.which("typst")
    if not exe:
        raise SystemExit("build: no `typst` on PATH and $TYPST is not set")
    return exe


def manifest() -> list[dict]:
    if not MANIFEST.exists():
        raise SystemExit(f"build: {MANIFEST.relative_to(ROOT)} is missing - "
                         "run `python emit.py` first")
    return json.loads(MANIFEST.read_text(encoding="utf-8"))


def compile_one(exe: str, book_id: str, out: Path) -> tuple[str, int, str, float]:
    """Compile one book. Returns (id, returncode, stderr, seconds)."""
    src = ROOT / "src" / f"{book_id}.typ"
    pdf = out / f"{book_id}.pdf"
    pdf.parent.mkdir(parents=True, exist_ok=True)
    start = time.perf_counter()
    proc = subprocess.run([exe, "compile", *FLAGS, str(src), str(pdf)],
                          capture_output=True, text=True, encoding="utf-8",
                          errors="replace")
    return book_id, proc.returncode, proc.stderr, time.perf_counter() - start


def assemble_site(books: list[dict], out: Path, site: Path) -> None:
    """The tree the workflow uploads: PDFs, covers beside them, the index."""
    if site.exists():
        shutil.rmtree(site)
    site.mkdir(parents=True)
    for book in books:
        shutil.copy(out / f"{book['id']}.pdf", site / f"{book['id']}.pdf")
        cover = book.get("cover")
        if cover and (ROOT / "assets" / cover).exists():
            ext = Path(cover).suffix
            shutil.copy(ROOT / "assets" / cover, site / f"{book['id']}-cover{ext}")
    shutil.copy(ROOT / "site" / "index.html", site / "index.html")


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("ids", nargs="*", metavar="id",
                    help="books to compile, by id; default is every book on "
                         "build/render.json")
    ap.add_argument("-o", "--out", type=Path, default=ROOT / "out",
                    help="where the PDFs go (default: out/)")
    ap.add_argument("-j", "--jobs", type=int, default=os.cpu_count() or 1,
                    help="compiles to run at once (default: one per CPU)")
    ap.add_argument("--site", action="store_true",
                    help="also assemble the site tree the workflow uploads")
    ap.add_argument("--site-dir", type=Path, default=ROOT / "_site",
                    metavar="DIR", help="where --site assembles it (default: _site/)")
    args = ap.parse_args()

    books = manifest()
    known = {b["id"] for b in books}
    if args.ids:
        unknown = [i for i in args.ids if i not in known]
        if unknown:
            raise SystemExit(f"build: not on the render list: {', '.join(unknown)} "
                             "- is it in src/, and has emit.py been run?")
        chosen = [b for b in books if b["id"] in set(args.ids)]
    else:
        chosen = books
    if args.site and args.ids:
        raise SystemExit("build: --site assembles the whole site, so it takes "
                         "no ids")

    exe = typst()
    out = args.out.resolve()
    started = time.perf_counter()
    failed = None
    with ThreadPoolExecutor(max_workers=max(1, args.jobs)) as pool:
        futures = {pool.submit(compile_one, exe, b["id"], out): b["id"]
                   for b in chosen}
        for fut in as_completed(futures):
            if fut.cancelled():
                continue
            book_id, code, err, secs = fut.result()
            if code != 0:
                if failed is None:
                    failed = book_id
                    # Nothing new starts; what is already running finishes.
                    for f in futures:
                        f.cancel()
                print(f"\n{book_id}: compile failed\n{err.rstrip()}\n")
            else:
                print(f"  {book_id:<20} {secs:5.1f}s")
                if err.strip():
                    # Warnings, indented under the book they belong to.
                    print("\n".join("      " + l for l in err.rstrip().splitlines()))

    if failed is not None:
        raise SystemExit(f"build: {failed} did not compile; see above")
    done = len(chosen)
    print(f"compiled {done} book{'s' if done != 1 else ''} into "
          f"{out.relative_to(ROOT) if out.is_relative_to(ROOT) else out} "
          f"in {time.perf_counter() - started:.0f}s")

    if args.site:
        site = args.site_dir.resolve()
        assemble_site(books, out, site)
        n = sum(1 for _ in site.iterdir())
        print(f"assembled {site.relative_to(ROOT) if site.is_relative_to(ROOT) else site}"
              f" ({n} files); check it with `python check_site.py {site.name}`")


if __name__ == "__main__":
    main()
