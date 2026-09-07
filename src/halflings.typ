// Halflings 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "halflings",
  army: "Halflings",
  version: "3.0",
  layout: "army",
  cover: "covers/halflings.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Halflings 3.0")

#cover(
  title: "Halflings",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/halflings.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Halflings*, version 3.0 — written and freely distributed by Mathias
    Eliasson.
  ],
  [
    All rules text, army design and points values remain the work of their
    author. This edition changes only the typesetting; the content is
    reproduced from the freely distributed PDF.
  ],
  [
    Warhammer, Warhammer Fantasy Battle and all associated names, races and
    places are trademarks of Games Workshop Limited. This document is
    unofficial and unaffiliated, and no challenge to their status is intended.
  ],
  [Typeset with Typst. Not for sale.],
))

#outline(title: [Contents], depth: 2)

= ARMY SPECIAL RULES

This section of the book describes all the different units used in a Halfling army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Halfling units, and these are detailed here.

#namecost("DUCK & WEAVE", "")

Enemies attacking Infantry models with this special rule suffer \-1 To Hit in close combat.

#namecost("HOMESTEADERS", "")

Units with this special rule are Stubborn so long as they are at least partially within their Deployment Zone.

#namecost("NATURAL RESISTANCE", "")

When a Halfling army attempts to dispel, they have a +1 bonus to all dispel attempts.

#namecost("PIGGYBACK RIDERS", "")

Models with this upgrade gain the Fight in Extra Ranks (1) special rule.

#namecost("TRINKETS", "")

Models with this special rule may take up two Talismans and/or Enchanted Items rather than just one of each.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Halflings. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("THE REAPER SCYTHE", 60, type: "Great weapon")[The Reaper Scythe grants the wielder the Killing Blow rule, as well as one extra attack for each enemy infantry model in base contact.]

#magic-weapon("TIMBER AXE OF JONNO THE SLICK", 50)[The wielder treats their Strength to be equal to that of their Initiative in close combat.]

#magic-weapon("BOW OF APPLE OAK", 30, type: "Shortbow")[This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "4", "March & Shoot, Multiple Shots (4)"))
]

#magic-weapon("THE EPIC FLAIL", 30, type: "Flail")[The wielder of this weapon may re-roll failed rolls To Hit and To Wound. However, they must always pursue a fleeing enemy.]

#magic-weapon("GILDED LADLE", 30, only: "Master Chef")[The wielder gains +1 Strength. In your Magic Phase, the Master Chef may attempt to heal one Wound lost previously during the game on themselves or another friendly Character in base contact. Roll a D6; on a 4+ the Wound is restored.]

#magic-weapon("KNEECAPPING HAMMER", 30)[All attacks made with this weapon may re-roll to Wound. In addition, if a 6 is rolled on the To Wound roll, the target may not Attack this round of close combat.]

#magic-weapon("SPEAR OF JUSTICE", 30, type: "Light lance/spear")[A model carrying the Spear of Justice gains +1 to their Weapon Skill, Strength and Initiative characteristics.]

#magic-weapon("OLD HOPEFUL", 25, type: "Sling")[Any shots fired with this weapon have the Heroic Killing Blow rule.]

#magic-weapon("THE BLADDERWHACK", 20, type: "Flail")[Roll a D6 at start of each close combat the Bladderwhack is used. On a 6, all attacks made by it will be resolved at Strength 10 with the Multiple Wounds (D6) special rule.]

#magic-weapon("BOW OF CORNGOLD", 20, type: "Shortbow")[The Bow of Corngold gives the wielder the Sniper special rule.]

#magic-weapon("TERRY'S EYE-POKING STICK", 20, type: "Spear")[On the To Hit roll of a 6, the target is reduced to Weapon Skill 1 for the duration of the close combat round.]

#magic-weapon("WAR CLUB OF ELDER BANDO", 25, type: "Great weapon")[Attacks made with this weapon have the Multiple Wounds (D3) special rule.]
]

#magic-item-section("armour")[
#magic-armour("THE WHEATSHIELD", 40, type: "Shield")[The Wheatshield confers the Regeneration (5+) special rule to its wielder. If the bearer is reduced to his final Wound, this is increased to Regeneration (3+) instead as long as he remains at 1 Wound.]

#magic-armour("TRICKSTER'S ARMOUR", 30, type: "Light armour")[Whenever an enemy model rolls a natural 6 To Hit or To Wound against the wearer of this armour, the Hit/Wound is ignored.]

#magic-armour("THE OAKGNARL", 25, type: "Medium armour")[The Oakgnarl confers +1 Toughness upon the wearer. However, the wearer also becomes Flammable.]

#magic-armour("TRAILBLAZER'S HAUBERK", 20, only: "Model on foot", type: "Medium armour")[The wearer of this armour gains the Scouts and Strider special rule.]

#magic-armour("LARGO'S LEATHER JERKIN", 20, type: "Light armour")[All enemy attacks targeting the wearer must re-roll successful rolls To Wound.]

#magic-armour("COOKING POT HELM", 10, only: "Master Chef")[The Cooking Pot Helm confers a 6+ armour save. In addition, the wearer gains the Immunity (Killing Blow) special rule.]

#magic-armour("PARRYING POT LID", 5, type: "Buckler")[The wielder may re-roll failed Parry saves.]
]

#magic-item-section("talisman")[
#talisman("LUCKY'S COLLAR", 45)[The wearer gains a Magical Ward (2+). However, every time the wearer successfully passes his Ward save, one friendly model in base contact immediately suffers the Wound instead, with no saves of any kind allowed. If there are no eligible models to redirect the Wound onto, then this save may not be taken.]

#talisman("RABBIT'S FOOT", 40)[The bearer can only be Hit on the roll of a 6 in close combat. This has no effect on Attacks that Hit automatically.]

#talisman("AMULET OF HOKERY-POKERY", 35)[When an enemy spell has been cast, a model with this item can use it instead of attempting to dispel the spell by using dispel dice. This gives them 6 free dispel dice to attempt to dispel the spell, which cannot be combined with any other dispel dice (Ultimate Power applies as normal). This may also be used to dispel spells that are Remains in Play. After it has been used, roll a D6. On a 4+, you may use the item again as described above.]

#talisman("ESMERALDA'S LOCKET", 30)[This item may be used when attempting to dispel an enemy spell. The first time it is used, you may add +3 Dispel dice to the dispel roll. The second time you may add +2 dice. The third time you may add +1 dice. After it has been used three times during the battle, the item has run out of power and has no further effect.]

#talisman("RING OF INVISIBILITY", 25, one-use: true)[The wearer may use this item at the start of any of their turns. Once they do so, they cannot be directly targeted by any kind of attack until the start of their next turn. However, no friendly unit may use their Leadership during this time.]

#talisman("BLACK PEPPER SPRAY", 20)[All enemy models in base contact with the bearer of the black pepper spray must re-roll all successful rolls to Hit in the first round of close combat.]

#talisman("SAM'S SPELLPOUCH", 10)[Whenever an enemy spell is cast at the bearer or any unit they are with, roll a D6. On a 6, the spell is automatically dispelled.]

#talisman("DRAGONBANE GEM", 5)[The bearer gains the Immunity (Flaming Attacks) special rule.]

#talisman("LUCKY CHARM", 5, one-use: true, common: true)[The Halfling player may reroll any dice roll directly affecting the bearer of the Lucky Charm.]

#talisman("PIDGEON PLUCKER PENDANT", 5)[This item grants the bearer a Magical Ward (4+) against Wounds caused in close combat by models that have the Fly special rule.]
]

#magic-item-section("enchanted", columns: 2)[
#enchanted-item("WIZARDING HAT", 50)[The wearer is treated as being a Level 2 Wizard who can use a randomly chosen spell lore from any of the Winds of Magic from the _Warhammer Rulebook_ at the start of the game. However, they also have the Stupidity special rule. Note that they may not choose any Arcane Items.]

#enchanted-item("OLORIN THE GREY'S KNICKKNACK", 45, bound: true)[This item contains both _The Enfeebling Foe_ and _The Withering_ spells from the Lore of Shadows. However, you may only attempt to cast one of these spells once per Magic phase.]

#enchanted-item("TERRANCE CHUBBLY'S ENCHANTED ARROWS", 40)[At the start of the game, roll a D6 and consult the table below to see what effect the Magic Arrows have on any shortbows carried by the bearer and any unit they are with the remainder of the game:

#chart((("D6", "Result"), ("1", "All shots gain the Armour Piercing (1)
special rule."), ("2", "Any enemy unit suffering 1 or more
casualties must take a Panic test."), ("3", "The unit ignores all Shooting Modifiers that
are not caused by magic items or spells."), ("4", "The unit may fire Multiple Shots even if they
have marched this turn."), ("5", "All shots gain the Poisoned Attacks special
rule."), ("6", "You may choose any one of the results above.")))
]

#enchanted-item("THE BEEFUP BAUBLE", 35)[The bearer may use this item at the start of each round of close combat they are involved in. Roll a D6 and consult the chart below to see what effect it has:

#chart((("D6", "Result"), ("1", "The bearer immediately suffers a wound,
with no saves of any kind allowed."), ("2-3", "No effect."), ("4", "The bearer gains +1 Weapon Skill, Initiative
and Attack."), ("5", "The bearer gains +1 Strength and +1
Toughness."), ("6", "The bearer immediately makes a Strength 5
Breath Weapon attack with the Ignores
Armour Saves special rule and then loses any
statistics bonuses previously gained from this
item.")))
]

#enchanted-item("CLOAK OF ILLUSION", 35, bound: (level: 1, cast: "5+"))[This is an *augment* spell that targets the wearer and any unit they are with. All enemy missile attacks must re-roll successful rolls to Hit against this unit until the start of your next Magic phase.]

#enchanted-item("DARCIE'S MAGICAL THINGIMABOB", 35, bound: true)[The Thingimabob contains the Signature spell from one of the eight Winds of Magic in the _Warhammer Rulebook_. Roll a D6 at the start of the game and consult the table below to see which:

#chart((("D6", "Result"), ("1", "Your opponent chooses the Lore of Magic."), ("2-5", "Randomly determine the Lore of Magic."), ("6", "You may choose the Lore of Magic.")))
]

#enchanted-item("THE EMERALD LODE", 35, bound: (level: 2, cast: "6+"))[This is a *hex* spell with a range of 24". The target unit cannot use of any kind of invulnerable save until the start of your next Magic phase.]

#enchanted-item("JADE SICKLE", 35, bound: true)[This item contains the Regrowth spell from the Lore of Life.]

#enchanted-item("FOUR-LEAF CLOVER", 30)[The wearer may re-roll 1's To Hit and To Wound in close combat and with missile attacks.]

#enchanted-item("ENCHANTED HONING STEEL", 25, only: "Master Chef")[The bearer and any unit they are with gains the Armour Piercing (1) special rule.]

#enchanted-item("COCKERELL SCROLL", 20, one-use: true)[Bound Spell (Level 1, cast on 5+). This is a *hex* spell with a range of 24" that targets a single character, even if within a unit. Until the start of your next Magic phase, the target has all their characteristics reduced to 1 and may not channel, cast spells, use any equipment, magic items or special rules they might have.]

#enchanted-item("DIMMINU'S LOCKPICK", 20, only: "Master Thief")[The bearer may roll 2D6 on the Light-fingered chart and choose the highest result.]

#enchanted-item("OUTLANDISH UNIFORM", 20)[The model gains the Inspiring Presence (6) special rule. However, they may never refuse a challenge.]

#enchanted-item("EVERLASTING SCRUMPING BASKET", 10)[The bearer may take an additional 50 points of Magic Items.]

#enchanted-item("THE GLOVE OF SNEAKY PINCHING", 10, only: "Master Thief")[If the wearer of this glove is fighting in a challenge, their opponent must take an Initiative test at the start of each close combat phase. If failed, they may only use their hand weapon this round.]

#enchanted-item("HORN OF RIBALD TOMFOOLERY", 10, one-use: true)[This item may be used as a charge reaction by the bearer. When used, the bearer and any unit they are with gain the Feigned Flight (see Fast Cavalry/Skirmishers) and Immunity (Psychology) special rules for the duration of the turn.]
]

#magic-item-section("standard")[
#magic-standard("STANDARD OF THE MOOT", 55)[The unit carrying this standard and all friendly units within 12" have the Cold-blooded special rule when taking Break tests.]

#magic-standard("SPELLBINDING STANDARD", 50)[The unit carrying this standard generate +1 Dispel dice for every point of rank bonus they currently have.]

#magic-standard("HONEYCOMB BANNER", 45)[The unit carrying this standard gains +1 Strength and the Frenzy special rule.]

#magic-standard("THE BANNER OF THE JOLLY HALFLING", 25)[The unit carrying this standard gains +1 to its Toughness and the Stupidity special rule.]

#magic-standard("MIDSUMMER POLE", 25)[The unit carrying this standard gains the Regeneration (6+) special rule.]

#magic-standard("PENNANT OF THE HOPPING HORSE", 15, only: "Cavalry")[The unit carrying this standard may re- roll 1's for their Movement distance when charging and pursuing.]

#magic-standard("WASHING LINE", 15, only: "Housewives")[Roll a D6 at the start of every round of close combat after the first. On a 4+, all Housewives in the unit may re-roll failed To Hit rolls this round as well.]

#magic-standard("FLAMING PINWHEEL", 10)[Both the unit carrying this standard and any units in base contact must re-roll successful rolls To Hit in the first round of close combat.]

#magic-standard("SCARECROW BANNER", 5)[The unit carrying this standard causes Terror in models with the Fly special rule.]
]

= CHARACTERS

#unit("OFFICIALS",
  first: true,
  profiles: (
    (name: "Moot Elder", m: 4, ws: 5, bs: 7, s: 3, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 65),
    (name: "Sheriff", m: 4, ws: 4, bs: 6, s: 3, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 35),
  ),
  troop-type: "Infantry (Character, Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Duck & Weave, Homesteaders, Trinkets",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Flail +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Throwing weapons +4 points
  - Shortbow +5 points
  - Sling +5 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May choose one of the following:
  - Buckler +3 points
  - Shield +5 points
- May be mounted on one of the following:
  - Farm Animal +10 points
  - Giant Swan +15 points
  - Ogre Bodyguard +30 points
- One Sheriff may carry the Battle Standard +25 points
- A Sheriff may take Magic Items up to a total of 50 points
- A Moot Elder may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("MASTER CHEF",
  profiles: (
    (name: "Master Chef", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 2, i: 6, a: 2, ld: 9, points: 35),
  ),
  troop-type: "Infantry (Character, Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Duck & Weave, Homesteaders, Trinkets",
  special-rules-body: [
- *Special Spices:* Unless fleeing, the Master Chef may use one of the following Spices at the start of each of your turns, which affect the unit they are with. Note that each unit can only be affected by one Spice at a time, any additional Spices have no effect.
  - *Chili Pepper:* The unit immediately moves forward using the Random Movement (2D6) special rule.
  - *Rosemary:* The unit gains Immunity (Psychology) until the start of their next turn.
  - *Coriander:* The unit may re-roll failed rolls To Wound in close combat until the start of their next turn.
  - *Cumin:* The unit adds +1 to their Toughness until the start of their next turn.
  ],
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +6 points
- May choose one of the following:
  - Shortbow +5 points
  - Throwing weapons +5 points
  - Sling +6 points
- May take a buckler +1 point
- May be mounted on a Chuck Wagon (replacing one of the crew) +70 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("HERBALIST",
  profiles: (
    (name: "Herbalist", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 2, i: 5, a: 0, ld: 8, points: 40),
  ),
  troop-type: "Infantry (Character, Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Duck & Weave, Homesteaders, Trinkets",
  special-rules-body: [
- *Herbs:* Unless fleeing, the Herbalist may use one of the following Herbs at the start of each of your turns, which affect the unit they are with. Note that each unit can only be affected by one Herb at a time, any additional Herbs have no effect.
  - *Heal-All:* The unit gains Regeneration (6+) special rule until the start of their next turn.
  - *Graveroot:* The unit gains the Poisoned Attacks special rule until the start of their next turn.
  - *Spellwort:* The unit gains the Magic Resistance (2) special rule until the start of their next turn.
  - *Vigvort:* The unit gains the Always Strikes First special rule until the start of their next turn.
- *Pacifist:* A Herbalist may be placed in the middle of the second rank of any unit they join.
  ],
  options: [
- May take Magic Items up to a total of 50 points
  ],
)

#unit("MASTER THIEF",
  profiles: (
    (name: "Master Thief", m: 4, ws: 4, bs: 6, s: 3, t: 3, w: 2, i: 8, a: 3, ld: 9, points: 70),
  ),
  troop-type: "Infantry (Character, Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ambushers, Duck & Weave, Dodge (5+), Hidden, Homesteaders, Trinkets",
  special-rules-body: [
- *Deft Hands:* Models with this special rule may re-roll the result on the Light-fingered chart below.
- *Light-fingered:* Whenever a model with this special rule is in base contact with an enemy character who is not a Monster they may attempt to steal a Talisman, Arcane Item or Enchanted Item (excluding mounts) at the start of each Close Combat round. Roll a D6 for each item they wish to steal and consult the chart below:

#chart((("D6", "Result"), ("1", "The model is caught and killed outright."), ("2", "The model is chased back and may not attack this round."), ("3-4", "The model is not noticed but fails to steal anything."), ("5", "The model succeeds in stealing a random magic item."), ("6", "The model succeeds in stealing a magic item of their choice.")))

Each stolen Magic Item is removed from play. Each stolen item is worth 25 Victory Points.

- *Snatch and Grab:* Before Break Tests are taken, models with this special rule may choose to leave combat willingly. They will flee from the enemy as normal, but will rally automatically and may not be pursued. In addition, they do not cause Panic to friendly units while doing so.
  ],
  options: [
- May take an additional hand weapon +2 points
- May choose one of the following:
  - Shortbow +5 points
  - Throwing weapons +5 points
  - Sling +6 points
- May take light armour +2 points
- May take a buckler +1 point
- May take Magic Items up to a total of 50 points
  ],
)

= CHARACTER MOUNTS

#unit("FARM ANIMAL",
  first: true,
  profiles: (
    (name: "Farm Animal", m: 7, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Ungulate)",
  base-size: "25x50",
  notes: [
- Halflings use a wide variety of mounts such as ponies, pigs, goats, hounds, and giant roosters. For gameplay purposes, these go under the umbrella term Farm Animal.
  ],
)

#unit("GIANT SWAN",
  compact: true,
  profiles: (
    (name: "Giant Swan", m: 2, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 4, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Avian)",
  base-size: "40x40",
  special-rules: "Fly (9)",
)

#unit("OGRE BODYGUARD",
  profiles: (
    (name: "Ogre Bodyguard", m: 6, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: "-"),
  ),
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Natural Armour (6+)",
  special-rules-body: (
    rule("Ogre Charge")[Each model with this special rule that successfully charges an enemy has the Impact Hits (1) special rule. Models with this special rule that are part of a unit with ranks add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Buckler +3 points
  - Polearm +6 points
  - Great weapon +9 points
- May take light armour +3 points
  ],
  notes: [
- A model mounted on an Ogre Bodyguard follows the rules for Monstrous Infantry. They have a Unit Strength of 3 and a Line of Sight value of 2.
  ],
)

= CORE UNITS

#unit("MILITIA",
  first: true,
  profiles: (
    (name: "Militiaman", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 3),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Duck & Weave, Homesteaders",
  options: [
- May choose one of the following:
  - Spears +1 point/model
  - Fails +2 points/model
- May take throwing weapons +1 point/model
- May take shields (unless armed with flails) +1 point/model
- May take Piggyback Riders +10 points
- May upgrade one Militiaman to a Leader +5 points
- May upgrade one Militiaman to a Musician +5 points
- May upgrade one Militiaman to a Standard Bearer +10 points
  ],
)

#unit("ARCHERS",
  profiles: (
    (name: "Archer", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 6),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shortbow",
  special-rules: "Duck & Weave, Homesteaders",
  options: [
- May upgrade one Archer to a Leader +5 points
- May upgrade one Archer to a Musician +5 points
- May upgrade one Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("FIELDWARDENS",
  profiles: (
    (name: "Fieldwarden", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 6),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, sling",
  special-rules: "Duck & Weave, Homesteaders, Skirmishers",
  options: [
- May upgrade one Fieldwarden to a Leader +5 points
- May upgrade one Fieldwarden to a Musician +5 points
- May upgrade one Fieldwarden to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("HOBILARS",
  profiles: (
    (name: "Hobilar", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 10),
    (name: "Farm Animal", m: 7, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Halfling)",
  mount: "Farm Animal (Ungulate)",
  base-size: "25x50",
  equipment: "Hand weapon, shield",
  special-rules: "Fast Cavalry, Homesteaders",
  options: [
- May choose one of the following:
  - Light lances +1 point/model
  - Replace shields with shortbows +1 point/model
  - Javelins +2 points/model
- May take light armour +1 point/model
- May upgrade one Hobilar to a Leader +5 points
- May upgrade one Hobilar to a Musician +5 points
- May upgrade one Hobilar to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

= SPECIAL UNITS

#unit("DEPUTIES",
  first: true,
  profiles: (
    (name: "Deputy", m: 4, ws: 3, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 3.5),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Duck & Weave, Homesteaders",
  options: [
- May choose one of the following:
  - Spears +0.5 point/model
  - Polearms +2 points/model
- May take light armour +0.5 point/model
- May take shields +1 point/model
- May take Piggyback Riders +10 points
- May upgrade one Deputy to a Leader +5 points
- May upgrade one Deputy to a Musician +5 points
- May upgrade one Deputy to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("HOUSEWIVES",
  profiles: (
    (name: "Housewife", m: 4, ws: 2, bs: 4, s: 2, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 5),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Duck & Weave, Hatred, Homesteaders",
  options: [
- May take Piggyback Riders +10 points
- May upgrade one Housewife to a Leader +5 points
- May upgrade one Housewife to a Musician +5 points
- May upgrade one Housewife to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("GAMEKEEPERS",
  profiles: (
    (name: "Gamekeeper", m: 4, ws: 2, bs: 5, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 9),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shortbow",
  special-rules: "Duck & Weave, Homesteaders, Scouts, Skirmishers",
  options: [
- May upgrade one Gamekeeper to a Leader +5 points
- May upgrade one Gamekeeper to a Musician +5 points
  ],
)

#unit("THIEVES",
  profiles: (
    (name: "Thief", m: 4, ws: 3, bs: 4, s: 2, t: 2, w: 1, i: 6, a: 1, ld: 8, points: 8),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ambushers, Duck & Weave, Dodge (6+), Homesteaders, Skirmishers",
  special-rules-body: [
- *Light-fingered:* Whenever a model with this special rule is in base contact with an enemy character who is not a Monster he may attempt to steal a Talisman, Arcane Item or Enchanted Item (excluding mounts) at the start of each Close Combat round. Roll a D6 for each item they wish to steal and consult the chart below:

#chart((("D6", "Result"), ("1", "The model is caught and killed outright."), ("2", "The model is chased back and may not attack this round."), ("3-4", "The model is not noticed but fails to steal anything."), ("5", "The model succeeds in stealing a random magic item."), ("6", "The model succeeds in stealing a magic item of their choice.")))

Each stolen Magic Item is removed from play. Each stolen item is worth 25 Victory Points.

- *Snatch and Grab:* Before Break Tests are taken, models with this special rule may choose to leave combat willingly. They will flee from the enemy as normal, but will rally automatically and may not be pursued. In addition, they do not cause Panic to friendly units while doing so.
  ],
  options: [
- May take additional hand weapons +1 point/model
- May choose one of the following:
  - Throwing weapons +2 points/model
  - Shortbows +3 points/model
  - Slings +3 points/model
- May upgrade one Thief to a Leader +5 points
  ],
)

#unit("BEEKEEPERS",
  profiles: (
    (name: "Beekeeper", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 10),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, beehives",
  equipment-body: [
- *Beehives:* Beehives use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "1", "Quick Shot"))

Each Beehive Hit is multiplied by 2D6. Any unit that is Hit must take a Panic test at the end of the Shooting phase.
  ],
  special-rules: "Duck & Weave, Homesteaders, Skirmishers",
)

#unit("SWAN RIDERS",
  profiles: (
    (name: "Swan Rider", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 6, a: 1, ld: 8, points: 20),
    (name: "Giant Swan", m: 2, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "3-9",
  troop-type: "Cavalry (Halfling)",
  mount: "Giant Swan (Avian)",
  base-size: "40x40",
  equipment: "Hand weapon",
  special-rules: "Fast Cavalry, Fly (9), Homesteaders",
  options: [
- May choose one of the following:
  - Light lances +1 point/model
  - Shortbows +2 points/model
- May take light armour +1 point/model
- May take shields +1 point/model
- May upgrade one Swan Rider to a Leader +5 points
- May upgrade one Swan Rider to a Musician +5 points
- May upgrade one Swan Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("REAPER",
  profiles: (
    (name: "Reaper", m: 7, ws: "-", bs: "-", s: 5, t: 4, w: 3, i: "-", a: "-", ld: "-", points: 40),
    (name: "Farmer", m: "-", ws: 2, bs: 4, s: 2, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
    (name: "Farm Animal", m: "-", ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Armour save 6+)",
  crew: "2 Farmers (Halfling)",
  drawn-by: "2 Farm Animals (Ungulate)",
  base-size: "50x75 or 50x100",
  equipment: "Hand weapon",
  special-rules: "Homesteaders",
  options: [
- May take flails +4 points
  ],
)

#unit("CHUCK WAGON",
  profiles: (
    (name: "Chuck Wagon", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 3, i: "-", a: "-", ld: "-", points: 60),
    (name: "Cook", m: "-", ws: 2, bs: 4, s: 2, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
    (name: "Farm Animal", m: "-", ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Armour save 6+)",
  crew: "3 Cooks (Halfling)",
  drawn-by: "2 Farm Animals (Ungulate)",
  base-size: "50x75 or 50x100",
  equipment: "Hand weapon",
  special-rules: "Homesteaders",
  special-rules-body: [
- *Field Provisions:* At the start of any of your turns, the Chuck Wagon may provide provisions to one non- fleeing friendly Halfling or Ogre unit within 6". If they do so, roll a D6 and consult the table below to see what effect it has. Note that each unit can only be affected by one Field Provision at a time, any additional Field Provisions have no effect.

#chart((("D6", "Result"), ("1", "Stale Rations: The unit suffer -1 to its Leadership but gains the Hatred special rule until the start of
your next turn."), ("2", "Rich Stew: The unit suffer -1 to its Movement value but gains the Stubborn special rule until the start
of your next turn."), ("3", "Sugary Sweets: The unit gains the Frenzy special rule until the start of your next turn."), ("4", "Spicy Chicken: The unit gains the Strength Bonus (1) special rule until the start of your next turn."), ("5", "Oxtail Soup: The unit gains +1 Combat Resolution until the start of your next turn."), ("6", "Chef's Special: You may choose which of the options above that apply to the unit.")))

- *Irresistible Aroma:* All friendly fleeing Halfling units within 12" of a Chuck Wagon have the Cold-blooded special rule when taking Rally tests.
  ],
  notes: [
- A Master Chef mounted on a Chuck Wagon handing out Field Provisions may add their Special Spices to the effect.
  ],
  labels: (notes: "NOTE"),
)

#unit("MOOT OGRES",
  profiles: (
    (name: "Ogre", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 25),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapons",
  special-rules: "Independent, Natural Armour (6+)",
  special-rules-body: (
    rule("Ogre Charge")[Each model with this special rule that successfully charges an enemy has the Impact Hits (1) special rule. Models with this special rule that are part of a unit with ranks add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Bucklers +3 points/model
  - Great weapons +9 points/model
- May take light armour +3 points/model
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

= RARE UNITS

#unit("HOT POT",
  first: true,
  profiles: (
    (name: "Hot Pot", m: "-", ws: "-", bs: "-", s: "-", t: 5, w: "-", i: "-", a: "-", ld: "-", points: 70),
    (name: "Crew", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Halfling)",
  base-size: "20x20, 25x25 or 50x50 (Hot Pot), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, hot pot",
  equipment-body: [
- *Hot Pot:* A hot pot is a stone thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-36\"", "3(6)", "Ignores Armour Saves, Multiple Wounds (D3)"))
  ],
  special-rules: "Homesteaders",
  notes: [
- You may take 1\-2 Hot Pots as a single Rare choice.
  ],
)

#unit("FIREWORKS CART",
  profiles: (
    (name: "Fireworks Cart", m: "-", ws: "-", bs: "-", s: "-", t: 5, w: "-", i: "-", a: "-", ld: "-", points: 60),
    (name: "Crew", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Halfling)",
  base-size: "50x50 (Fireworks Cart), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, fireworks",
  equipment-body: [
- *Fireworks:* Fireworks is a rocket launcher with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "3", "Flaming Attacks"))
  ],
  special-rules: "Homesteaders",
  notes: [
- You may take 1\-2 Fireworks Carts as a single Rare choice.
  ],
)

#unit("SHEARER",
  profiles: (
    (name: "Shearer", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 70),
    (name: "Farmer", m: "-", ws: 2, bs: 4, s: 2, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
    (name: "Farm Animal", m: "-", ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Armour save 6+)",
  crew: "3 Farmers (Halfling)",
  drawn-by: "2 Farm Animals (Ungulate)",
  base-size: "50x100",
  equipment: "Hand weapon, scythes",
  special-rules: "Homesteaders",
  options: [
- May take flails +6 points
  ],
  notes: [
- You may take 1\-2 Shearers as a single Rare choice.
  ],
)

#unit("TREEMAN",
  profiles: (
    (name: "Treeman", m: 5, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 4, ld: 9, points: 155),
  ),
  troop-type: "Monstrous Creature (Forest Spirit)",
  base-size: "50x50 or 75x50",
  special-rules: "Flammable, Forest Strider, Immunity (Psychology), Magical Attacks, Magical Ward (5+), Natural Armour (3+), Stubborn",
  special-rules-body: (
    rule("Tree Whack")[A model with this rule can choose to make a single Tree Whack in place of making their normal close combat attacks. To resolve a Tree Whack, nominate an enemy model in base contact. That model must pass an Initiative test or suffer D6 Wounds which Ignores Armour Saves.],
  ),
)

= SPECIAL CHARACTERS

#unit("HISME STOUTHEART",
  solo: true,
  first: true,
  subtitle: "Elector Count/Elder of the Moot",
  profiles: (
    (name: "Hisme Stoutheart", m: 4, ws: 5, bs: 7, s: 3, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 175),
  ),
  troop-type: "Infantry (Special Character, Halfling)",
  base-size: "20x20 or 25x25",
  magic-items: [
- *Goblin Slayer:* Magic Weapon. The wielder gains +1 Strength and +1 Attack if they are in base contact with one or more enemies with Toughness 3 or lower.
- *Buckler of the Red Rooster:* Magic Armour. Buckler. The bearer ignores the first Hit suffered each close combat phase.
- *Brooch of Stoutheart:* Talisman. The wearer of this talisman gains a Magical Ward (5+) which may be re- rolled.
- *Hisme's Book of Sage Advice:* Enchanted Item. At the start of each of your turns, roll a D6 and consult the table below:

#chart((("D6", "Result"), ("1-2", "Any unit the bearer is with may re-roll 1's To Hit in close combat."), ("3-4", "Any unit the bearer is with may re-roll 1's To Wound in close combat."), ("5-6", "Any unit the bearer is with gains +1 to their combat resolution.")))
  ],
  special-rules: "Duck & Weave, Homesteaders",
  options: [
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May be mounted on a Farm Animal +10 points
  ],
  notes: [
- Hisme Stoutheart must be the Army General.
  ],
)

#unit("NICHOLAS WARFOOT",
  solo: true,
  subtitle: "Defender of the Moot",
  profiles: (
    (name: "Nicholas Warfoot", m: 4, ws: 6, bs: 7, s: 3, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 175),
  ),
  troop-type: "Infantry (Special Character, Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Medium armour",
  magic-items: (
    rule("Glammyding")[Magic Weapon. This sword gives Nicholas +1 Strength and the Multiple Wounds (2) and Armour Piercing (1) special rules.],
    rule("The Warfoot's Crest")[Magic Armour. Shield. The bearer gains an additional 6+ armour save and the Magic Resistance (1) special rule.],
    rule("Aladora's Necklace")[Talisman. Aladora’s Necklace gives the wearer a Magical Ward (5+). Once per battle, at the start of any Close Combat phase, the bearer may activate the amulet. Until the end of the turn, no attacks can be allocated against the bearer.],
    rule("Potion of War")[Enchanted Item. One use only. The potion may be drunk at the start of any phase. The potion imbues the imbiber with +2 Strength and +1 Toughness for the remainder of the turn.],
  ),
  special-rules: "Duck & Weave, Homesteaders",
  options: [
- May be mounted on a Farm Animal +15 points
  ],
)

#unit("CLEGG THE INDOMITABLE",
  solo: true,
  subtitle: "Master Thief",
  profiles: (
    (name: "Clegg", m: 4, ws: 5, bs: 7, s: 3, t: 3, w: 3, i: 8, a: 3, ld: 9, points: 110),
  ),
  troop-type: "Infantry (Special Character, Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: (
    rule("Magic 'Swag' Bag")[Enchanted Item. The Magic 'Swag' Bag allows Clegg to take away any of the enemy's magical items from them for one turn so he can possibly use them himself. At the start of any Halfling turn, nominate one enemy character and take a random magic item from them. If that model does not have a magic item, pick a new character until you find one with a magic item. Clegg may use whichever magic item is picked until the start of his next turn. After this the magic item magically appears back to the original character. Any magic item can be drawn out of the 'Swag' Bag, but special items that only work for specific characters cannot be used even though they may be picked. Note that each magic item may only be picked once per game.],
  ),
  special-rules: "Ambushers, Deft Hands (see Master Thieves), Duck & Weave, Dodge (5+), Hidden, Homesteaders, Light-fingered (see Master Thieves), Snatch and Grab (see Master Thieves)",
)

#unit("GABBO FLUGBEND",
  solo: true,
  subtitle: "Halfling Adventurer",
  profiles: (
    (name: "Gabbo Flugbend", m: 4, ws: 5, bs: 7, s: 3, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 130),
    (name: "Greywing (Pegasus)", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: ""),
  ),
  unit-size: "5+",
  troop-type: "Cavalry (Halfling)",
  mount: "Greywing (Equine)",
  base-size: "25x50, 40x40 or 40x60",
  equipment: "Hand weapon, shortbow",
  special-rules: "Fly (9), Homesteaders",
  special-rules-body: (
    rule("Animal Traps")[Gabbo and Greywing have the Always Strikes First special rule when fighting War Beasts, Monstrous Infantry, Monstrous Cavalry and Monstrous Beasts.],
    rule("Mesh Net")[At the beginning of the combat phase, Gabbo may attempt to net one enemy model. The targeted model must pass an Initiative test or count as having Weapon Skill 1 for the rest of the turn.],
  ),
)

#unit("LUMPIN CROOP",
  solo: true,
  subtitle: "Leader of the Fighting Cocks",
  profiles: (
    (name: "Lumpin Croop", m: 4, ws: 3, bs: 5, s: 3, t: 3, w: 2, i: 6, a: 3, ld: 9, points: 40),
    (name: "Ned Hamfist", m: 4, ws: 2, bs: 5, s: 2, t: 2, w: 1, i: 5, a: 2, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shortbow, shield",
  special-rules: "Duck & Weave, Mercenaries",
  special-rules-body: (
    rule("The Fighting Cocks")[Lumpin Croop must be accompanied by a unit of Gamekeepers chosen from the army list as normal. The unit must be given a Standard Bearer and Musician. Ned Hamfist is the unit's standard bearer and Lumpin Croop is the unit's Leader. Lumpin Croop may never choose to leave this unit.],
  ),
  options: [
- May take Magic Items up to a total of 50 points
  ],
)

#unit("OGGLETHORPE BULNHELM",
  solo: true,
  subtitle: "Travelling Master Chef",
  profiles: (
    (name: "Ogglethorpe Bulnhelm", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 6, a: 2, ld: 9, points: 85),
  ),
  troop-type: "Infantry (Character, Halfling, Master Chef)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Champion Chef's Cleaver")[Magic Weapon. All attacks made with this weapon always Wound on at least a 4+ and have the Armour Piercing (2) special rule.],
    rule("Magic Drumstick")[Enchanted Item. One use only. The Drumstick may be eaten at the beginning of any turn; it gives the eater +1 to his Weapon Skill, +1 to his Strength and +1 to his Attacks for the rest of the turn.],
  ),
  special-rules: "Duck & Weave, Homesteaders, Special Spices (see Master Chefs)",
  special-rules-body: (
    rule("Fireroot Pepper")[Instead of fighting normally, Ogglethorpe may make a special attack. If this Hits, the target suffer Multiple Wounds (D3) with no saves allowed. This has no effect on Animated Constructs, Daemons, Forest Spirits or Vampires.],
  ),
  options: [
- May be mounted on a Chuck Wagon (replacing one of the crew) +70 points
  ],
)

#unit("JOLLY BOLBOTTOM",
  solo: true,
  subtitle: "Innkeeper of the Sow's Ear",
  profiles: (
    (name: "Jolly Bolbottom", m: 4, ws: 3, bs: 6, s: 3, t: 3, w: 2, i: 7, a: 2, ld: 9, points: 50),
  ),
  troop-type: "Infantry (Special Character, Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: (
    rule("Antique Handgun")[Magic Weapon. This weapon has a range of 36", Strength 5 and may re-roll failed rolls To Hit.],
    rule("Dram of Invigoration")[Enchanted Item. One use only. The dram may be drunk at the start of any phase, instantly restoring one Wound lost previously during the battle.],
  ),
  special-rules: "Duck & Weave, Homesteaders",
  special-rules-body: (
    rule("Quick Draw")[Whenever Jolly fires his Antique Handgun, he has the Multiple Shots (D3) special rule.],
  ),
)

= CREDITS

#unit("Written & Edited by:",
  first: true,
  subtitle: "Mathias Eliasson",
  before: [
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")
  ],
)

#unit("Additional Material:",
  subtitle: "Antti Sinivuori",
  before: [
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
  ],
)
