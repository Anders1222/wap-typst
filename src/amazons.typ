// Amazons 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "amazons",
  army: "Amazons",
  version: "3.0",
  layout: "army",
  cover: "covers/amazons.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Amazons 3.0")

#cover(
  title: "Amazons",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/amazons.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Amazons*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in an Amazon army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Amazon units, and these are detailed here.

#namecost("SACRIFICIAL HUNT", "")

All models with this special rule may re-roll the distance they pursue a broken enemy from combat.

#namecost("GUERRILLA WARFARE", "")

The following applies to models with this special rule:

#namecost("Serpent's Strike", "")

Models with this rule gain the Devastating Charge special rule. In any turn in which they successfully charge an enemy unit in the flank or rear, they may re- roll 1's To Hit and To Wound.

#namecost("Predator's Feint", "")

In the first round of close combat in which a unit with this special rule does not win the combat or the enemy passes their Break test, it may choose to disengage from combat instead of taking a Break test or making a combat reform. Units affected by Frenzy cannot attempt to disengage from combat.

If the unit chooses to disengage, it makes a Flee move as if it had broken from combat. However, this does not cause Panic for breaking within 6" of friendly units. The enemy unit may only choose to pursue if they won the combat.

In addition, whenever a unit with this rule chooses Flee as a charge reaction or to disengage from combat, it gains +1 to its Flee distance.

#namecost("Hunter's Step", "")

Unless it charged, marched or fled during the Movement phase of its turn, a unit with the Fast Cavalry or Skirmishers special rules armed with missile weapons may move up to its Movement value directly backwards after resolving its missile attacks in its Shooting phase.

#namecost("KOKA", "")

Models with this upgrade gain the Frenzy special rule, and they do not lose Frenzy by losing a round of combat.

#namecost("CLAW OF THE OLD ONES", "")

Claws of the Old Ones are hand weapons with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "+1", "Armour Piercing (2), Magical Attacks"))
#namecost("PAIRED CLAWS OF THE OLD ONES", "")

Paired Claws of the Old Ones have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "+1", "Armour Piercing (2), Magical Attacks, Requires Two Hands, Parry (6+)"))

#note[_A model with paired Claws of the Old Ones gains +1 Attack._]

#namecost("SUN GAUNTLET", "")

Sun Gauntlets have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8/12\"", "4", "Armour Piercing (2), Magical Attacks, Quick to Fire"))
#namecost("SUNSTAFF", "")

Sunstaffs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/24\"", "4", "Armour Piercing (2), Magical Attacks, Quick to Fire"))
#namecost("AMULET OF THE MOON", "")

All missile and close combat attacks targeting a model with an Amulet of the Moon suffer \-1 to Hit.

#namecost("ENCHANTED CHARMS", "")

A model with Enchanted Charms has the Magical Ward (6+) and Magic Resistance (1) special rules.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Amazons. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("STAR SWORD", 60)[The Star Sword gives the wielder the Always Strikes First, Ignores Armour saves, and Parry (6+) special rules.]

#magic-weapon("ARC CLAWS", 40, type: "Two hand weapons")[Attacks made with the Arc Claws have the Lightning Attacks special rule, and the wielder may reroll any failed To Wound rolls in close combat.]

#magic-weapon("HAND OF RIGG", 40)[All attacks made with the Hand of Rigg are resolved at Strength 8 and have the Always Strikes Last special rule.]

#magic-weapon("BRIGHT STAFF", 30, type: "Sunstaff")[The Bright Staff has a range of 30" and the Multiple Shots (D6) special rule.]

#magic-weapon("JAGUAR MACE", 25)[The wielder gains the Armour Piercing (1) special rule, and enemies attacking the wielder in close combat suffer \-1 To Hit.]

#magic-weapon("SKYPIERCER", 25, type: "Bow")[All shots from Skypiercer are resolved at Strength 5 with the Flaming Attacks special rule. Each shot penetrates ranks like a bolt thrower, but does not suffer any Strength penalties for each rank.]

#magic-weapon("METEOR SPEAR", 25, type: "Light lance/spear")[Attacks made with the Meteor Spear have the Flaming Attacks special rule. When charging, all attacks made with it have +1 Strength with the Armour Piercing (1) and Multiple Wounds (D3) special rules.]

#magic-weapon("ROAR OF CHOTEC", 25, type: "Sun Gauntlet")[Shots from the Roar of Chotec have Strength 6. When firing the Roar of Chotec, you may choose to overcharge it, making the shot have Strength 7 and the Multiple Wounds (2) special rule. If you do so, on a To Hit roll of 1 the wielder suffers one automatic hit from the weapon, using the normal profile, even if you can reroll the initial To Hit roll of 1.]

#magic-weapon("MOONBLADE", 20, type: "Additional hand weapon")[This weapon gives the wielder the Parry (6+) special rule. In addition, for every successful Parry save they make, the model that struck the blow suffers a Strength 4 Hit.]
]

#magic-item-section("armour")[
#magic-armour("SHIELD OF FEATHER IRON", 40, type: "Shield")[All enemy units in base contact with the bearer are subject to the Always Strikes Last special rule.]

#magic-armour("CRYSTALLINE ARMOUR", 30, type: "Light armour")[For every spell successfully cast upon the bearer or the unit they are with, the Amazon player gains an additional Power Dice or Dispel dice to their current pool.]

#magic-armour("ARMOUR OF THE SWAMP DRAKE", 10, type: "Light armour")[The wearer gains the Aquatic and Natural Armour (6+) special rule.]
]

#magic-item-section("talisman")[
#talisman("MAGIC FEATHERS OF NATALINA", 45)[Enemies must re-roll successful rolls To Hit in close combat and with missile weapons against the wearer. In addition, they gain a Magical Ward (6+).]

#talisman("ASPECT OF AXLBERYN", 40, only: "Model on foot")[The wearer gains Ethereal special rules, but cannot join any units.]

#talisman("SHIELD AMULET", 40)[For every Wound the wearer suffers, roll a D6. If this number is equal to or higher than the Strength of the Attack, the Wound is nullified.]

#talisman("SIGN OF POTEC", 30)[The wearer has Magic Resistance (1) special rule. Additionally, models with the Daemonic, Undead and Vampiric special rules must reroll successful To Hit rolls made against the wearer in close combat.]

#talisman("MIRAGE OF AMAXONIA", 20)[The wearer gains Dodge (5+) special rule.]

#talisman("ITZL'S BEAST-WARD", 15)[Any unit containing Warbeasts, Monstrous Beasts, Monsters, Cavalry, Monstrous Cavalry and Chariots that wants to declare a charge at the character bearing this amulet or their unit must first pass a Leadership test. If failed, the unit may choose a different target for their charge or to not make a charge.]
]

#magic-item-section("arcane")[
#arcane-item("BRIGHT WAND OF XOLOC", 35, bound: (level: 3, cast: "10+"))[The Bright Wand of Xoloc contains a *magic missile* with a range of 24" that is resolved like a hit from a bolt thrower with the Flaming Attacks special rule.]

#arcane-item("LOCKET OF RIGG", 35, bound: true)[This item contains a random spell from the Lore of Light (Level 1\-2). At the start of the game, roll a D6 to determine which spell the result correspond to – you may replace the rolled spell with _Shem's Burning Gaze_ if you wish.]

#arcane-item("THE COBRA STAFF", 30, bound: (level: 2, cast: "7+"))[The Cobra Staff contains a *magic missile* with a range of 18" that causes 2D6 hits. These hits always Wound on a 4+ with the Armour Piercing (2) special rule.]

#arcane-item("TIARA OF SERENA", 20)[The bearer may attempt to cast the same spell twice in each Magic phase if the first attempt was either unsuccessful or dispelled.]
]

#magic-item-section("enchanted")[
#enchanted-item("ELIXIR OF LIFE", 50)[The bearer of the Elixir of Life gains the Regeneration (6+) special rule, and automatically heals one Wound suffered earlier in the game at the start of each turn.]

#enchanted-item("FIERY WINGS", 30, only: "Model on foot")[The wearer has the Fly (10) and Impact Hits (1) special rules.]

#enchanted-item("PLAQUE OF THE OLD ONES", 25)[The bearer becomes a Level 1 Wizard who can use any of the eight Winds of Magic from the _Warhammer Rulebook_. However, they do not get any bonus to casting or dispelling and cannot channel dice.]

#enchanted-item("BLUE STUMP BREW", 20, one-use: true)[The brew may be drunk at any time. Roll a D6; this is the number of points the character may increase her characteristics by. She may freely divide them between several different characteristics if she wishes. The effects of the brew last until the start of the character’s next turn.]

#enchanted-item("EYE OF TZCALLI", 20)[The bearer gains the Sniper special rule.]

#enchanted-item("EMERALD OF THE MOON", 15)[The bearer gains the Armour Piercing (1) and Poisoned Attacks special rules.]

#enchanted-item("AUGUR SKULL", 10)[Enemy units deploying with the Scout special rule cannot be set up closer than 18" away from the bearer of this item.]

#enchanted-item("DEATH WHISTLE", 10)[Any enemy unit that is charged by the bearer of this item must take a Terror test.]

#enchanted-item("STATUE OF SOTEK", 10)[All Skink units in base contact with the bearer are subject to the Always Strikes Last and Hatred special rules.]

#enchanted-item("WARRIOR'S SUN RING", 10)[The bearer can reroll one failed To Wound roll in each of their combat phases.]

#enchanted-item("HUANCHI'S JAGUAR HEADDRESS", 5, only: "Infantry or Cavalry")[The wearer gains the Ambushers special rule.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF THE FIRST QUEEN", 55)[The range of the bearer’s Hold Your Ground special rule is increased by 6". Additionally, the bearer of this standard and any unit accompanying them has the Strider special rule and are Stubborn in the first round of close combat.]

#magic-standard("JAGUAR STANDARD", 45)[The unit carrying the Jaguar Standard gain the Strength Bonus (1) special rule and have the Cold-blooded special rule when taking Break Tests.]

#magic-standard("EAGLE BANNER", 40)[The unit carrying this standard gains the Swiftstride special rule and may reroll any 1's for their Charge distance roll.]

#magic-standard("PIRANHA TOTEM", 30)[The unit carrying this standard gains the Killing Blow special rule.]

#magic-standard("PENNANT OF SERENA", 25)[The unit carrying this standard automatically passes Leadership tests to disengage from combat when using Guerrilla Warfare, and may choose to move normally in the Remaining Moves phase after rallying, even if they are not Skirmishers or Fast Cavalry.]

#magic-standard("TAPESTRY OF INHAMEX", 15)[If a friendly unit within 6" is destroyed or involuntarily flees, the unit carrying this standard may re-roll 1's when rolling To Hit and To Wound in their next close combat phase.]
]

= CHARACTERS

#unit("MATRIACHS",
  first: true,
  profiles: (
    (name: "Matriarch", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 90),
    (name: "Mistress", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Forest Strider, Guerrilla Warfare, Sacrificial Hunt",
  options: [
- May choose one of the following:
  - Spear +3 points
  - Additional hand weapon +5 points
  - Light lance +5 points
  - Polearm +10 points
  - Great weapon +15 points
  - Claw of the Old Ones +25 points
- May choose one of the following:
  - Shortbow +4 points
  - Javelins +5 points
  - Sun Gauntlet +10 points
  - Sunstaff +10 points
- May take light armour +3 points
- May take a shield +5 points
- May take an Amulet of the Moon +25 points
- May take Enchanted Charms +15 points
- May take Koka +10 points
- May be mounted on one of the following:
  - Jaguar +15 points
  - Culchan +20 points
  - Cold One +25 points
  - Terradon +35 points
  - Stegadon (Matriarch only, replacing one of the crew) +215 points
  - Great Wyrm (Matriarch only) +260 points
- One Mistress may carry the Battle Standard +25 points
- A Mistress may take Magic Items up to a total of 50 points
- A Matriarch may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("SERPENT PRIESTESSES",
  profiles: (
    (name: "Serpent High Priestess", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
    (name: "Serpent Priestess", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Serpent Priestess is a Level 1 Wizard. A Serpent High Priestess is a Level 3 Wizard. They use one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Death
- Heavens
- Fire
- Life
- Light
- Metal
- Shadow
  ],
  special-rules: "Forest Strider, Guerrilla Warfare, Sacrificial Hunt",
  options: [
- May take an additional Wizard Level +35 points
- May take a Claw of the Old Ones +10 points
- May choose one of the following:
  - Sun Gauntlet +8 points
  - Sunstaff +8 points
- May take an Amulet of the Moon +25 points
- May take Enchanted Charms +15 points
- May take Koka +5 points
- May be mounted on one of the following:
  - Jaguar +15 points
  - Culchan +20 points
  - Cold One +25 points
  - Terradon +35 points
  - Stegadon (High Priestess only, replacing one of the crew) +215 points
  - Great Wyrm (High Priestess only) +260 points
- A Serpent Priestess may take Magic Items up to a total of 50 points
- A Serpent High Priestess may take Magic Items up to a total of 100 points
  ],
)

= CHARACTER MOUNTS

#unit("JAGUAR",
  compact: true,
  profiles: (
    (name: "Jaguar", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Feline)",
  base-size: "25x50",
  special-rules: "Forest Strider, Mighty Blow (1)",
)

#unit("CULCHAN",
  compact: true,
  profiles: (
    (name: "Culchan", m: 8, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Phorusrhacid)",
  base-size: "25x50",
  special-rules: "Armour Piercing (1), Forest Strider",
)

#unit("COLD ONE",
  compact: true,
  profiles: (
    (name: "Cold One", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Saurian)",
  base-size: "25x50 or 30x60",
  special-rules: "Fear, Forest Strider, Natural Armour (6+), Stupidity",
)

#unit("TERRADON",
  profiles: (
    (name: "Terradon", m: 2, ws: 3, bs: 0, s: 4, t: 3, w: 2, i: 2, a: 1, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Saurian)",
  base-size: "40x40",
  special-rules: "Fear, Fly (9), Forest Strider",
  special-rules-body: (
    rule("Drop Rocks")[Once per game, during the Remaining Moves sub-phase, models with this special rule may drop rocks unless they are fleeing or have declared a charge that turn. All models in a unit must drop rocks at the same time. To drop rocks, select one unengaged enemy unit that the Terradons moved over in that turn. That target immediately suffers D3 Strength 4 hits for each Terradon in the unit, distributed as for shooting attacks.],
  ),
)

#unit("GREAT WYRM",
  compact: true,
  profiles: (
    (name: "Great Wyrm", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 6, points: "-"),
  ),
  troop-type: "Monster (Ophidian)",
  base-size: "50x100 or 100x150",
  special-rules: "Fly (7), Natural Armour (4+)",
)

= CORE UNITS

#unit("WARRIORS",
  first: true,
  profiles: (
    (name: "Warrior", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 4),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shield",
  special-rules: "Forest Strider, Guerrilla Warfare, Sacrificial Hunt",
  options: [
- May choose one of the following:
  - Replace shields with additional hand weapons free
  - Spears +0.5 point/model
- May upgrade one Warrior to a Leader +5 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ARCHERS",
  profiles: (
    (name: "Archer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shortbow",
  special-rules: "Forest Strider, Guerrilla Warfare, Sacrificial Hunt",
  options: [
- May upgrade one Archer to a Leader +5 points
- May upgrade one Archer to a Musician +5 points
- May upgrade one Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("SKIRMISHERS",
  profiles: (
    (name: "Skirmisher", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, javelins",
  special-rules: "Forest Strider, Guerrilla Warfare, Sacrificial Hunt, Skirmishers",
  options: [
- May choose one of the following:
  - Replace javelins with slings free
  - Replace javelins with blowpipes free
  - Upgrade javelins to have Poisoned Attacks +2 points/model
- May take shields (unless armed with blowpipes) +1 point/model
- May upgrade one Skirmisher to a Leader +5 points
- May upgrade one Skirmisher to a Musician +5 points
  ],
)

#unit("HUNTRESSES",
  profiles: (
    (name: "Huntress", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 13),
    (name: "Jaguar", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Jaguar (Feline)",
  base-size: "25x50",
  equipment: "Light lance",
  special-rules: "Fast Cavalry, Forest Strider, Guerrilla Warfare, Mighty Blow (1) (Jaguar only), Sacrificial",
  special-rules-body: [
*Hunt*
  ],
  options: [
- May replace light lances with one of the following:
  - Shortbows free
  - Javelins +1 point/model
- May take shields (unless armed with shortbows) +1 point/model
- May upgrade one Huntress to a Leader +5 points
- May upgrade one Huntress to a Musician +5 points
- May upgrade one Huntress to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("JAGUAR HUNTING PACK",
  profiles: (
    (name: "Jaguar", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: 7),
    (name: "Beastmistress", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
  ),
  unit-size: "5-15",
  troop-type: "War Beast (Feline)",
  handler: "Beastmistress (Human)",
  base-size: "25x25 or 25x50 (Jaguar), 20x20 or 25x25 (Beastmistress)",
  equipment: "Two hand weapons (Beastmistress only)",
  special-rules: "Forest Strider, Guerrilla Warfare (Beastmistress only), Mighty Blow (1), Mixed Unit, Skirmishers",
  notes: [
- One Beastmistress must be included for every five Jaguars in the unit.
  ],
)

#unit("SNAKE SWARMS",
  compact: true,
  profiles: (
    (name: "Snake Swarm", m: 5, ws: 3, bs: 0, s: 2, t: 2, w: 6, i: 1, a: 6, ld: 3, points: 30),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Ophidian)",
  base-size: "40x40",
  special-rules: "Aquatic, Cold-Blooded, Poisoned Attacks",
)

= SPECIAL UNITS

#unit("PIRANHA WARRIORS",
  first: true,
  profiles: (
    (name: "Piranha Warrior", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 8),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, javelins",
  special-rules: "Forest Strider, Guerrilla Warfare, Sacrificial Hunt, Skirmishers",
  options: [
- May choose one of the following:
  - Upgrade javelins to have Poisoned Attacks +2 points/model
  - Replace javelins with Sun Gauntlets +2 points/model
- May take shields +1 point/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May upgrade one Piranha Warrior to a Leader +5 points
- May upgrade one Piranha Warrior to a Musician +5 points
- May upgrade one Piranha Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("EAGLE WARRIORS",
  profiles: (
    (name: "Eagle Warrior", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 8),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Spear, shield",
  special-rules: "Forest Strider, Guerrilla Warfare, Immunity (Psychology), Sacrificial Hunt, Vanguard",
  options: [
- May replace spears with Sunstaffs +6 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May take Koka +1 point/model
- May upgrade one Eagle Warrior to a Leader +5 points
- May upgrade one Eagle Warrior to a Musician +5 points
- May upgrade one Eagle Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("JAGUAR WARRIORS",
  profiles: (
    (name: "Jaguar Warrior", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 7),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shield",
  special-rules: "Ambushers, Forest Strider, Guerrilla Warfare, Mighty Blow (1), Sacrificial Hunt",
  options: [
- May choose one of the following:
  - Claws of the Old Ones +3 points/model
  - Replace shields with paired Claws of the Old Ones +3 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May take Koka +1 point/model
- May upgrade one Jaguar Warrior to a Leader +5 points
- May upgrade one Jaguar Warrior to a Musician +5 points
- May upgrade one Jaguar Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("PYTHON WARRIORS",
  profiles: (
    (name: "Python Warrior", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 12),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shortbow",
  special-rules: "Forest Strider, Guerrilla Warfare, Poisoned Attacks, Rapid Fire, Sacrificial Hunt, Scouts, Skirmishers",
  options: [
- May take additional hand weapons +1 point/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May upgrade one Python Warrior to a Leader +5 points
- May upgrade one Python Warrior to a Musician +5 points
  ],
)

#unit("CULCHAN RIDERS",
  profiles: (
    (name: "Culchan Rider", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 17),
    (name: "Culchan", m: 8, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Culchan (Phorusrhacid)",
  base-size: "25x50",
  equipment: "Light lance, shield",
  special-rules: "Armour Piercing (1) (Culchan only), Fast Cavalry, Forest Strider, Guerrilla Warfare, Sacrificial Hunt",
  options: [
- May choose one of the following:
  - Replace light lances & shields with shortbows free
  - Replace light lances with javelins +2 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May upgrade one Culchan Rider to a Leader +5 points
- May upgrade one Culchan Rider to a Musician +5 points
- May upgrade one Culchan Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("COLD ONE RIDERS",
  profiles: (
    (name: "Noblewoman", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 20),
    (name: "Cold One", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  base-size: "25x50",
  mount: "Cold One (Saurian)",
  equipment: "Hand weapon, shield",
  special-rules: "Fear, Forest Strider, Guerrilla Warfare, Natural Armour (6+), Sacrificial Hunt, Stupidity",
  options: [
- May take light lances +1 point/model
- May take light armour +1.5 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May take Koka +1 point/model
- May upgrade one Noblewoman to a Leader +5 points
- May upgrade one Noblewoman to a Musician +5 points
- May upgrade one Noblewoman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  order: ("unit-size", "troop-type", "base-size", "mount", "equipment", "special-rules", "options"),
)

#unit("TERRADON RIDERS",
  profiles: (
    (name: "Terradon Rider", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 27),
    (name: "Terradon", m: 2, ws: 3, bs: 0, s: 4, t: 3, w: 2, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "3-9",
  troop-type: "Cavalry (Human)",
  mount: "Terradon (Saurian)",
  base-size: "40x40",
  equipment: "Hand weapons",
  special-rules: "Fast Cavalry, Fear, Fly (9), Forest Strider, Guerrilla Warfare, Sacrificial Hunt",
  special-rules-body: (
    rule("Drop Rocks")[Once per game, during the Remaining Moves sub-phase, models with this special rule may drop rocks unless they are fleeing or have declared a charge that turn. All models in a unit must drop rocks at the same time. To drop rocks, select one unengaged enemy unit that the Terradons moved over in that turn. That target immediately suffers D3 Strength 4 hits for each Terradon in the unit, distributed as for shooting attacks.],
  ),
  options: [
- May choose one of the following:
  - Light lances +1 point/model
  - Shortbows +1 point/model
  - Javelins +2 points/model
- May take shields +2 points/model
- May upgrade one Terradon Rider to a Leader +5 points
  ],
)

#unit("GOROLS",
  profiles: (
    (name: "Gorol", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 6, points: 30),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Hominid)",
  base-size: "40x40",
  equipment: "Hand weapon",
  special-rules: "Forest Strider",
  options: [
- May take great weapons +6 points/model
- May take light armour +3 points/model
- May upgrade one Gorol to a Leader +5 points
  ],
)

= RARE UNITS

#unit("SERPENT GUARD",
  first: true,
  profiles: (
    (name: "Serpent Guard", m: 4, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm, light armour, shield",
  special-rules: "Forest Strider, Guerrilla Warfare, Sacrificial Hunt, Stubborn",
  options: [
- May replace polearms with Claws of the Old Ones +2 points/model
- May choose one of the following:
  - Sun Gauntlets +3 points/model
  - Sunstaffs +5 points/model
- May take Enchanted Charms +1.5 points/model
- May take Amulets of the Moon +2 points/model
- May take Koka +1 point/model
- May upgrade one Serpent Guard to a Leader +5 points
- May upgrade one Serpent Guard to a Musician +5 points
- May upgrade one Serpent Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("BOLT THROWER",
  profiles: (
    (name: "Bolt Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 35),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x50 (Bolt Thrower), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, bolt thrower",
  notes: [
- You may take 1\-2 Bolt Throwers as a single Rare choice.
  ],
)

#unit("ANCIENT SENTINELS",
  profiles: (
    (name: "Ancient Sentinel", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 3, i: 1, a: 3, ld: 10, points: 50),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Animated Construct)",
  base-size: "40x40",
  equipment: "Hand weapon",
  special-rules: "Animated Construct, Magical Attacks, Magic Resistance (2), Natural Armour (4+)",
  options: [
- May take great weapons +6 points/model
  ],
)

#unit("STEGADON",
  profiles: (
    (name: "Stegadon", m: 6, ws: 3, bs: 0, s: 5, t: 6, w: 5, i: 2, a: 4, ld: 6, points: 215),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 8, points: ""),
  ),
  troop-type: "Monster (Saurian)",
  crew: "3 Crew (Human)",
  base-size: "50x100 or 60x100",
  equipment: "Giant Bow (Stegadon only), javelins (Crew only)",
  equipment-body: [
- *Giant Bow:* Instead of firing another missile weapon in the Shooting phase, one of the Crew may fire the giant bow. This is a bolt thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("28/42\"", "5", "Cumbersome, Multiple Wounds (D3)"))
  ],
  special-rules: "Cold-Blooded, Sacrificial Hunt, Immunity (Psychology), Impact Hits (D6+1), Natural",
  special-rules-body: [
*Armour (4+), Stubborn*
  ],
  upgrades: (
    rule("Gyroscope of Eternal Radiance")[Arcane Item. Bound spell (Level 3, cast on 9+). This is an *augment* spell with a range of 12". The target unit immediately makes a move with the Fly (10) special rule as if it were the Remaining Moves sub-phase.],
    rule("Sharpened Horns")[The Stegadon's its Impact Hits gains the Multiple Wounds (D3) special rule.],
    rule("Unstoppable Stampede")[The Stegadon gains the Devastating Charge special rule.],
  ),
  options: [
- May replace javelins with bows free
- May replace giant bow with a Gyroscope of Eternal Radiance +20 points
- May choose any of the following:
  - Unstoppable Stampede +10 points
  - Sharpened Horns +20 points
  ],
)

#unit("AMAXON SWAMP PYTHON",
  profiles: (
    (name: "Amaxon Swamp Python", m: 8, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 4, a: 5, ld: 7, points: 210),
  ),
  troop-type: "Monster (Ophidian)",
  base-size: "50x100, 60x100 or 100x100",
  special-rules: "Aquatic, Cold-Blooded, Natural Armour (4+)",
  special-rules-body: (
    rule("Constrict")[This is a special attack that can be used instead of Stomp (even against units that are normally immune to Stomp). Choose one model in base contact. The model must pass a Toughness test or suffer D6 Wounds which Ignores Armour saves.],
  ),
)

#unit("AVATAR OF RIGG",
  profiles: (
    (name: "Avatar of Rigg", m: 6, ws: 6, bs: 5, s: 5, t: 5, w: 4, i: 6, a: 5, ld: 10, points: 260),
  ),
  troop-type: "Monstrous Infantry (Deity)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Magical Attacks, Magical Ward (4+), Terror, Unstable",
  special-rules-body: [
- *Blessings of Rigg:* At the start of the Amazon turn, the Avatar of Rigg may choose one of the following Blessings to bestow. Each blessing affects all friendly Human units within 12", and lasts until the start of the next Amazon turn.
  - *Blood:* The units gain the Hatred special rule.
  - *Violent Death:* The units gain the Killing blow special rule.
  - *Warfare:* The units may re-roll all failed charge distances.
  ],
  notes: [
- You may only have one Avatar of Rigg included in your army.
  ],
)

= SPECIAL CHARACTERS

#unit("THALESTRIS",
  solo: true,
  first: true,
  subtitle: "Queen of the Amazons",
  profiles: (
    (name: "Thalestris", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 10, points: 300),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Sword of Rigg")[Magic Weapon. All attacks with this sword have the Ignore Armour saves and Multiple Wounds (D3) special rules. If the opponent carries a magic weapon, roll a D6 for each hit caused by the sword. On a 4+, the enemy’s magic weapon is destroyed.],
    rule("Crown of the Amazon Queen")[Talisman. The crown gives the wearer a Magical Ward (4+).],
    rule("Pendant of Delmair")[Enchanted Item. If the wearer loses a round of combat they may choose to transform into a were-jaguar for the duration of the next turn. While in were-jaguar form the wearer's Strength and Toughness are increased by 1 and they gain the Fear, Hatred and Frenzy special rules. However, they cannot use any weapon or shield while in this form.],
  ),
  special-rules: "Forest Strider, Guerrilla Warfare, Sacrificial Hunt",
  special-rules-body: (
    rule("Queen of the Amazons")[Thalestris, and all friendly Amazon units within 12" her gain the Immunity (Psychology) special rule. However, if she is removed as a casualty, all Amazon break tests are taken at \-1 for the rest of the game.],
  ),
  options: [
- May take a shortbow +4 points
- May take a shield +5 points
  ],
)

#unit("AZURA",
  solo: true,
  subtitle: "The Ice Maiden",
  profiles: (
    (name: "Azura", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 185),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Azure Fire")[Magic Weapon. Claw of the Old Ones. Enemies attacking the wielder in close combat suffer \-1 to Hit. In the shooting phase, Azure Fire follows the rules for Sunstaffs with Strength 5 and Multiple Shots (D3) special rules.],
    rule("The Talisman of Rendar")[Talisman. The Talisman of Rendar gives the wearer a Magical Ward (5+) and the Immunity (Flaming Attacks) special rule.],
  ),
  special-rules: "Forest Strider, Guerrilla Warfare, Immunity (Psychology), Sacrificial Hunt",
  special-rules-body: (
    rule("Mesmerising Dance")[All models in base contact with Azura must take a Psychology test at the start of each close combat phase. If they fail they cannot attack this round.],
  ),
)

#unit("MELANDRA HAWKEYE",
  solo: true,
  subtitle: "The Adventuress",
  profiles: (
    (name: "Melandra Hawkeye", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 125),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Bow, Amulet of the Moon",
  magic-items: (
    rule("Blade of the Hawk")[Magic Weapon. This blade gives the wielder +1 Attack and +1 to Hit.],
    rule("Pendant of the Old Ones")[Enchanted Item. Unless the model has charged or is fleeing, they may teleport anywhere on the battlefield (facing any direction) in the Remaining Moves sub-phase instead of moving, but they may not be placed within 1" of enemy models.],
  ),
  special-rules: "Dodge (5+), Forest Strider, Guerrilla Warfare, Sacrificial Hunt, Scouts",
  special-rules-body: (
    rule("Evasion")[At the end of each combat Melandra is in, before Break tests are taken, she may choose to move out of combat. Place her anywhere within 1" of the enemy unit she was fighting. She may move as normal in her next turn.],
  ),
)

#unit("PENTHESILEA",
  solo: true,
  subtitle: "The Mark of the Serpent",
  profiles: (
    (name: "Penthesilea", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 150),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon.",
  magic-items: (
    rule("Throatcutter")[Magic Weapon. Additional hand weapon. This dagger gives the wielder the Poisoned Attacks and Killing Blow special rules.],
  ),
  special-rules: "Forest Strider, Frenzy, Hatred, Guerrilla Warfare, Sacrificial Hunt",
  special-rules-body: (
    rule("Mark of the Serpent")[Penthesilea has the Always Strike First rule. Enemy models attacking her must re-roll successful rolls to Hit in Close Combat.],
  ),
)

#unit("LYSIPPE",
  solo: true,
  subtitle: "The Mounted Avenger",
  profiles: (
    (name: "Lysippe", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 130),
    (name: "Blackfang", m: 8, ws: 4, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 2, ld: 7, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  base-size: "25x50",
  equipment: "Hand weapon, light armour",
  magic-items: (
    rule("Lizard Bane")[Magic Weapon. Light lance. All attacks with this weapon always Hit on a 2+. Against Lizardmen, it always Wounds on at least a 3+.],
    rule("Lysippe's Horned Helmet")[Magic Armour. This helmet gives Lysippe a 6+ armour save. In addition, she becomes subject to Frenzy.],
  ),
  special-rules: "Fast Cavalry, Forest Strider, Guerrilla Warfare, Hatred (Lizardmen), Mighty Blow (1)",
  special-rules-body: [
(Blackfang only)*, Sacrificial Hunt*

- *Lysippe's War Cry:* Whenever Lysippe charges, she causes Fear. In addition, any unit charged suffers \-1 to their Weapon Skill and Ballistic Skill when being charged by her. This has no effect on models with Immunity (Fear).
  ],
)

#unit("LWAXANA",
  solo: true,
  subtitle: "Curse Witch of Blue Stumps",
  profiles: (
    (name: "Lwaxana", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 305),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic: "Lwaxana is a Level 4 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Death
- Shadow
  ],
  equipment: "Hand weapon",
  magic-items: (
    rule("Blue Nightshade Dagger")[Magic Weapon. All close combat attacks with this dagger have the Poisoned Attacks special rule. In addition, these attacks automatically Wound on a To Hit roll of 5+.],
    rule("Staff of Retribution")[Arcane Item. Bound Spell (Level 2, cast on 7+). The Staff of Retribution contains a *magic missile* with a range of 24" that causes D6 Strength 5 hits. Roll a D6 each time the Staff has been used. On a roll of a 1, the staff can no longer be used for the rest of the battle.],
    rule("Voodoo Dolls")[Enchanted Item. Instead of attacking normally, the bearer may nominate a single enemy model in base contact and make a To Hit roll. If successful, that model is marked. At the start of each of the bearer’s Magic phases, the marked model must take a Strength test. If failed, it suffers D3 Wounds with no saves of any kind allowed.],
    rule("Amulet of the Great Toad")[Talisman. Any spell cast at the wearer of this Amulet or any unit they are with is automatically dispelled on a 4+. Roll before making any normal dispel attempt.],
  ),
  special-rules: "Forest Strider, Guerrilla Warfare, Sacrificial Hunt",
  order: ("troop-type", "base-size", "magic", "equipment", "magic-items", "special-rules"),
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
