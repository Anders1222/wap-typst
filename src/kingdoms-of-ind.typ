// Kingdoms of Ind 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "kingdoms-of-ind",
  army: "Kingdoms of Ind",
  version: "3.0",
  layout: "army",
  cover: "covers/kingdoms-of-ind.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Kingdoms of Ind 3.0")

#cover(
  title: "Kingdoms of Ind",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/kingdoms-of-ind.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Kingdoms of Ind*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a Kingdoms of Ind army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Kingdoms of Ind units, and these are detailed here.

#namecost("DEVA", "")

Models with this special rule have the Fear, Independent, Magical Attacks, Magical Ward (5+) and Unbreakable special rules.

If a unit of Devas loses a round of close combat it must take an Instability test. This works like a normal Break test, except that for every point they fail the test by, the unit suffers one additional Wound with no saves allowed. The Instability test can be tested on unmodified Leadership if the unit is Stubborn or Steadfast as normal.

#namecost("KARMA", "")

A unit with this special rule can benefit from either Good Karma or Bad Karma depending on their actions during the game. If a unit has Good Karma and receives Bad Karma or vice versa, the effects cancel each other out.

- *Good Karma:* If the unit successfully destroys, breaks or panics an enemy unit, all models in it may re-roll 1's To Hit and To Wound in close combat and with missile weapons until they suffer Bad Karma.

- *Bad Karma:* If the unit breaks from combat or flees as a result of a Panic test, all models in it must re-roll 6's To Hit and To Wound in close combat and with missile weapons until they gain Good Karma.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Kingdoms of Ind. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("MACE OF GODLY MIGHT", 60)[The wielder of this weapon gains +2 Strength. Roll a D6 for each initial Attack that Hits. On a 4+, it causes another Hit.]

#magic-weapon("DIVINE THUNDERBOLT", 40, type: "Javelins")[This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "6", "Lightning Attacks, Multiple Shots (D3)"))
]

#magic-weapon("FLAIL OF THE DEATH GODDESS", 40)[The wielder of this weapon gains +1 Strength as well as the Armour Piercing (1), Mighty Blow (1) and Poisoned Attacks special rules.]

#magic-weapon("THE PRIMORDIAL SWORD", 40)[The wielder of this weapon gains +1 To Hit and +1 To Wound, as well as Flaming Attacks. If they roll a natural 6 when rolling To Wound, the attack is done with the Multiple Wounds (D3) special rule.]

#magic-weapon("TRIDENT OF DESTRUCTION", 40, type: "Polearm")[All attacks made with this weapon gain the Heroic Killing Blow special rule.]

#magic-weapon("GAUNTLETS OF THE FIRE LORD", 30, type: "Two hand weapons")[Every time the wielder inflicts a Hit or makes a Parry save in close combat, they inflict an additional automatic Strength 4 Hit with the Flaming Attacks special rule against the enemy. In addition, the wearer gains the Immunity (Flaming Attacks) special rule.]

#magic-weapon("MAHAKALI'S BOW", 25, type: "Longbow")[This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "5", "Multiple Wounds (D3), Ignores Armour saves"))

However, before using it, the wielder must pass a Leadership test or suffer 1 Wound which Ignores Armour Saves instead of being able to shoot with it.
]

#magic-weapon("SHESHA BLADE", 25)[The wielder of this weapon gain +D3 Attacks and the Poisoned Attacks special rule.]

#magic-weapon("SPEAR OF VICTORY", 25, type: "Light lance/spear")[Attacks made with this weapon have the Armor Piercing (1) special rule, and will always wound on a roll of 3+, unless they would normally need a lower result. Against models from armies belonging to the Forces of Destruction, it wounds automatically instead.]
]

#magic-item-section("armour")[
#magic-armour("THE KAVACHA", 50, type: "Light armour")[The Kavacha gives the wearer a 2+ armour save, which may be re-rolled. This save cannot be improved by any means.]

#magic-armour("KARKADANN ARMOUR", 30, type: "Medium armour")[The wearer gains +1 Toughness and the Immunity (Poisoned Attacks) special rule.]

#magic-armour("ELEPHANT BREASTPLATE", 25, only: "Model on foot", type: "Light armour")[The wearer gains the Impact Hits (D3) and Natural Armour (5+) special rules. In addition, they can reroll failed To Wound rolls with their Impact Hits.]

#magic-armour("PADMA ARMOUR", 30, type: "Medium armour")[The wearer can ignore one unsaved Wound per phase by passing a Leadership test using their own unmodified Leadership.]

#magic-armour("THE CELESTIAL DIADEM", 20)[The wearer gains a 6+ armour save. In addition, they gain a Magical Ward (4+) against missile attacks.]

#magic-armour("SRIVATSA SHIELD", 15, type: "Shield")[The wielder starts the game with Good Karma.]
]

#magic-item-section("talisman")[
#talisman("ASHWATHAMA'S GEM", 50, only: "Infantry or Cavalry")[The wearer gains a Magical Ward (4+) and the Unbreakable special rule. However, they start the game with Bad Karma.]

#talisman("GARLAND OF VICTORY", 30)[The wearer ignores the first unsaved Wound they suffer. In addition, they add +1 to their Combat resolution.]

#talisman("CROWN OF SHAMBHALA", 25)[The wearer gains a Magical Ward (6+). In addition, they may re-roll one failed To Hit, To Wound, Armour or Ward Save roll in each phase.]

#talisman("MAKARA EARRING", 20)[The wearer gains the Aquatic, Magical Ward (6+) and Magic Resistance (2) special rules.]

#talisman("THE STAR JEWEL", 25)[The wearer gains the Dodge (5+) special rule, and automatically passed Characteristic tests.]

#talisman("NECKLACE OF SKULLS", 10)[The wearer gains the Immunity (Killing Blow, Multiple Wounds) special rule.]
]

#magic-item-section("arcane")[
#arcane-item("THE SUN JEWEL", 40)[The bearer gains a +1 casting and dispelling bonus. If they have Good Karma and Miscast, they may ignore the roll on the miscast table on a D6 roll of 4+. However, if they have Bad Karma, they will Miscast on any roll of any double, instead of just double 1's.]

#arcane-item("THE WISH GEM", 40, bound: true)[Choose one spell from any of the eight Winds of Magic and roll a D3. If the roll is higher than the Spell Level (Signature Spells counts as Level 1), it is automatically cast with a power level equal to the normal casting value of the spell, no power dice are required.]

#arcane-item("STAFF OF BRAHAMBHU", 35, bound: (level: 3, cast: "11+"))[This item contains a *magic missile* with a range of 24" that causes 2D6 Strength 5 Hits with the Flaming Attacks special rule.]

#arcane-item("ORB OF THE DEVA", 30, one-use: true)[This item may be used before casting a spell. If successfully cast, the spell cannot be dispelled. However, if the spell does not reach its minimum casting value, the spell counts as a Miscast.]

#arcane-item("SKULL-CUP OF TRANSCENDENCE", 30)[Before each attempt to cast a spell, the bearer may take a Leadership test using their own unmodified characteristic. If passed, they gain a +1 casting bonus this turn until they fail to cast a spell or their casting attempt is dispelled. The bonus is cumulative.]
]

#magic-item-section("enchanted")[
#enchanted-item("NECTAR OF THE GODS", 50, one-use: true)[This item may be used at the start of any phase. When used, the bearer regains all lost Wounds and gains the Regeneration (4+) special rule until the start of your next turn.]

#enchanted-item("MASK OF GOOD FORTUNE", 40)[The wearer of this mask may re-roll failed rolls of 1 when rolling To Hit, To Wound, and when taking armour saves and invulnerable saves.]

#enchanted-item("BLESSED ANKUSHA", 20, only: "Model on Royal Elephant")[The bearer gains the Cold-Blooded special rule when taking Stampede tests, and can reroll 1's when determining the number of Impact Hits.]

#enchanted-item("SHANKHA SHELL HORN", 20, one-use: true)[The bearer may use this item at the beginning of your Close Combat phase. For the remainder of the turn, all friendly units within 12" of the bearer gains the Devastating Charge special rule.]

#enchanted-item("PARIJATA WREATH", 10)[The bearer's characteristics (except Leadership) can never be lowered from their starting value during the course of the game.]

#enchanted-item("PRAYER BEADS", 10, only: "Sadhu")[The bearer of this item gain +1 Leadership when using Prayers of the Deva.]
]

#magic-item-section("standard")[
#magic-standard("HOLY STANDARD OF THE DEVAS", 75)[All models in the unit carrying this banner gain a Magical Ward (5+) and the Stubborn special rule.]

#magic-standard("STANDARD OF DIVINE INCANDESCENCE", 45)[Enemies suffer \-1 To Hit with missile weapons against the unit carrying this magic standard. In addition, all models in base contact with the standard suffer a Strength 4 Hit with the Flaming Attacks and Magical Attacks special rules at the beginning of each Close Combat phase. This is increased to Strength 5 against Daemons, Undead and Vampires.]

#magic-standard("MARUTVANT BANNER", 15)[Whenever a model in the unit carrying this standard rolls a natural 6 To Wound, that Attack has the Lightning Attacks special rule.]

#magic-standard("PENNANT OF ENDURING KARMA", 10)[When the unit carrying this magic standard receives Bad Karma, roll a D6; on a 2+, the the Bad Karma is ignored.]

#magic-standard("TOTEM OF BRAHAMBHU", 10)[Enemies do not receive any combat resolution bonuses for attacking the flanks or rear of the unit carrying this standard.]
]

= CHARACTERS

#unit("RAJAHS",
  first: true,
  profiles: (
    (name: "Maharajah", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 90),
    (name: "Rajah", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Karma",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Throwing weapons +5 points
  - Javelins +6 points
  - Longbow +6 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Thronebearers +25 points
  - Royal Chariot (replacing one of the crew) +70 points
  - Vimana Chariot (replacing one of the crew) +100 points
  - Royal Elephant +115 points
- One Rajah may carry the Battle Standard +25 points
- A Rajah may take Magic Items up to a total of 50 points
- A Maharajah may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("MANTRIKS",
  profiles: (
    (name: "Mantrik Lord", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
    (name: "Mantrik", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Mantrik is a Level 1 Wizard. A Mantrik Lord is a Level 3 Wizard. They use one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Death
- Heavens
- Fire
- Light
- Life
- Metal
- Shadow
  ],
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on a Warhorse +15 points
- A Mantrik may take Magic Items up to a total of 50 points
- A Mantrik Lord may take Magic Items up to a total of 100 points
  ],
  special-rules: "Karma",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("SADHU",
  profiles: (
    (name: "Sadhu", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 0, ld: 7, points: 70),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Karma, Magic Resistance (1)",
  special-rules-body: [
- *Tantric Discipline:* The model and any unit they are currently in have the Cold-blooded and Disciplined special rules.
- *Pacifist:* A Sadhu may be placed in the second rank of any Infantry unit they join, rather than the first.
- *Prayers of the Deva:* A model with this special rule knows the three Prayers listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. A friendly unit can only be under the effect of one Prayer at a time.
  - *Wrath of Shidra:* The model and any unit they are with gain the Hatred special rule until the start of your next turn.
  - *Shield of Vishyana:* The model and any unit they are with gain the Magical Ward (6+) special rule until the start of your next turn.
  - *Creation of Brahambhu:* The model's unit gain D3 Wounds worth of models slain earlier in the battle, just like a summoning spell.
  ],
  options: [
- May take Magic Items up to a total of 50 points
  ],
)

#unit("VISHKANYA",
  profiles: (
    (name: "Vishkanya", m: 5, ws: 7, bs: 5, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 95),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  special-rules: "Dodge (5+), Hidden, Karma, Natural Armour (6+), Poisoned Attacks, Scouts",
  special-rules-body: (
    rule("Poisoned Blood")[Roll a D6 whenever the Vishkanya loses a Wound in Close Combat. On a 6, the model who inflicted the Wound suffers a Wound themselves.],
  ),
  options: [
- May take Magic Items up to a total of 50 points
  ],
)

#unit("BEASTMASTER",
  profiles: (
    (name: "Beastmaster", m: 5, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: 30),
    (name: "Tiger", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: 20),
  ),
  troop-type: "Infantry (Character, Human), War Beast (Feline)",
  base-size: "20x20 or 25x25 (Beastmaster), 25x50 or 30x60 (Tiger)",
  equipment: "Hand weapon",
  special-rules: "Karma, Independent, Mixed Unit, Mighty Blow (1) (Tiger only), Forest Strider",
  special-rules-body: (
    rule("Beastmaster")[Any friendly War Beast, Monstrous Beast, Monstrous Cavalry or Monster (except Devas) within 6" of a Beastmaster may re-roll failed Leadership tests and gain the Stubborn special rule.],
  ),
  options: [
- May take an additional hand weapon +2 points
- May choose one of the following:
  - Bow +4 points
  - Throwing weapons +4 points
  - Javelins +5 points
- May be mounted on a Bengal Tiger +50 points
- May take Magic Items up to a total of 25 points
  ],
  notes: [
- A Beastmaster may be accompanied by up to a total of 5 Tigers.
- A Beastmaster may never be the Army General.
  ],
)

#unit("AVATAR OF BRAHAMBHU",
  profiles: (
    (name: "Avatar of Brahambhu", m: 6, ws: 5, bs: 5, s: 6, t: 6, w: 5, i: 6, a: 4, ld: 9, points: 350),
  ),
  troop-type: "Monster (Character, Deva)",
  base-size: "50x50",
  equipment: "Hand weapon",
  magic: "An Avatar of Brahambhu is a Level 2 Wizard who uses the Lore of Life.",
  options: [
- May be upgraded to one of the following:
  - Level 3 Wizard +35 points
  - Level 4 Wizard +70 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Deva",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("AVATAR OF VISHYANA",
  profiles: (
    (name: "Avatar of Vishyana", m: 6, ws: 7, bs: 6, s: 6, t: 6, w: 6, i: 6, a: 5, ld: 9, points: 365),
  ),
  troop-type: "Monster (Character, Deva)",
  base-size: "50x50",
  equipment: "Hand weapon",
  magic: "An Avatar of Vishyana is a Level 1 Wizard who uses the Lore of Light.",
  options: [
- May take an additional Wizard Level +35 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Deva",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("AVATAR OF SHIDRA",
  profiles: (
    (name: "Avatar of Shidra", m: 8, ws: 9, bs: 6, s: 6, t: 6, w: 5, i: 9, a: 6, ld: 9, points: 365),
  ),
  troop-type: "Monster (Character, Deva)",
  base-size: "50x50",
  equipment: "Hand weapon",
  magic: "An Avatar of Shidra is a Level 1 Wizard who uses the Lore of Fire.",
  options: [
- May take an additional Wizard Level +35 points
- May take Magic Items up to a total of 100 points
  ],
  special-rules: "Deva",
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

= CHARACTER MOUNTS

#unit("WARHORSE",
  first: true,
  profiles: (
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
  options: [
- May take barding +5 points
  ],
)

#unit("THRONEBEARERS",
  profiles: (
    (name: "Thronebearers", m: 4, ws: 4, bs: 3, s: 4, t: "-", w: "-", i: 4, a: 4, ld: 8, points: "-"),
  ),
  troop-type: "Infantry (Human)",
  base-size: "40x40 or 50x50",
  special-rules: "Inspiring Presence (6)",
  notes: [
- Thronebearers have a Line of Sight value of 2 and add +4 to the model's Unit Strength.
  ],
)

#unit("BENGAL TIGER",
  compact: true,
  profiles: (
    (name: "Bengal Tiger", m: 9, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 5, points: "-"),
  ),
  troop-type: "Monstrous Beast (Feline)",
  base-size: "50x75",
  special-rules: "Mighty Blow (1), Forest Strider",
)

#unit("ROYAL ELEPHANT",
  profiles: (
    (name: "Royal Elephant", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 5, i: 2, a: 4, ld: 6, points: "-"),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Monstrous Creature (Elephantine)",
  crew: "1 (Human)",
  base-size: "50x75 or 50x100",
  equipment: "Light lance (Crew only)",
  special-rules: "Impact Hits (D3+1), Natural Armour (5+), Karma (Crew only)",
  special-rules-body: (
    rule("Stampede")[If a War Elephant suffers a wound from a missile attack, it must immediately take a Panic test. Any time a War Elephant fails a Panic or Break test it will Flee in a random direction, as determined by the Scatter dice. If it flees through any unit, it inflicts D6+1 Strength 5 hits.],
  ),
  upgrades: (
    rule("Mahout Expert")[The War Elephant may re-roll failed Stampede tests.],
    rule("Spike Chain")[The War Elephant gains the Impact Hits (D6+1) special rule.],
    rule("Spiked Tusks")[The War Elephant gains +1 Strength to its Attacks.],
  ),
  options: [
- May choose one of the following:
  - Shortbows +1 point/Crew
  - Longbows +1 point/Crew
  - Javelins +2 points/Crew
- May take up to two extra Crew +5 points/Crew
- May take barding +10 points
- May take Mahout Expert +10 points
- May take Spike Chains +15 points
- May take Spiked Tusks +15 points
  ],
)

= CORE UNITS

#unit("WARRIORS",
  first: true,
  profiles: (
    (name: "Warrior", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 3.5),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, buckler",
  special-rules: "Karma",
  options: [
- May choose one of the following:
  - Replace bucklers with additional hand weapons +0.5 point/model
  - Spears +0.5 point/model
  - Replace bucklers with great weapons +2.5 points/model
- May replace bucklers with shields +0.5 point/model
- May take light armour +0.5 point/model
- May upgrade one Warrior to a Leader +5 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ARCHERS",
  profiles: (
    (name: "Archer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 7),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, longbow",
  special-rules: "Karma",
  options: [
- May take bucklers +0.5 point/model
- May upgrade one Archer to a Leader +5 points
- May upgrade one Archer to a Musician +5 points
- May upgrade one Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("SEPOYS",
  profiles: (
    (name: "Sepoy", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, handgun",
  special-rules: "Karma",
  options: [
- May upgrade one Sepoy to a Leader +5 points
- May upgrade one Sepoy to a Musician +5 points
- May upgrade one Sepoy to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("URUMI SWORDSMEN",
  profiles: (
    (name: "Urumi Swordsman", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Urumi sword",
  equipment-body: (
    rule("Urumi Sword")[Hand weapon. A model using an Urimi Sword gain +2 Attacks but suffer \-1 to their Strength.],
  ),
  special-rules: "Karma, Skirmishers",
  options: [
- May take bucklers +0.5 point/model
- May upgrade one Urumi Swordsman to a Leader +5 points
  ],
)

#unit("SKIRMISHERS",
  profiles: (
    (name: "Skirmisher", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, throwing weapons",
  special-rules: "Karma, Skirmishers",
  options: [
- May replace throwing weapons one of the following:
  - Javelins +1 point/model
  - Shortbows +1 point/model
  - Slings +1 point/model
- May choose one of the following (javelins only):
  - Bucklers +0.5 point/model
  - Shields +1 point/model
- May upgrade one Skirmisher to a Leader +5 points
- May upgrade one Skirmisher to a Musician +5 points
  ],
)

#unit("PINDARIS",
  profiles: (
    (name: "Pindari", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 11),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, buckler",
  special-rules: "Fast Cavalry, Karma",
  options: [
- May choose one of the following:
  - Replace buckler with shortbows +0.5 point/model
  - Light lances +1 point/model
  - Javelins +2 points/model
- May replace bucklers with shields +0.5 point/model
- May upgrade one Pindari to a Leader +5 points
- May upgrade one Pindari to a Musician +5 points
- May upgrade one Pindari to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("SOWARS",
  profiles: (
    (name: "Sowar", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 12),
    (name: "Camel", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Camel (Camelid)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, buckler",
  special-rules: "Fast Cavalry, Karma",
  special-rules-body: (
    rule("Scare Horses")[Models with this special rule have the Fear special rule when fighting Equines.],
  ),
  options: [
- May choose one of the following:
  - Replace shields with shortbows free
  - Light lances +1 point/model
  - Javelins +2 points/model
- May replace bucklers with shields +0.5 point/model
- May take light armour +1 point/model
- May upgrade one Sowar to a Leader +5 points
- May upgrade one Sowar to a Musician +5 points
- May upgrade one Sowar to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("RAJPUTS",
  profiles: (
    (name: "Rajput", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 15),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, medium armour, buckler",
  special-rules: "Fast Cavalry, Karma",
  options: [
- May choose one of the following:
  - Light lances +1 point/model
  - Replace buckler with flails +1.5 points/model
- May replace bucklers with shields +0.5 point/model
- May upgrade one Rajput to a Leader +5 points
- May upgrade one Rajput to a Musician +5 points
- May upgrade one Rajput to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SNAKE SWARMS",
  profiles: (
    (name: "Snake Swarm", m: 4, ws: 3, bs: 0, s: 2, t: 2, w: 6, i: 1, a: 6, ld: 3, points: 35),
    (name: "Snake Charmer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Ophidian)",
  handler: "1 Snake Charmer (Human)",
  special-rules: "Cold-blooded, Poisoned Attacks, Mixed Unit",
  special-rules-body: (
    rule("Snake Charmer")[You must include one Snake Charmer for every 3 Snake Swarms. Each Snake Charmer can only control 3 Snake Swarms each. If a Snake Charmer is killed, the Snake Swarms he controlled are automatically removed as casualties as soon as the unit is out of close combat.],
  ),
)

= SPECIAL UNITS

#unit("MAIDEN GUARD",
  first: true,
  profiles: (
    (name: "Maiden Guard", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 7),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, buckler",
  special-rules: "Karma, Stubborn",
  options: [
- May choose one of the following:
  - Spears +0.5 point/model
  - Replace bucklers with polearms +1.5 points/model
- May replace bucklers with shields +0.5 point/model
- May take light armour +0.5 point/model
- May upgrade one Maiden Guard to a Leader +5 points
- May upgrade one Maiden Guard to a Musician +5 points
- May upgrade one Maiden Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("ETERNALS",
  profiles: (
    (name: "Eternals", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 13),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, medium armour",
  special-rules: "Immunity (Psychology), Karma, Magical Attacks, Magic Resistance (1)",
  options: [
- May upgrade one Eternal to a Leader +5 points
- May upgrade one Eternal to a Musician +5 points
- May upgrade one Eternal to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("ZAMBURAKS",
  profiles: (
    (name: "Zamburak", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 15),
    (name: "Camel", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Camel (Camelid)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, shaturnal",
  equipment-body: [
- *Shaturnal:* Shaturnals have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "Ponderous"))
  ],
  special-rules: "Fast Cavalry, Karma",
  special-rules-body: (
    rule("Scare Horses")[Models with this special rule have the Fear special rule when fighting Equines.],
  ),
  options: [
- May upgrade one Zamburak to a Leader +5 points
- May upgrade one Zamburak to a Musician +5 points
- May upgrade one Zamburak to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ROYAL CHARIOT",
  profiles: (
    (name: "Royal Chariot", m: 7, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 70),
    (name: "Charioteer", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 8, points: ""),
    (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "1-3",
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 (Human)",
  drawn-by: "2 Warhorses (Equine)",
  base-size: "50x100 or 60x100",
  equipment: "Light lance, bow",
  special-rules: "Karma",
  options: [
- May replace bows with javelins +free
- May take light armour +4 points/model
- May take up to three additional Crew +6 points/Crew
- May take two additional Warhorses +6 points
- May upgrade one Royal Chariot to a standard bearer +10 points
  ],
)

#unit("BENGAL RIDERS",
  profiles: (
    (name: "Bengal Rider", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 36),
    (name: "Bengal Tiger", m: 9, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: "-", points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Human)",
  mount: "Bengal Tiger (Feline)",
  base-size: "50x75",
  equipment: "Hand weapon",
  special-rules: "Forest Strider, Karma, Loner, Mighty Blow (1) (Bengal Tiger only)",
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Light lances +1 point/model
  - Great weapons +3 points/model
- May upgrade one Bengal Rider to a Leader +5 points
- May upgrade one Bengal Rider to a Musician +5 points
- May upgrade one Bengal Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("WAR ELEPHANT",
  profiles: (
    (name: "War Elephant", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 4, ld: 6, points: 100),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  ),
  unit-size: "1-3",
  troop-type: "Monstrous Creature (Elephantine)",
  crew: "3 (Human)",
  base-size: "50x75 or 50x100",
  equipment: "Light lance (Crew only)",
  equipment-body: [
- *Giant Bow:* Instead of firing another missile weapon in the Shooting phase, one of the crew may fire the giant bow. Giant bows are bolt throwers with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("28/42\"", "5", "Cumbersome, Multiple Wounds (D3)"))

- *Jingal:* Instead of firing another missile weapon in the Shooting phase, one of the crew may fire the jingal. Jingals are cannons with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/48\"", "7", "Cumbersome, Multiple Wounds (D3)"))

If a Misfire is rolled, the War Elephant suffers D3 Wounds which Ignores Armour Saves.
  ],
  special-rules: "Impact Hits (D3), Karma, Natural Armour (5+)",
  special-rules-body: (
    rule("Stampede")[If a War Elephant suffers a wound from a missile attack, it must immediately take a Panic test. Any time a War Elephant fails a Panic or Break test it will Flee in a random direction, as determined by the Scatter dice. If it flees through any unit, it inflicts D6+1 Strength 5 hits.],
  ),
  upgrades: (
    rule("Mahout Expert")[The War Elephant may re-roll failed Stampede tests.],
    rule("Spike Chain")[The War Elephant gains the Impact Hits (D6) special rule.],
    rule("Spiked Tusks")[The War Elephant gains +1 Strength to its Attacks.],
  ),
  options: [
- May choose one of the following:
  - Shortbows +1 point/Crew
  - Longbows +1 point/Crew
  - Javelins +2 points/Crew
- May take one additional Crew +5 points/model
- May choose one of the following:
  - Giant bow +20 points/model
  - Jingal +30 points/model
- May take light armour +10 points/model
- May take barding +5 points/model
- May take Mahout Expert +10 points/model
- May take Spike Chains +15 points/model
- May take Spiked Tusks +15 points/model
  ],
)

#unit("RAKSHASHAS",
  profiles: (
    (name: "Rakshasa", m: 6, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 4, a: 1, ld: 7, points: 11),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Beastman)",
  base-size: "25x25 or 30x30",
  equipment: "Two hand weapons",
  special-rules: "Ambushers, Forest Striders, Hatred, Independent, Skirmishers",
  options: [
- May replace hand weapons with great weapons +2 points/model
- May upgrade one Rakshasa to a Leader +5 points
- May upgrade one Rakshasa to a Musician +5 points
  ],
)

#unit("VANARAS",
  profiles: (
    (name: "Vanara", m: 5, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 6, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Beastman)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  special-rules: "Dodge (6+), Forest Strider, Independent, Obstacle Strider, Scouts, Skirmishers",
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Blowpipes +3 points/model
- May upgrade one Vanara to a Leader +5 points
- May upgrade one Vanara to a Musician +5 points
  ],
)

#unit("GARUDAS",
  profiles: (
    (name: "Garuda", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 2, ld: 7, points: 11),
  ),
  unit-size: "5+",
  troop-type: "Infantry (Beastman)",
  base-size: "25x25 or 30x30",
  equipment: "Two hand weapons",
  special-rules: "Fly (10), Independent",
  options: [
- May take bows +2 points/model
- May upgrade one Garuda to a Leader +5 points
  ],
)

#unit("GANESHAS",
  profiles: (
    (name: "Ganesha", m: 6, ws: 4, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 8, points: 36),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Beastman)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Impact Hits (1), Independent, Natural Armour (5+)",
  options: [
- May choose one of the following:
  - Additional hand weapons +3 point/model
  - Shields +3 points/model
  - Great weapons +9 points/model
- May upgrade one Ganesha to a Leader +5 points
- May upgrade one Ganesha to a Musician +5 points
- May upgrade one Ganesha to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("NAGAS",
  profiles: (
    (name: "Naga", m: 7, ws: 4, bs: 4, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 8, points: 40),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Beast (Beastman)",
  base-size: "50x50 or 50x75",
  equipment: "Two hand weapons",
  special-rules: "Aquatic, Loner, Poisoned Attacks, Natural Armour (6+)",
  options: [
- May take great bows +10 points/model
- May upgrade one Naga to a Leader +5 points
  ],
)

#unit("KALARATRIS",
  profiles: (
    (name: "Kalaratri", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 3, ld: 7, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Deva)",
  base-size: "25x25 or 30x30",
  equipment: "Two hand weapons",
  special-rules: "Deva",
  options: [
- May upgrade one Kalaratri to a Leader +5 points
- May upgrade one Kalaratri to a Musician +5 points
- May upgrade one Kalaratri to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("MARUTS",
  profiles: (
    (name: "Marut", m: 4, ws: 4, bs: 0, s: 4, t: 4, w: 1, i: 1, a: 1, ld: 7, points: 14),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Deva)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon, medium armour, shield",
  special-rules: "Deva, Lightning Attacks",
  options: [
- May upgrade one Marut to a Leader +5 points
- May upgrade one Marut to a Musician +5 points
- May upgrade one Marut to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

= RARE UNITS

#unit("GREAT CANNON",
  first: true,
  profiles: (
    (name: "Great Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Great Cannon), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, great cannon",
  options: [
- May take an additional Crew +5 points
  ],
)

#unit("WAR ROCKET",
  profiles: (
    (name: "War Rocket", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (War Rocket), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, rocket launcher",
  options: [
- May take an additional Crew +5 points
  ],
)

#unit("TEMPLE CHARIOT",
  profiles: (
    (name: "Temple Chariot", m: 4, ws: "-", bs: "-", s: 6, t: 6, w: 10, i: "-", a: "-", ld: "-", points: 200),
  ),
  troop-type: "Shrine (Armour Save 5+)",
  base-size: "50x100 or 60x100",
  special-rules: (
    rule("Totem of the Devas")[A Temple Chariot has a Magical Ward (5+). For each friendly Temple Chariot on the battlefield at the start of your magic phase, add 1 dice to your power pool. In addition, any unit joined by a Temple Chariot gains the Unbreakable special rule.],
    rule("Unstoppable Force")[A Temple Chariot inflicts D6 Impact Hits at the start of each round of close combat.],
  ),
  notes: [
- A Temple Chariot has a Line of Sight value of 5.
  ],
)

#unit("VIMANA CHARIOT",
  profiles: (
    (name: "Vimana Chariot", m: "-", ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 100),
    (name: "Charioteer", m: "-", ws: 4, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 8, points: ""),
  ),
  troop-type: "Chariot (Armour Save 5+)",
  crew: "3 (Human)",
  base-size: "50x100 or 60x100",
  equipment: "Light lance, bow, light armour",
  equipment-body: [
- *Giant Bow:* Instead of firing another missile weapon in the Shooting phase, one of the crew may fire the giant bow. Giant bows are bolt throwers with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("28/42\"", "5", "Cumbersome, Multiple Wounds (D3)"))
  ],
  special-rules: "Fly (7), Karma",
  options: [
- May take a giant bow +20 points
  ],
)

#unit("YAKSHAS",
  profiles: (
    (name: "Yaksha", m: 6, ws: 4, bs: 2, s: 5, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 50),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Deva)",
  base-size: "40x40 or 50x50",
  equipment: "Great weapon, light armour",
  special-rules: "Deva",
  options: [
- May upgrade one Yaksha to a Leader +5 points
- May upgrade one Yaksha to a Musician +5 points
- May upgrade one Yaksha to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("MAKARA",
  compact: true,
  profiles: (
    (name: "Makara", m: 6, ws: 4, bs: 0, s: 6, t: 5, w: 5, i: 3, a: 5, ld: 7, points: 175),
  ),
  troop-type: "Monster (Chimeric)",
  base-size: "50x100 or 60x100",
  special-rules: "Aquatic, Multiple Wounds (D3), Natural Armour (4+)",
)

#unit("YALI",
  compact: true,
  profiles: (
    (name: "Yali", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 4, ld: 7, points: 185),
  ),
  troop-type: "Monster (Chimeric)",
  base-size: "50x100 or 60x100",
  special-rules: "Immunity (Psychology), Impact Hits (D6), Natural Armour (5+), Stubborn",
)

#unit("SHESHA",
  profiles: (
    (name: "Shesha", m: 6, ws: 4, bs: 3, s: 5, t: 5, w: 5, i: 4, a: 7, ld: 7, points: 210),
  ),
  troop-type: "Monster (Ophidian)",
  base-size: "50x100, 60x100, 100x100",
  special-rules: "Cold-Blooded, Natural Armour (4+), Poisoned Attacks",
  special-rules-body: [
- *Spit Poison:* Spit Poison has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "3", "Multiple Shots (5), Poisoned Attacks, Rapid Fire"))
  ],
)

= SPECIAL CHARACTERS

#unit("DARAHMA",
  solo: true,
  first: true,
  subtitle: "God-Hero of Ind",
  profiles: (
    (name: "Darahma", m: 4, ws: 6, bs: 6, s: 5, t: 5, w: 3, i: 6, a: 4, ld: 9, points: 300),
  ),
  troop-type: "Infantry (Special Character, Deva)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: [
- *Kodandam:* Magic Weapon. Kodandam has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "5", "Flaming Attacks, Multiple Shots (4)"))

Roll a D6 for each initial unsaved Wound caused. On a 5+, the target takes another D6 Strength 4 hits.

- *The Brahmastra Arrow:* Enchanted Item. One use only. When fired, this arrow automatically Hits. Place the large template with the hole centred on the target model. Any model under the template takes a Strength 6 Hit with the Multiple Wounds (D3) rule.
  ],
  special-rules: "Deva",
  options: [
- May be mounted on a Royal Chariot (replacing one of the crew) +70 points
  ],
)

#unit("KARISHNA",
  solo: true,
  subtitle: "The Current Avatara",
  profiles: (
    (name: "Karishna", m: 4, ws: 7, bs: 6, s: 5, t: 5, w: 3, i: 7, a: 4, ld: 9, points: 290),
  ),
  troop-type: "Infantry (Special Character, Deva)",
  base-size: "20x20 or 25x25",
  magic: "Karishna is a Level 2 Wizard who uses spells from the Lore of Light.",
  equipment: "Hand weapon, light armour",
  magic-items: [
- *Sudarshana Chakram*: Sudarshana Chakram has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/18\"", "3", "Armour Piercing (1), Quick Shot"))

If the attack hits, place the 3" template over the target model. Roll a D6 and the Scatter dice to determine in which direction Sudarshana Chakram moves. Any model passed over by the template suffers a hit.
  ],
  special-rules: "Deva",
  options: [
- May be mounted on a Royal Chariot (replacing one of the crew) +70 points
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "magic-items", "special-rules", "options"),
)

#unit("URJANA",
  solo: true,
  subtitle: "Master of the Bow",
  profiles: (
    (name: "Urjana", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 160),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: [
- *Gandvia:* Magic Weapon. Gandvia has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "4", "Flaming Attacks, Killing Blow"))

- *Kaustubha:* Talisman. Any Close Combat attack targeted against the wearer will only ever hit him on the roll of a natural 6.
  ],
  special-rules: "Karma, Sniper",
  options: [
- May be mounted on a Royal Chariot (replacing one of the crew) +70 points
  ],
)

#unit("PARASHURUMA",
  solo: true,
  subtitle: "The Holy Slayer",
  profiles: (
    (name: "Parashuruma", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 190),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Parashu of Shidra")[Magic Weapon. This weapon gives the wielder +2 Strength. In addition, they gain the Killing Blow special rule, which takes effect on a 5+ rather than a 6+.],
    rule("Pinaka")[Longbow. Shots fired from this bow automatically hit and ignore Dodge saves.],
  ),
  special-rules: "Hatred, Immunity (Psychology), Karma, Regeneration (4+)",
  special-rules-body: (
    rule("Head-taker")[Each time a model is slain by a Killing Blow, Parashuruma gains an additional +1 Combat Resolution bonus.],
  ),
)

#unit("MHOGLI",
  solo: true,
  subtitle: "The Beastmaster",
  profiles: (
    (name: "Mhogli", m: 5, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 220),
    (name: "Sher Khana", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 7, points: ""),
  ),
  troop-type: "Monstrous Cavalry (Special Character, Human)",
  base-size: "50x75",
  magic-items: (
    rule("Beast's Bane")[Magic Weapon. Light lance. All attacks made by this weapon have the Armour Piercing (1) and Multiple Wounds (D6) special rules.],
    rule("Helmet of the Dark Beast")[Magic Armour. This helmet gives the wearer a 6+ armour save. Enemies must re- roll successful Panic, Fear and Terror tests caused by the wearer.],
  ),
  special-rules: "Beastmaster (see Beastmasters), Karma, Independent, Terror",
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
