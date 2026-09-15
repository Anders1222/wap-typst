# war.json, formatVersion 2

`build/war.json` is the whole edition as one file for the army builder
([Warhammer_Calculator_Edition](https://github.com/dkma26709/Warhammer_Calculator_Edition)).
`python export.py` writes it from the Typst sources in `src/`; nothing edits
it by hand. `python export.py --check` is the gate, and
`schema/war.schema.json` is the JSON Schema the gate validates it against.

formatVersion 2 keeps every formatVersion 1 field with its exact value and
adds beside it what a list builder could not get from the printed lines:
stable ids, the kind of every option and whether its choices are exclusive,
the composition rules as numbers, a parsed unit size, and list forms of the
comma-joined fields. A builder written for formatVersion 1 reads a
formatVersion 2 file unchanged.

## Top level

```json
{
  "formatVersion": 2,
  "system": "war",
  "version": "1.0",
  "source": "<git commit the file was exported from>",
  "rulebook": { ...unchanged from formatVersion 1... },
  "composition": { ...see Composition... },
  "factions": { "empire": { ... }, "bretonnia": { ... } }
}
```

`rulebook` is the rulebook as a heading tree with `rules`, `items`, `lores`
and `weapons` lifted out, exactly as formatVersion 1 had it.

## Faction

Keeps `name`, `version`, `align`, `rules`, `items`, `upgrades`, `lores`,
`prose` and `units`. Adds:

- `id`: the book's slug, the same as its key under `factions`.
- `id` on every entry of `rules`, `items`, `upgrades` and `lores`.
- `composition`: present when the book states constraints of its own, the
  same shape as the top-level block but holding only `unitConstraints`.

## Unit

Every formatVersion 1 field stays: `name`, `chapter`, `category`,
`profiles`, the camelCased record fields (`unitSize`, `troopType`, `mount`,
`crew`, `baseSize`, `equipment`, `magic`, `specialRules`, `upgrades`,
`options`, `notes`, the `*Body` companions and the book-specific gift lists),
and `subtitle`, `solo`, `compact` where the entry sets them. Added:

| field | value |
|---|---|
| `id` | kebab-case, unique within the faction |
| `section` | the army-list slot the category fills: `characters`, `core`, `special`, `rare`, `mounts`; `null` for a chapter that is none of these |
| `tier` | `"lord"` or `"hero"` for a book that splits its characters, else `null` |
| `named` | `true` under SPECIAL CHARACTERS |
| `profiles[].id` | kebab-case, unique within the unit |
| `unitSizeParsed` | `"15-45"` → `{"min": 15, "max": 45}`; `"10+"` → `{"min": 10, "max": null}`; `"1"` → `{"min": 1, "max": 1}`. Absent when `unitSize` is absent or does not parse; the build report lists the latter |
| `equipmentList` | `equipment` split on commas outside brackets and trimmed; only when `equipment` is a string |
| `specialRulesList` | the same for `specialRules` |
| `optionGroups` | the typed view of `options`, below |

## optionGroups

`options` is the printed OPTIONS list, each line with its price parsed off
the end. `optionGroups` reads the same lines and says what each one is. A
line that ends in "the following:" is a **menu**: it becomes one group and
the lines under it are its choices. Any other line is a group of one choice,
itself, so a group's `raw` and its only choice's `raw` are then the same
line. A choice with lines of its own under it (the Standard Bearer and the
magic standard it may carry, a mount and its barding) carries them as nested
`options`, which are groups again.

The gate holds this to the printed list: every line of `options` appears in
`optionGroups` exactly once, and every `raw` is in the Typst source.

A group:

| field | value |
|---|---|
| `id` | kebab-case, unique within the unit across all nesting levels |
| `kind` | one of the kinds below |
| `select` | `one`: the choices are mutually exclusive. `any`: independent toggles. `count`: the choice may be taken several times, up to `max` on the choice |
| `min`, `max` | how many choices may be taken. `max` is `null` for `count` |
| `appliesTo` | the id of the profile the line restricts itself to ("A Captain may take …", "May upgrade one Halberdier to …"), else `null` |
| `raw` | the printed line, exactly |
| `condition` | a bracketed qualifier that names no profile: "if armed with heavy lances", "see notes" |
| `unclassified` | `true` when the classifier could not place the line; the kind is then `upgrade` |
| `choices` | the choices |

A choice:

| field | value |
|---|---|
| `id` | kebab-case, unique within the group |
| `name` | the thing offered, without the verb phrase or the price: "Great weapon", "Leader", "Warhorse" |
| `points` | a number; `0` for "free"; `null` when the line prices nothing (a magic-item allowance) |
| `perModel` | `true` for "/model" and "per model" |
| `per` | what the price is per when it is not the model: "Crew", "Genie" |
| `raw` | the printed line, exactly |
| `appliesTo` | a profile id from a bracketed restriction on the choice itself: "Griffon (General only)" |
| `condition` | a bracketed qualifier on the choice that names no profile |
| `replaces` | what the choice replaces, from "May replace X with Y" |
| `min`, `max` | for `select: "count"`, how many times the choice may be taken |
| `everyModels` | "one Fanatic for every 10 models": a count that scales with the unit |
| `options` | nested groups conditional on this choice |
| `unitId` | on a mount choice, the id of the unit of the book it names |
| `level`, `levelDelta`, `rule` | see the kinds |

The kinds, the wording each comes from, and the fields it adds:

| kind | wording | extra fields |
|---|---|---|
| `equipment` | weapons, armour, shields, barding, gear: "May take a shield", "May choose one of the following" with gear under it, "May replace X with Y" | choice `replaces` |
| `mount` | "May be mounted on …", "May be drawn by …", chariots, monsters | choice `unitId`; a choice may carry nested `options` |
| `command` | "May upgrade one X to a Leader / Musician / Standard Bearer" | group `role`: `champion`, `musician`, `standardBearer`; nested `options` on the choice for what the bearer may carry |
| `magicStandard` | "May take a Magic Standard worth up to N points" | group `pointsLimit`, `null` when the line says "no points limit" |
| `magicItems` | "May take Magic Items up to a total of N points", also "Talismans up to …" | group `pointsLimit`; `itemTypes`, a list of `weapon`, `armour`, `talisman`, `arcane`, `enchanted`, `standard` when the line names categories, else `null`; `families` when the line also admits a faction upgrade family ("one Virtue and/or Magic Items") |
| `battleStandard` | "may carry the Battle Standard" | group `points` |
| `wizardLevel` | "May take an additional Wizard Level", "May be upgraded to a Level 2 Wizard" | choice `level` (the level reached, or `null`) and `levelDelta` (`1` for "an additional level") |
| `factionUpgrade` | a family the book defines in an `upgrades` chapter: Knightly Orders, Virtues, Marks, Blessed Spawnings, Clan Mon, Quirks | group `family`, the chapter's id; `pointsLimit` when the line states one |
| `specialRule` | "May have the X special rule", "May be upgraded to Skirmishers", a menu of vows: X is a rule the rulebook or the book defines | group `rule` (the rule named, `null` for a menu of several), choice `rule`; choice `replaces` for "May replace the Knight's Vow with …" |
| `upgrade` | any other priced toggle: "May take an additional crew", "May take Iron-hard Hooves", "May upgrade one Sister of Sigmar to an Augur" | choice `rule` when the unit's own UPGRADES field defines the thing |

The classifier decides by wording and vocabulary: the rulebook's weapon
heads and special rules, the faction's ARMY SPECIAL RULES and upgrade
chapters, the unit's own UPGRADES and profile names. A menu takes the kind
most of its choices have, except that a mount menu is a mount menu. A line
it cannot place is still emitted, never dropped: `kind: "upgrade"` with
`unclassified: true`, which the build report counts per faction. A menu
head with no lines under it is flagged the same way: the JSON mirrors the
source, so a book that prints a menu's choices as top-level bullets gets an
empty menu and loose lines until the book is corrected. Two entries in the
corpus have OPTIONS that are prose rather than a list, and their lines
arrive that way.

Group ids are derived from what the group is, not from the head line, since
"May choose one of the following:" recurs: an equipment menu is
`melee-weapon`, `missile-weapon`, `armour`, `shields` or `equipment` by what
it offers; a single gear line is the gear (`shield`, `barding`); a command
group is its role (`champion`, `musician`, `standard-bearer`); a magic-item
allowance is `magic-items`, suffixed with the profile it applies to
(`magic-items-captain`); a faction upgrade is its family; a special rule is
the rule. A collision within the unit gets a numeric suffix (`equipment-2`).

## IDs

Every id is kebab-case ASCII, derived from the printed name, unique within
its parent: a unit, rule, item, upgrade or lore within the faction; a
profile row and a group within the unit; a choice within its group. Only a
collision earns a numeric suffix.

Ids are stable across source edits because each book has a committed map,
`ids/<slug>.json`, from source name to id, by table (`units`, `profiles`,
`groups`, `choices`, `rules`, `items`, `upgrades`, `lores`). Group keys are
the printed line without its price, so a price correction keeps the id. The
export reads the map, adds names it has not seen, and never renames an entry
it has. A name corrected in the source therefore arrives as a **new** entry
with a fresh id; the fix, so that saved army lists keep working, is to point
the new name at the old id by hand and drop the stale entry. The build
report lists every new entry so that review happens before the map is
committed.

## Composition

The top-level `composition` block is read from the rulebook's CHOOSING YOUR
ARMY chapter. A value the chapter does not state is left out rather than
guessed, and `sources` holds the sentence each value was read from, which
the gate holds to the page like any other text.

```json
{
  "pointsCategories": {
    "characters": { "maxPercent": 0.35 },
    "core": { "minPercent": 0.25, "maxPercent": null,
              "expendable": { "requiresOtherCore": 1 } },
    "special": { "maxPercent": 0.5 },
    "rare": { "maxPercent": 0.25 }
  },
  "singleUnitMaxPercent": 0.25,
  "general": { "required": true },
  "battleStandard": { "max": 1 },
  "specialCharacters": { "maxEach": 1 },
  "duplicates": {
    "special": {
      "bands": [
        { "minPoints": 0, "maxPoints": 999, "max": 1 },
        { "minPoints": 1000, "maxPoints": 1999, "max": 2 },
        { "minPoints": 2000, "maxPoints": 2999, "max": 3 },
        { "minPoints": 3000, "maxPoints": 3999, "max": 4 },
        { "minPoints": 4000, "maxPoints": 4999, "max": 5 }
      ],
      "beyond": { "everyPoints": 1000, "add": 1 }
    },
    "rare": { "bands": [ ... ], "beyond": { "everyPoints": 1000, "add": 1 } }
  },
  "sources": {
    "pointsCategories.characters.maxPercent": "You can spend up to 35% of your points on Characters.",
    "singleUnitMaxPercent": "No single character or unit in your army may cost more than 25% of your total points.",
    ...
  }
}
```

The rulebook has no lords/heroes split, so `lords` and `heroes` are absent.
The duplicate limit is the chapter's chart, a band per points bracket with a
rule for growth past the last band, since it is not a straight line (Rare
stays at 1 up to 2,999 points).

A faction's `composition.unitConstraints` are read from the NOTES under its
units. Each keeps the note in `raw`, names the unit in `unitIds`, and says
what kind it is in `type`:

| type | wording | fields |
|---|---|---|
| `max` | "You may not have more than 2 Arch Lectors in your army" | `max`; `profileId` when the note counts one profile of the unit |
| `perSlot` | "You may take 1-2 Ballistas as a single Rare choice" | `perSlot: {min, max}`, `section` |
| `ratio` | "You may not have more units of X than you have units of Y" | `perUnit: true`; `requires` (unit ids), `requiresAny`, `requiresNames` for a name that resolved to no unit; or `requiresRule` for "units with the State Troops special rule" |
| `general` | "X must be the Army General", "X may never be the Army General" | `mustBeGeneral: true` or `mayBeGeneral: false` |
| `handlers` | "One Hunt Master must be included for every 10 Hunting Hounds in the unit" | `handlers: {name, per}`; `profileId` |

The gate holds every constraint's `raw` to the unit's notes and to the
source.

## Worked example: a core unit

The Empire's Halberdiers, complete. `options` is the formatVersion 1 view;
`optionGroups` is the formatVersion 2 view of the same five lines.

```json
{
 "name": "HALBERDIERS",
 "chapter": "CORE UNITS",
 "category": "Core",
 "profiles": [
  {"name": "Halberdier", "M": 4, "WS": 3, "BS": 3, "S": 3, "T": 3, "W": 1,
   "I": 3, "A": 1, "Ld": 7, "points": 5, "id": "halberdier"}
 ],
 "unitSize": "15-45",
 "troopType": "Infantry (Human)",
 "baseSize": "20x20 or 25x25",
 "equipment": "Polearm",
 "specialRules": "State Troops",
 "options": [
  {"raw": "May choose one of the following:", "text": "May choose one of the following:",
   "sub": [
    {"raw": "Light armour +0.5 point/model", "text": "Light armour", "cost": 0.5, "perModel": true},
    {"raw": "Medium armour +1.5 points/model", "text": "Medium armour", "cost": 1.5, "perModel": true}
   ]},
  {"raw": "May take shields +1 point/model", "text": "May take shields", "cost": 1, "perModel": true},
  {"raw": "May upgrade one Halberdier to a Leader +5 points", "text": "May upgrade one Halberdier to a Leader",
   "cost": 5, "perModel": false,
   "sub": [{"raw": "May take a pistol +3 points", "text": "May take a pistol", "cost": 3, "perModel": false}]},
  {"raw": "May upgrade one Halberdier to a Musician +5 points", "text": "May upgrade one Halberdier to a Musician",
   "cost": 5, "perModel": false},
  {"raw": "May upgrade one Halberdier to a Standard Bearer +10 points", "text": "May upgrade one Halberdier to a Standard Bearer",
   "cost": 10, "perModel": false,
   "sub": [{"raw": "May take a Magic Standard worth up to 25 points", "text": "May take a Magic Standard worth up to 25 points", "limit": 25}]}
 ],
 "id": "halberdiers",
 "section": "core",
 "tier": null,
 "named": false,
 "unitSizeParsed": {"min": 15, "max": 45},
 "equipmentList": ["Polearm"],
 "specialRulesList": ["State Troops"],
 "optionGroups": [
  {
   "id": "armour", "kind": "equipment", "select": "one", "min": 0, "max": 1, "appliesTo": null,
   "raw": "May choose one of the following:",
   "choices": [
    {"id": "light-armour", "name": "Light armour", "points": 0.5, "perModel": true, "raw": "Light armour +0.5 point/model"},
    {"id": "medium-armour", "name": "Medium armour", "points": 1.5, "perModel": true, "raw": "Medium armour +1.5 points/model"}
   ]
  },
  {
   "id": "shields", "kind": "equipment", "select": "any", "min": 0, "max": 1, "appliesTo": null,
   "raw": "May take shields +1 point/model",
   "choices": [
    {"id": "shields", "name": "shields", "points": 1, "perModel": true, "raw": "May take shields +1 point/model"}
   ]
  },
  {
   "id": "champion", "kind": "command", "select": "any", "min": 0, "max": 1, "appliesTo": "halberdier",
   "raw": "May upgrade one Halberdier to a Leader +5 points",
   "role": "champion",
   "choices": [
    {"id": "leader", "name": "Leader", "points": 5, "perModel": false,
     "raw": "May upgrade one Halberdier to a Leader +5 points",
     "options": [
      {"id": "pistol", "kind": "equipment", "select": "any", "min": 0, "max": 1, "appliesTo": null,
       "raw": "May take a pistol +3 points",
       "choices": [{"id": "pistol", "name": "pistol", "points": 3, "perModel": false, "raw": "May take a pistol +3 points"}]}
     ]}
   ]
  },
  {
   "id": "musician", "kind": "command", "select": "any", "min": 0, "max": 1, "appliesTo": "halberdier",
   "raw": "May upgrade one Halberdier to a Musician +5 points",
   "role": "musician",
   "choices": [
    {"id": "musician", "name": "Musician", "points": 5, "perModel": false, "raw": "May upgrade one Halberdier to a Musician +5 points"}
   ]
  },
  {
   "id": "standard-bearer", "kind": "command", "select": "any", "min": 0, "max": 1, "appliesTo": "halberdier",
   "raw": "May upgrade one Halberdier to a Standard Bearer +10 points",
   "role": "standardBearer",
   "choices": [
    {"id": "standard-bearer", "name": "Standard Bearer", "points": 10, "perModel": false,
     "raw": "May upgrade one Halberdier to a Standard Bearer +10 points",
     "options": [
      {"id": "magic-standard", "kind": "magicStandard", "select": "any", "min": 0, "max": 1, "appliesTo": null,
       "raw": "May take a Magic Standard worth up to 25 points",
       "pointsLimit": 25,
       "choices": [{"id": "magic-standard", "name": "Magic Standard", "points": null, "perModel": false,
                    "raw": "May take a Magic Standard worth up to 25 points"}]}
     ]}
   ]
  }
 ]
}
```

## Worked example: a character unit

The Empire's Commanders: two profiles, so the lines that restrict themselves
to one of them carry `appliesTo`. The formatVersion 1 `options` tree is the
same nine lines as printed and is elided here after its first entry.

```json
{
 "name": "COMMANDERS",
 "chapter": "CHARACTERS",
 "category": "Characters",
 "profiles": [
  {"name": "General", "M": 4, "WS": 6, "BS": 5, "S": 4, "T": 4, "W": 3, "I": 6, "A": 4, "Ld": 9, "points": 95, "id": "general"},
  {"name": "Captain", "M": 4, "WS": 5, "BS": 5, "S": 4, "T": 4, "W": 2, "I": 5, "A": 3, "Ld": 8, "points": 55, "id": "captain"}
 ],
 "troopType": "Infantry (Character, Human)",
 "baseSize": "20x20 or 25x25",
 "equipment": "Hand weapon",
 "specialRules": [
  {"name": "Hold the Line",
   "text": "If a model with this special rule is in a unit with the State Troops special rule, the unit has the Cold-blooded special rule when taking Break tests."}
 ],
 "options": [
  {"raw": "May choose one of the following:", "text": "May choose one of the following:",
   "sub": [
    {"raw": "Additional hand weapon +5 points", "text": "Additional hand weapon", "cost": 5, "perModel": false},
    {"raw": "Spear +5 points", "text": "Spear", "cost": 5, "perModel": false},
    {"raw": "Light lance +5 points", "text": "Light lance", "cost": 5, "perModel": false},
    {"raw": "Heavy lance +10 points", "text": "Heavy lance", "cost": 10, "perModel": false},
    {"raw": "Polearm +10 points", "text": "Polearm", "cost": 10, "perModel": false},
    {"raw": "Great weapon +15 points", "text": "Great weapon", "cost": 15, "perModel": false}
   ]},
  "... eight more lines, unchanged from formatVersion 1 ..."
 ],
 "notes": [
  "The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have."
 ],
 "id": "commanders",
 "section": "characters",
 "tier": null,
 "named": false,
 "equipmentList": ["Hand weapon"],
 "optionGroups": [
  {
   "id": "melee-weapon", "kind": "equipment", "select": "one", "min": 0, "max": 1, "appliesTo": null,
   "raw": "May choose one of the following:",
   "choices": [
    {"id": "additional-hand-weapon", "name": "Additional hand weapon", "points": 5, "perModel": false, "raw": "Additional hand weapon +5 points"},
    {"id": "spear", "name": "Spear", "points": 5, "perModel": false, "raw": "Spear +5 points"},
    {"id": "light-lance", "name": "Light lance", "points": 5, "perModel": false, "raw": "Light lance +5 points"},
    {"id": "heavy-lance", "name": "Heavy lance", "points": 10, "perModel": false, "raw": "Heavy lance +10 points"},
    {"id": "polearm", "name": "Polearm", "points": 10, "perModel": false, "raw": "Polearm +10 points"},
    {"id": "great-weapon", "name": "Great weapon", "points": 15, "perModel": false, "raw": "Great weapon +15 points"}
   ]
  },
  {
   "id": "missile-weapon", "kind": "equipment", "select": "one", "min": 0, "max": 1, "appliesTo": null,
   "raw": "May choose one of the following:",
   "choices": [
    {"id": "pistol", "name": "Pistol", "points": 5, "perModel": false, "raw": "Pistol +5 points"},
    {"id": "longbow", "name": "Longbow", "points": 6, "perModel": false, "raw": "Longbow +6 points"},
    {"id": "crossbow", "name": "Crossbow", "points": 7, "perModel": false, "raw": "Crossbow +7 points"},
    {"id": "handgun", "name": "Handgun", "points": 7, "perModel": false, "raw": "Handgun +7 points"},
    {"id": "repeater-pistol", "name": "Repeater pistol", "points": 7, "perModel": false, "raw": "Repeater pistol +7 points"},
    {"id": "repeater-handgun", "name": "Repeater handgun", "points": 9, "perModel": false, "raw": "Repeater handgun +9 points"}
   ]
  },
  {
   "id": "armour", "kind": "equipment", "select": "one", "min": 0, "max": 1, "appliesTo": null,
   "raw": "May choose one of the following:",
   "choices": [
    {"id": "light-armour", "name": "Light armour", "points": 3, "perModel": false, "raw": "Light armour +3 points"},
    {"id": "medium-armour", "name": "Medium armour", "points": 9, "perModel": false, "raw": "Medium armour +9 points"},
    {"id": "heavy-armour", "name": "Heavy armour", "points": 18, "perModel": false, "raw": "Heavy armour +18 points"}
   ]
  },
  {
   "id": "shield", "kind": "equipment", "select": "any", "min": 0, "max": 1, "appliesTo": null,
   "raw": "May take a shield +5 points",
   "choices": [{"id": "shield", "name": "shield", "points": 5, "perModel": false, "raw": "May take a shield +5 points"}]
  },
  {
   "id": "full-plate", "kind": "specialRule", "select": "any", "min": 0, "max": 1, "appliesTo": null,
   "raw": "May be upgraded with the Full Plate special rule for +12 points.",
   "rule": "Full Plate",
   "choices": [{"id": "full-plate", "name": "Full Plate", "points": 12, "perModel": false,
                "raw": "May be upgraded with the Full Plate special rule for +12 points.", "rule": "Full Plate"}]
  },
  {
   "id": "mount", "kind": "mount", "select": "one", "min": 0, "max": 1, "appliesTo": null,
   "raw": "May be mounted on one of the following:",
   "choices": [
    {"id": "warhorse", "name": "Warhorse", "points": 15, "perModel": false, "raw": "Warhorse +15 points", "unitId": "warhorse"},
    {"id": "pegasus", "name": "Pegasus", "points": 25, "perModel": false, "raw": "Pegasus +25 points", "unitId": "pegasus"},
    {"id": "griffon", "name": "Griffon", "points": 125, "perModel": false, "raw": "Griffon (General only) +125 points",
     "appliesTo": "general", "unitId": "griffon"},
    {"id": "imperial-griffon", "name": "Imperial Griffon", "points": 175, "perModel": false, "raw": "Imperial Griffon (General only) +175 points",
     "appliesTo": "general", "unitId": "imperial-griffon"}
   ]
  },
  {
   "id": "battle-standard", "kind": "battleStandard", "select": "any", "min": 0, "max": 1, "appliesTo": "captain",
   "raw": "One Captain may carry the Battle Standard +25 points",
   "points": 25,
   "choices": [{"id": "battle-standard", "name": "Battle Standard", "points": 25, "perModel": false,
                "raw": "One Captain may carry the Battle Standard +25 points"}]
  },
  {
   "id": "magic-items-captain", "kind": "magicItems", "select": "any", "min": 0, "max": 1, "appliesTo": "captain",
   "raw": "A Captain may take Magic Items up to a total of 50 points",
   "pointsLimit": 50, "itemTypes": null,
   "choices": [{"id": "magic-items", "name": "Magic Items", "points": null, "perModel": false,
                "raw": "A Captain may take Magic Items up to a total of 50 points"}]
  },
  {
   "id": "magic-items-general", "kind": "magicItems", "select": "any", "min": 0, "max": 1, "appliesTo": "general",
   "raw": "A General may take Magic Items up to a total of 100 points",
   "pointsLimit": 100, "itemTypes": null,
   "choices": [{"id": "magic-items", "name": "Magic Items", "points": null, "perModel": false,
                "raw": "A General may take Magic Items up to a total of 100 points"}]
  }
 ]
}
```

## The gate and the build report

`python export.py --check` exports, then verifies:

1. the file conforms to `schema/war.schema.json` (with the `jsonschema`
   package when installed, otherwise with the validator in
   `exporter/schema.py`, which covers the subset the schema is written in);
2. every unit, item, spell, upgrade and rule head the source declares is in
   the file, and every string field is byte-identical to the source;
3. every printed option line is in `optionGroups` exactly once and is in the
   source, whole or as the two strings an `opt(desc, cost)` record joins;
4. every unit constraint is a note of its unit and is in the source, and
   every composition sentence is in the rulebook source;
5. every line of exported text, the new fields included, is on the rendered
   page in `out/`.

It then prints the build report: units, groups and choices per faction; the
`unclassified` count per faction; units whose `unitSize` did not parse; ids
that carry a collision suffix; and the id-map entries added by this run, so
the map can be reviewed before it is committed.
