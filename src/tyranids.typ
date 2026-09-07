// Tyranids - an original army book, written for this project rather than
// extracted from a PDF. This file is the source of truth: edit it directly.
//
// Design settled 2026-08-20: synapse/instinct spine borrowed from Daemonic
// Instability, no Wizards - the army starves the enemy magic phase instead of
// contesting it - chitin as Natural Armour on the Lizardmen ladder, poison only
// ever from toxin sacs. Points are anchored against the Daemons of Chaos,
// Beastmen and Lizardmen books and are expected to move with play.

#import "template.typ": *

#book-meta(
  slug: "tyranids",
  army: "Tyranids",
  version: "1.0",
  layout: "army",
  align: "destruction",
  shelf: "proposal",
  authored: true,
)

#show: book.with(title: "Tyranids 1.0 — an original army book")

#cover(
  title: "Tyranids",
  subtitle: "An original army book · a proposal",
  art: none,
)

#colophon((
  [
    An original, unofficial army book written for use with the *Warhammer
    Armies Project*, Mathias Eliasson's freely distributed fan ruleset. This
    book is not his work: its rules, army design and points values are our
    own house material, version 1.0.
  ],
  [
    The whole book stands as a proposal: it is being played and argued at our
    table, and nothing in it — rules or points — is settled yet.
  ],
  [
    Warhammer, Warhammer Fantasy Battle, Warhammer 40,000 and all associated
    names, races and places are trademarks of Games Workshop Limited. This
    document is unofficial and unaffiliated, and no challenge to their status
    is intended.
  ],
  [Typeset with Typst. Not for sale.],
))

#outline(title: [Contents], depth: 2)

// The whole book is unsettled house material, so it files on the proposals
// shelf of the site's edition filter rather than presenting as base WAP
// text.
= THE GREAT DEVOURER

They came from beyond the stars, or from beneath the world, or out of the Realm of Chaos itself — the scholars of the Old World cannot agree, and the swarm does not care to correct them. The priests name them daemons; the daemons, if they could be asked, would take offence. A daemon at least wants something of you. The Tyranids want only what you are made of.

A Tyranid swarm is not an army but a single organism wearing a million bodies. One intellect — the Hive Mind — looks out of every eye at once, and its will runs through the swarm along a living web of synapse creatures: the Tyrants, the Warriors, the swollen-skulled things that drift behind the lines. Within that web, the swarm moves with a single terrible purpose, and no beast in it knows fear, or pain, or the difference between itself and its neighbour. Cut a strand of the web, and the beasts it held fall back on the appetites they were grown from — some feed, some hide, and all are still hungry.

An invasion does not begin with the swarm. It begins years before, quietly: pale shapes in the sewers of port cities, hunters standing motionless in the deep woods, prey that walks into the trees and does not walk out. Then the shadow falls. The Winds of Magic gutter like candles in a shut room; wizards wake screaming from dreams of an endless choir; the beasts of the field run mad. Only then does the swarm come, tide upon tide of it, and behind the tide come the feeder-things — the digestion pools, the rippling carpets of the reclamation — until what was a kingdom is bare rock and the swarm has grown by exactly the weight of everything that lived there. Nothing is wasted. Nothing is spared. Nothing is left.

The Great Devourer cannot be bargained with, bribed, converted or frightened, and it allies with no one, for the concept of an ally requires the concept of a future in which the other party is still alive. Every battle against it can be won. The war cannot, because the war is not, from the swarm's perspective, a war at all. It is a meal, interrupted.

= ARMY SPECIAL RULES

#columns(2)[
This section of the book describes the different units in a Tyranids army, along with their rules. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring 'army special rules' that apply to several Tyranids units, and these are detailed below.

#namecost("TYRANID", "")

Models with this rule have the Fear special rule and are Unbreakable. However, if a unit of Tyranids loses a round of close combat it must take a Hive Mind Instability test. This works like a normal Break test, except that for every point they fail the test by, the unit suffers one additional Wound with no saves allowed. Hive Mind Instability replaces Unstable where applicable.

If characters are present in the unit, the controlling player first allocates Wounds to the unit (up to their current Wounds), then divides remaining Wounds as equally as possible amongst any characters.

The Hive Mind Instability test can use the Leadership of a Synapse creature (see below), Inspiring Presence, Hold Your Ground and/or be tested on unmodified Leadership if the unit is Stubborn or Steadfast as normal.

A Tyranids army may never include allies of any kind, and Tyranid units may never be taken as allies by any other army — to the Great Devourer, everything that lives is biomass.

#namecost("SYNAPSE", "")

Synapse creatures carry the will of the Hive Mind, and the swarm around them moves with a single purpose. A Tyranid unit within 12" of one or more friendly Synapse creatures may use the highest Leadership among those Synapse creatures for any Leadership test it is required to take, including Hive Mind Instability tests, and does not take Instinctive Behaviour tests.

Synapse creatures never take Instinctive Behaviour tests themselves. This rule is in addition to the Inspiring Presence of the Army General, which works as normal.

#namecost("SYNAPTIC ATTUNEMENT", "")

Each breed of synapse creature colours the will it carries: prey-hate from a Tyrant, patience from the Warriors, the scent of the hunt from a Broodlord. At the start of each friendly turn, each Tyranid unit that is not itself a Synapse creature and is within range of one or more friendly Synapse creatures becomes attuned to exactly one of them, chosen by the controlling player. Until the start of the next friendly turn, the unit gains the benefit listed below for its anchor; each gift is also named in brackets after the Synapse special rule in its creature's entry. Some anchors give no gift but draw on the broods bound to them instead — these are marked Communion, and are empowered while at least one unit is attuned to them. A unit can never benefit from more than one attunement at a time, and the Capillary Cluster grants no attunement — it is a beacon, not a mind.

- Synapse (Hatred) — Hive Tyrant: The attuned unit has the Hatred special rule.
- Synapse (Dread) — Neurotyrant: Enemy units in base contact with the attuned unit suffer a \-1 penalty to their Leadership.
- Synapse (Precision) — Tyranid Prime: The attuned unit may re-roll To Hit rolls of 1 in close combat.
- Synapse (Discipline) — Tyranid Warriors: The attuned unit takes Hive Mind Instability tests as if it were Steadfast, on its unmodified Leadership.
- Synapse (Communion) — Broodlord: While at least one unit is attuned to the Broodlord, enemy models take the Leadership test against his Hypnotic Gaze with a \-1 penalty.
- Synapse (Communion) — Zoanthropes: While at least one unit is attuned to the Zoanthropes, their Warp Blast is resolved at Strength 6 with a range of 12/24".
- Synapse (Communion) — Tervigon: While at least one unit is attuned to the Tervigon, she may re-roll one of the dice when rolling for Brood Progenitor.
- Synapse (Swiftstride) — Trygon Prime: The attuned unit has the Swiftstride special rule.
- Synapse (Purpose) — Norn Emissary: The attuned unit has the Hatred special rule against the target of the Emissary's Singular Purpose.

#namecost("INSTINCTIVE BEHAVIOUR", "")

Without the Hive Mind's grip, a Tyranid organism falls back on the appetites it was grown from. At the start of each friendly turn, each unit with this special rule that is not within 12" of a friendly Synapse creature and not engaged in close combat must take a Leadership test on its own Leadership. If the test is failed, the unit is governed by its instinct, shown in brackets after the rule, until the start of its next friendly turn:

- Lurk: The unit is Unfocused, as the result of the same name on the Stupidity table: it suffers a \-1 penalty to its Weapon Skill, Ballistic Skill and Leadership.
- Feed: The unit is subject to the rules for Frenzy (including the extra Attack), and automatically fails any Leadership test to restrain from charging.

#namecost("SHADOW IN THE WARP", "")

The Hive Mind does not wield the Winds of Magic — it smothers them. A Tyranids army has no Wizards, never generates or receives power or dispel dice, and can never cast or dispel spells.

However, while at least one friendly model with the Synapse special rule is on the battlefield, the opposing player rolls one fewer dice for the Winds of Magic. In addition, enemy Wizards within 12" of a friendly Synapse creature suffer a \-1 penalty to their casting rolls. This penalty is not cumulative, no matter how many Synapse creatures are nearby.

#namecost("THE SWARM FEEDS", "")

Nothing the swarm kills is wasted; it is carried down a thousand gullets back into the tide. At the end of any close combat phase in which a Tyranid unit with Instinctive Behaviour (Feed) destroyed an enemy unit, it feeds on the fallen: the unit immediately recovers D3 Wounds' worth of slain rank-and-file models, just like a summoning spell. Characters are never recovered this way.

#namecost("VANGUARD ORGANISMS", "")

The swarm's ambushers follow prey-scent trails laid down by the vanguard years before the invasion breaks. Tyranid units with the Ambushers special rule add +1 to the dice roll that determines whether they arrive.

#namecost("CAPILLARY CLUSTER", "50 points")

The first towers of the reclamation, grown in the dark before the battle was ever offered. One per army. After deployment zones are determined, but before either army deploys, place a Capillary Cluster — a Mystical Monument up to 3" in diameter — anywhere within your own deployment zone. Friendly Tyranid units within 6" of the Cluster count as being within range of a Synapse creature with Leadership 8. The Cluster is not itself a Synapse creature for the purposes of Shadow in the Warp, and it cannot be attacked, harmed or moved.

#namecost("BIO-WEAPONS", "")

Tyranid weapons are living things, grown for a single purpose and bonded to their bearer's flesh. The following weapons are carried by several units in this book:

#namecost("FLESHBORER", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "4", "March & Shoot"))
#namecost("DEVOURER", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "3", "Multiple Shots (2)"))
#namecost("DEATHSPITTER", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "4", "-"))
#namecost("SCYTHING TALONS", "")

A model with scything talons may re-roll To Hit rolls of 1 in close combat.

#namecost("RENDING CLAWS", "")

Close combat attacks made with rending claws have the Armour Piercing (2) special rule.

#namecost("BROODLINE UPGRADES", "")

Many entries in this book may purchase one or more of the following common upgrades, at the cost given in their entry. Each is a special rule in its own right, cumulative with other sources of the same rule as normal:

#namecost("TOXIN SACS", "")

The model has the Poisoned Attacks special rule.

#namecost("ADRENAL GLANDS", "")

The model adds +1 to its Movement characteristic.

#namecost("REGENERATIVE TISSUES", "")

The model has the Regeneration (5+) special rule.

#namecost("WARP-STATIC CYSTS", "")

Enemy Wizards within 12" of a unit with warp-static cysts suffer the \-1 casting penalty from Shadow in the Warp as if the unit were a Synapse creature. This penalty is not cumulative with any other source of it.

#namecost("SWARM SYNCHRONY", "")

The swarm carries no banners, blows no horns and salutes no champions — when the web holds and the mass is sufficient, a brood simply moves as the fingers of one hand. Tyranid units take no command groups of any kind. Instead, while a Tyranid unit is within range of a friendly Synapse creature and its Unit Strength is greater than the combined Unit Strength of the enemy units in base contact with it, it fights in perfect synchrony: the unit adds +1 to its combat result, and wins drawn rounds of close combat by 1 (this and an enemy Musician cancel each other out).

Note that a unit within range of a Synapse creature already uses the Synapse creature's Leadership for its Leadership tests, including tests to march near the enemy and to counter-charge or redirect a charge — the web is leader and musician enough.
]

= HIVE FLEETS

No two tendrils of the Great Devourer hunt alike. If your Army General is a Synapse creature, your army belongs to one of the great hive fleets, chosen when you write your army roster and noted on it. Every unit in the army with the Tyranid special rule gains the fleet's adaptation for the whole battle.

#namecost("HIVE FLEET BEHEMOTH", "")

The first and bluntest of the hive fleets: it does not manoeuvre, it descends. Tyranid units may re-roll failed charge distance rolls.

#namecost("HIVE FLEET KRAKEN", "")

Kraken strikes as a tide, flowing around strongpoints and arriving everywhere at once. Tyranid units add +1 to their Movement characteristic, to a maximum of 8.

#namecost("HIVE FLEET LEVIATHAN", "")

Leviathan's synaptic web is denser than any other fleet's, and its swarms fight in silence and in step. The range of the Synapse special rule is increased by 3" for all friendly Synapse creatures.

#namecost("HIVE FLEET GORGON", "")

Gorgon's broods drip with adaptive toxins, re-brewed mid-battle to answer whatever they taste. Tyranid units have the Poisoned Attacks special rule during a turn in which they charged.

#namecost("HIVE FLEET HYDRA", "")

Hydra spends its broods like water and grows them back faster than they fall. When a Tyranid unit of 10 or more models suffers Wounds from a failed Hive Mind Instability test, it suffers one fewer Wound (to a minimum of 0).

#namecost("HIVE FLEET KRONOS", "")

Kronos exists to silence the Warp itself, and the static of its coming blankets whole battlefields. The casting penalty from Shadow in the Warp applies to all enemy Wizards on the battlefield, not only those within 12" of a Synapse creature.

= BIOMORPHS

The Hive Mind does not forge trophies; it grows them. Characters may select Biomorphs up to the points allowance given in their entry. Each Biomorph may only be taken once per army, and no model may have more than three. Toxin sacs, adrenal glands and regenerative tissues are broodline upgrades listed on the entries themselves, and do not count against these limits.

#namecost("MAW-CLAWS OF THE DEVOURER", "45 points")

If the model kills an enemy character or Wizard in close combat, it immediately regains all Wounds lost earlier in the battle and gains the Hatred special rule for the rest of the battle.

#namecost("SYNAPTIC AMPLIFIER", "40 points")

Synapse creatures only. The range of the model's Synapse special rule is increased by 6".

#namecost("WARP ABSORPTION NODE", "35 points")

The model, and any unit it has joined, gain the Magic Resistance (2) special rule. If the model already has Magic Resistance, increase its value by 1 instead.

#namecost("SCREAMING CYST", "35 points")

Synapse creatures only. Enemy Wizards within 12" of the model suffer a \-2 casting penalty from Shadow in the Warp, rather than \-1.

#namecost("THE HORROR IN THE DARK", "30 points")

Enemy units in base contact with the model suffer a \-1 penalty to their Leadership, and must re-roll successful Fear and Terror tests caused by the model or its unit.

#namecost("BONDED EXOSKELETON", "30 points")

The model's Natural Armour is improved by one step, to a maximum of 2+.

#namecost("ACID BLOOD", "25 points")

Each time the model suffers an unsaved Wound in close combat, the unit that caused it suffers D3 Strength 4 hits at the end of that phase.

#namecost("BIO-PLASMIC DISCHARGE", "25 points")

The model has a Breath Weapon, Strength 4, with the Armour Piercing (1) special rule.

#namecost("MEMBRANOUS WINGS", "25 points")

Monstrous Infantry characters only, and only if the model cannot already fly. The model gains the Fly (8) special rule.

#namecost("TITANIC BULK", "25 points")

Monsters only. The model's Stomp becomes Stomp (D6+3).

#namecost("ADRENAL SURGE", "20 points")

The model has +1 Attack and +1 Initiative during any turn in which it charged.

#namecost("CHAMELEONIC SKIN", "15 points")

Enemy missile attacks targeting the model suffer an additional \-1 To Hit modifier.

#namecost("HYPER-TOXIC ICHOR", "15 points")

The model has the Poisoned Attacks special rule.

#namecost("SOPORIFIC SPORES", "15 points")

Enemy models in base contact with the model suffer a \-2 penalty to their Initiative.

#namecost("FLESH HOOKS", "10 points")

The model gains a shooting attack: range 4/8", Strength 4, March & Shoot. In addition, the model strikes at +1 Initiative against models defending an obstacle.

= CHARACTERS

#unit("HIVE TYRANT",
  first: true,
  before: [
#note[A Hive Tyrant is the Hive Mind made flesh: a towering synapse-beast grown to command, its will lashing the broods around it into perfect, silent obedience. Where it strides, the swarm does not merely fight — it thinks.]

#profile(
  (name: "Hive Tyrant", m: 7, ws: 7, bs: 3, s: 6, t: 6, w: 5, i: 6, a: 5, ld: 10, points: 280),
)
  ],
  troop-type: "Monster (Character, Tyranid)",
  base-size: "50x50 or 50x100",
  equipment: "Scything talons",
  special-rules: "Tyranid, Synapse (Hatred), Synaptic Relay, Terror, Natural Armour (4+), Stomp (D6)",
  options: [
- May replace scything talons with a bonesword & lash whip +25 points
- May take a venom cannon +30 points
- May take membranous wings (Fly (8)) +40 points
- May take reinforced chitin (Natural Armour (3+)) +20 points
- May be a Hive Commander +25 points
- May take broodline upgrades:
  - Regenerative tissues +35 points
  - Toxin sacs +15 points
  - Adrenal glands +10 points
  ],
  notes: [
- A Hive Tyrant is a Lord choice.
- May select Biomorphs up to a total of 100 points.

#namecost("SYNAPTIC RELAY", "")

The range of the Hive Tyrant's Synapse special rule is 18" rather than 12".

#namecost("BONESWORD & LASH WHIP", "")

Close combat attacks made with the bonesword have the Killing Blow special rule. Enemy models in base contact with the lash whip's bearer suffer a \-1 penalty to their Attacks, to a minimum of 1.

#namecost("VENOM CANNON", "")
#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "6", "Armour Piercing (2), Multiple Wounds (D3), Poisoned Attacks"))
#namecost("HIVE COMMANDER", "")

The Tyrant directs the infiltration itself. When you write your army roster, one Core unit of Infantry in the army gains the Ambushers special rule.
  ],
)

#unit("TYRANID PRIME",
  before: [
#note[Grown in the same birthing-vats as the Warriors it shepherds, the Prime is the alpha organism of the melee — the Hive Mind's blade sunk into the centre of the line.]

#profile(
  (name: "Tyranid Prime", m: 5, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 5, a: 4, ld: 9, points: 130),
)
  ],
  troop-type: "Monstrous Infantry (Character, Tyranid)",
  base-size: "40x40",
  equipment: "Scything talons",
  special-rules: "Tyranid, Synapse (Precision), Alpha Warrior, Natural Armour (5+)",
  options: [
- May replace scything talons with a bonesword & lash whip (see Hive Tyrant) +20 points
- May take a deathspitter +10 points
- May take broodline upgrades:
  - Regenerative tissues +30 points
  - Toxin sacs +15 points
  - Adrenal glands +10 points
  ],
  notes: [
- A Tyranid Prime is a Hero choice.
- May select Biomorphs up to a total of 50 points.

#namecost("ALPHA WARRIOR", "")

A unit of Tyranid Warriors joined by the Tyranid Prime gains +1 Weapon Skill.
  ],
)

#unit("BROODLORD",
  before: [
#note[The patriarch of the hidden broods comes to battle last, after its children have been among the prey for a season — beneath the granaries, under the temples, wearing the dark like a cloak.]

#profile(
  (name: "Broodlord", m: 6, ws: 7, bs: 0, s: 5, t: 5, w: 3, i: 7, a: 4, ld: 9, points: 155),
)
  ],
  troop-type: "Monstrous Infantry (Character, Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Synapse (Communion), Ambushers, Rending Claws, Natural Armour (5+)",
  options: [
- May take broodline upgrades:
  - Regenerative tissues +30 points
  - Toxin sacs +15 points
  - Adrenal glands +10 points
  ],
  notes: [
- A Broodlord is a Hero choice.
- May select Biomorphs up to a total of 50 points.

#namecost("PATRIARCH OF THE BROOD", "")

The Broodlord may join a unit of Genestealers during deployment and enter play with it from Ambush.

#namecost("HYPNOTIC GAZE", "")

At the start of each round of close combat, one enemy model in base contact with the Broodlord — the challenger, if the Broodlord is in a challenge — must pass a Leadership test or be transfixed: it has the Always Strikes Last special rule and suffers \-1 Weapon Skill until the end of the round.
  ],
)

#unit("NEUROTYRANT",
  before: [
#note[Little more than a vast brain borne up by wasted limbs and naked will, the Neurotyrant pours the Hive Mind's static across the battlefield until wizards choke on their own half-formed spells.]

#profile(
  (name: "Neurotyrant", m: 5, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 3, a: 2, ld: 10, points: 150),
)
  ],
  troop-type: "Monstrous Infantry (Character, Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Synapse (Dread), Synaptic Relay (see Hive Tyrant), Magic Resistance (2), Natural Armour (5+)",
  options: [
- May take broodline upgrades:
  - Regenerative tissues +30 points
  - Toxin sacs +15 points
  - Adrenal glands +10 points
  ],
  notes: [
- A Neurotyrant is a Hero choice.
- May select Biomorphs up to a total of 50 points.

#namecost("NEURAL AMPLIFIER", "")

While the Neurotyrant is on the battlefield, the casting penalty from Shadow in the Warp is \-2 rather than \-1.
  ],
)

= CORE UNITS

#unit("TERMAGANTS",
  first: true,
  before: [
#note[The chittering tide. Each termagant is a quick, spiteful rifle-beast, its fleshborer spitting burrowing grubs that chew through mail and bone with equal enthusiasm.]

#profile(
  (name: "Termagant", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: 7),
)
  ],
  unit-size: "10-40",
  troop-type: "Infantry (Tyranid)",
  base-size: "25x25",
  equipment: "Fleshborer",
  special-rules: "Tyranid, Instinctive Behaviour (Lurk), Natural Armour (6+)",
  options: [
- May take toxin sacs +1 point/model
- May replace fleshborers with devourers +2 points/model

// Hormagaunts are deliberately priced a point under their anchor (the
// Daemonette comparison prices the WS4 AP(1) line at ~10 once the free army
// rules (Swarm Synchrony, Attunement, The Swarm Feeds) are counted): the
// faction identity is numbers and overwhelming tide, bought as a standing
// discount on the melee chaff rather than a Without Number rule that might
// never trigger. Statlines across the gaunt line were beefed and minimum
// brood sizes halved on purpose - the swarm is played smaller than the lore
// implies because someone has to paint it.
  ],
)

#unit("HORMAGAUNTS",
  before: [
#note[Bred for the leap and the lunge, hormagaunts come on in scything waves and strike home before the prey has finished forming ranks.]

#profile(
  (name: "Hormagaunt", m: 6, ws: 4, bs: 0, s: 3, t: 3, w: 1, i: 5, a: 2, ld: 5, points: 9),
)
  ],
  unit-size: "10-30",
  troop-type: "Infantry (Tyranid)",
  base-size: "25x25",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Bounding Leap, Armour Piercing (1), Natural Armour (6+)",
  options: [
- May take toxin sacs +1 point/model
- May take adrenal glands +1 point/model

#namecost("BOUNDING LEAP", "")

Models with this rule have the Swiftstride special rule.
  ],
)

#unit("GARGOYLES",
  before: [
#note[The swarm's shadow cast across the sky. Gargoyles wheel and dive on membranous wings, washing the ranks below with fleshborer fire in the last breath before the charge lands.]

#profile(
  (name: "Gargoyle", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 2, ld: 5, points: 15),
)
  ],
  unit-size: "6-18",
  troop-type: "Infantry (Tyranid)",
  base-size: "25x25",
  equipment: "Fleshborer",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Fly (10), Natural Armour (6+)",
  options: [
- May take toxin sacs +1 point/model
  ],
)

#unit("NEUROGAUNTS",
  before: [
#note[Hunched beneath the node-organisms fused to their spines, neurogaunts exist only to carry the Hive Mind's voice a little further — living cable in a web of will.]

#profile(
  (name: "Neurogaunt", m: 5, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 5),
)
  ],
  unit-size: "8-24",
  troop-type: "Infantry (Tyranid)",
  base-size: "25x25",
  special-rules: "Tyranid, Instinctive Behaviour (Lurk), Natural Armour (6+)",
  options: [
- May take warp-static cysts +2 points/model

#namecost("SYNAPTIC NODE", "")

While the unit is within 6" of a friendly Synapse creature, friendly Tyranid units within 6" of the unit count as being within range of that Synapse creature, and may use its Leadership as normal. A unit may not count as in range through more than one Synaptic Node at a time, and a Synaptic Node may not relay through another Synaptic Node.
  ],
)

#unit("RIPPER SWARMS",
  before: [
#note[Where the swarm has passed, rippers boil out of the earth to strip whatever remains. They are the reclamation made visible: everything that falls is eaten, and everything eaten becomes swarm.]

#profile(
  (name: "Ripper Swarm", m: 5, ws: 2, bs: 0, s: 2, t: 2, w: 6, i: 3, a: 6, ld: 3, points: 40),
)
  ],
  unit-size: "3-9",
  troop-type: "Swarm (Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Instinctive Behaviour (Feed)",
  options: [
- May take toxin sacs +3 points/base
- May take tunnelling claws (Ambushers) +5 points/base
  ],
  notes: [
- Ripper Swarms do not count towards the minimum number of Core units.
  ],
)

= SPECIAL UNITS

#unit("TYRANID WARRIORS",
  first: true,
  before: [
#note[The Warriors are the swarm's captains, of a kind — save that no captain of men shares one mind with every soldier under his command, and no company of men fights on after its heart has been told, rather than persuaded, not to break.]

#profile(
  (name: "Tyranid Warrior", m: 5, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 9, points: 45),
)
  ],
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Tyranid)",
  base-size: "40x40",
  equipment: "Scything talons",
  special-rules: "Tyranid, Synapse (Discipline), Natural Armour (5+)",
  options: [
- May take deathspitters +6 points/model
- May take boneswords (Killing Blow) +8 points/model
- May take toxin sacs +3 points/model
- May take adrenal glands +3 points/model
  ],
)

#unit("GENESTEALER BROOD",
  before: [
#note[The vanguard organism. Genestealers go before the hive fleet by years, seeding the cellars and sewers of doomed cities, and when the swarm descends at last it finds the gates already open.]

#profile(
  (name: "Genestealer", m: 6, ws: 5, bs: 0, s: 4, t: 4, w: 1, i: 6, a: 3, ld: 7, points: 15),
)
  ],
  unit-size: "5-20",
  troop-type: "Infantry (Tyranid)",
  base-size: "25x25",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Ambushers, Skirmishers, Rending Claws, Natural Armour (6+)",
  options: [
- May take toxin sacs +1 point/model
- May take adrenal glands +1 point/model
  ],
)

#unit("LICTOR",
  before: [
#note[A Lictor is the swarm's held breath — a chameleon-skinned assassin that stands motionless among the trees for days, tasting the air for the scent of wizards.]

#profile(
  (name: "Lictor", m: 6, ws: 6, bs: 0, s: 5, t: 4, w: 3, i: 7, a: 4, ld: 8, points: 90),
)
  ],
  unit-size: "1",
  troop-type: "Monstrous Infantry (Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Ambushers, Skirmishers, Forest Strider, Natural Armour (5+)",
  notes: [
- A Lictor never takes Instinctive Behaviour tests — the vanguard organism hunts alone by design.

#namecost("CHAMELEONIC SCALES", "")

Enemy missile attacks targeting the Lictor suffer an additional \-1 To Hit modifier. In addition, an enemy unit may not choose Stand and Shoot as a charge reaction against a Lictor charging in the same turn it arrived from Ambush.

#namecost("FEEDER TENDRILS", "")

The Lictor may re-roll failed To Hit rolls in challenges, and against enemy characters and Wizards.
  ],
)

#unit("RAVENERS",
  before: [
#note[Serpentine burrowers that swim through soil as eels through water, raveners erupt beneath the prey's feet in a spray of earth and scything talons.]

#profile(
  (name: "Ravener", m: 7, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 6, points: 42),
)
  ],
  unit-size: "3-9",
  troop-type: "Monstrous Beast (Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Ambushers, Natural Armour (5+)",
  options: [
- May take toxin sacs +3 points/model
- May take adrenal glands +3 points/model
  ],
)

#unit("ZOANTHROPES",
  before: [
#note[Withered bodies beneath swollen skulls, zoanthropes drift above the ground on a cushion of will, drinking the Winds of Magic dry before the enemy's wizards can call on them.]

#profile(
  (name: "Zoanthrope", m: 4, ws: 2, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 1, ld: 9, points: 70),
)
  ],
  unit-size: "1-3",
  troop-type: "Monstrous Infantry (Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Synapse (Communion), Magic Resistance (3), Natural Armour (5+)",
  special-rules-body: [
#namecost("WARP BLAST", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "5", "Armour Piercing (2)"))
#namecost("PSYCHIC DRAIN", "")

At the start of the enemy Magic phase, remove one power die from the enemy power pool for each Zoanthrope unit on the battlefield, to a maximum of two dice per phase.
  ],
)

#unit("BIOVORE",
  before: [
#note[The biovore waddles at the rear of the swarm, dorsal chambers heavy with living mines, and lobs its squirming children over the lines with a wet, satisfied grunt.]

#profile(
  (name: "Biovore", m: 4, ws: 2, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 2, ld: 6, points: 70),
)
  ],
  unit-size: "1-3",
  troop-type: "Monstrous Infantry (Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Instinctive Behaviour (Lurk), Natural Armour (5+)",
  special-rules-body: [
#namecost("SPORE MINE LAUNCHER", "")

The Biovore fires as a stone thrower (see Trajectory Weapons in the Warhammer rulebook) with a range of 12"\-36", Strength 3, and Strength 6 with the Armour Piercing (1) and Multiple Wounds (D3) special rules at the centre of the template. On a Misfire, do not roll on the Misfire chart: the Biovore does not shoot this turn and suffers 1 Wound with no saves allowed.
  ],
)

#unit("TYRANT GUARD",
  before: [
#note[Blind, mute and absolutely devoted, Tyrant Guard exist to die in their master's place — walls of chitin that step into the path of arrow, bolt and cannonball without being asked.]

#profile(
  (name: "Tyrant Guard", m: 6, ws: 3, bs: 0, s: 5, t: 6, w: 3, i: 2, a: 2, ld: 7, points: 50),
)
  ],
  unit-size: "1-3",
  troop-type: "Monstrous Infantry (Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Instinctive Behaviour (Lurk), Natural Armour (4+)",
  options: [
- May take toxin sacs +5 points/model
- May take adrenal glands +5 points/model

#namecost("SHIELD OF THE HIVE MIND", "")

While a friendly Hive Tyrant or Neurotyrant is within 3" of the unit, each hit that model suffers from a shooting attack is, on a roll of 2+, resolved against the Tyrant Guard unit instead.
  ],
)

#unit("HIVE GUARD",
  before: [
#note[The impaler cannon has no need to see its prey. Its ammunition hunts by warmth and hate, threading over walls and through smoke to find the marrow.]

#profile(
  (name: "Hive Guard", m: 4, ws: 3, bs: 4, s: 4, t: 5, w: 3, i: 2, a: 2, ld: 6, points: 70),
)
  ],
  unit-size: "1-3",
  troop-type: "Monstrous Infantry (Tyranid)",
  base-size: "40x40",
  equipment: "Impaler cannon",
  special-rules: "Tyranid, Instinctive Behaviour (Lurk), Natural Armour (4+)",
  special-rules-body: [
#namecost("IMPALER CANNON", "")
#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Armour Piercing (2), Multiple Shots (2)"))

The impaler cannon may target a unit that is out of sight, provided it is in range, at an additional \-1 To Hit modifier.
  ],
)

#unit("VENOMTHROPES",
  before: [
#note[Venomthropes drift with the swarm in a haze of their own spores — a walking fog-bank of poison through which the broods advance half-seen.]

#profile(
  (name: "Venomthrope", m: 5, ws: 3, bs: 0, s: 3, t: 4, w: 3, i: 3, a: 2, ld: 6, points: 55),
)
  ],
  unit-size: "1-3",
  troop-type: "Monstrous Infantry (Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Instinctive Behaviour (Lurk), Toxin sacs (see Broodline Upgrades), Natural Armour (6+)",
  options: [
- May take warp-static cysts +15 points/model

#namecost("SPORE CLOUD", "")

The Venomthropes, and friendly Tyranid units within 6" of them, count as being in soft cover against shooting attacks.
  ],
)

#unit("PYROVORE",
  before: [
#note[A gut that walks. The pyrovore exists to burn what cannot be eaten and to eat what cannot be burned, and it has never been particular about the order.]

#profile(
  (name: "Pyrovore", m: 4, ws: 3, bs: 0, s: 5, t: 5, w: 3, i: 2, a: 3, ld: 5, points: 65),
)
  ],
  unit-size: "1-3",
  troop-type: "Monstrous Infantry (Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Natural Armour (4+)",
  special-rules-body: [
#namecost("FLAME GUT", "")

The Pyrovore has a Breath Weapon, Strength 4, with the Flaming Attacks special rule.

#namecost("VOLATILE", "")

If the Pyrovore is slain in close combat, roll a D6. On a 4+, each enemy unit in base contact with it suffers D3 Strength 4 hits with the Flaming Attacks special rule.
  ],
)

#unit("BARBGAUNTS",
  before: [
#note[The bio-cannon and its bearer are one organism twice enslaved — the parasite gun bonded to the gaunt, and both bonded to the Hive Mind. Its detonating barbs shred legs and shatter shins, and a column so struck stops marching.]

#profile(
  (name: "Barbgaunt", m: 4, ws: 2, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 5, points: 10),
)
  ],
  unit-size: "5-15",
  troop-type: "Infantry (Tyranid)",
  base-size: "25x25",
  equipment: "Barb-launcher",
  special-rules: "Tyranid, Instinctive Behaviour (Lurk), Natural Armour (5+)",
  special-rules-body: [
#namecost("BARB-LAUNCHER", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "4", "See below"))

A unit that suffers one or more unsaved Wounds from barb-launchers is slowed by the detonating barbs: it suffers \-2 Movement and may not march until the start of the firing player's next turn.
  ],
)

#unit("VON RYAN'S LEAPERS",
  before: [
#note[Pack-hunters bred from lictor stock, the leapers range ahead of the swarm on coiled limbs and long balancing tails. The first sign of them is the rear rank of the column going quiet.]

#profile(
  (name: "Leaper", m: 7, ws: 4, bs: 0, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 6, points: 16),
)
  ],
  unit-size: "3-12",
  troop-type: "War Beast (Tyranid)",
  base-size: "25x25",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Ambushers, Skirmishers, Swiftstride, Forest Strider, Natural Armour (5+)",
)

#unit("NEUROLICTOR",
  before: [
#note[The neurolictor conceals not its body but the very idea of itself. Soldiers who march near it find orders slipping from memory and courage curdling for reasons none of them can name.]

#profile(
  (name: "Neurolictor", m: 6, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 6, a: 3, ld: 8, points: 90),
)
  ],
  unit-size: "1",
  troop-type: "Monstrous Infantry (Tyranid)",
  base-size: "40x40",
  special-rules: "Tyranid, Terror, Ambushers, Skirmishers, Forest Strider, Chameleonic Scales (see Lictor), Natural Armour (5+)",
  notes: [
- A Neurolictor never takes Instinctive Behaviour tests.

#namecost("COGNITIVE VEIL", "")

The closer the prey stands, the less of the Neurolictor its mind can hold. Enemy models within 6" of the Neurolictor suffer an additional \-1 To Hit against it, with both shooting and close combat attacks. In addition, enemy units charging the Neurolictor suffer a \-1 penalty to their charge distance rolls.

#namecost("BRAIN-FOG AURA", "")

Enemy units within 8" of the Neurolictor suffer a \-1 penalty to their Leadership. This penalty is not cumulative with that of other Neurolictors.
  ],
)

= RARE UNITS

#unit("CARNIFEX",
  first: true,
  before: [
#note[A carnifex is not cunning. It is a battering ram that bleeds, grown to break shieldwalls, gates and city walls in that order, and it does all three the same way — by continuing to walk.]

#profile(
  (name: "Carnifex", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 5, i: 2, a: 4, ld: 6, points: 200),
)
  ],
  unit-size: "1-3",
  troop-type: "Monster (Tyranid)",
  base-size: "50x50 or 50x75",
  equipment: "Scything talons",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Natural Armour (3+), Stomp (D6+1), Impact Hits (D3)",
  options: [
- May replace scything talons with crushing claws (+1 Strength) +20 points
- May take bio-plasma (Breath Weapon, Strength 4, Armour Piercing (1)) +25 points
- May take broodline upgrades:
  - Regenerative tissues +30 points
  - Toxin sacs +15 points
  - Adrenal glands +10 points
  ],
)

#unit("TRYGON",
  before: [
#note[The trygon swims through the deep earth trailing a wake of crackling bio-lightning, and surfaces precisely where the prey had agreed among themselves that nothing could ever come.]

#profile(
  (name: "Trygon", m: 7, ws: 5, bs: 0, s: 6, t: 6, w: 6, i: 4, a: 6, ld: 8, points: 260),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x100 or 100x100",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Subterranean Assault, Natural Armour (4+), Stomp (D3)",
  options: [
- May be upgraded to a Trygon Prime (Synapse (Swiftstride)) +50 points
- May be upgraded to a Mawloc (Terror from Below) +30 points
- May take broodline upgrades:
  - Regenerative tissues +35 points
  - Toxin sacs +20 points
  - Adrenal glands +15 points

#namecost("SUBTERRANEAN ASSAULT", "")

The Trygon has the Ambushers special rule. However, instead of deploying like normal Ambushers, it can arrive anywhere on the battlefield. When it emerges, place a marker anywhere on the battlefield and roll 2D6 and the scatter dice. If you roll a hit on the scatter dice, the marker stays in place; if you roll an arrow, move the marker the number of inches indicated by the 2D6 in the direction shown by the arrow. If the marker is moved off the tabletop, the Trygon is lost; treat it as a casualty. Once the final position is established, place the Trygon so it touches the marker. If the marker is under a unit or impassable terrain, place the Trygon next to the closest edge of the unit or terrain. It may face in any direction.

#namecost("TERROR FROM BELOW", "")

A Mawloc has the Terror special rule. In addition, each enemy unit within 6" of the Mawloc when it emerges from Subterranean Assault must pass a Panic test or flee.

A Mawloc never stops hunting from below: at the start of any of your Remaining Moves sub-phases, if it is not engaged in close combat, it may burrow — remove it from the battlefield. It re-enters play at the start of the Remaining Moves sub-phase of your next turn, emerging as per Subterranean Assault.
  ],
)

#unit("TERVIGON",
  before: [
#note[The broodmother's flanks ripple and split as she walks, spilling fresh termagants into the fight; to slay her is to hear a hundred birth-sacs fall silent at once.]

#profile(
  (name: "Tervigon", m: 6, ws: 3, bs: 0, s: 5, t: 6, w: 6, i: 2, a: 3, ld: 9, points: 290),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x100 or 60x100",
  special-rules: "Tyranid, Synapse (Communion), Natural Armour (4+), Stomp (D6)",
  options: [
- May take broodline upgrades:
  - Regenerative tissues +35 points
  - Toxin sacs +20 points
  - Adrenal glands +15 points

#namecost("BROOD PROGENITOR", "")

At the start of each friendly turn, the Tervigon may spawn: roll 2D6 and add that many Termagants to one friendly unit of Termagants within 12", which may thereby exceed its starting size. The new models are placed in the unit's rear rank(s), and any that cannot be placed are lost. If a double is rolled, the spawned models are still added, but the Tervigon is spent and may not spawn again this battle.

#namecost("SYNAPTIC BACKLASH", "")

When the Tervigon is removed as a casualty, each friendly unit of Termagants within 12" immediately suffers D6 Strength 3 hits.
  ],
)

#unit("EXOCRINE",
  before: [
#note[The exocrine is a cannon that grew a body. The symbiote-gun owns the beast's every stride, and halts it mid-step when the firing solution ripens.]

#profile(
  (name: "Exocrine", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 5, i: 2, a: 3, ld: 6, points: 240),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x100 or 60x100",
  equipment: "Bio-plasmic cannon",
  special-rules: "Tyranid, Instinctive Behaviour (Lurk), Natural Armour (3+), Stomp (D3)",
  special-rules-body: [
#namecost("BIO-PLASMIC CANNON", "")
#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "6", "Armour Piercing (2), Multiple Shots (3)"))
#namecost("SYMBIOTIC TARGETING", "")

The Exocrine gains +1 To Hit with its shooting attacks during any turn in which it did not move.
  ],
)

#unit("TYRANNOFEX",
  before: [
#note[The heaviest gun-beast of the swarm advances like a fortress under sail, and its rupture cannon speaks with a report that unhorses knights a field away.]

#profile(
  (name: "Tyrannofex", m: 6, ws: 3, bs: 3, s: 6, t: 7, w: 6, i: 1, a: 3, ld: 6, points: 300),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x100 or 60x100",
  equipment: "Rupture cannon",
  special-rules: "Tyranid, Instinctive Behaviour (Lurk), Natural Armour (3+), Stomp (D3)",
  special-rules-body: [
#namecost("RUPTURE CANNON", "")
#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "8", "Armour Piercing (3), Multiple Wounds (D3), Multiple Shots (2)"))
  ],
)

#unit("HARUSPEX",
  before: [
#note[The haruspex is the swarm's appetite distilled: a grasping tongue, a gullet the size of a hay-wain, and precisely enough brain to keep both working.]

#profile(
  (name: "Haruspex", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 6, points: 245),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x100 or 60x100",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Natural Armour (4+), Stomp (D6)",
  special-rules-body: [
#namecost("GRASPING TONGUE", "")

The Haruspex makes one additional close combat Attack each round, made at Initiative 10 with the Armour Piercing (2) special rule.

#namecost("FEED ON THE FALLEN", "")

At the end of each close combat phase in which the Haruspex caused one or more unsaved Wounds, roll a D6: on a 4+ it regains one Wound lost earlier in the battle.
  ],
)

#unit("TOXICRENE",
  before: [
#note[Every surface of the toxicrene weeps venom. It fights from within a strangling garden of its own lashes, and the prey is drowning in its air before a single tentacle closes.]

#profile(
  (name: "Toxicrene", m: 6, ws: 4, bs: 0, s: 5, t: 6, w: 5, i: 3, a: 6, ld: 6, points: 235),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x100 or 60x100",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Toxin sacs (see Broodline Upgrades), Natural Armour (4+), Stomp (D3)",
  special-rules-body: [
#namecost("CHOKING MIASMA", "")

Enemy models in base contact with the Toxicrene suffer a \-1 To Hit penalty in close combat.
  ],
)

#unit("HARPY",
  before: [
#note[The harpy rides the night wind on wings the width of a chapel, shrieking as it comes — and the shriek is a mercy, for it means the stranglethorns have not yet fired.]

#profile(
  (name: "Harpy", m: 6, ws: 3, bs: 3, s: 5, t: 5, w: 5, i: 3, a: 3, ld: 6, points: 195),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x100 or 60x100",
  equipment: "Stranglethorn cannon",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Fly (8), Natural Armour (5+), Stomp (D3)",
  special-rules-body: [
#namecost("STRANGLETHORN CANNON", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "5", "Armour Piercing (1), Multiple Shots (2)"))
  ],
)

#unit("HIVE CRONE",
  before: [
#note[Where the harpy harries the ground, the crone owns the sky — spitting gouts of burning bile, and harvesting whatever else presumes to fly.]

#profile(
  (name: "Hive Crone", m: 6, ws: 4, bs: 3, s: 5, t: 5, w: 5, i: 4, a: 4, ld: 6, points: 220),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x100 or 60x100",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Fly (8), Natural Armour (5+), Stomp (D3)",
  special-rules-body: [
#namecost("FIERY BILE", "")

The Hive Crone has a Breath Weapon, Strength 4, with the Flaming Attacks special rule.

#namecost("SKY-HUNTER", "")

The Hive Crone re-rolls failed To Hit rolls in close combat against models with the Fly special rule.
  ],
)

#unit("PSYCHOPHAGE",
  before: [
#note[The psychophage devours warriors whole and vents what remains of them as a glittering, corrosive mist. It holds a marked preference for wizards, whose minds burn like tallow.]

#profile(
  (name: "Psychophage", m: 6, ws: 4, bs: 0, s: 5, t: 6, w: 5, i: 2, a: 4, ld: 6, points: 210),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x100 or 60x100",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Magic Resistance (3), Natural Armour (4+), Stomp (D6)",
  special-rules-body: [
#namecost("PSYCHOPHAGIC HUNGER", "")

The Psychophage has +1 Attack while within 12" of one or more enemy Wizards. If it kills an enemy Wizard in close combat, it immediately regains D3 Wounds lost earlier in the battle.
  ],
)

#unit("NORN EMISSARY",
  before: [
#note[When the Hive Mind requires a personal touch, it grows an emissary: a towering intelligence of muscle, chitin and borrowed brains, sent into the world to do exactly one thing and constitutionally incapable of being turned from it.]

#profile(
  (name: "Norn Emissary", m: 6, ws: 5, bs: 0, s: 6, t: 7, w: 6, i: 3, a: 5, ld: 10, points: 320),
)
  ],
  unit-size: "1",
  troop-type: "Monster (Tyranid)",
  base-size: "50x50 or 50x100",
  special-rules: "Tyranid, Synapse (Purpose), Magic Resistance (2), Natural Armour (3+), Stomp (D6)",
  options: [
- May be upgraded to a Norn Assimilator +10 points

#namecost("SINGULAR PURPOSE", "")

After both armies have deployed, nominate one enemy unit. The Norn Emissary has the Hatred special rule against the nominated unit, and may re-roll failed charge distance rolls when charging it. If the nominated unit is destroyed, the Emissary's purpose is fulfilled: it gains +1 Attack for the rest of the battle.

#namecost("NORN ASSIMILATOR", "")

A Norn Assimilator loses the Magic Resistance (2) special rule, and gains toxin sacs (see Broodline Upgrades) and Biomass Assimilation: at the end of each close combat phase in which the Assimilator caused one or more unsaved Wounds, it regains 1 Wound lost earlier in the battle.
  ],
)

= SPECIAL CHARACTERS

#unit("THE RED TERROR",
  solo: true,
  first: true,
  before: [
#note[The deep tunnels have a legend, if hunger can be said to keep legends: a red thing in the dark that swallows knights whole — horse, harness and all — and is always, always still hungry.]

#profile(
  (name: "The Red Terror", m: 7, ws: 5, bs: 0, s: 6, t: 6, w: 5, i: 6, a: 5, ld: 7, points: 225),
)
  ],
  troop-type: "Monster (Character, Tyranid)",
  base-size: "50x100 or 100x100",
  special-rules: "Tyranid, Instinctive Behaviour (Feed), Ambushers, Natural Armour (5+), Stomp (D3)",
  notes: [
- The Red Terror is a Hero choice. It may not select Biomorphs — it is a unique organism.

#namecost("SWALLOW WHOLE", "")

If the Red Terror directs all of its Attacks at a single enemy model with a Line of Sight value of 2 or less, and all of them hit, the victim is seized in its coils and gulped down: the target must immediately pass an Initiative test or be removed as a casualty regardless of its remaining Wounds, with no saves of any kind allowed. A model removed this way counts as having suffered a number of Wounds equal to its remaining Wounds for combat resolution, and the Red Terror immediately regains D3 Wounds lost earlier in the battle as it digests.
  ],
)

= CREDITS

An original army book for our house games, inspired by the Tyranids of Games Workshop's Warhammer 40,000 and built to the conventions of Mathias Eliasson's Warhammer Armies Project. The rules, army design and points values are our own, anchored against the Daemons of Chaos, Beastmen and Lizardmen books, and are expected to move with playtesting.

Version 1.0, August 2026. Not for sale.
