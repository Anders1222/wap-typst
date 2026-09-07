"""Emit memory nodes for magic items, for the JARVIS memory graph.

Three kinds, chosen by what each is actually good for:

  item_<slug>.md    one per COMMON magic item from the rulebook (~82). These
                    are the shared vocabulary every army can buy, so each is
                    worth a node of its own with edges and a Traps section.

  items_<book>.md   one index per army book (~31), listing every priced item
                    with its category and cost. 2,224 army-book items is far
                    too many to be worth a file each -- almost none would ever
                    be opened -- but "does this item exist in this book, and
                    what does it cost" has to be answerable, and this answers it.

  items_by_price.md every priced item in the corpus grouped by cost. This is
                    the one that matters most: it is the pricing-anchor lookup.
                    Pricing an item against the "Pendant of the Fell Wind" cost
                    a wrong claim in a committed book on 2026-08-27 -- the item
                    is canonical in 8th edition and absent from all 31 books
                    here. A price index makes both the existence check and the
                    "what else costs 25 points" question one file away.

Generated, so nothing can drift from the books; the `## Traps` section of an
item node is hand-written and preserved across regeneration.

    python extract/item_nodes.py --out <dir>
    python extract/item_nodes.py --out <dir> --dry
"""
import argparse
import glob
import os
import re
import sys

SRC = "src"
TRAPS_RE = re.compile(r"\n## Traps\n(.*?)(?=\n## |\Z)", re.S)
PLACEHOLDER = "_None recorded. Add one the first time this item surprises you._"
PRICED = re.compile(r'^#namecost\("([^"]+)",\s*"(\d+(?:\.\d+)?) points"\)')
CONTINUED = re.compile(r'^#namecost\("([^"]+)",\s*""\)')
# Any heading may introduce priced entries, and thirty-eight categories do
# across the corpus: the six standard magic-item types plus Dwarf runes, Chaos
# gifts, Bretonnian virtues, Ogre big names, Tyranid biomorphs, Vampire Counts
# bloodline items and more. Every one of them is a thing bought with points,
# which is exactly what a pricing anchor is, so none are filtered out.
CATEGORY = re.compile(
    r'^(?:#entry\("([A-Z][A-Z &\'\-]+)"(?:,\s*first:\s*true)?\)'
    r'|=+ ([A-Z][A-Z &\'\-]+))\s*$')
# The rulebook's six standard categories are the genuinely COMMON items, the
# ones any army may buy. Only those earn a node each.
COMMON_CATS = {"MAGIC WEAPONS", "MAGIC ARMOUR", "TALISMANS", "ARCANE ITEMS",
               "ENCHANTED ITEMS", "MAGIC STANDARDS"}


def slug(s):
    return re.sub(r"[^a-z0-9]+", "_", s.lower()).strip("_")


def book_title(b):
    return b.replace("-", " ").title()


def parse_items(path):
    """Every priced magic item in a file, with category, cost and effect text.

    Item names wrap across two #namecost calls when they are long ("THE BANNER
    OF THE" / "FIRST SWORN, 35 points"), so an unpriced namecost immediately
    followed by a priced one is a prefix, not an item.
    """
    lines = open(path, encoding="utf-8").read().split("\n")
    items, cat, pending = [], None, None
    for i, line in enumerate(lines):
        mc = CATEGORY.match(line.strip())
        if mc:
            cat = (mc.group(1) or mc.group(2)).strip()
            continue
        mu = CONTINUED.match(line.strip())
        if mu:
            nxt = next((lines[j] for j in range(i + 1, min(i + 4, len(lines)))
                        if lines[j].strip()), "")
            pending = mu.group(1).strip() if PRICED.match(nxt.strip()) else None
            continue
        mp = PRICED.match(line.strip())
        if mp and cat:
            name = mp.group(1).strip()
            if pending:
                name, pending = (pending + " " + name).strip(), None
            body = []
            for l2 in lines[i + 1:i + 12]:
                if re.match(r'^#(namecost|entry)\(', l2.strip()) or l2.startswith("="):
                    break
                if l2.strip():
                    body.append(l2.strip())
            items.append({"name": name, "cost": float(mp.group(2)),
                          "cat": cat, "line": i + 1, "body": body})
    return items


def read_traps(path):
    if not os.path.exists(path):
        return ""
    m = TRAPS_RE.search(open(path, encoding="utf-8").read())
    if not m:
        return ""
    t = m.group(1).strip()
    return "" if t.startswith("_None recorded") else t


def fmt(c):
    return "%d" % c if c == int(c) else ("%.1f" % c)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--out", required=True)
    ap.add_argument("--dry", action="store_true")
    a = ap.parse_args()

    common = [i for i in parse_items(os.path.join(SRC, "rulebook.typ"))
              if i["cat"] in COMMON_CATS]
    books = {}
    for p in sorted(glob.glob(os.path.join(SRC, "*.typ"))):
        b = os.path.basename(p)[:-4]
        if b in ("rulebook", "template"):
            continue
        found = parse_items(p)
        if found:
            books[b] = found

    if not a.dry:
        os.makedirs(a.out, exist_ok=True)

    def write(fname, front, header, body):
        if a.dry:
            return
        doc = ["---"] + front + ["---", "", header, ""] + body + [""]
        open(os.path.join(a.out, fname), "w", encoding="utf-8",
             newline="").write("\n".join(doc))

    # 1. a node per common item
    kept = 0
    for it in common:
        f = "item_%s.md" % slug(it["name"])
        traps = read_traps(os.path.join(a.out, f))
        kept += bool(traps)
        peers = sorted({o["name"] for o in common
                        if o["cost"] == it["cost"] and o["name"] != it["name"]})
        body = list(it["body"]) + [""]
        body.append("**Category:** %s · **Cost:** %s points · "
                    "**Common** — available to any army."
                    % (it["cat"].title(), fmt(it["cost"])))
        body.append("")
        if peers:
            body.append("**Other common items at %s points:** %s"
                        % (fmt(it["cost"]),
                           " · ".join("[[item_%s]]" % slug(n) for n in peers)))
            body.append("")
        body += ["**Price index:** [[items_by_price]]", "",
                 "## Traps", "", traps if traps else PLACEHOLDER]
        write(f,
              ["name: item_%s" % slug(it["name"]),
               "description: %s — %s points, %s (common). %s"
               % (it["name"].title(), fmt(it["cost"]), it["cat"].lower(),
                  re.sub(r"\s+", " ", it["body"][0])[:150] if it["body"] else ""),
               "type: reference"],
              "> **Bucket:** `references/wap-typst/items/` · **Hub:** "
              "[[wap_points_anchors]] · **Source:** `src/rulebook.typ:%d` — "
              "generated, do not hand-edit above the Traps heading.\n\n# %s"
              % (it["line"], it["name"].title()),
              body)

    # 2. an index per army book
    for b, items in books.items():
        rows = ["| Item | Category | Points |", "|---|---|---:|"]
        for it in sorted(items, key=lambda x: (x["cat"], -x["cost"], x["name"])):
            rows.append("| %s | %s | %s |"
                        % (it["name"].title(), it["cat"].title(), fmt(it["cost"])))
        write("items_%s.md" % slug(b),
              ["name: items_%s" % slug(b),
               "description: Every magic item in %s — %d priced items across %d "
               "categories, with costs. Check here before citing one as an anchor."
               % (book_title(b), len(items), len({i["cat"] for i in items})),
               "type: reference"],
              "> **Bucket:** `references/wap-typst/items/` · **Hub:** "
              "[[wap_points_anchors]] · **Source:** `src/%s.typ` — generated.\n\n"
              "# Magic items: %s" % (b, book_title(b)),
              rows + ["", "**Price index across all books:** [[items_by_price]]"])

    # 3. the cross-book price index
    allitems = [(it, "rulebook") for it in common]
    for b, items in books.items():
        allitems += [(it, b) for it in items]
    by_cost = {}
    for it, b in allitems:
        by_cost.setdefault(it["cost"], []).append((it, b))
    body = ["Every priced magic item in the corpus, grouped by cost. Use this "
            "before pricing anything new, and to confirm an item exists at all "
            "— an item that feels canonical may be canonical in a different "
            "game. See [[wap_rules_gotchas]].", ""]
    for c in sorted(by_cost, reverse=True):
        entries = sorted(by_cost[c], key=lambda x: (x[1], x[0]["name"]))
        body.append("### %s points  _(%d items)_" % (fmt(c), len(entries)))
        body.append("")
        body.append(" · ".join("%s %s" % (it["name"].title(),
                                          "(common)" if b == "rulebook"
                                          else "(%s)" % book_title(b))
                               for it, b in entries))
        body.append("")
    write("items_by_price.md",
          ["name: items_by_price",
           "description: Every magic item in the corpus grouped by points cost "
           "(%d items, %d price points) — the pricing-anchor lookup, and the "
           "existence check that stops an item from another game being cited."
           % (len(allitems), len(by_cost)),
           "type: reference"],
          "> **Bucket:** `references/wap-typst/items/` · **Hub:** "
          "[[wap_points_anchors]] · generated from all 32 books.\n\n"
          "# Magic items by price",
          body)

    print("common item nodes: %d  (Traps preserved: %d)" % (len(common), kept))
    print("book indexes:      %d  covering %d items"
          % (len(books), sum(len(v) for v in books.values())))
    print("price index:       %d items across %d price points"
          % (len(allitems), len(by_cost)))


if __name__ == "__main__":
    main()
