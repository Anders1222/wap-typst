"""Helpers for export.py: the formatVersion 2 additions to the bundle.

  ids.py           stable kebab-case ids, kept in a committed map per book
  options.py       the typed view of a unit's OPTIONS (optionGroups)
  composition.py   army composition as data, from the rulebook and unit notes
  schema.py        a JSON Schema validator for the --check gate

Nothing here reads Typst source. Everything works on the records export.py
already has, and adds fields beside the existing ones without changing them.
"""
