"""Stable ids for the records of one book.

An id is kebab-case ASCII derived from the record's printed name, unique
within its parent: a unit within its faction, a group within its unit, a
choice within its group, a profile row within its unit. The first name to
claim a slug keeps it; a later collision gets a numeric suffix.

Stability across source edits comes from `ids/<slug>.json`, one file per
book, committed. It maps each source name to the id it was given, by table:

  units       {name: id}
  profiles    {unit name: {row name: id}}
  groups      {unit name: {group key: id}}
  choices     {unit name: {group id: {choice name: id}}}
  rules, items, upgrades, lores   {name: id}

The export reads the map, adds every name it has not seen, and never renames
an entry it has. So a name corrected in the source arrives as a new entry
with a fresh id, and the fix - so that saved army lists keep working - is to
point the new name at the old id by hand and drop the stale entry. The build
report lists the new entries so that review happens.
"""

from __future__ import annotations

import json
import re
import unicodedata
from pathlib import Path

TABLES = ("units", "profiles", "groups", "choices", "rules", "items", "upgrades", "lores")


def slug(name: str) -> str:
    """kebab-case ASCII: diacritics folded, '&' read as 'and', the rest dropped."""
    s = unicodedata.normalize("NFKD", name)
    s = "".join(c for c in s if not unicodedata.combining(c))
    s = s.replace("&", " and ").replace("'", "")
    s = re.sub(r"[^A-Za-z0-9]+", "-", s.lower()).strip("-")
    return s or "x"


class IdMap:
    def __init__(self, path: Path) -> None:
        self.path = path
        self.data: dict = json.loads(path.read_text(encoding="utf-8")) if path.exists() else {}
        for t in TABLES:
            self.data.setdefault(t, {})
        self.new: list[str] = []        # entries added this run
        self.suffixed: list[str] = []   # ids that needed a numeric suffix
        self.dirty = not path.exists()
        self._check_unique(self.data, [])

    def _check_unique(self, node: dict, where: list[str]) -> None:
        """A hand-edited map must not give two names one id."""
        if all(isinstance(v, str) for v in node.values()):
            seen: dict[str, str] = {}
            for name, id_ in node.items():
                if id_ in seen:
                    raise SystemExit(
                        f"{self.path.name}: {'/'.join(where) or 'map'} gives {id_!r} to both "
                        f"{seen[id_]!r} and {name!r}")
                seen[id_] = name
            return
        for k, v in node.items():
            if isinstance(v, dict):
                self._check_unique(v, where + [k])

    def _table(self, scope: tuple[str, ...]) -> dict:
        d = self.data[scope[0]]
        for s in scope[1:]:
            d = d.setdefault(s, {})
        return d

    def assign(self, scope: tuple[str, ...], name: str, base: str | None = None) -> str:
        """The id for `name` in the table `scope` names, minting one if new."""
        table = self._table(scope)
        if name in table:
            return table[name]
        base = slug(base if base is not None else name)
        taken = set(table.values())
        id_, n = base, 2
        while id_ in taken:
            id_ = f"{base}-{n}"
            n += 1
        table[name] = id_
        label = f"{'/'.join(scope)}: {name!r} -> {id_}"
        self.new.append(label)
        if id_ != base:
            self.suffixed.append(label)
        self.dirty = True
        return id_

    def suffixed_in_map(self) -> list[str]:
        """Every id in the map that carries a collision suffix, new or old.

        `suffixed` lists the ones minted this run; this lists them all, so
        the report shows a collision on every run, not only the first.
        """
        out: list[str] = []

        def walk(node: dict, where: list[str]) -> None:
            if all(isinstance(v, str) for v in node.values()):
                ids = set(node.values())
                for name, id_ in node.items():
                    m = re.match(r"^(.+)-(\d+)$", id_)
                    if m and m.group(1) in ids:
                        out.append(f"{'/'.join(where)}: {name!r} -> {id_}")
                return
            for k, v in node.items():
                if isinstance(v, dict):
                    walk(v, where + [k])
        walk(self.data, [])
        return out

    def save(self) -> bool:
        if not self.dirty:
            return False
        self.path.parent.mkdir(parents=True, exist_ok=True)
        text = json.dumps(self.data, ensure_ascii=False, indent=1, sort_keys=True)
        self.path.write_text(text + "\n", encoding="utf-8", newline="\n")
        self.dirty = False
        return True
