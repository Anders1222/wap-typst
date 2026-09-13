# Warhammer Armies Revamped

**Warhammer Armies Revamped (WAR)** is a new edition of Warhammer Fantasy
Battles, built on version 3 of the
[Warhammer Armies Project](https://www.warhammerarmiesproject.com/) army books.
Its purpose is to realign the game on what makes Warhammer Fantasy Battles
great to play.

## Tenets

**Balance is a tool for fun, not the end goal.** A balanced game is worth
having because a lopsided one stops being fun. But a change that makes the
game flatter, safer or more samey has not earned its place just because the
numbers come out even.

**Factions should feel unique.** An army should play like the people who field
it: Dwarfs should feel like Dwarfs, Skaven like Skaven.

## The books

Thirty army books and the core rulebook, published as PDFs at
[anders1222.github.io/warhammer-armies-revamped](https://anders1222.github.io/warhammer-armies-revamped/).

Version 1.0 of every book is the Warhammer Armies Project text, re-typeset:
the same rules, army lists and points values, in a new layout with new cover
art. The changes that make this its own edition come from here on, book by
book, and each book's colophon names the version of the source it builds on.

## Attribution

Unofficial and non-commercial. The rules text, army design and points values
descend from the Warhammer Armies Project, written and freely distributed by
**Mathias Eliasson**, and are used with gratitude. Where this edition departs
from his work, the changes are its own and not his.

Warhammer, Warhammer Fantasy Battle and all associated names, races and places
are trademarks of Games Workshop Limited. This project is unaffiliated with
both, and no challenge to their status is intended. Not for sale.

The code is MIT and the books are CC BY-NC-SA 4.0; see [LICENSE](LICENSE) for
the split and what each grant covers.

## Working on the books

Each book is one [Typst](https://typst.app) file in `src/`, importing the
shared template. Editing a rule or a points value means editing that file and
recompiling; nothing generates it and nothing else holds a copy.

```bash
python build.py            # compile every book into out/
python build.py skaven     # or one
python emit.py             # rebuild the site index after adding or renaming a book
```

[CLAUDE.md](CLAUDE.md) documents the template, the import pipeline and the
verification gates in full.
