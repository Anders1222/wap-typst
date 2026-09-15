"""Army composition as data.

The rulebook states the composition rules in prose, under CHOOSING YOUR ARMY;
each army book adds its own in the NOTES under a unit. Both are read here
from the export's own records - the chapter's heads and the unit's notes -
never from Typst, and every number carries the sentence it was read from, so
the gate can hold it to the page like any other text. A value the chapter
does not state is left out rather than guessed.

Top level, from the rulebook:

  pointsCategories   {characters: {maxPercent}, core: {minPercent}, ..}
  singleUnitMaxPercent
  duplicates         {special: {bands: [{minPoints, maxPoints, max}..], beyond: {everyPoints, add}}, rare: ..}
  general            {required}
  battleStandard     {max}
  specialCharacters  {maxEach}
  core.expendable    each Expendable Core unit needs another Core unit that is not
  sources            {key: the sentence each value came from}

Per faction, from unit notes:

  unitConstraints    [{type, unitIds, .., raw}]
    max        "You may not have more than 2 Arch Lectors in your army"
    limited    "0-1", "0-1 per 1000 points" - the format defines it for editions
               that print unit limits this way; no WAR book does
    perSlot    "You may take 1-2 Ballistas as a single Rare choice"
    ratio      "You may not have more units of X than you have units of Y"
    general    "X must be the Army General", "X may never be the Army General"
    handlers   "One Hunt Master must be included for every 10 Hunting Hounds in the unit"
"""

from __future__ import annotations

import re

NUMBER_WORDS = {"one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6,
                "seven": 7, "eight": 8, "nine": 9, "ten": 10}


def count_of(s: str) -> int | None:
    s = s.lower().replace(",", "")
    return int(s) if s.isdigit() else NUMBER_WORDS.get(s)


def sentences(text: str) -> list[str]:
    return [s.strip() for s in re.split(r"(?<=[.!?])\s+|\n", text) if s.strip()]


# --- the rulebook --------------------------------------------------------------

def heads_under(chapter: dict) -> dict[str, dict]:
    """Every head under a chapter node, by upper-cased name, whatever its depth."""
    out: dict[str, dict] = {}

    def walk(node: dict) -> None:
        for h in node.get("heads", []):
            out.setdefault(h["name"].upper(), h)
        for c in node.get("children", []):
            out.setdefault(c["title"].upper(), {"name": c["title"], "text": c.get("text", "")})
            walk(c)
    walk(chapter)
    return out


def percent_in(text: str, pattern: str) -> tuple[float, str] | None:
    for s in sentences(text):
        m = re.search(pattern, s, re.I)
        if m:
            return int(m.group(1)) / 100, s
    return None


def rulebook_composition(rulebook: dict) -> dict:
    chapter = next((c for c in rulebook["chapters"] if c["title"].upper() == "CHOOSING YOUR ARMY"),
                   None)
    comp: dict = {"pointsCategories": {}}
    sources: dict[str, str] = {}
    if chapter is None:
        return comp
    heads = heads_under(chapter)

    for head, key in (("CHARACTERS", "characters"), ("LORDS", "lords"), ("HEROES", "heroes"),
                      ("CORE UNITS", "core"), ("SPECIAL UNITS", "special"),
                      ("RARE UNITS", "rare")):
        h = heads.get(head)
        if not h:
            continue
        cat: dict = {}
        hit = percent_in(h["text"], r"\bup to\s+(\d+)%")
        if hit:
            cat["maxPercent"], sources[f"pointsCategories.{key}.maxPercent"] = hit
        hit = percent_in(h["text"], r"\b(?:minimum of|at least)\s+(\d+)%")
        if hit:
            cat["minPercent"], sources[f"pointsCategories.{key}.minPercent"] = hit
        for s in sentences(h["text"]):
            if re.search(r"\bno maximum\b", s, re.I):
                cat["maxPercent"] = None
                sources[f"pointsCategories.{key}.maxPercent"] = s
            m = re.search(r"\bfor every\b.*\bExpendable\b.*\bat least (\w+) other\b", s, re.I)
            if m and count_of(m.group(1)):
                cat["expendable"] = {"requiresOtherCore": count_of(m.group(1))}
                sources[f"pointsCategories.{key}.expendable"] = s
        if cat:
            comp["pointsCategories"][key] = cat

    h = heads.get("COST LIMIT")
    if h:
        hit = percent_in(h["text"], r"\bmore than\s+(\d+)%")
        if hit:
            comp["singleUnitMaxPercent"], sources["singleUnitMaxPercent"] = hit

    h = heads.get("THE ARMY GENERAL")
    if h:
        for s in sentences(h["text"]):
            if re.search(r"\bmust always include at least one character\b", s, re.I):
                comp["general"] = {"required": True}
                sources["general"] = s
                break

    h = heads.get("THE BATTLE STANDARD BEARER")
    if h:
        for s in sentences(h["text"]):
            if re.search(r"\bonly one of them may be nominated\b", s, re.I):
                comp["battleStandard"] = {"max": 1}
                sources["battleStandard"] = s
                break

    h = heads.get("SPECIAL CHARACTERS")
    if h:
        for s in sentences(h["text"]):
            if re.search(r"\bincluded in an army only once\b", s, re.I):
                comp["specialCharacters"] = {"maxEach": 1}
                sources["specialCharacters"] = s
                break

    h = heads.get("DUPLICATE CHOICES")
    if h and h.get("tables"):
        dup = duplicates_of(h["tables"][0])
        if dup:
            comp["duplicates"] = dup
            sources["duplicates"] = next(
                (s for s in sentences(h["text"]) if "duplicates" in s.lower()), h["text"])

    comp["sources"] = sources
    return comp


def duplicates_of(table: list[list[str]]) -> dict | None:
    """The DUPLICATE CHOICES chart as bands of points, one column per section.

    ("0-999", "1", "1") .. ("Each +1000", "+1", "+1"): the last row says how
    the limit grows past the last band.
    """
    if not table or len(table[0]) < 2:
        return None
    header = [c.strip().rstrip(":").lower() for c in table[0]]
    cols = {}
    for i, name in enumerate(header[1:], 1):
        key = name.replace(" units", "").strip()
        if key in ("special", "rare", "core", "characters"):
            cols[key] = i
    if not cols:
        return None
    out: dict = {k: {"bands": [], "beyond": None} for k in cols}
    for row in table[1:]:
        span = row[0].strip()
        m = re.match(r"^(\d+)\s*-\s*(\d+)$", span)
        if m:
            for k, i in cols.items():
                out[k]["bands"].append({"minPoints": int(m.group(1)),
                                        "maxPoints": int(m.group(2)),
                                        "max": int(row[i].strip().lstrip("+"))})
            continue
        m = re.match(r"^each\s*\+\s*(\d+)$", span, re.I)
        if m:
            for k, i in cols.items():
                out[k]["beyond"] = {"everyPoints": int(m.group(1)),
                                    "add": int(row[i].strip().lstrip("+"))}
    return out


# --- the army books --------------------------------------------------------------

def notes_lines(unit: dict) -> list[str]:
    n = unit.get("notes")
    if isinstance(n, str):
        return [ln for ln in n.split("\n") if ln.strip()]
    if isinstance(n, list):
        return [x for x in n if isinstance(x, str)] + \
               [x["text"] for x in n if isinstance(x, dict) and "text" in x]
    return []


def unit_constraints(unit: dict, units: list[dict]) -> list[dict]:
    """The composition constraints a unit's NOTES state, the note kept in `raw`."""
    out: list[dict] = []
    uid = unit["id"]
    profiles = sorted(unit.get("profiles", []), key=lambda r: -len(r["name"]))

    def profile_named(text: str) -> str | None:
        """The profile row the text names, unless the row is the unit itself."""
        for row in profiles:
            if row["name"].casefold() == unit["name"].casefold():
                continue
            if re.search(r"\b" + re.escape(row["name"]) + r"s?\b", text, re.I):
                return row["id"]
        return None

    def unit_named(text: str) -> str | None:
        t = text.strip().casefold()
        for cand in (t, t[:-1] if t.endswith("s") else t + "s", re.sub(r"^the\s+", "", t)):
            for u in units:
                if u["name"].casefold() == cand:
                    return u["id"]
        return None

    for raw in notes_lines(unit):
        s = raw.strip()
        m = re.search(r"^you may not (?:have|field|include|take) more than (\w+) (.+?) in your army",
                      s, re.I)
        if m and count_of(m.group(1)) is not None:
            c: dict = {"type": "max", "unitIds": [uid], "max": count_of(m.group(1)), "raw": raw}
            who = profile_named(m.group(2))
            if who:
                c["profileId"] = who
            out.append(c)
            continue
        m = re.search(r"^you may not (?:have|field|include|take) more units of (.+?) than you have "
                      r"units (?:of|with) (.+?)\.?$", s, re.I)
        if m:
            # One X per Y: the limit is 1 per required unit, stated so a
            # builder can apply it as any other max.
            c = {"type": "ratio", "unitIds": [uid], "max": 1, "perUnit": True, "raw": raw}
            other = re.sub(r"\s+in your army$", "", m.group(2), flags=re.I)
            r = re.match(r"^the (.+?) special rule$", other, re.I)
            if r:
                c["requiresRule"] = r.group(1)
            else:
                names = [n.strip() for n in re.split(r"\s*(?:,|\bor\b|\band/or\b|\band\b)\s*", other)
                         if n.strip()]
                ids = [unit_named(n) for n in names]
                c["requires"] = [i for i in ids if i]
                if not all(ids):
                    c["requiresNames"] = names
                c["requiresAny"] = len(names) > 1
            out.append(c)
            continue
        m = re.search(r"^you may take (\d+)\s*-\s*(\d+) (.+?) (?:as )?a single (\w+) choice", s, re.I)
        if m:
            out.append({"type": "perSlot", "unitIds": [uid],
                        "perSlot": {"min": int(m.group(1)), "max": int(m.group(2))},
                        "section": m.group(4).lower(), "raw": raw})
            continue
        m = re.search(r"^0\s*-\s*(\d+)(?:\s+per\s+(?:(\d[\d,]*)\s+points|army))?", s, re.I)
        if m:
            c = {"type": "limited", "unitIds": [uid], "min": 0, "max": int(m.group(1)), "raw": raw}
            if m.group(2):
                c["perPoints"] = int(m.group(2).replace(",", ""))
            out.append(c)
            continue
        m = re.search(r"^(.+?) must be the army general\.?$", s, re.I)
        if m:
            out.append({"type": "general", "unitIds": [uid], "mustBeGeneral": True, "raw": raw})
            continue
        m = re.search(r"^(.+?) may never be the army general\.?$", s, re.I)
        if m:
            out.append({"type": "general", "unitIds": [uid], "mayBeGeneral": False, "raw": raw})
            continue
        m = re.search(r"^(?:one|1) (.+?) must be included for every (\w+) (.+?) in the unit"
                      r"|^you must include (?:one|1) (.+?) for every (\w+) (.+?) in the unit", s, re.I)
        if m:
            name, per = (m.group(1), m.group(2)) if m.group(1) else (m.group(4), m.group(5))
            if count_of(per):
                c = {"type": "handlers", "unitIds": [uid],
                     "handlers": {"name": name, "per": count_of(per)}, "raw": raw}
                who = profile_named(name)
                if who:
                    c["profileId"] = who
                out.append(c)
            continue
    return out
