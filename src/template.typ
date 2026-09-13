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
    text(weight: "bold", size: 10.5pt, tracking: 0.04em, hyphenate: false)[
      #upper(name)
    ],
    if cost != "" { text(size: 9.5pt, style: "italic", cost) } else { none },
  )
})

#let para(rs, style: "body") = {
  if style == "italic" {
    // Flavour text: inset from the rules body, and at its size.
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

// Each entry — a unit, a character — opens its own page, so nothing straddles
// the space left over by whatever preceded it. `weak` keeps the break from
// firing when the page is already fresh, and `first` suppresses it so an entry
// can share its chapter-title page - or, for a magic-item section, so the
// section can place its own break, which it does by whether it fits.
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

// The page's vertical margins, named so `balanced-columns` can work out how
// much of the page is left below the point it is placed at. `book` sets the
// page from these; keeping them here is what keeps the two from disagreeing.
#let PAGE_MARGIN = (top: 2.2cm, bottom: 1.9cm)

// The gap between two columns of items, and the width each column gets of the
// measure. Typst's own default is 4% of the width; it is a named number here
// because `balanced-columns` has to measure its items at the column's width
// before it sets them, and a width guessed at would be a width measured wrong.
#let COLUMN_GUTTER = 4%

// Two columns that come out level, as the printed books set them.
//
// `columns` fills its first column to the foot of the page before it starts the
// second, so a section that is not a full page long stands as one tall column
// beside an empty one, and a section that is two and a half pages long ends the
// same way. The reference conversions fix this by hand, with a `#colbreak()`
// judged by eye at the midpoint of every section; this does the same thing
// without the hand.
//
// The body is cut into records at its paragraph breaks - a magic item is its
// name and its rules with no break between, and the blank line in the source
// between one item and the next is the seam. A record that ends in a sticky
// block is a name written with a blank line before its rules, which several
// books do; `sticky` keeps the two together on the page, so they are one
// record here too. Each record is measured at the column's width, and so is
// each neighbouring pair, which gives the gap the page will actually set
// between them: a paragraph's spacing after prose, a name's own `above` after
// a name, and not one figure assumed for both. The flow through the columns is
// then played out on paper: a record that does not fit runs on into the next
// column at the line it reached, or moves whole if less than three lines of
// it would have stayed behind, which is about what `sticky` and the orphan
// rule do to it. Columns come in pairs, so the pair the last record lands in
// is the section's last page; the records on that page are split where their
// heights halve, and the column break goes there. Pages before it are full,
// and full needs no help.
//
// It is a model of the layout, not the layout, so the two columns are level
// to within a record - which is what a break judged by eye is, too.
//
// Three helpers do the above, so a section can be balanced for a page it is
// not yet on: the records cut from the body, the flow played out through
// them, and the columns set from the flow.
#let _records(body) = {
  let records = ()
  let current = ()
  let kids = if body.has("children") { body.children } else { (body,) }
  for kid in kids {
    if kid.func() == parbreak {
      if current.len() > 0 { records.push(current.join()); current = () }
    } else {
      // Spaces included: a section written as running markup rather than as
      // item calls has its words as children here, and the spaces between them
      // are part of the record.
      current.push(kid)
    }
  }
  if current.len() > 0 { records.push(current.join()) }

  // Glue a record that ends in a sticky block to the one after it.
  let space = [ ].func()
  let ends-sticky(r) = {
    let kids = (if r.has("children") { r.children } else { (r,) })
      .filter(k => k.func() != space)
    (kids.len() > 0 and kids.last().func() == block
      and kids.last().fields().at("sticky", default: false))
  }
  let glued = ()
  let pending = none
  for r in records {
    let r = if pending == none { r } else { pending + parbreak() + r }
    if ends-sticky(r) { pending = r } else { glued.push(r); pending = none }
  }
  if pending != none { glued.push(pending) }
  glued
}

// The flow of the records through columns `width` wide, played out on paper:
// the first pair of columns is `first-column` tall, every pair after it
// `page-column`. Returns the heights and gaps it measured and, for each
// record, the column it starts in; `carried` is what a split record brings
// into each column it runs on into, and `column` is the last one used.
// Needs a context, for `measure` and `text.size`.
#let _flow(records, width, first-column, page-column) = {
  // Three lines of body text: less than that left behind, and the record
  // moves whole.
  let min-keep = 3 * (text.size * (1 + 0.62)).to-absolute()
  let heights = records.map(r => measure(block(width: width, r)).height)
  // `gaps.at(i)` is the space the page sets between record i - 1 and record
  // i: the pair measured together, less the two on their own.
  let gaps = (0pt,) + range(1, records.len()).map(i => calc.max(0pt,
    measure(block(width: width,
      records.at(i - 1) + parbreak() + records.at(i))).height
    - heights.at(i - 1) - heights.at(i)))

  // `starts` is the column each record starts in; a record that ran on from
  // the column before carries `carry` of its height into this one, which
  // counts toward this page's total.
  let column = 0
  let y = 0pt
  let starts = ()
  let carried = ()  // height carried into each column by a split record
  let column-height(c) = if c < 2 { first-column } else { page-column }
  for (i, h) in heights.enumerate() {
    let lead = if y > 0pt { gaps.at(i) } else { 0pt }
    let room = column-height(column) - y - lead
    if h <= room {
      starts.push(column)
      y += lead + h
    } else if room >= min-keep {
      // Runs on: as much as fits stays, the rest opens the next column.
      starts.push(column)
      let rest = h - room
      while rest > column-height(column + 1) {
        column += 1
        carried.push((column, column-height(column)))
        rest -= column-height(column)
      }
      column += 1
      carried.push((column, rest))
      y = rest
    } else {
      column += 1
      starts.push(column)
      y = h
    }
  }
  (heights: heights, gaps: gaps, starts: starts, carried: carried,
   column: column)
}

// The records set in two level columns, the first pair `first-column` tall
// and every pair after it `page-column`: the flow played out through `_flow`,
// and a column break placed where the last page's records halve.
#let _balance(records, width, first-column, page-column) = {
  let flow = _flow(records, width, first-column, page-column)
  let (heights, gaps, starts, carried, column) = flow
  let column-height(c) = if c < 2 { first-column } else { page-column }

  // The last pair of columns is the last page. What it holds is every record
  // starting there plus whatever ran on into its first column; split that
  // where the heights halve.
  let last-page = calc.floor(column / 2) * 2
  let on-page = range(records.len()).filter(i => starts.at(i) >= last-page)
  let carried-in = carried.filter(((c, _)) => c == last-page)
    .map(((_, h)) => h).sum(default: 0pt)
  // A gap precedes every record on the page but one that opens the column.
  let lead(k, i) = if k > 0 or carried-in > 0pt { gaps.at(i) } else { 0pt }
  let total = carried-in + on-page.enumerate()
    .map(((k, i)) => lead(k, i) + heights.at(i)).sum(default: 0pt)
  let break-at = none
  if on-page.len() > 1 {
    let acc = carried-in
    let best = none
    let room-a = column-height(last-page)
    let room-b = column-height(last-page + 1)
    for (k, i) in on-page.enumerate() {
      // The gap before record i is set only if i follows something in the
      // same column; at a seam it is dropped, so it counts toward neither
      // half's room, but it is part of the total the halfway line is
      // measured against.
      let before = acc
      acc += lead(k, i)
      // The break before record i leaves `acc` in the first column and the
      // rest in the second; take the seam nearest the halfway line. Only a
      // seam both halves fit at, though. On a page the records fill to the
      // foot, the seam nearest halfway can lie past what the first column
      // holds: the record before it runs on into the second column of its
      // own accord, and a break placed after that run-on opens a third
      // column, which is a new page with a page's worth of records left
      // behind it. Where no seam fits, the flow is left to break itself,
      // which on a full page it does level anyway.
      let off = calc.abs(acc - total / 2)
      let fits = before <= room-a and total - acc <= room-b
      if fits and (best == none or off < best) { best = off; break-at = i }
      acc += heights.at(i)
    }
    // A break before the first record on the page would empty the column.
    if break-at == on-page.first() { break-at = none }
  }

  let laid = ()
  for (i, r) in records.enumerate() {
    if i == break-at { laid.push(colbreak()) }
    laid.push(r)
    if i + 1 < records.len() { laid.push(parbreak()) }
  }
  _columns(2, gutter: COLUMN_GUTTER, laid.join())
}

// The measure between the margins, and the width of one of two columns set
// across it: what `layout` would report, worked out from the page instead
// for the places that have no `layout` to ask.
#let _measure-width() = (
  page.width - page.margin.left.length - page.margin.right.length
)
#let _column-width(measure) = (measure - COLUMN_GUTTER * measure) / 2

#let balanced-columns(body) = context {
  let records = _records(body)
  let here-y = here().position().y

  layout(size => {
    let page-column = size.height
    let first-column = page.height - PAGE_MARGIN.bottom - here-y
    _balance(records, _column-width(size.width), first-column, page-column)
  })
}

// A section: its heading and its items, always in two columns - and the page
// break before it, when it needs one.
//
// The column count used to be decided at import by counting characters - two
// columns at 3,000 of them, one below, written into the book as a bare
// `#columns(2)[` - and then by measuring whether the items would run past a
// page set across the whole measure. Both rules existed so that a short section
// would not leave its second column standing part-empty. The decision now is
// that a magic-item section is two columns whatever its length, as a lore
// already was, and `balanced-columns` sees to it that the two come out level.
//
// A section used to open a page of its own, as a unit entry does. Most fill
// one; but a faction's own items - the Empire's Ulrican and Sigmarite
// chapters, the Warriors of Chaos's four gods' - run to a handful of records
// apiece, and each on a page of its own left the chapter mostly parchment. So
// a section that would fit on a page of its own no longer insists on one: it
// is set as one unbreakable block, heading and columns together, and the page
// takes it where it stands if it has the room and moves it whole to the next
// page if not - the rule a character mount already lives by. The block is
// balanced for a page of its own, and a section that fits a page's columns
// fits the same columns cut shorter, so the block is the same block wherever
// it lands. A section too long for a page opens one, as before, and fills it
// as before; it never shared a page anyway.
//
// It is done this way, rather than by asking where the page has got to and
// deciding from that, because the answer to that question is only known from
// the pass before, and a run of sections each placed by where the last one
// ended would want a pass per section to settle - more than Typst gives a
// document. A block that carries its own height asks nothing of the passes.
//
// `SECTION_GAP` is the air above a section that shares a page with the one
// before it, and `first` is the section that shares its chapter's title page
// instead, set beneath the intro as it always was.
//
// The heading is centred, as the printed books centre a category within its
// chapter, and carries no rule: the rule beneath a level-2 heading is a unit
// entry's, and a category heading with one would read as a second chapter
// title. The show rule is scoped to this one section, so `entry` still emits
// the level-2 heading `emit.py` counts and the outline lists.
#let SECTION_GAP = 2.6em

// `intro:` is the category's own rules - what a magic weapon replaces, who may
// wear magic armour - which the rulebook sets under the section heading at the
// full measure, before the records begin in their columns. The army books
// leave it off: their sections open on the records, the rules being the
// rulebook's to state.
#let magic-item-section(kind, name: auto, first: false, intro: none,
                        body) = {
  _assert-kind(kind, "magic-item-section")
  let name = if name == auto { MAGIC_ITEM_SECTIONS.at(kind) } else { name }
  show heading.where(level: 2): it => block(
    width: 100%, above: 1.35em, below: 0.7em, sticky: true,
    align(center,
      text(size: 14pt, weight: "bold", tracking: 0.05em, upper(it.body))),
  )
  // `entry` rather than a heading of its own, so a magic-item section heads
  // exactly as a unit entry does - one definition, not two. Its own break is
  // off: the section decides its own, below.
  let head = {
    entry(name, first: true)
    // Not wrapped in a block, as the chapter intro is not: a paragraph takes
    // `par.spacing`, and the records' columns follow it at that gap.
    if intro != none { intro }
  }
  if first {
    head
    balanced-columns(body)
  } else {
    context {
      let records = _records(body)
      let across = _measure-width()
      let page-column = page.height - PAGE_MARGIN.top - PAGE_MARGIN.bottom
      // The heading and intro as they will be set, and the spacing the columns
      // keep from them - measured with a frame of no height standing in for
      // the columns, so it is the `below` as it will actually resolve, not a
      // figure copied from the show rule and resolved against the wrong em.
      let head-h = measure(block(width: across,
        head + block(height: 0pt, above: 0pt, below: 0pt))).height
      let columns = page-column - head-h
      let width = _column-width(across)
      if _flow(records, width, columns, page-column).column <= 1 {
        block(breakable: false, above: SECTION_GAP, below: 0pt, width: 100%, {
          head
          _balance(records, width, columns, page-column)
        })
      } else {
        pagebreak(weak: true)
        head
        balanced-columns(body)
      }
    }
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
      text(weight: "bold", size: 10.5pt, tracking: 0.04em, hyphenate: false,
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
  // An explicit `above` or `below` wins over whatever its neighbour brings, so
  // the gap between a spell's name and the rules under it is this figure and
  // not a paragraph break. Named on both sides so neither has to be guessed.
  block(above: 0.28em, body)
}

// A lore: its chapter title and its spells, always in two columns, as a
// magic-item section is - and through `balanced-columns`, so the two come out
// level as that section's do rather than the first running to the foot of the
// page before the second begins.
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
  balanced-columns(body)
}

// --- upgrades ---------------------------------------------------------------

// A faction's own purchases: Bretonnia's Virtues, the Empire's Knightly Orders,
// the Daemonic Gifts, the Dwarfs' runes - seventeen chapters in sixteen books,
// each a list of named things a character pays points for. They are magic
// items by another name, as a spell is, and are set as one: the name with its
// cost flush right, the qualifiers, then the rules, at RECORD_GAP and in two
// level columns. Written as records so the cost is a number, "Model on foot
// only." is a value, and a name that wraps cannot be typed as two.
//
// `cost` says by its type what shape the price takes, as a unit field does:
//
//   30                                   30 points.
//   none                                 No price printed - two of Nippon's
//                                        Clan Mons carry none.
//   (5, 35, 55)                          5/35/55 points: a Dwarf rune, priced
//                                        by how many of it are inscribed.
//   (("Characters", "25 points"),        A line per kind of model beneath the
//    ("Infantry", "1 point per model"))  name: the Knightly Orders and the
//                                        Quirks of Character.
#let upgrade(name, cost, body, only: none, bound: none, one-use: false) = {
  let where = "upgrade " + name
  let is-points = x => _typeof(x) == int and x > 0
  let is-line = x => (_typeof(x) == array and x.len() == 2
    and x.all(s => _typeof(s) == str))
  let shape = if cost == none { "none" }
    else if is-points(cost) { "points" }
    else if _typeof(cost) == array and cost.len() > 0 and cost.all(is-points) {
      "tiers"
    } else if _typeof(cost) == array and cost.len() > 0 and cost.all(is-line) {
      "lines"
    }
  assert(shape != none, message: where + ": cost is a number of points, none,"
    + " a tuple of numbers, or (who, price) pairs - not " + repr(cost))

  // Who may take it, how it may be used, then what it does - the order a magic
  // item's qualifiers take, through the same machinery, with the full stops
  // supplied here.
  let qualifiers = (
    if only != none { only + " only" },
    _bound-phrase(bound, where),
    if one-use { "One use only" },
  ).filter(q => q != none).map(q => q + ". ")

  [#metadata((
    kind: "upgrade", name: name, cost: cost, only: only, bound: bound,
    one-use: one-use,
  ))<meta>]
  namecost(name,
    if shape == "points" { str(cost) + " points" }
    else if shape == "tiers" { cost.map(str).join("/") + " points" }
    else { "" },
    above: RECORD_GAP)
  // The per-model prices, one to a line under the name: the model's kind at the
  // left and its price at the right, as the source sets them, in the smaller
  // size the cost beside a name takes. No leader - the source draws none, and
  // the two halves are short enough to read as one line without it.
  // Unbreakable, so a column's foot cannot fall between one price and the
  // next; the name above is sticky and moves with it.
  if shape == "lines" {
    block(above: 0.15em, below: 0.4em, breakable: false, {
      set par(justify: false)
      grid(
        columns: (1fr, auto),
        align: (left + bottom, right + bottom),
        column-gutter: 0.6em, row-gutter: 0.25em,
        ..cost.map(((who, price)) => (
          text(weight: "bold", size: 9.5pt, who),
          text(size: 9.5pt, style: "italic", price),
        )).flatten(),
      )
    })
  }
  // Not wrapped in a block, as a magic item's is not: the qualifiers open the
  // first paragraph rather than standing off as a line of their own.
  [#qualifiers.join()#body]
}

// A heading inside the chapter: the four gods' gifts, the five bloodlines, the
// Dwarfs' six kinds of rune. The source sets these as run-in heads within the
// column flow and lists them on its contents page, so this is a level-2
// heading - the contents and emit.py's tally both see it, as they see a
// magic-item section - but not an `entry`: no page break beneath it, and no
// rule, since the rule beneath a level-2 heading is a unit entry's. The show
// rule is scoped to this one heading. Wrapped in a sticky block so
// `balanced-columns` glues it to the record beneath it and it is never left
// standing at the foot of a column.
//
// `note` is the line under the head that says who may take what follows -
// "The following powers may only be taken by Daemons of Khorne." - set as
// `note` sets one, indented and a shade smaller.
// `below` is for the prose that follows a head in the Dwarfs' chapter - a
// record brings RECORD_GAP of its own, a paragraph brings nothing.
#let group(name, note: none) = block(
  above: 1.9em, below: 0.5em, width: 100%, sticky: true,
  {
    show heading.where(level: 2): it => block(
      width: 100%, above: 0em, below: 0em,
      align(center,
        text(size: 12pt, weight: "bold", tracking: 0.06em, hyphenate: false,
          upper(it.body))),
    )
    heading(level: 2, name)
    if note != none {
      block(above: 0.55em, below: 0em, inset: (left: 1.1em, right: 1.1em),
        text(size: 10pt, note))
    }
  },
)

// The chapter: its title, its standing paragraph, and its records in two level
// columns, as a lore is. The intro is set as it is given rather than `strong`
// as a lore's is: the source bolds the paragraph in most of these chapters and
// sets it plain in the Daemons', and a book says which by what it passes.
#let upgrade-chapter(title, intro: none, body) = {
  heading(level: 1, title)
  if intro != none { intro }
  balanced-columns(body)
}

// --- profiles ---------------------------------------------------------------

// The label sits on the same line as the value it introduces, so it is set at
// the body size rather than under it - at 9pt against 10pt the two halves of
// one line read as two different registers. `1em` rather than a fixed 10pt so
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
  // The header is set at the body size, as the rows under it are. Letterspacing
  // it would push POINTS past the right margin wherever a long name in the
  // label column has already squeezed the ten characteristic columns.
  table.header(
    text(size: 10pt, weight: "bold")[#upper(label)],
    ..cols.map(c => text(size: 10pt, weight: "bold")[#upper(c)]),
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
    ..cols.map(c => text(size: 10pt, weight: "bold", tracking: 0.07em)[#upper(c)]),
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
// does not shadow Typst's own. The width is a fraction of the page's measure,
// so a half-column diagram stays half a column whatever the margins are - and
// of the page's measure whatever the diagram sits in: a chapter set in two
// columns holds one at the width the source printed it, capped at the column,
// rather than at a fraction of a fraction.
//
// In a page set in columns, a diagram the source printed wider than a column
// spans both, as a float at the head of the page: at column width it would be
// half the size it was drawn at, and the diagrams are read for their labels.
// `fraction` says which it is - the source set its diagrams at half the
// measure or the whole of it, and nothing between. `span: false` keeps a wide
// one in its column regardless: a float that finds no room on its page goes
// to the next, and a chapter whose last page is full leaves it standing alone
// on a page of its own, which is worse than a diagram at half its size.
#let _diagram-body(path, fraction) = block(above: 1em, below: 1em, width: 100%,
  align(center, context {
    let measure = page.width - page.margin.left.length - page.margin.right.length
    layout(size => image(path, width: calc.min(fraction * measure, size.width)))
  }),
)

#let diagram(path, fraction, span: auto) = context {
  let span = if span == auto { fraction > 0.5 } else { span }
  if page.columns > 1 and span {
    place(top + center, scope: "parent", float: true, clearance: 1em,
      _diagram-body(path, fraction))
  } else {
    _diagram-body(path, fraction)
  }
}

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
// where it files and what it is called. `..named` rather than a parameter list,
// so an unknown key is an error and `align` never shadows Typst's own function
// inside this scope.
#let BOOK_META_REQUIRED = ("slug", "army", "version", "layout")
#let BOOK_META_OPTIONAL = ("cover", "align")

// An extracted book takes its allegiance from the rulebook's Alliance &
// Alignment lists at import time; anything absent here simply has none.
#let BOOK_META_DEFAULTS = (:)

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
  // Naming them twice once meant a key was accepted by the assert above and
  // then silently dropped from what a reader could query - the assert passed
  // and the data vanished.
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
    #text(size: 50pt, weight: "bold", tracking: 0.12em)[#upper(title)]
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

// The contents page, in two columns that come out level, as a lore or a
// magic-item section is set. Typst's own `outline` runs its entries in one
// column down the page, and an army book's sixty-odd entries at that measure
// run on to a second page that is five-sixths empty; the printed books set
// theirs in two. The entries are built here from the same headings the
// outline would list - one `outline.entry` per heading, so the show rule that
// bolds a chapter's line and the fill and page number are the outline's own -
// and handed to `balanced-columns` as one record apiece, which is what puts
// the seam at the halfway line rather than the foot of the first column.
// `book` routes every `#outline(..)` through this, so a book still declares
// its contents with the one call and its depth, and says nothing about how
// they are set.
#let contents(title: [Contents], depth: none) = {
  heading(level: 1, outlined: false, title)
  context {
    let heads = query(heading.where(outlined: true))
      .filter(h => depth == none or h.level <= depth)
    balanced-columns(heads.map(h => outline.entry(h.level, h)).join(parbreak()))
  }
}

#let colophon(lines) = page(footer: none, {
  v(1fr)
  align(center, block(width: 78%, {
    set par(justify: false, leading: 0.7em)
    set text(size: 9.5pt)
    lines.map(l => block(below: 0.9em, l)).join()
  }))
  v(1fr)
})

// --- columns of prose -------------------------------------------------------

// Chapters of continuous rules set in two columns the ordinary way: the first
// fills to the foot of the page and the second begins, as the source rulebook
// sets them. Not `balanced-columns`, which levels a section's last page - a
// run of prose chapters has no last page to level, only the next chapter's
// first, and that opens on a page of its own. Set on the page rather than in a
// `columns` block so a chapter title and a wide diagram can float across both
// columns, which the show rules above `book` do when they find the page set
// this way. A magic-item section or a lore is not put inside this: each sets
// its own columns and would set them inside one of these.
#let two-columns(body) = {
  set page(columns: 2)
  set columns(gutter: COLUMN_GUTTER)
  body
}

// --- document ---------------------------------------------------------------

// `side` and `size` are the two dials of the measure, and every book in the
// corpus - the rulebook included - takes the defaults. The source books are set
// in 10pt Times inside 2cm margins, and the defaults are those two. Libertinus
// sets tighter than Times, so the line runs a few characters longer than the
// source's; that is accepted so the type sits at the size the source printed.
// The rulebook used to widen `side` for its one-column prose; it now shares
// the army books' page so the two read as one set.
#let book(title: "", side: 2.0cm, size: 10pt, body) = {
  set document(title: title)
  set page(
    paper: "a4",
    margin: (x: side, top: PAGE_MARGIN.top, bottom: PAGE_MARGIN.bottom),
    background: image("/assets/images/parchment.jpg", width: 100%, height: 100%),
    footer: context align(center, text(size: 10.5pt, fill: ink)[
      #counter(page).display()
    ]),
  )
  set text(font: body-font, size: size, fill: ink, lang: "en", hyphenate: true)
  // Off deliberately. Generated books pass their text as string literals, which
  // Typst never substitutes; a hand-written book passes markup, which it would.
  // Leaving it on would curl every apostrophe in text the colophon promises is
  // reproduced, and the word-bag gate cannot see punctuation change.
  set smartquote(enabled: false)
  // A blank line in the source is a paragraph break, and it is set a shade
  // wider than a line break so the eye can find where one point ends and the
  // next begins: 1em against 0.62em of leading is a third of a line more. A
  // block that names its own `above` or `below` keeps that gap, whatever a
  // paragraph beside it would bring, so this widens the space between
  // paragraphs and nothing else.
  set par(justify: true, leading: 0.62em, spacing: 1em)
  set heading(numbering: none)
  // The contents page: a chapter's line is set a half-point above the body and
  // bold, so the six sections under MAGIC ITEMS read as its children.
  show outline.entry.where(level: 1): set text(size: 10.5pt, weight: "bold")
  show outline: it => contents(
    title: if it.title == auto { [Contents] } else { it.title },
    depth: it.depth,
  )
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
  //
  // In a page set in columns the title is floated to the head of the page in
  // the page's own scope, so it spans both columns as a chapter title should;
  // the break comes first so the float lands on the chapter's page and not
  // atop the tail of the one before.
  let title(it) = block(width: 100%, below: 1.1em, {
      // Both off for the reasons `namecost` has them off, which a chapter title
      // needed just as much and never had. Justification would space a title
      // that runs to two lines right across the measure, VIRTUES OF THE
      // CHIVALRIC / KNIGHT set as though it were a paragraph. And hyphenation
      // breaks a display title mid-word: three of Warriors of Chaos's chapters
      // opened KHORNE SPECIAL CHARAC- / TERS. Off, a title too long for the
      // measure breaks at a space, where a reader would break it.
      set par(justify: false)
      align(center)[
        #text(size: 30pt, weight: "bold", tracking: 0.11em, hyphenate: false)[#upper(it.body)]
        #v(-0.3em)
        #line(length: 100%, stroke: 1pt + hair)
      ]
    })
  show heading.where(level: 1): it => context {
    pagebreak(weak: true)
    if page.columns > 1 {
      place(top + center, scope: "parent", float: true, clearance: 1.1em,
        title(it))
    } else {
      title(it)
    }
  }

  show heading.where(level: 2): it => block(
    above: 1.35em, below: 0.5em, sticky: true,
  )[
    #text(size: 14.5pt, weight: "bold", tracking: 0.05em)[#upper(it.body)]
    #v(-0.52em)
    #line(length: 100%, stroke: 0.6pt + hair)
  ]

  // Third tier, used only by the core rulebook: no rule beneath it, so the
  // hierarchy stays legible against the level-2 headings.
  show heading.where(level: 3): it => block(
    above: 1.1em, below: 0.35em, sticky: true,
    text(size: 10.5pt, weight: "bold", tracking: 0.04em)[#upper(it.body)],
  )

  body
}
