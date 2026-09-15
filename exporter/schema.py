"""Validate the bundle against schema/war.schema.json.

The `jsonschema` package is used when it is installed. When it is not - the
repo asks for nothing beyond pymupdf - a validator of the subset the schema
uses stands in: type, enum, const, properties, required,
additionalProperties, patternProperties, items, minItems, minimum, anyOf,
$ref into $defs. The schema is written to that subset on purpose, so that
the gate needs no new dependency, and the subset is checked here: a keyword
the stand-in does not know is an error, not a silent pass.
"""

from __future__ import annotations

import json
import re
from pathlib import Path

KNOWN = {"$schema", "$id", "$defs", "$ref", "title", "description", "type", "enum", "const",
         "properties", "required", "additionalProperties", "patternProperties", "items",
         "minItems", "minimum", "maximum", "anyOf", "examples", "default", "pattern"}

TYPES = {
    "object": lambda v: isinstance(v, dict),
    "array": lambda v: isinstance(v, list),
    "string": lambda v: isinstance(v, str),
    "integer": lambda v: isinstance(v, int) and not isinstance(v, bool),
    "number": lambda v: isinstance(v, (int, float)) and not isinstance(v, bool),
    "boolean": lambda v: isinstance(v, bool),
    "null": lambda v: v is None,
}


def validate(data, schema: dict, limit: int = 20) -> list[str]:
    """Errors as "path: message", at most `limit`, or [] when the data conforms."""
    try:
        import jsonschema  # type: ignore
    except ImportError:
        jsonschema = None
    if jsonschema is not None:
        v = jsonschema.Draft202012Validator(schema)
        errs = sorted(v.iter_errors(data), key=lambda e: list(e.absolute_path))
        return [f"{'/'.join(str(p) for p in e.absolute_path) or '$'}: {e.message[:160]}"
                for e in errs[:limit]]
    errs: list[str] = []
    _check(data, schema, schema, "$", errs, limit)
    return errs


def _resolve(node: dict, root: dict) -> dict:
    while "$ref" in node:
        ref = node["$ref"]
        if not ref.startswith("#/"):
            raise SystemExit(f"schema: only local $ref is supported, not {ref!r}")
        target = root
        for part in ref[2:].split("/"):
            target = target[part]
        node = target
    return node


def _check(v, node: dict, root: dict, path: str, errs: list[str], limit: int) -> None:
    if len(errs) >= limit:
        return
    node = _resolve(node, root)
    unknown = set(node) - KNOWN
    if unknown:
        raise SystemExit(f"schema: {path} uses keywords the built-in validator does not know: "
                         f"{sorted(unknown)}; install jsonschema or keep to the subset")
    if "anyOf" in node:
        for alt in node["anyOf"]:
            sub: list[str] = []
            _check(v, alt, root, path, sub, 1)
            if not sub:
                break
        else:
            errs.append(f"{path}: matches none of the alternatives")
            return
    if "type" in node:
        types = node["type"] if isinstance(node["type"], list) else [node["type"]]
        if not any(TYPES[t](v) for t in types):
            errs.append(f"{path}: is not of type {', '.join(types)} ({type(v).__name__})")
            return
    if "enum" in node and v not in node["enum"]:
        errs.append(f"{path}: {v!r} is not one of {node['enum']}")
    if "const" in node and v != node["const"]:
        errs.append(f"{path}: {v!r} is not {node['const']!r}")
    if "pattern" in node and isinstance(v, str) and not re.search(node["pattern"], v):
        errs.append(f"{path}: {v!r} does not match {node['pattern']!r}")
    if isinstance(v, (int, float)) and not isinstance(v, bool):
        if "minimum" in node and v < node["minimum"]:
            errs.append(f"{path}: {v} is less than {node['minimum']}")
        if "maximum" in node and v > node["maximum"]:
            errs.append(f"{path}: {v} is more than {node['maximum']}")
    if isinstance(v, dict):
        props = node.get("properties", {})
        for k in node.get("required", []):
            if k not in v:
                errs.append(f"{path}: {k!r} is a required property")
        patterns = [(re.compile(p), s) for p, s in node.get("patternProperties", {}).items()]
        extra = node.get("additionalProperties", True)
        for k, val in v.items():
            if k in props:
                _check(val, props[k], root, f"{path}/{k}", errs, limit)
                continue
            matched = False
            for pat, sub in patterns:
                if pat.search(k):
                    matched = True
                    _check(val, sub, root, f"{path}/{k}", errs, limit)
            if matched:
                continue
            if extra is False:
                errs.append(f"{path}: additional property {k!r} is not allowed")
            elif isinstance(extra, dict):
                _check(val, extra, root, f"{path}/{k}", errs, limit)
    if isinstance(v, list):
        if "minItems" in node and len(v) < node["minItems"]:
            errs.append(f"{path}: has fewer than {node['minItems']} items")
        if "items" in node:
            for i, val in enumerate(v):
                _check(val, node["items"], root, f"{path}/{i}", errs, limit)


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))
