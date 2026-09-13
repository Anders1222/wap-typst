"""Verify a rendered book carries every word its source does.

coverage.py compares the source PDF against the extracted JSON. This compares
against the *rendered* PDF instead, closing the loop end to end, and so it can
see what the JSON comparison cannot: an importer that emitted broken markup, a
mangled emphasis, a table that quietly lost a column.

Reading words back out of our own PDF needs two corrections, both learned the
hard way and both of which otherwise report perfect typesetting as loss:

  Soft hyphens. Typst hyphenates at a line break with U+00AD, which the
  tokeniser reads as a word boundary. Lizardmen alone breaks seven words that
  way, so the halves are rejoined across the break.

  Letter spacing. Display text carries `tracking`, and PDF text extraction
  injects a space wherever the tracked advance is wide enough - the Chaos
  Dwarfs ANIMOSITY heading comes back literally as 'ANIMOSI TY'. Words are
  therefore rebuilt from character positions with a gap threshold proportional
  to the font size, rather than trusting the spaces in the extracted text.

Note what this gate still cannot see: a word *changed* rather than lost, and any
punctuation at all. Both of the markup substitutions that had to be handled in
to_book.py - curled quotes and hyphen-becomes-minus - are invisible here.
"""

from __future__ import annotations

import argparse
import json
import sys
from collections import Counter
from pathlib import Path

import pymupdf

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "extract"))

from coverage import json_words, pdf_words, words  # noqa: E402

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

SOFT = chr(0x00AD)

# A space in this face sits around 0.25 em. Tracked letter gaps run to 0.12 em,
# so the threshold separates the two with room on both sides.
GAP = 0.20

# A genuine word space measures about 0.25 em, though justification squeezes it
# to 0.15. Below this, inside a tracked span, it is an artefact of the tracking.
NARROW = 0.20

# Letter-spaced text keeps a visible gap between every character; ordinary text
# sets them flush. Anything above this counts as tracked.
TRACKING = 0.05


def is_tracked(chars: list[dict], size: float) -> bool:
    gaps = [(chars[i + 1]["bbox"][0] - chars[i]["bbox"][2]) / size
            for i in range(len(chars) - 1)
            if not chars[i]["c"].isspace() and not chars[i + 1]["c"].isspace()]
    return bool(gaps) and min(gaps) > TRACKING


def rendered_words(pdf: Path) -> tuple[int, Counter]:
    """Word bag for a PDF we rendered, rebuilt from character positions."""
    doc = pymupdf.open(pdf)
    bag: Counter = Counter()
    carry = ""  # a word broken over a line or page boundary by a soft hyphen

    for page in doc:
        for block in page.get_text("rawdict")["blocks"]:
            if block["type"] != 0:
                continue
            for line in block["lines"]:
                # A folio is not the continuation of a hyphenated word. Where one
                # breaks over a page boundary the page number is the next line in
                # the stream, so prepending the carry to it welds `resolu` to `5`
                # and loses both halves: Orcs & Goblins 1.6 reported one missing
                # `resolution` that was on the page all along. Held over instead.
                digits = "".join(c["c"] for s in line["spans"]
                                 for c in s["chars"]).strip()
                if carry and digits.isdigit():
                    bag.update(words(digits))
                    continue
                word = carry
                carry = ""
                prev_x1 = None
                for span in line["spans"]:
                    size = span["size"] or 1.0
                    tracked = is_tracked(span["chars"], size)
                    for char in span["chars"]:
                        c = char["c"]
                        if c == SOFT:
                            continue
                        x0, x1 = char["bbox"][0], char["bbox"][2]
                        if c.isspace():
                            # Inside a letter-spaced span the extractor inserts a
                            # narrow space wherever the tracked advance is wide
                            # enough, so ANIMOSITY comes back as 'ANIMOSI TY'.
                            # Width alone cannot tell them apart - justification
                            # squeezes real body spaces to the same 0.15 em - but
                            # within a tracked span it splits cleanly: the
                            # artefacts sit under 0.2 em and the genuine gaps
                            # between heading words sit at a full 0.25.
                            if not (tracked and (x1 - x0) < NARROW * size):
                                bag.update(words(word))
                                word = ""
                                prev_x1 = None
                            continue
                        if prev_x1 is not None and (x0 - prev_x1) > GAP * size:
                            bag.update(words(word))
                            word = ""
                        word += c
                        prev_x1 = x1
                # A line ending in a soft hyphen continues on the next one.
                raw = "".join(c["c"] for s in line["spans"] for c in s["chars"])
                if raw.rstrip().endswith(SOFT):
                    carry = word
                else:
                    bag.update(words(word))
    bag.update(words(carry))
    return doc.page_count, bag


def main() -> None:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("slug")
    ap.add_argument("--pdf", type=Path, help="defaults to out/<slug>.pdf")
    ap.add_argument("--source", type=Path,
                    help="the original PDF. Without it the committed extraction "
                         "JSON stands in, which is sound because every book was "
                         "verified against its PDF at 0.00%% missing when it was "
                         "extracted, so equalling the JSON proves equalling the "
                         "source transitively")
    ap.add_argument("-n", "--show", type=int, default=20)
    args = ap.parse_args()

    rendered = args.pdf or ROOT / "out" / f"{args.slug}.pdf"
    if not rendered.exists():
        raise SystemExit(f"roundtrip: {rendered} does not exist - compile it first")

    if args.source:
        source_json = ROOT / "build" / f"{args.slug}.json"
        skip = set()
        if source_json.exists():
            skip = set(json.loads(source_json.read_text(encoding="utf-8"))
                       .get("front_matter_pages", []))
        want = pdf_words(args.source, skip)
        against = args.source.name
    else:
        path = ROOT / "build" / f"{args.slug}.json"
        if not path.exists():
            raise SystemExit(
                f"roundtrip: no baseline for {args.slug} - it owns its own Typst "
                f"and has no extraction JSON, so pass --source to check it "
                f"against a PDF")
        want = json_words(json.loads(path.read_text(encoding="utf-8")))
        against = path.name

    pages, got = rendered_words(rendered)
    missing = want - got
    lost = sum(missing.values())
    total = sum(want.values())

    print(f"{args.slug}: {pages} pages rendered, checked against {against}")
    print(f"  source words : {total:,}")
    print(f"  rendered     : {sum(got.values()):,}")
    print(f"  missing      : {lost:,}  ({lost / total:.2%})" if total else "  missing: n/a")
    if missing:
        print("\n  top missing tokens:")
        for word, count in missing.most_common(args.show):
            print(f"    {count:>4}  {word}")
    print(f"\n{'FAIL' if lost else 'OK'}: "
          f"{'words were lost' if lost else 'the render carries every source word'}")
    sys.exit(1 if lost else 0)


if __name__ == "__main__":
    main()
