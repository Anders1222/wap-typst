"""The typed view of a unit's OPTIONS: `optionGroups`.

The formatVersion 1 `options` tree keeps every line as printed, with the
price parsed off the end. This module reads that tree and says what kind of
thing each line is - a weapon, a mount, a command upgrade, a magic-item
allowance - and whether its choices are exclusive, so that a list builder
needs no wording of its own. Every group and choice keeps the printed line in
`raw`, so the gate can hold it to the source like any other string, and a
line the classifier cannot place is still emitted, as `kind: "upgrade"` with
`unclassified: true`. No line is dropped.

A group is one top-level line. A line that ends in "the following:" heads a
menu, and its children are the choices; any other line is a group of one
choice, itself. A choice with children of its own - the Standard Bearer and
the magic standard it may carry, a mount and its barding - carries them as
nested `options`, groups again.

Classification is by wording and by vocabulary: the rulebook's weapons and
special rules, the faction's own rules and upgrade chapters, the unit's own
upgrades and profile names. The order of the checks matters and is the order
of `classify`.
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field

from .ids import IdMap, slug

# --- the printed line, parsed --------------------------------------------------

# "+5 points", "+1 point/model", "+0.5 point/model", "+2 points per model",
# "+6 points/Crew", "+85 points/Genie", "+3 points each".
PRICE = re.compile(
    r"\s*\+\s*(?P<n>\d+(?:\.\d+)?)\s*(?:points?|pts)"
    r"(?:\s*/\s*(?P<per>[A-Za-z-]+)|\s+per\s+(?P<per2>[A-Za-z-]+)|\s+(?P<each>each))?"
    r"\s*\.?\s*$", re.I)
# The dotted line's other endings: a price of nothing, and a limit of nothing.
FREE = re.compile(r"(?:^|\s)free\s*\.?$", re.I)
NO_LIMIT = re.compile(r"\s+no points limit\s*\.?$", re.I)
LIMIT = re.compile(r"(?:up to|worth up to|of up to|up to a total of)\s+(\d+)\s*points", re.I)
# A trailing parenthetical that conditions the line - "(General only)",
# "(if armed with heavy lances)", "(see notes)" - as against one that is part
# of a name, "Magical Ward (6+)" or "Fly (8)".
QUALIFIER = re.compile(r"\s*\((?P<q>[^()]*\b(?:only|if|unless|see|different|does|not|armed|"
                       r"when|except|instead|replacing|already|with|without|per|on foot|"
                       r"mounted|in your army)\b[^()]*)\)\s*$", re.I)
NUMBER_WORDS = {"a": 1, "an": 1, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5,
                "six": 6, "seven": 7, "eight": 8, "nine": 9, "ten": 10}


def number(s: str) -> int | float:
    return float(s) if "." in s else int(s)


def count_of(s: str) -> int | None:
    s = s.lower()
    if s.isdigit():
        return int(s)
    return NUMBER_WORDS.get(s)


@dataclass
class Line:
    raw: str
    text: str                       # raw without its price
    points: int | float | None = None
    per_model: bool = False
    per: str | None = None          # "+6 points/Crew": the thing priced, when not the model
    free: bool = False
    no_limit: bool = False
    limit: int | None = None        # "up to N points"
    qualifier: str | None = None    # the trailing parenthetical, if it conditions the line
    core: str = ""                  # text without the qualifier, the words that classify


def parse_line(raw: str) -> Line:
    ln = Line(raw=raw, text=raw)
    m = PRICE.search(raw)
    if m:
        ln.text = raw[:m.start()].rstrip(" .")
        ln.points = number(m.group("n"))
        per = m.group("per") or m.group("per2")
        if per:
            if per.lower() == "model":
                ln.per_model = True
            else:
                ln.per = per
    elif FREE.search(raw):
        ln.text = FREE.sub("", raw).rstrip(" .")
        ln.points = 0
        ln.free = True
    elif NO_LIMIT.search(raw):
        ln.text = NO_LIMIT.sub("", raw).rstrip(" .")
        ln.no_limit = True
    lim = LIMIT.search(raw)
    if lim:
        ln.limit = int(lim.group(1))
    core = ln.text.rstrip(":").strip()
    q = QUALIFIER.search(core)
    if q:
        ln.qualifier = q.group("q").strip()
        core = core[:q.start()].rstrip()
    # "May be upgraded with the Full Plate special rule for +12 points."
    core = re.sub(r"\s+(?:for|at|costing)$", "", core, flags=re.I)
    ln.core = core.strip()
    return ln


# --- the vocabulary a book brings --------------------------------------------

GEAR_WORDS = {
    "weapon", "weapons", "armour", "armor", "shield", "shields", "buckler", "bucklers",
    "barding", "lance", "lances", "spear", "spears", "pike", "pikes", "bow", "bows",
    "longbow", "longbows", "shortbow", "shortbows", "greatbow", "greatbows", "crossbow",
    "crossbows", "handgun", "handguns", "pistol", "pistols", "rifle", "rifles",
    "blunderbuss", "blunderbusses", "flail", "flails", "halberd", "halberds", "polearm",
    "polearms", "hammer", "hammers", "axe", "axes", "sword", "swords", "blade", "blades",
    "dagger", "daggers", "javelin", "javelins", "sling", "slings", "net", "nets", "whip",
    "whips", "stakes", "brazier", "braziers", "bomb", "bombs", "gun", "guns", "cannon",
    "musket", "muskets", "arquebus", "mace", "maces", "club", "clubs", "scythe", "scythes",
    "glaive", "glaives", "staff", "staves", "dart", "darts", "blowpipe", "blowpipes",
    "harpoon", "harpoons", "trident", "tridents", "cloak", "cloaks", "helm", "helms",
    "grenade", "grenades", "arrows", "bolts", "shot", "shafts", "tips", "shards",
    "ironfist", "ironfists", "lasso", "lassos", "sabre", "sabres", "katana", "naginata",
    "yari", "yumi", "tetsubo", "kusarigama", "chakram", "talwar", "scimitar", "scimitars",
    "kukri", "shuriken", "fireglaive", "fireglaives", "drakegun", "gauntlet", "gauntlets",
    "handbow", "handbows", "staffs", "pavise", "pavises", "mantlet", "mantlets",
}
MISSILE_WORDS = {"bow", "bows", "longbow", "longbows", "shortbow", "shortbows", "greatbow",
                 "greatbows", "crossbow", "crossbows", "handgun", "handguns", "pistol",
                 "pistols", "rifle", "rifles", "blunderbuss", "blunderbusses", "javelin",
                 "javelins", "sling", "slings", "blowpipe", "blowpipes", "musket",
                 "muskets", "arquebus", "dart", "darts", "throwing", "bomb", "bombs",
                 "grenade", "grenades", "arrows", "bolts", "shot", "shafts", "tips",
                 "shards", "yumi", "shuriken", "chakram", "harpoon", "harpoons",
                 "fireglaive", "fireglaives", "drakegun"}
ARMOUR_WORDS = {"armour", "armor", "barding", "helm", "helms", "cloak", "cloaks"}
SHIELD_WORDS = {"shield", "shields", "buckler", "bucklers"}
ROLES = {"leader": "champion", "champion": "champion", "musician": "musician",
         "standard bearer": "standardBearer", "standard-bearer": "standardBearer"}
ITEM_TYPES = (("magic weapon", "weapon"), ("magic armour", "armour"), ("talisman", "talisman"),
              ("arcane item", "arcane"), ("enchanted item", "enchanted"),
              ("magic standard", "standard"))


def words(s: str) -> list[str]:
    return re.findall(r"[a-z]+", s.lower())


def singular(s: str) -> str:
    s = s.strip().lower()
    if s.endswith("ies"):
        return s[:-3] + "y"
    if s.endswith("s") and not s.endswith("ss"):
        return s[:-1]
    return s


def norm_rule(s: str) -> str:
    """A rule name as looked up: value dropped, case folded, no leading 'the'."""
    s = re.sub(r"\s*\([^)]*\)", "", s).strip().casefold()
    return re.sub(r"^the\s+", "", s)


@dataclass
class Context:
    """What the classifier knows about the book and the unit."""
    profiles: list[tuple[str, str]]                 # (name, id), longest name first
    rules: set[str] = field(default_factory=set)    # rule names, norm_rule'd
    unit_rules: dict[str, str] = field(default_factory=dict)  # norm -> printed, the unit's own
    gear: set[str] = field(default_factory=set)     # casefolded gear names from the rulebook
    families: list[tuple[re.Pattern, str]] = field(default_factory=list)
    upgrade_names: dict[str, str] = field(default_factory=dict)  # norm name -> family id

    def profile_in(self, text: str) -> str | None:
        """The id of the profile the text names, the longest name first."""
        for name, id_ in self.profiles:
            if re.search(r"\b" + re.escape(name) + r"s?\b", text, re.I):
                return id_
        return None

    def rule_in(self, name: str) -> str | None:
        """`name` as printed, if the book or the rulebook defines that rule.

        The unit's own UPGRADES are not rules: a line that names one is an
        `upgrade` pointing at it.
        """
        b = norm_rule(name)
        for cand in (b, singular(b), b + "s"):
            if cand in self.rules:
                return name.strip()
        return None

    def family_in(self, text: str) -> str | None:
        n = norm_rule(text)
        if n in self.upgrade_names:
            return self.upgrade_names[n]
        low = text.casefold()
        for pat, fam in self.families:
            if pat.search(low):
                return fam
        return None

    def has_gear(self, text: str) -> bool:
        ws = set(words(text))
        if ws & GEAR_WORDS:
            return True
        low = text.casefold()
        return any(re.search(r"\b" + re.escape(g) + r"s?\b", low) for g in self.gear)


def family_patterns(upgrades: list[dict]) -> tuple[list[tuple[re.Pattern, str]], dict[str, str]]:
    """Patterns for a faction's upgrade families, from its upgrade chapters.

    "KNIGHTLY ORDERS" matches "knightly order(s)"; "VIRTUES OF THE CHIVALRIC
    KNIGHT" matches "virtue(s)"; "MUTATIONS & TRAITS" matches either word.
    The family id is the chapter's slug. Each upgrade's own name matches too,
    so "Mark of Khorne" as a choice is placed under MARKS OF CHAOS.
    """
    pats: list[tuple[re.Pattern, str]] = []
    names: dict[str, str] = {}
    seen: set[str] = set()
    for up in upgrades:
        fam = slug(up["chapter"])
        names[norm_rule(up["name"])] = fam
        for title in (up["chapter"], up.get("group") or ""):
            if not title or title in seen:
                continue
            seen.add(title)
            head = re.split(r"\s+of\s+|\s+for\s+", title, flags=re.I)[0]
            for phrase in re.split(r"\s*(?:&|\band\b|,)\s*", head, flags=re.I):
                phrase = phrase.strip().casefold()
                if len(phrase) < 4 or phrase in ("the", "other"):
                    continue
                stem = singular(phrase)
                pats.append((re.compile(r"\b" + re.escape(stem) + r"(?:s|es)?\b"), fam))
    return pats, names


# --- the tree ------------------------------------------------------------------

def is_menu(text: str) -> bool:
    return bool(re.search(r"\bfollowing\b\s*(?:\([^)]*\))?\s*:?\s*$", text, re.I))


def tree_of_text(text: str) -> list[dict]:
    """OPTIONS that arrived as text (two entries): one node per printed line."""
    items: list[dict] = []
    for ln in text.split("\n"):
        if not ln.strip():
            continue
        if ln.startswith("  - ") and items:
            items[-1].setdefault("sub", []).append({"raw": ln[4:], "text": ln[4:]})
        elif ln.startswith("• "):
            items.append({"raw": ln[2:], "text": ln[2:]})
        else:
            # Not a bullet: prose or a table row the field carried. Kept, as
            # an unclassified line, never read as an option.
            items.append({"raw": ln, "text": ln, "prose": True})
    return items


def lines_of(options) -> list[str]:
    """Every printed line of a v1 options value, the multiset the gate compares."""
    items = tree_of_text(options) if isinstance(options, str) else (options or [])
    out: list[str] = []

    def walk(items):
        for it in items:
            out.append(it["raw"])
            walk(it.get("sub", []))
    walk(items)
    return out


# --- classification ------------------------------------------------------------

@dataclass
class Kind:
    kind: str
    name: str
    extra: dict = field(default_factory=dict)
    sub: str | None = None      # equipment: "melee-weapon", "missile-weapon", "armour", "shields"
    unclassified: bool = False


HAS_VERB = re.compile(r"^(?:(?:a|an|one|any|each|the)\s+.+?\s+)?(?:may|must|can)\b", re.I)


def strip_lead(core: str) -> str:
    """The thing a "May take a ..." line offers, the verb phrase dropped.

    A line with no verb - a menu's choice, "Great weapon" or "The Crusader's
    Vow" - is already the name and is kept whole.
    """
    if not HAS_VERB.match(core):
        return core.strip()
    s = re.sub(r"^(?:a|an|one|any|each|the)\s+.+?\s+(?=(?:may|must|can)\b)", "", core, flags=re.I)
    s = re.sub(r"^(?:may|must|can)\s+(?:also\s+)?(?:be\s+)?", "", s, flags=re.I)
    s = re.sub(r"^(?:take|have|given|upgraded (?:to|with)|upgrade to|mounted on|ride|"
               r"choose|equipped with|armed with|carry|include|accompanied by|purchase|"
               r"buy|add|gain|gains|receive)\s+", "", s, flags=re.I)
    s = re.sub(r"^(?:a|an|the|one|up to \w+|\d+)\s+", "", s, flags=re.I)
    return s.strip()


def gear_sub(names: list[str]) -> str:
    kinds = set()
    for n in names:
        ws = set(words(n))
        if ws & ARMOUR_WORDS:
            kinds.add("armour")
        elif ws & SHIELD_WORDS:
            kinds.add("shields")
        elif ws & MISSILE_WORDS:
            kinds.add("missile-weapon")
        else:
            kinds.add("melee-weapon")
    return kinds.pop() if len(kinds) == 1 else "equipment"


def printed(core: str, low_match: str) -> str:
    m = re.search(re.escape(low_match), core, re.I)
    return m.group(0) if m else low_match


def classify(ln: Line, ctx: Context, head: Kind | None = None) -> Kind:
    """What kind of line this is. `head` is the menu it sits under, if any."""
    core, low = ln.core, ln.core.casefold()

    # Under a mount menu every choice is a mount.
    if head is not None and head.kind == "mount":
        return Kind("mount", core)

    if re.search(r"\bcarry the battle standard\b", low):
        return Kind("battleStandard", "Battle Standard")

    if re.search(r"\bmagic standard\b", low) and not re.search(r"\bmagic items?\b", low):
        return Kind("magicStandard", "Magic Standard",
                    {"pointsLimit": None if ln.no_limit else ln.limit})

    m = re.search(r"\b(magic items?|magic weapons?|magic armour|talismans?|arcane items?|"
                  r"enchanted items?)\b", low)
    if m and (ln.limit is not None or ln.no_limit or re.search(r"\bup to\b", low)):
        types = [t for phrase, t in ITEM_TYPES if phrase in low]
        extra: dict = {"pointsLimit": ln.limit, "itemTypes": types or None}
        fam = ctx.family_in(low)
        if fam:
            extra["families"] = [fam]
        return Kind("magicItems", printed(core, m.group(1)), extra)

    m = re.search(r"\bupgrade(?:d)?\s+(?:(?P<n>one|two|\w+)\s+(?P<who>.+?)\s+)?to\s+(?:a|an)\s+"
                  r"(?P<role>leader|champion|musician|standard bearer|standard-bearer)\b", low)
    if m:
        extra = {"role": ROLES[m.group("role")]}
        if m.group("who"):
            extra["who"] = printed(core, m.group("who"))
        return Kind("command", printed(core, m.group("role")), extra)

    m = re.search(r"\blevel\s+(\d)\s+wizard\b|\bwizard\s*\(?\s*level\s+(\d)|\bwizard levels?\b",
                  low)
    if m:
        level = m.group(1) or m.group(2)
        extra = {"level": int(level) if level else None}
        if level is None:
            extra["levelDelta"] = 1
        return Kind("wizardLevel", strip_lead(core), extra)

    if re.search(r"\bmounted (?:on|upon)\b|\bmay ride\b|\bcarried by\b|\bdrawn by\b", low):
        name = re.sub(r"^.*?\b(?:mounted (?:on|upon)|ride|carried by|drawn by)\s+(?:(?:a|an|the)\s+)?",
                      "", core, flags=re.I).strip()
        return Kind("mount", name or core)

    fam = ctx.family_in(low)
    if fam:
        extra = {"family": fam}
        if ln.limit is not None:
            extra["pointsLimit"] = ln.limit
        return Kind("factionUpgrade", strip_lead(core), extra)

    m = re.search(r"^(?:.*?\b(?:with|have|has|given|gains?|to)\s+)?(?:the\s+|a\s+|an\s+)?"
                  r"(?P<rule>.+?)\s+special rules?$", core, re.I)
    if m:
        return Kind("specialRule", m.group("rule"), {"rule": m.group("rule")})

    # "May replace javelins with slings", "May replace the Knight's Vow with
    # the Crusader's Vow": gear if it reads as gear, else a rule the book
    # defines, else gear anyway - what is replaced is equipment as a rule.
    m = re.search(r"^(?:may\s+)?replace\s+(?:the\s+)?(?P<what>.+?)\s+with\s+(?:a|an|the)?\s*"
                  r"(?P<new>.+)$", core, re.I)
    if m and not is_menu(core):
        replaces, name = m.group("what"), m.group("new")
        if not ctx.has_gear(name) and not ctx.has_gear(replaces) and ctx.rule_in(name):
            return Kind("specialRule", name, {"rule": name, "replaces": replaces})
        return Kind("equipment", name, {"replaces": replaces}, gear_sub([name]))

    # "May upgrade one Sister of Sigmar to an Augur": a model becomes something
    # the unit's UPGRADES field defines, or that the book leaves unexplained.
    m = re.search(r"^(?:may\s+)?upgrade\s+(?P<n>\w+)\s+(?P<who>.+?)\s+to\s+(?:a|an)\s+"
                  r"(?P<new>.+)$", core, re.I)
    if m:
        name = m.group("new")
        extra = {"who": m.group("who")}
        own = ctx.unit_rules.get(norm_rule(name))
        if own:
            extra["rule"] = own
        return Kind("upgrade", name, extra)

    # Gear before the rule vocabulary: an army's special rules chapter often
    # describes its weapons, and a weapon is equipment whatever chapter it is in.
    if ctx.has_gear(core):
        name = strip_lead(core)
        return Kind("equipment", name, {}, gear_sub([name]))

    if re.search(r"^(?:may|must)\s+(?:have|take|be upgraded to|be given|gain|gains|be)\b", low) \
            or head is not None:
        cand = strip_lead(core)
        rule = ctx.rule_in(cand)
        if rule:
            return Kind("specialRule", cand, {"rule": rule})

    name = strip_lead(core)
    own = ctx.unit_rules.get(norm_rule(name)) or ctx.unit_rules.get(singular(norm_rule(name)))
    if own:
        return Kind("upgrade", name, {"rule": own})
    if ln.points is not None or ln.no_limit or ln.limit is not None or head is not None \
            or HAS_VERB.match(core):
        return Kind("upgrade", name)
    return Kind("upgrade", core, unclassified=True)


# --- groups --------------------------------------------------------------------

def select_of(text: str, n_choices: int) -> tuple[str, int, int | None]:
    """(select, min, max) a menu head asks for."""
    low = text.casefold()
    mn = 1 if re.search(r"\bmust\b|\bat least one\b", low) else 0
    m = re.search(r"\bup to\s+(\w+)\s+of the following", low)
    if m and count_of(m.group(1)):
        return "any", mn, count_of(m.group(1))
    if re.search(r"\bany (?:number )?of the following\b", low):
        return "any", mn, n_choices
    return "one", mn, 1


def choice_of(ln: Line, k: Kind, ctx: Context) -> dict:
    ch: dict = {"id": None, "name": k.name, "points": ln.points,
                "perModel": ln.per_model, "raw": ln.raw}
    if ln.per:
        ch["per"] = ln.per
    for key in ("replaces", "level", "levelDelta", "rule"):
        if key in k.extra:
            ch[key] = k.extra[key]
    who = ctx.profile_in(ln.qualifier) if ln.qualifier else None
    if who:
        ch["appliesTo"] = who
    if ln.qualifier and not (who and re.fullmatch(r"[\w\s'-]+ only", ln.qualifier, re.I)):
        ch["condition"] = ln.qualifier
    # "May take up to two additional Crew": a choice taken several times. Not
    # "up to a total of 50 points", which is a limit, not a count.
    m = re.search(r"\bup to\s+(\w+)\b", ln.core, re.I)
    if m and ln.limit is None and m.group(1).lower() not in ("a", "an") \
            and count_of(m.group(1)) and not is_menu(ln.core):
        ch["min"], ch["max"] = 0, count_of(m.group(1))
    m = re.search(r"\bfor every\s+(\w+)\s+models?\b", ln.core, re.I)
    if m and count_of(m.group(1)):
        ch["everyModels"] = count_of(m.group(1))
    return ch


def group_base(k: Kind, applies: str | None, menu: bool) -> str:
    """The slug a group's id is derived from."""
    if k.kind == "equipment":
        return (k.sub or "equipment") if menu else slug(k.name)
    if k.kind == "mount":
        return "mount"
    if k.kind == "command":
        return {"champion": "champion", "musician": "musician",
                "standardBearer": "standard-bearer"}[k.extra["role"]]
    if k.kind == "magicStandard":
        return "magic-standard"
    if k.kind == "magicItems":
        return "magic-items" + (f"-{applies}" if applies else "")
    if k.kind == "battleStandard":
        return "battle-standard"
    if k.kind == "wizardLevel":
        return "wizard-level"
    if k.kind == "factionUpgrade":
        return k.extra["family"]
    if k.kind == "specialRule" and k.extra.get("rule"):
        return slug(norm_rule(k.extra["rule"]))
    if menu:
        return k.extra.get("replacesSlug") or "upgrade"
    return slug(" ".join(k.name.split()[:5])) if k.name else "upgrade"


def option_groups(options, ctx: Context, ids: IdMap, unit_name: str,
                  report: dict) -> list[dict]:
    """The typed view of a unit's OPTIONS, ids assigned from the book's map."""
    if options is None:
        return []
    items = tree_of_text(options) if isinstance(options, str) else options
    seen_keys: dict[str, int] = {}

    def key_for(path: str) -> str:
        n = seen_keys.get(path, 0) + 1
        seen_keys[path] = n
        return path if n == 1 else f"{path} #{n}"

    def build(items: list[dict], path: str) -> list[dict]:
        return [group_of(it, path) for it in items]

    def group_of(it: dict, path: str) -> dict:
        ln = parse_line(it["raw"])
        subs = it.get("sub") or []
        menu = is_menu(ln.text)
        applies = ctx.profile_in(ln.core) if re.match(
            r"^(?:a|an|one|the|any|each)\s+", ln.core, re.I) else None
        if menu:
            head_kind = classify(ln, ctx)
            replaces = None
            m = re.search(r"\breplace\s+(?:the\s+)?(?P<what>.+?)\s+with\b", ln.core, re.I)
            if m:
                replaces = m.group("what")
            parsed = [parse_line(s["raw"]) for s in subs]
            kinds = [classify(p, ctx, head_kind) for p in parsed]
            if replaces:
                for k in kinds:
                    k.extra.setdefault("replaces", replaces)
                    # What replaces a weapon is a weapon, whatever chapter
                    # describes it.
                    if ctx.has_gear(replaces) and k.kind in ("specialRule", "upgrade"):
                        k.kind, k.sub = "equipment", gear_sub([k.name])
                        k.extra.pop("rule", None)
            if head_kind.kind == "mount":
                kind = Kind("mount", head_kind.name)
            elif kinds:
                # The choices say what the menu is: the kind most of them have.
                tally: dict[str, int] = {}
                for k in kinds:
                    tally[k.kind] = tally.get(k.kind, 0) + 1
                top = max(tally.values())
                first = next(k for k in kinds if tally[k.kind] == top)
                kind = Kind(first.kind, first.name, dict(first.extra),
                            gear_sub([k.name for k in kinds]) if first.kind == "equipment" else None)
                if kind.kind == "specialRule" and len(kinds) > 1:
                    kind.extra["rule"] = None
                kind.extra.pop("who", None)
                if replaces and kind.kind not in ("equipment", "mount"):
                    kind.extra["replacesSlug"] = slug(replaces)
                # A choice keeps a `rule` only when it is of the menu's kind.
                for k in kinds:
                    if k.kind != kind.kind:
                        k.extra.pop("rule", None)
            else:
                # A menu head with nothing under it is a fault in the source
                # (three entries print the choices as top-level bullets);
                # flagged so the report shows it until the book is fixed.
                kind = Kind(head_kind.kind, head_kind.name, dict(head_kind.extra),
                            unclassified=True)
            choices = [choice_of(p, k, ctx) for p, k in zip(parsed, kinds)]
            select, mn, mx = select_of(ln.core, len(choices))
            sources = subs
        else:
            kind = Kind("upgrade", ln.core, unclassified=True) if it.get("prose") \
                else classify(ln, ctx)
            choices = [choice_of(ln, kind, ctx)]
            select, mn, mx = "any", 0, 1
            if "max" in choices[0] or re.search(r"\bfor every\s+\w+\s+models?\b", ln.core, re.I):
                select, mx = "count", None
            if re.match(r"^must\b", ln.core, re.I):
                mn = 1
            sources = [it]
        if applies is None and kind.extra.get("who"):
            applies = ctx.profile_in(kind.extra["who"])
        # The map key is the line without its price, so a price correction
        # in the source keeps the id.
        key = key_for(path + ln.text)
        gid = ids.assign(("groups", unit_name), key, group_base(kind, applies, menu))
        group: dict = {"id": gid, "kind": kind.kind, "select": select, "min": mn, "max": mx,
                       "appliesTo": applies, "raw": ln.raw}
        if kind.kind == "command":
            group["role"] = kind.extra["role"]
        elif kind.kind == "magicStandard":
            group["pointsLimit"] = kind.extra.get("pointsLimit")
        elif kind.kind == "magicItems":
            group["pointsLimit"] = kind.extra.get("pointsLimit")
            group["itemTypes"] = kind.extra.get("itemTypes")
            if "families" in kind.extra:
                group["families"] = kind.extra["families"]
        elif kind.kind == "battleStandard":
            group["points"] = ln.points
        elif kind.kind == "factionUpgrade":
            group["family"] = kind.extra["family"]
            if "pointsLimit" in kind.extra:
                group["pointsLimit"] = kind.extra["pointsLimit"]
        elif kind.kind == "specialRule":
            group["rule"] = kind.extra.get("rule")
        if ln.qualifier:
            who = ctx.profile_in(ln.qualifier)
            if who and group["appliesTo"] is None:
                group["appliesTo"] = who
            if not (who and re.fullmatch(r"[\w\s'-]+ only", ln.qualifier, re.I)):
                group["condition"] = ln.qualifier
        if kind.unclassified:
            group["unclassified"] = True
            report["unclassified"] += 1
        report["groups"] += 1
        for ch, src in zip(choices, sources):
            ch["id"] = ids.assign(("choices", unit_name, gid), ch["name"])
            report["choices"] += 1
            nested = src.get("sub") or []
            if nested:
                ch["options"] = build(nested, path + ln.text + " > " + ch["name"] + " > ")
        group["choices"] = choices
        return group

    return build(items, "")


def raws_of_groups(groups: list[dict]) -> list[str]:
    """Every printed line the typed view holds, the multiset the gate compares."""
    out: list[str] = []
    for g in groups:
        out.append(g["raw"])
        for ch in g["choices"]:
            if ch["raw"] != g["raw"]:
                out.append(ch["raw"])
            out.extend(raws_of_groups(ch.get("options", [])))
    return out
