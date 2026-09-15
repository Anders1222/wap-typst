# Changelog

## war.json formatVersion 2 — 2026-09-15

The army-builder bundle becomes self-describing, so the list builder needs
no per-edition code. Every formatVersion 1 field keeps its exact value; the
new data is in new fields beside it. `docs/format.md` describes the format
with two worked examples.

Added:

- `formatVersion: 2` at the top level.
- `composition`: CHOOSING YOUR ARMY as data - the percentage limits per
  category, the single-unit cost limit, the duplicate-choice chart as bands,
  the general, battle standard and special-character rules - each value with
  the sentence it was read from. Per faction, `composition.unitConstraints`
  parsed from unit NOTES: army maximums, "1-2 as a single choice",
  unit ratios, Army General rules, handler ratios. The vocabulary also
  defines "0-1 per N points" limits and "must include" minimums, which no
  WAR book prints, so that the same rule engine can read another edition.
- Stable ids: `id` on every faction, rule, item, upgrade, lore, unit, profile
  row, option group and choice, kept in a committed map per book under
  `ids/<slug>.json`. The export adds new names and never renames an entry.
- `optionGroups` on every unit: the typed view of the printed OPTIONS. Each
  line becomes a group with a `kind` (`equipment`, `mount`, `command`,
  `magicStandard`, `magicItems`, `battleStandard`, `wizardLevel`,
  `factionUpgrade`, `specialRule`, `upgrade`), a `select` rule (`one`, `any`,
  `count`), `min`/`max`, `appliesTo`, and typed choices; nested options sit
  on the choice they depend on. A line the classifier cannot place is emitted
  as `upgrade` with `unclassified: true`. Nothing is dropped.
- `section`, `tier`, `named` on every unit; `unitSizeParsed`; `equipmentList`
  and `specialRulesList`.
- `schema/war.schema.json`, validated by `--check`.
- A build report printed by `--check`: units, groups, choices and
  unclassified lines per faction, unparsed unit sizes, suffixed ids, new
  id-map entries.

Changed:

- `export.py` grew a helper package, `exporter/`: `ids.py`, `options.py`,
  `composition.py`, `schema.py`.
- The gate also checks that every option line is in `optionGroups` exactly
  once and in the source, that every constraint is a note of its unit, and
  that the file conforms to the schema.
