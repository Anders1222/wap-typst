// Typesetting for a Warhammer Armies Project army book.
//
// Everything the generator emits arrives as Typst *strings*, never markup, so
// no source text can be reinterpreted as syntax. That is why the run helpers
// below take dictionaries rather than content blocks.

#let ink = rgb(38, 28, 18)
#let muted = rgb(104, 88, 66)
#let hair = rgb(126, 108, 84)
#let tint = rgb(126, 108, 84, 42)
#let stripe = rgb(255, 255, 255, 26)

#let body-font = "Libertinus Serif"

// --- inline text ------------------------------------------------------------

#let runs(rs) = rs.map(r => {
  if r.emph == "bold" { strong(r.text) } else if r.emph == "italic" {
    emph(r.text)
  } else if r.emph == "label" {
    // A rule or item name set as a run-in heading in the display face.
    text(weight: "bold", tracking: 0.04em, r.text)
  } else { r.text }
}).join()

// A rule or item name set as a run-in heading in the display face, inline in
// running text. The twin of the `label` run kind for hand-written books.
#let runin(body) = text(weight: "bold", tracking: 0.04em, body)

// A named entry with its points cost set flush right — magic items, upgrades,
// spells. The cost is optional; several entries carry only a name.
// `sticky` keeps the name with the rules text that follows, so a heading is
// never stranded at the foot of a column.
// `above` is a parameter because a magic item wants a wider gap before its name
// than a run-in name inside a unit entry does, and the two share this function.
// The default is what every caller but `magic-item` uses.
#let namecost(name, cost, above: 0.9em) = block(above: above, below: 0.2em, sticky: true, {
  // Justification would stretch a two-word name across the whole column, so it
  // is switched off here and the name column sized to its content.
  set par(justify: false)
  grid(
    // The name takes the slack and wraps; the cost stays intact on one line.
    columns: (1fr, auto),
    align: (left + bottom, right + bottom),
    column-gutter: 0.6em,
    text(weight: "bold", size: 11pt, tracking: 0.04em, hyphenate: false)[
      #upper(name)
    ],
    if cost != "" { text(size: 9.5pt, style: "italic", cost) } else { none },
  )
})

#let para(rs, style: "body") = {
  if style == "italic" {
    // Flavour text: inset and a shade smaller than the rules body.
    block(
      above: 0.9em, below: 0.9em,
      inset: (left: 1.1em, right: 1.1em),
      text(size: 10pt, runs(rs)),
    )
  } else {
    block(runs(rs))
  }
}

// No block wrapper of its own: the spacing lives in a `show list` rule in
// `book()` instead, so a hand-written `- item` and a generated one sit
// identically. The rule is set on the list element rather than wrapping it, so
// a nested list does not gain a second helping.
#let items(its) = list(
  ..its.map(it => {
    runs(it.runs)
    if it.sub.len() > 0 { list(..it.sub.map(s => runs(s))) }
  }),
)

// --- option lists -----------------------------------------------------------

// An option line: description left, cost flush right, dotted leader between, as
// the source sets them. Extraction can only run the two together as one
// sentence ("May take a shield +5 points"), which loses the cost as a value.
//
// Built as a grid rather than one paragraph, for the same reason `namecost` is.
// `box(width: 1fr)` swells to take the slack on the line, which is what pushes
// the cost right and lets `repeat` tile the dots into it - but in a single
// paragraph a cost that does not fit the last line wraps onto its own, flush
// left, with the leader left as a stub. Giving the cost its own column keeps it
// bottom-right of the description however many lines that runs to. It reserves
// its width on every line, so a long description wraps a line earlier; a price
// stranded on the wrong side of the column is the worse of the two.
#let _dotline(desc, cost) = {
  set par(justify: false)
  grid(
    columns: (1fr, auto),
    align: (left + bottom, right + bottom),
    column-gutter: 0.6em,
    [#desc#box(width: 1fr, inset: (x: 2pt), repeat([.], gap: 2.6pt))],
    cost,
  )
}

// `opt` and `optgroup` render nothing - they return tagged dictionaries that
// `options` renders. The indirection is Typst's: a bullet list has to be built
// in one `list(..)` call, so the items cannot each emit their own markup.
#let opt(desc, cost) = (kind: "opt", desc: desc, cost: cost)

// A group is an option that carries its own sub-options, conditional on it -
// "may upgrade one model to a Standard Bearer" and then what that bearer may
// carry. `cost` is optional: several groups are only a heading for the lines
// beneath and have no price of their own.
#let optgroup(head, cost: none, ..subs) = {
  let subs = subs.pos()
  assert(subs.len() > 0, message: "optgroup: no sub-options")
  for s in subs {
    assert(type(s) == dictionary and s.at("kind", default: none) == "opt",
      message: "optgroup: sub-options must each be opt(..)")
  }
  (kind: "group", head: head, cost: cost, subs: subs)
}

#let options(..items) = {
  let items = items.pos()
  assert(items.len() > 0, message: "options: no options")
  for it in items {
    assert(type(it) == dictionary and it.at("kind", default: none) in ("opt", "group"),
      message: "options: every item must be opt(..) or optgroup(..)")
  }
  list(..items.map(it => if it.kind == "opt" {
    _dotline(it.desc, it.cost)
  } else {
    [#if it.cost != none { _dotline(it.head, it.cost) } else { it.head }
     #list(marker: text(fill: hair)[--],
       ..it.subs.map(s => _dotline(s.desc, s.cost)))]
  }))
}

// The indented italic note that sits beneath a profile. The twin of
// `para(.., style: "italic")` for hand-written books, which pass content rather
// than runs.
#let note(body) = block(
  above: 0.9em, below: 0.9em,
  inset: (left: 1.1em, right: 1.1em),
  text(size: 10pt, body),
)

// --- entries ----------------------------------------------------------------

// Each entry — a unit, a character, a magic-item section — opens its own page,
// so nothing straddles the space left over by whatever preceded it. `weak`
// keeps the break from firing when the page is already fresh, and `first`
// suppresses it so an entry can share its chapter-title page.
#let entry(name, first: false) = {
  if not first { pagebreak(weak: true) }
  [#metadata((kind: "entry", name: name))<meta>]
  heading(level: 2, name)
}

// An entry that is nothing but a stat line and a few fields — a character mount,
// say — would leave a page of its own almost entirely empty, so these share one.
// `breakable: false` is what keeps the promise: the entry moves to the next page
// whole rather than straddling the boundary.
#let compact-entry(name, body) = block(
  breakable: false, above: 1.4em, below: 0.5em,
  {
    [#metadata((kind: "entry", name: name))<meta>]
    heading(level: 2, name)
    body
  },
)

// --- magic items ------------------------------------------------------------

// A magic item is one call: name, cost, qualifiers, rules text - the order
// every item in the corpus is written in. Passed as arguments, the qualifiers
// are checked, ordered and punctuated here, instead of being typed by hand into
// several hundred paragraphs and left free to differ.

// `type` and `columns` are parameter names below, and inside those scopes they
// shadow Typst's own. Bound here so the code can still reach both.
#let _typeof = type
#let _columns = columns

// The six categories, from the rulebook's Balance of Power: a model may carry
// one item from each.
#let MAGIC_ITEM_KINDS = ("weapon", "armour", "talisman", "arcane",
                         "enchanted", "standard")

#let _assert-kind(kind, where) = assert(kind in MAGIC_ITEM_KINDS,
  message: where + ": kind must be one of " + MAGIC_ITEM_KINDS.join(", ")
    + ", not " + repr(kind))

// What an item of each category may declare itself to be: the mundane equipment
// a weapon or armour stands in for, spelled as the Weapons & Armour chapter
// spells it, or one of the three arcane categories. The other three categories
// have no type at all, and the empty tuple is how that is said - `type:` on a
// talisman is an error rather than a silent no-op.
//
// Per category, what the rulebook arms everybody with and then the equipment
// particular armies bring. One spelling per piece, the one they are all read
// as, since the books write several of them more than one way.
//
// Rules about an item - "Requires two hands" - are not equipment it is, and
// stay in the rules text. An unlisted phrase is prose, not an error.
#let MAGIC_ITEM_TYPES = (
  weapon: (
    // Close combat, from the rulebook.
    "Hand weapon", "Additional hand weapon", "Two hand weapons", "Polearm",
    "Great weapon", "Flail", "Spear", "Pike", "Lance", "Light lance",
    "Heavy lance",
    // Missile, from the rulebook.
    "Shortbow", "Longbow", "Greatbow", "Bow", "Crossbow", "Handgun", "Sling",
    "Javelins", "Blowpipe", "Pistol", "Blunderbuss", "Throwing weapons",
    "Throwing axes",
    // What particular armies carry.
    "Light lance/spear", "Light lance/spear/javelins", "Spear/light lance",
    "Spear/javelin", "Two hand weapons & tail weapon", "Elven longbow",
    "Elven shortbow", "Repeater crossbow", "Deathrain crossbow",
    "Hochland long rifle", "Brace of pistols", "Brace of Ogre Pistols",
    "Cavalry hammer", "Katana", "Oriental longsword", "Celestial Blade",
    "Fireglaive", "Sunstaff", "Sun Gauntlet",
  ),
  armour: (
    "Light armour", "Medium armour", "Heavy armour", "Shield", "Buckler",
    "Barding",
    "Gut-plate", "Ironfist", "Sea Dragon Cloak",
  ),
  arcane: ("Staff", "Charm", "Relic"),
  talisman: (),
  enchanted: (),
  standard: (),
)

// A magic weapon that names no type is a hand weapon - the rulebook says so,
// and the books accordingly leave it unsaid. Left off the page too, but
// resolved into the metadata, so a reader asking what a weapon is gets an
// answer.
#let MAGIC_WEAPON_DEFAULT_TYPE = "Hand weapon"

// A bound spell is an item that casts. Where the spell is not one from a Lore,
// the item carries its own level and casting value, which the corpus writes six
// ways. Passed as values there is one way, and the numbers can be asked for
// rather than read out of a sentence:
//
//   bound: true                     Bound Spell.
//   bound: (level: 2, cast: "7+")   Bound Spell (Level 2, cast on 7+).
//   bound: (power: 4)               Bound Spell (Power Level 4).
//
// `cast` is a string because a casting value is written "7+", not 7.
#let _bound-phrase(bound, where) = {
  if bound == none or bound == false {
    none
  } else if bound == true {
    "Bound Spell"
  } else if _typeof(bound) == dictionary {
    let unknown = bound.keys().filter(k => k not in ("level", "cast", "power"))
    assert(unknown.len() == 0, message: where + ": bound: has no key "
      + unknown.join(", ") + "; expected level, cast or power")
    if "power" in bound {
      assert("level" not in bound and "cast" not in bound, message: where
        + ": bound: a spell has a power level, or a level and a casting value,"
        + " not both")
      "Bound Spell (Power Level " + str(bound.power) + ")"
    } else {
      // Neither number is any use without the other: a level cannot be cast,
      // and a casting value cannot say how many dice may be thrown at it.
      assert("level" in bound and "cast" in bound, message: where
        + ": bound: give level and cast together, or power on its own")
      // Bound to locals first: an expression ends at the line break, so a
      // continuation line cannot carry the rest of the sum.
      let level = str(bound.level)
      let cast = str(bound.cast)
      "Bound Spell (Level " + level + ", cast on " + cast + ")"
    }
  } else {
    assert(false, message: where + ": bound: must be true, (level: .., cast: ..)"
      + " or (power: ..), not " + repr(bound))
  }
}

// The gap before a record's name, wider than the 0.9em a `namecost` takes
// elsewhere: a section is sixty short records rather than continuous prose, and
// at the paragraph gap one record's rules read as running into the next one's
// name. Shared by magic items and spells - they are the same kind of material,
// and a lore set to a hair less air than a magic-item section would be a
// difference a reader could see and no one had decided. Set here so it is those
// records that get the air, not every run-in name in the corpus.
#let RECORD_GAP = 1.2em

// `cost` is a number, not "45 points". The unit is the same for every item in
// every book, so writing it out at each of them only creates somewhere for
// "15 Points" to differ from its five hundred neighbours - which, in the source
// this book was imported from, it does.
#let magic-item(name, cost, body,
                kind: none, type: none, only: none,
                bound: none, one-use: false, common: false) = {
  let where = "magic-item " + name
  _assert-kind(kind, where)
  assert(_typeof(cost) == int and cost > 0,
    message: where + ": cost is a number of points, not " + repr(cost))

  // One type, or several worn at once - "Heavy armour and shield".
  let vocab = MAGIC_ITEM_TYPES.at(kind)
  let given = if type == none {
    ()
  } else if _typeof(type) == str {
    (type,)
  } else {
    type
  }
  for t in given {
    assert(t in vocab, message: where + ": " + repr(t) + " is not a " + kind
      + " type" + if vocab.len() == 0 { " - " + kind + " items have none" }
                  else { "; expected one of " + vocab.join(", ") })
  }
  // The vocabulary holds each piece under the one name it is printed by, so the
  // tail is lowered as it is joined - which is how the source sets the pair.
  let typed = if given.len() > 0 {
    given.enumerate().map(((i, t)) => if i == 0 { t } else { lower(t) })
      .join(" and ")
  }

  // Who may carry it, what it is, how it may be used, then what it does - the
  // order every item in the corpus is written in. Each qualifier is a sentence,
  // and the full stops are supplied here, so an item cannot be missing one.
  let qualifiers = (
    if only != none { only + " only" },
    typed,
    _bound-phrase(bound, where),
    if one-use { "One use only" },
  ).filter(q => q != none).map(q => q + ". ")

  [#metadata((
    kind: "magic-item", category: kind, name: name, cost: cost,
    // The resolved type, not the written one: a weapon that named none is a
    // hand weapon.
    type: if typed != none { typed }
      else if kind == "weapon" { MAGIC_WEAPON_DEFAULT_TYPE },
    only: only, bound: bound, one-use: one-use, common: common,
  ))<meta>]
  // The asterisk marks a *common* item - one that may be taken more than once -
  // so it is carried by a flag rather than typed into the name, where it reads
  // as spelling and can be lost to one.
  namecost(name + if common { "*" } else { "" }, str(cost) + " points",
    above: RECORD_GAP)
  // Not wrapped in a block: the qualifiers open the item's first paragraph, as
  // they do on the printed page, rather than standing off as a line of their
  // own.
  [#qualifiers.join()#body]
}

// The six, named, so a book states the category by the function it calls and
// cannot state it as a value that is not one of them.
#let magic-weapon = magic-item.with(kind: "weapon")
#let magic-armour = magic-item.with(kind: "armour")
#let talisman = magic-item.with(kind: "talisman")
#let arcane-item = magic-item.with(kind: "arcane")
#let enchanted-item = magic-item.with(kind: "enchanted")
#let magic-standard = magic-item.with(kind: "standard")

// --- magic items: the chapter they sit in -----------------------------------

// What each category's section is titled. The corpus already agrees - 54 of the
// books title their weapon section MAGIC WEAPONS - so the agreement is written
// down once here rather than retyped in every book. `name:` is for the two that
// genuinely differ: the Dwarfs call their talismans TALISMANIC RUNES.
//
// Set in capitals rather than left to the display face, which uppercases every
// heading anyway. The face is not the only reader: a contents page takes the
// heading's text and not the show rule's rendering of it, so title case here
// would set six odd lines in a page whose every other line is capitals.
#let MAGIC_ITEM_SECTIONS = (
  weapon: "MAGIC WEAPONS",
  armour: "MAGIC ARMOUR",
  talisman: "TALISMANS",
  arcane: "ARCANE ITEMS",
  enchanted: "ENCHANTED ITEMS",
  standard: "MAGIC STANDARDS",
)

// The chapter's head: its title and the standing paragraph that introduces it.
// Header only, like `entry` and `namecost` - the sections flow after it.
//
// The intro is set `strong` because that is what the source sets it in; set
// here, though, so it is one edit from being something else in every book at
// once, instead of forty-five paragraphs whose emphasis was typed by hand.
#let magic-item-chapter(title: "MAGIC ITEMS", intro: none) = {
  heading(level: 1, title)
  // Not wrapped in a block: a block takes `block.spacing` where a paragraph
  // takes `par.spacing`, and this is a paragraph.
  if intro != none { strong(intro) }
}

// A section: its page break, its heading, and - the layer that has never had an
// owner at all - the number of columns its items set in.
//
// That number used to be decided at import by counting characters: two columns
// at 3,000 of them, one below, written into the book as a bare `#columns(2)[`.
// It is why a chapter of six short sections and a chapter of the same material
// in one long section come out set differently.
//
// Measured here instead, in the geometry the rule is actually about: `layout`
// gives the page's measure, `measure` the height these items would take set
// across the whole of it. Taller than the page and there is material enough to
// fill two columns; shorter and the second stands part-empty, which reads as a
// fault rather than a choice. Margins and type size are in the answer because
// they are in the question - which a character count, calibrated for one page
// geometry every book has since been free to depart from, could never manage.
//
// `columns:` overrides the rule where an editor knows better. It is not how the
// books should be set; it is there so that disagreeing does not mean going back
// to writing `#columns(2)[` into a book by hand.
#let magic-item-section(kind, name: auto, columns: auto, first: false, body) = {
  _assert-kind(kind, "magic-item-section")
  assert(columns in (auto, 1, 2),
    message: "magic-item-section: columns must be auto, 1 or 2, not "
      + repr(columns))
  // `entry` rather than a heading of its own, so a magic-item section breaks
  // and heads exactly as a unit entry does - one definition, not two.
  entry(if name == auto { MAGIC_ITEM_SECTIONS.at(kind) } else { name },
        first: first)
  if columns == auto {
    layout(size => {
      let tall = measure(block(width: size.width, body)).height >= size.height
      if tall { _columns(2, body) } else { body }
    })
  } else if columns == 2 {
    _columns(2, body)
  } else {
    body
  }
}

// --- spells -----------------------------------------------------------------

// A spell is a magic item by another name: a named record with a number the
// player pays to use it, a line of qualifiers, and a paragraph of rules. So it
// is set as one, through the same `namecost` and the same `RECORD_GAP`, and a
// lore reads down the page exactly as a magic-item section does.
//
// It did not used to. The name sat in a grid of its own and the level stood on
// a muted line beneath it, which made a lore look like a third kind of thing in
// a book that only has two - and cost the corpus a tracking hack, because a PDF
// extractor read the letter gaps in LORE ATTRIBUTE as a word break.
//
// The two spells that carry no number - the lore attribute, which is always in
// play, and the signature spell every wizard in the lore knows - are named
// rather than numbered.
#let SPELL_UNNUMBERED = ("Lore Attribute", "Signature Spell")

// `level` is a number and `cast` the value it is cast on, written as the source
// writes it - the same pair, in the same types, that a bound magic item takes
// in `bound: (level: 2, cast: "7+")`. One spell stated two ways in one book was
// exactly the sort of drift the vocabulary exists to stop.
#let spell(name, level, body, cast: none) = {
  let where = "spell " + name
  assert((_typeof(level) == int and level > 0) or level in SPELL_UNNUMBERED,
    message: where + ": level is a number, or one of "
      + SPELL_UNNUMBERED.join(", ") + " - not " + repr(level))
  assert(cast == none or _typeof(cast) == str,
    message: where + ": cast is written as the source writes it, \"7+\", not "
      + repr(cast))
  // A numbered spell that cannot be cast is a spell with no way into play, and
  // an unnumbered one is in play already; either way the pair travels together.
  if _typeof(level) == int {
    assert(cast != none, message: where + ": a numbered spell needs a casting"
      + " value")
  }

  let named = if _typeof(level) == int { "Level " + str(level) } else { level }

  [#metadata((kind: "spell", name: name, level: level, cast: cast))<meta>]
  // The name on its own line; the level and the casting value on the next,
  // one at each end of it.
  //
  // Every spell breaks the same way, whether or not the name would have fitted
  // beside its level. Letting it depend on the length meant a lore where a few
  // spells ran to two lines and the rest to one, and the eye read that ragged
  // difference as meaning something - which it did not. Two lines always is one
  // shape a reader can learn.
  //
  // No dotted leader, though the grid is otherwise the one an option line uses.
  // A leader is there to carry the eye across a column of prices to the one
  // number on its row; a spell has a single value on the right, and the dots
  // joined two things that were already touching.
  block(above: RECORD_GAP, below: 0em, sticky: true, {
    // As in `namecost`, and for its reasons: justification would stretch a
    // short name across the column.
    set par(justify: false)
    block(below: 0em,
      text(weight: "bold", size: 11pt, tracking: 0.04em, hyphenate: false,
        upper(name)))
    // Italic and a shade smaller, as the casting value opposite it is: the two
    // numbers a player needs are the two things here that are not upright body
    // text, and they sit at either end of one line.
    block(above: 0.1em, below: 0em, grid(
      columns: (1fr, auto),
      align: (left + bottom, right + bottom),
      column-gutter: 0.6em,
      text(size: 9.5pt, style: "italic", fill: muted)[(#named)],
      if cast != none { text(size: 9.5pt, style: "italic")[Cast on #cast] }
      else { none },
    ))
  })
  // Block spacing is the larger of the two sides it falls between, and a
  // paragraph brings 0.72em of its own - a full paragraph break between a
  // spell's name and the rules under it. Set from both sides instead.
  block(above: 0.28em, body)
}

// A lore: its chapter title and its spells, always in two columns.
//
// Not measured, as a magic-item section is. That rule exists because a chapter
// of six sections can leave one of them with four items in it, and four items
// do not fill two columns. A lore is not built that way - it is eight or nine
// spells that arrive together and always run past the page - so measuring it
// would only be an expensive way of answering two every time.
//
// The title is a level-1 heading, which is what the corpus already sets a lore
// as, so it takes its own page and its centred rule from the chapter show rule.
// It stays level 1 for a second reason: `emit.py` counts level-2 headings as
// the book's entries, and a lore is not a unit.
#let lore(title, intro: none, body) = {
  heading(level: 1, title)
  // Not wrapped in a block, as `magic-item-chapter`'s intro is not: a block
  // takes `block.spacing` where a paragraph takes `par.spacing`.
  if intro != none { strong(intro) }
  _columns(2, body)
}

// --- profiles ---------------------------------------------------------------

// The label sits on the same line as the value it introduces, so it is set at
// the body size rather than under it - at 9pt against 10.5pt the two halves of
// one line read as two different registers. `1em` rather than a fixed 10.5pt so
// the label follows whatever size `book()` is given.
#let field(label, value) = {
  [#metadata((kind: "field", label: label, value: value))<meta>]
  block(above: 0.3em, below: 0.3em)[
    #text(weight: "bold", size: 1em, tracking: 0.07em)[#upper(label):]
    #if value != "" [ #value ]
  ]
}

// The stat line: a label column plus one equal column per characteristic.
#let statblock(label, cols, rows) = block(above: 0.85em, below: 1em, width: 100%, table(
  columns: (auto, ..cols.map(_ => 1fr)),
  align: (left + horizon, ..cols.map(_ => center + horizon)),
  stroke: none,
  inset: (x: 5pt, y: 4pt),
  fill: (_, y) => if y == 0 { tint } else if calc.even(y) { stripe },
  table.hline(y: 0, stroke: 0.9pt + hair),
  table.hline(y: 1, stroke: 0.5pt + hair),
  table.header(
    text(size: 8.5pt, weight: "bold", tracking: 0.09em)[#upper(label)],
    ..cols.map(c => text(size: 8.5pt, weight: "bold", tracking: 0.09em)[#upper(c)]),
  ),
  ..rows.flatten(),
  table.hline(stroke: 0.9pt + hair),
))

// Weapon and war-machine profiles: prose in the final column, so only that one
// takes the remaining width.
#let minitable(cols, vals) = block(above: 0.55em, below: 0.8em, width: 100%, table(
  columns: cols.enumerate().map(((i, _)) => if i == cols.len() - 1 { 1fr } else { auto }),
  align: left + horizon,
  stroke: none,
  inset: (x: 5pt, y: 3.5pt),
  fill: (_, y) => if y == 0 { tint },
  table.hline(y: 0, stroke: 0.5pt + hair),
  table.header(
    ..cols.map(c => text(size: 8.5pt, weight: "bold", tracking: 0.07em)[#upper(c)]),
  ),
  ..vals,
  table.hline(stroke: 0.5pt + hair),
))

// --- unit entries -----------------------------------------------------------

// The ten characteristics a profile row carries, in printed order. Every stat
// line in the corpus uses exactly these, under exactly this label.
#let CHARACTERISTICS = ("m", "ws", "bs", "s", "t", "w", "i", "a", "ld", "points")

// A row arrives as a dictionary rather than a list, so a dropped value is a
// named error and two transposed values are not expressible at all. Values pass
// through `str` because a characteristic is not always a number: "-", "As user"
// and "2D6" all appear.
#let profile-row(row, where) = {
  assert("name" in row, message: where + ": a profile row has no name")
  let missing = CHARACTERISTICS.filter(k => k not in row)
  let unknown = row.keys().filter(k => k != "name" and k not in CHARACTERISTICS)
  // Reported together: a mistyped characteristic is one missing and one
  // unknown, and naming half of that sends you looking for the wrong mistake.
  assert(missing.len() == 0 and unknown.len() == 0,
    message: where + " / " + row.name + ":"
      + if missing.len() > 0 { " missing " + missing.join(", ") } else { "" }
      + if unknown.len() > 0 { " unknown " + unknown.join(", ") } else { "" })
  (row.name, ..CHARACTERISTICS.map(k => str(row.at(k))))
}

// The stat line as authored: one dictionary per row, so the keys carry the
// meaning rather than their position and a characteristic cannot land in the
// wrong column by being written in the wrong place. Scrambling the order of the
// keys renders identically. A wrong value against the right key is still
// writable - nothing here catches that.
//
// Deliberately just the profile, not the whole entry. An entry is an ordered
// sequence, not a record: 886 of the 1,482 entries with a stat line interleave
// their fields with lists, 341 open with a run-in name before the profile, and
// 34 open with prose. A call that took `fields:` as one parameter would hoist
// them together and quietly relayout three fifths of the corpus.
#let profile(..rows) = {
  let rows = rows.pos()
  assert(rows.len() > 0, message: "profile: no rows")
  let built = rows.map(r => profile-row(r, "profile"))
  [#metadata((kind: "profile", rows: rows))<meta>]
  statblock("Profile", CHARACTERISTICS.map(upper), built)
}

// A ruled chart — to-hit, to-wound, armour saves. Unlike a stat line these are
// drawn as real tables in the source, so they keep visible rules here too. Both
// the first row and the first column are treated as headers, which is the shape
// of every cross-referencing chart in the book.
#let chart(rows) = block(above: 0.95em, below: 0.5em, width: 100%, align(center, table(
  columns: rows.at(0).len(),
  align: center + horizon,
  stroke: 0.4pt + hair,
  inset: (x: 4pt, y: 3.5pt),
  fill: (x, y) => if y == 0 or x == 0 { tint },
  ..rows.flatten().map(c => text(size: 9pt, c)),
)))

// A diagram lifted from the source. Named `diagram` rather than `figure` so it
// does not shadow Typst's own. The width is a fraction of the measure, so a
// half-column diagram stays half a column whatever the margins are.
#let diagram(path, fraction) = block(above: 1em, below: 1em, width: 100%,
  align(center, image(path, width: fraction * 100%)),
)

// The axis labels around a chart. In the source the row axis is set vertically
// beside the grid; read in flow order it arrives after it, so both axes are set
// as captions rather than as the headings their display face would suggest.
#let chartlabel(name) = block(above: 0.3em, below: 0.3em, align(center,
  text(size: 8.5pt, weight: "bold", tracking: 0.12em, fill: muted)[#upper(name)],
))

// --- unit entries as records ------------------------------------------------

// A unit entry written as one call instead of as a run of primitives. It renders
// *through* those primitives - `entry`, `profile`, `field`, `options` - and emits
// exactly what the hand-written form emits, so adopting it changes the source and
// not a glyph of the page.
//
// What it buys is a closed vocabulary. `#field` takes any string, and across 45
// books the labels drifted: EQIPMENT in Daemons of Chaos, HANDLER beside
// HANDLERS, UPGRADE beside UPGRADES, NOTE beside NOTES. Here every field is a
// named argument, so each of those is a compile error naming the entry it is in.
// It also retires the 2,306 `#field("OPTIONS", "")` calls whose whole job was to
// print a label for the list beneath them: the label comes from the parameter.
//
// `#field` itself stays unchecked. The design-notes chapters use it as a bare
// mini-heading - `#field("Blood Knights", "")` over a paragraph of pricing
// argument - which is not a unit field and should not be validated as one.

// Authoring key and printed label, in the order the corpus sets them. 1,912 of
// the 2,009 entries with a stat line already run in exactly this order; the 97
// that do not pass `order:` and say so, which is better than the sequence form,
// where the deviation is invisible.
#let UNIT_FIELDS = (
  (key: "unit-size", label: "UNIT SIZE"),
  (key: "troop-type", label: "TROOP TYPE"),
  (key: "mount", label: "MOUNT"),
  (key: "crew", label: "CREW"),
  (key: "handler", label: "HANDLER"),
  (key: "handlers", label: "HANDLERS"),
  (key: "drawn-by", label: "DRAWN BY"),
  (key: "base-size", label: "BASE SIZE"),
  (key: "equipment", label: "EQUIPMENT"),
  (key: "magic", label: "MAGIC"),
  // Book-specific lists of innate powers. Named rather than left free-form
  // because each is a fixed printed label recurring across a book's special
  // characters, and a free slot would admit a typo in the one place the
  // vocabulary exists to catch one. All five sit between MAGIC and SPECIAL
  // RULES, three of them ahead of MAGIC ITEMS and two behind it.
  (key: "daemonic-gifts", label: "DAEMONIC GIFTS"),
  (key: "disciplines-of-the-old-ones", label: "DISCIPLINES OF THE OLD ONES"),
  (key: "gifts-of-the-gods", label: "GIFTS OF THE GODS"),
  (key: "magic-items", label: "MAGIC ITEMS"),
  (key: "gifts-of-khaine", label: "GIFTS OF KHAINE"),
  (key: "vampiric-powers", label: "VAMPIRIC POWERS"),
  (key: "special-rules", label: "SPECIAL RULES"),
  (key: "upgrades", label: "UPGRADES"),
  (key: "options", label: "OPTIONS"),
  (key: "notes", label: "NOTES"),
)

#let _UNIT_KEYS = UNIT_FIELDS.map(f => f.key)
#let _UNIT_LABELS = {
  let d = (:)
  for f in UNIT_FIELDS { d.insert(f.key, f.label) }
  d
}

// The settings that are the entry itself rather than one of its fields.
#let _UNIT_SETTINGS = ("first", "compact", "profiles", "subtitle", "order",
                      "before", "after", "labels", "solo", "breakable")

// A named rule bullet - the `- *Impetuous:* ...` the corpus writes by hand - as a
// record, the shape `magic-item` and `spell` already have. 872 entries carry one
// or more; as data they can be read out of a book by the query that reads an item
// out of it, instead of being markup that only renders.
#let rule(name, body) = (kind: "rule", name: name, body: body)

#let _rule-bullets(rs, where) = {
  for r in rs {
    assert(_typeof(r) == dictionary and r.at("kind", default: none) == "rule",
      message: where + ": every item must be rule(..)")
  }
  [#metadata((kind: "rules", names: rs.map(r => r.name)))<meta>]
  list(..rs.map(r => [*#r.name:* #r.body]))
}

// A field's value says by its type what shape the field takes, because the corpus
// only ever writes two shapes: a label with its value on the same line, and a
// label standing over a block of its own. A string is the first. Content, or a
// list of `rule`/`opt` records, is the second - the label prints with nothing
// after it, exactly as the `#field(LABEL, "")` header it replaces, and the block
// follows. A field that needs both - SPECIAL RULES naming four rules inline and
// then explaining a fifth - passes the inline value here and the block as the
// companion `<field>-body`.
// The block that stands under a field's label: either content, written as
// markup, or a list of records - `rule(..)` for named rules, `opt(..)` and
// `optgroup(..)` for priced options - which render as the bullets and dotted
// leader lines the hand-written form spells out by hand.
#let _unit-block(value, where) = {
  if _typeof(value) != array { return value }
  assert(value.len() > 0, message: where + ": empty list")
  let first = value.first()
  let kind = if _typeof(first) == dictionary { first.at("kind", default: none) } else { none }
  if kind == "rule" {
    _rule-bullets(value, where)
  } else if kind in ("opt", "group") {
    options(..value)
  } else {
    assert(false, message: where + ": a list must hold rule(..), or opt(..)/optgroup(..)")
  }
}

// A field's value says by its type what shape the field takes. A string is the
// label with its value on the same line. Anything else is the label standing
// over a block of its own - printed exactly as the `#field(LABEL, "")` header it
// replaces, with the block beneath.
#let _unit-field(key, value, labels) = {
  let label = labels.at(key, default: _UNIT_LABELS.at(key))
  if _typeof(value) == str {
    field(label, value)
  } else {
    field(label, "")
    _unit-block(value, "unit field " + key)
  }
}

// One unit, one call. `name` is the only positional argument; everything else is
// named, so a value can never land in the wrong field by being written in the
// wrong place - the same reason `profile` takes dictionaries rather than rows.
//
// The fields render in `UNIT_FIELDS` order whatever order they are written in,
// so the 171 orderings the sequence form let through collapse to one. `order:`
// re-sets it for an entry whose source genuinely deviates, and must name exactly
// the fields the entry sets, so it cannot silently drop one.
#let unit(name, ..named) = {
  let where = "unit " + name
  assert(named.pos().len() == 0,
    message: where + ": fields are named, not positional")
  let args = named.named()

  let unknown = args.keys().filter(k => {
    if k in _UNIT_SETTINGS or k in _UNIT_KEYS { false }
    else if k.ends-with("-body") { k.slice(0, -5) not in _UNIT_KEYS }
    else { true }
  })
  assert(unknown.len() == 0,
    message: where + ": unknown field " + unknown.join(", ")
      + " (known: " + _UNIT_KEYS.join(", ") + ")")

  // A `<field>-body` with no field above it would print a block under no label.
  let orphan = args.keys()
    .filter(k => k.ends-with("-body") and k.slice(0, -5) in _UNIT_KEYS)
    .filter(k => k.slice(0, -5) not in args)
  assert(orphan.len() == 0,
    message: where + ": " + orphan.join(", ") + " set without the field it belongs under")

  let present = _UNIT_KEYS.filter(k => k in args)
  let order = if "order" in args {
    let o = args.order
    let missing = present.filter(k => k not in o)
    let extra = o.filter(k => k not in present)
    assert(missing.len() == 0 and extra.len() == 0,
      message: where + ": order"
        + if missing.len() > 0 { " omits " + missing.join(", ") } else { "" }
        + if extra.len() > 0 { " names unset " + extra.join(", ") } else { "" })
    o
  } else { present }

  // A field whose printed label is not the one the vocabulary gives it. Used
  // where the source misprints a label and the book reproduces it: Daemons of
  // Chaos heads four entries EQIPMENT. Naming the override here keeps the field
  // a known one, and keeps the misprint deliberate and greppable rather than a
  // fifth spelling loose in the vocabulary.
  let labels = args.at("labels", default: (:))
  for (k, v) in labels {
    assert(k in args,
      message: where + ": labels names " + k + ", which the entry does not set")
    assert(_typeof(v) == str,
      message: where + ": label for " + k + " must be a string")
  }

  let body = {
    // The run-in line under a special character's name - "High King of
    // Karaz-a-Karak" - which 463 entries set between the name and the profile.
    // It is `namecost` with no cost, the same call a magic item's name is set
    // with, so a subtitle and an item head sit on the same baseline.
    if "subtitle" in args { namecost(args.subtitle, "") }
    if "profiles" in args { profile(..args.profiles) }
    if "before" in args { args.before }
    for k in order {
      _unit-field(k, args.at(k), labels)
      if k + "-body" in args {
        _unit-block(args.at(k + "-body"), "unit field " + k + "-body")
      }
    }
    if "after" in args { args.after }
  }

  // Three ways an entry meets the page, and the entry says which it is.
  //
  // `compact` is the character mount: a stat line and two fields, which would
  // leave a page of its own empty, so it shares one.
  //
  // `solo` opens a page of its own. Reserved for special characters, where the
  // entry is the spread - a named lord with his own art, his own magic items and
  // half a page of rules - and starting him halfway down a page under someone
  // else's options loses that.
  //
  // Everything else flows. Entries follow one another down the page and a new
  // page starts when the last one is full, which is how the source sets its
  // ordinary units and how a reader looks two of them up side by side. The block
  // is unbreakable so an entry that does not fit moves whole rather than
  // straddling; `breakable` lifts that for the entries taller than a page, which
  // have to split somewhere and would otherwise overflow the page and lose their
  // tail silently.
  if args.at("compact", default: false) {
    compact-entry(name, body)
  } else if args.at("solo", default: false) {
    entry(name, first: args.at("first", default: false))
    body
  } else {
    [#metadata((kind: "entry", name: name))<meta>]
    block(
      breakable: args.at("breakable", default: false),
      // Entries share a page now, so the gap between two of them is the only
      // thing telling a reader where one unit stops and the next starts. At the
      // old 1.6em that gap measured 12pt against the 10pt *inside* an entry,
      // between a profile and its fields - which read as one long entry rather
      // than two. 3.2em puts about three line-heights between them.
      above: 3.2em, below: 0.6em,
      {
        heading(level: 2, name)
        body
      },
    )
  }
}

// --- front matter -----------------------------------------------------------

// What the site needs to know about a book and cannot read off its pages:
// where it files, what it is called, and whether it is Eliasson's or ours.
// `..named` rather than a parameter list, so an unknown key is an error and
// `align` never shadows Typst's own function inside this scope.
#let BOOK_META_REQUIRED = ("slug", "army", "version", "layout")
#let BOOK_META_OPTIONAL = ("cover", "align", "shelf", "authored",
                          "id", "base", "edition")

// An extracted book takes its allegiance from the rulebook's Alliance &
// Alignment lists at import time; anything absent here simply has none.
#let BOOK_META_DEFAULTS = (shelf: "base", authored: false)

#let book-meta(..named) = {
  assert(named.pos().len() == 0,
    message: "book-meta takes named arguments only")
  let m = named.named()
  let known = BOOK_META_REQUIRED + BOOK_META_OPTIONAL
  let missing = BOOK_META_REQUIRED.filter(k => k not in m)
  let unknown = m.keys().filter(k => k not in known)
  assert(missing.len() == 0 and unknown.len() == 0,
    message: "book-meta:"
      + if missing.len() > 0 { " missing " + missing.join(", ") } else { "" }
      + if unknown.len() > 0 { " unknown " + unknown.join(", ") } else { "" })
  assert(m.layout in ("army", "rules"),
    message: "book-meta: layout must be \"army\" or \"rules\", not \"" + m.layout + "\"")
  // Built by walking the known keys rather than listing them a second time.
  // Naming them twice once meant `id`, `base` and `edition` were accepted here
  // and then silently dropped from what a reader could query - the assert
  // passed and the data vanished.
  let out = (:)
  for key in known {
    out.insert(key, m.at(key, default: BOOK_META_DEFAULTS.at(key, default: none)))
  }
  [#metadata(out)<book-meta>]
}

// `page(..)` with a body is used rather than `set page(..)`, so the suppressed
// footer applies to this page alone instead of leaking into the whole document.
#let cover(title: "", subtitle: "", art: none) = page(footer: none, {
  v(1fr)
  align(center)[
    #text(size: 40pt, weight: "bold", tracking: 0.12em)[#upper(title)]
    #v(0.2em)
    #line(length: 42%, stroke: 1.2pt + hair)
    #v(0.4em)
    #text(size: 13pt, tracking: 0.18em)[#upper(subtitle)]
  ]
  if art != none {
    v(1.2em)
    align(center, image(art, width: 62%))
  }
  v(1fr)
})

#let colophon(lines) = page(footer: none, {
  v(1fr)
  align(center, block(width: 78%, {
    set par(justify: false, leading: 0.7em)
    set text(size: 9.5pt)
    lines.map(l => block(below: 0.9em, l)).join()
  }))
  v(1fr)
})

// --- document ---------------------------------------------------------------

// `side` widens the margins for the core rulebook, which is set in one column:
// at the army books' measure a page of continuous prose runs to ~90 characters a
// line, which is too long to read comfortably.
//
// `size` is the other half of the same dial. The source books are set in 10pt
// Times inside 2cm margins and run about 50 characters to the line; Libertinus
// sets tighter, so matching the margin alone stretches the line to 55 and
// matching the line alone leaves the block sitting too far in from the edge.
// Only the two together land on the printed page's proportions.
#let book(title: "", side: 2.4cm, size: 10.5pt, body) = {
  set document(title: title)
  set page(
    paper: "a4",
    margin: (x: side, top: 2.2cm, bottom: 1.9cm),
    background: image("/assets/images/parchment.jpg", width: 100%, height: 100%),
    footer: context align(center, text(size: 9.5pt, fill: ink)[
      #counter(page).display()
    ]),
  )
  set text(font: body-font, size: size, fill: ink, lang: "en", hyphenate: true)
  // Off deliberately. Generated books pass their text as string literals, which
  // Typst never substitutes; a hand-written book passes markup, which it would.
  // Leaving it on would curl every apostrophe in text the colophon promises is
  // reproduced, and the word-bag gate cannot see punctuation change.
  set smartquote(enabled: false)
  set par(justify: true, leading: 0.62em, spacing: 0.72em)
  set heading(numbering: none)
  set list(marker: text(fill: hair)[•], indent: 0.5em, body-indent: 0.45em)
  show list: set block(above: 0.55em, below: 0.75em)
  set table(gutter: 0pt)

  // `width: 100%` is what makes `align(center)` mean the page. A block sizes to
  // its content unless told otherwise, so this one shrank to its widest child -
  // the rule beneath the title - and centred the title within that, hard
  // against the left margin; a title wider than the rule pushed the box wider
  // still and set itself flush left. Every chapter opening in the corpus was
  // centred on 189pt of a 595pt page. The rule takes the whole measure, as the
  // one beneath a level-2 heading does.
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    block(width: 100%, below: 1.1em, {
      // Both off for the reasons `namecost` has them off, which a chapter title
      // needed just as much and never had. Justification would space a title
      // that runs to two lines right across the measure, VIRTUES OF THE
      // CHIVALRIC / KNIGHT set as though it were a paragraph. And hyphenation
      // breaks a display title mid-word: three of Warriors of Chaos's chapters
      // opened KHORNE SPECIAL CHARAC- / TERS. Off, a title too long for the
      // measure breaks at a space, where a reader would break it.
      set par(justify: false)
      align(center)[
        #text(size: 25pt, weight: "bold", tracking: 0.11em, hyphenate: false)[#upper(it.body)]
        #v(-0.3em)
        #line(length: 100%, stroke: 1pt + hair)
      ]
    })
  }

  show heading.where(level: 2): it => block(
    above: 1.35em, below: 0.5em, sticky: true,
  )[
    #text(size: 14pt, weight: "bold", tracking: 0.05em)[#upper(it.body)]
    #v(-0.52em)
    #line(length: 100%, stroke: 0.6pt + hair)
  ]

  // Third tier, used only by the core rulebook: no rule beneath it, so the
  // hierarchy stays legible against the level-2 headings.
  show heading.where(level: 3): it => block(
    above: 1.1em, below: 0.35em, sticky: true,
    text(size: 11.5pt, weight: "bold", tracking: 0.04em)[#upper(it.body)],
  )

  body
}
