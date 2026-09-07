// Estalia 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "estalia",
  army: "Estalia",
  version: "3.0",
  layout: "army",
  cover: "covers/estalia.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Estalia 3.0")

#cover(
  title: "Estalia",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/estalia.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Estalia*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in an Estalian army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Estalian units, and these are detailed here.

#namecost("COUNTERMARCH FIRE", "")

Models with this rule in the front rank of a unit ignore the Ponderous special rule (or treat Move and Fire as Ponderous instead) if they have another friendly model with the same special rule in base contact behind them.

#namecost("TACTICAL SUPREMACY", "")

All models with this rule have the Disciplined special rule.

If the unit is charged during the Movement phase and chooses Hold as a charge reaction, it can attempt to change formation immediately before your opponent has moved any of their charging units, as long as it is not already engaged in close combat. To do so, the unit must take pass Leadership test – if successful, the unit can immediately make a swift reform as described in the Warhammer Rulebook.

#namecost("TERCIO FORMATION", "")

A Tercio Formation consists of a mix of models armed with pikes/polearms, handguns/crossbows and bucklers. All models are treated as having the same equipment, though you should attempt to model the unit with appropriate equipment as much as possible.

All models in the front rank, both flanks and rear may fire in the Shooting phase, even if they have moved this turn. This means that models in the front arc can fire forward, models in the left flank fire to the left, models in the right flank fire to right and models in the rear rank fire to the rear. Each arc may choose to fire at different targets if they wish.

#diagram("/assets/figures/estalia/img-0128.png", 0.463)

All models in the unit's front rank fight using hand weapons and bucklers. The remaining models fight using pikes/polearms. All attacks against the unit's front are resolved against the models armed with hand weapon and bucklers.

#diagram("/assets/figures/estalia/img-0130.png", 0.385)

If the unit has not moved in the last turn it counts as having no flanks or rear for the purpose of Disruption and combat resolution. However, for every flank or rear arc they are engaged in, they suffer \-1 to their rank bonus.

#namecost("Support Fire", "")

Units of Crossbowmen, Arquebusiers and Musketeers within 3" of a unit of Tercios may lend them support fire if the Tercio is charged by passing a Leadership test (which may be re-rolled with a Leader). This works out like a normal Stand and Shoot reaction, except that they do not suffer \-1 To Hit for shooting at a charging enemy. In addition; if they choose to Flee as a charge reaction this does not cause Panic to friendly units.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Estalians. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("SPEAR OF RIGHTEOUSNESS", 55, only: "Priest of Myrmidia", type: "Light lance/spear")[At the start of each round of close combat, roll a D3; the wielder adds this number to their Weapon Skill, Strength, Attacks and Initiative characteristics until the end of the turn.]

#magic-weapon("STAFF OF TOMAS THE PURE", 50, only: "Priest of Myrmidia")[The Staff of Tomas the Pure has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "5", "Lightning Attacks, Multiple Shots (D3), Quick to Fire, Rapid Fire"))
]

#magic-weapon("WOLFSLAYER", 40)[All attacks made with Wolfslayer have the Heroic Killing Blow special rule. In addition, enemy models who are Hit by this sword must pass a Leadership test or suffer an additional automatic Wound. However, if the wielder of this sword flees for any reason, they suffer one Wound themself instead, with no saves allowed.]

#magic-weapon("BASILISK BLADE", 30)[Hits from this weapon automatically Wound with the Armour Piercing (1) special rule. However, if the wielder rolls a natural 1 To Hit, they suffer a Wound with the Armour Piercing (1) special rule themselves.]

#magic-weapon("FENCER'S BLADES", 30, type: "Two hand weapons")[The wielder has Weapon Skill 10.]

#magic-weapon("LANCE OF RECTITUDE", 25, type: "Heavy lance")[The wielder of this weapon can re-roll all failed rolls To Hit in close combat.]

#magic-weapon("SWORD OF THE VENDETTA", 25)[After deployment, but before the game starts, the wielder of the Sword of the Vendetta may choose one enemy character on the table. The wielder must always issue and accept challenges against this character if possible. The wielder of the sword Hits and Wounds the chosen enemy on a 2+ with the Ignores Armour saves special rule. If the target is killed by this weapon, the wielder suffers -D3 to their Strength and Toughness and the sword counts as a normal magical hand weapon for the remainder of the game.]

#magic-weapon("FIGUERA'S RAPIER", 25, only: "Maestro")[All attacks made with this weapon gain +1 To Hit and the Armour Piercing (1) special rule. In addition, no Parry saves can be taken against it.]

#magic-weapon("MACE OF SACRIFICE", 20, only: "Priest of Myrmidia")[The wielder gains +2 Strength. At the end of each close combat phase of which the wielder takes part, roll a D6; on a 6 the wielder suffers a wound which cannot be saved by any means.]

#magic-weapon("SWORD OF FORTITUDE", 20)[The character, and any unit they are with, gains the Immunity (Psychology) special rule.]

#magic-weapon("SWORD OF TALABARO", 20)[The wielder of this sword gains +1 to their Leadership and Attacks characteristics. However, if the wielder ever fails a Leadership test, these bonuses are lost.]

#magic-weapon("PISTOLS OF THE DUEL", 15, type: "Brace of pistols")[These pistols use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "5", "Armour Piercing (1), Multiple Shots (4), Quick Shot"))
]

#magic-weapon("RELIC SWORD", 10)[The wielder will always wound on a 3+, unless they would normally need a lower result.]
]

#magic-item-section("armour")[
#magic-armour("SHIELD OF HONOUR", 45, only: "Priest of Myrmidia", type: "Shield")[The bearer of this shield gains the Parry (5+) special rule. In addition, all enemy units in base contact suffer \-1 Weapon Skill.]

#magic-armour("CUIRASS OF THE BLAZING SUN", 40, type: "Heavy armour")[All attacks targeting the wearer of this suffer \-1 to Wound. In addition, the wearer gains the Immunity (Flaming Attacks) special rule.]

#magic-armour("SCINTILLATING SHIELD", 30, type: "Shield")[All attacks targeted at the bearer suffer \-1 To Hit. For every armour or Parry save that the bearer saves in close combat, one enemy Character or Lone Model (chosen by the bearer) in base contact suffers \-1 to their Weapon Skill until the end of the next combat phase. This effect is cumulative.]

#magic-armour("MORION OF THE EAGLE", 20, only: "Grand Commander or Captain")[This helmet gives the wielder a 6+ armour. In addition, they gain the Always Strikes First and Devastating Charge special rules in any turn that they charge.]

#magic-armour("SACRED ARMOUR OF PURITY", 20, type: "Medium armour")[This armour cannot be reduced below a 5+ save.]

#magic-armour("SHIELD OF THE WOLF RAMPANT", 20, type: "Shield")[The wielder has the Fear special rule. In addition, if the wielder rolls a natural 6 when making a Parry save, they inflict an extra Hit using their Strength characteristic back onto the model or unit that struck the blow.]
]

#magic-item-section("talisman")[
#talisman("AMULET OF DAWN", 45)[The bearer gains a Magical Ward save equal to the game turn +1. So, in the first turn of the game, they have a Magical Ward (2+), in the second turn a Magical Ward (3+) and so on. On turn 6, the item has no effect.]

#talisman("CUSTODIA OF SANCTUARY", 35, only: "Priest of Myrmidia", one-use: true)[This item may be used at the start of your turn as long as no enemy units are within 1". Until the start of your next turn, enemy units cannot move within 1" of the bearer or their unit – they are treated as impassable terrain. If the bearer or their unit moves within 1" of an enemy unit, the effect is lost.]

#talisman("AEGIS OF THE MAIDEN", 20)[Whenever the wielder of this item is removed as a casualty, they are immediately brought back to life in the same location with 1 Wound remaining.]

#talisman("CAPE OF VELACRUZ", 20)[War Beasts, Monstrous Infantry, Monstrous Beasts, Monstrous Creatures and Monsters must re-roll all successful rolls To Hit against the wearer of this cape. In addition, the wearer gains the Immunity (Impact Hits, Stomp) special rule.]

#talisman("RAT CATCHER'S CHARM", 15)[The bearer has the Immunity (Poisoned Attacks) and Regeneration (6+) special rules. In addition, the wearer causes Fear against Skaven.]
]

#magic-item-section("arcane")[
#arcane-item("LIVING DEADWOOD STAFF", 35, bound: (level: 2, cast: "8+"))[This item contains a special type of *aura* spell with a range of 18". Each wood within range may be moved up to 6" in any direction, as long as they stop within 1" of other terrain. In addition, any unit touched by a moving wood suffer D6 Strength 4 Hits.]

#arcane-item("STAFF OF ARCANE DRAINING", 30)[The bearer gains +1 bonus when channelling Dispel Dice. Additionally, for each natural 6 rolled when channelling Dispel Dice with the bearer, you may remove one Power Dice from the enemy’s Power Pool.]

#arcane-item("TEMPERANCE CRYSTAL", 25)[The bearer of this item may re-roll one Power Dice when casting spells once per Magic phase.]

#arcane-item("RING OF THE SANCTIONED THAUMATURGE", 10)[The Wizard may choose their spells from a combination of Lores of Magic available to them, but may only choose Level 1 spells.]

#arcane-item("THE GEM OF TARANTO", 10, one-use: true)[The Gem of Taranto can be used whenever you successfully dispel an enemy spell (except Summoning Spells). The bearer of the Gem will be able to cast the spell themselves (limited by their Wizard level as normal) for the remainder of the game, even if it is from a lore not normally available to them.]
]

#magic-item-section("enchanted")[
#enchanted-item("CORONET OF THE CONQUEROR", 50, only: "Grand Commander")[This item gives the wearer the Inspiring Presence (6) special rule. In addition, all friendly units within 6" of them gains +1 to their Combat Resolution.]

#enchanted-item("TOME OF WISDOM", 35, only: "Priest of Myrmidia", bound: (level: 3, cast: "9+"))[This item contains a *direct damage* spell that may be cast while in combat. Place the small round template anywhere in base contact with the bearer. All models, covered by the template suffer a Strength 4 hit with the Magical Attacks special rule. Against models with the Daemonic, Undead and Vampiric special rules, as well as Wizards, the Strength is increased to 5.]

#enchanted-item("MONSTRANCE OF DIVINE PRONOUNCEMENT", 35, only: "Priest of Myrmidia", bound: (level: 2, cast: "8+"))[This item contains a *hex* spell with a range of 24". The target must immediately take a Panic test with a negative modifier equal to the difference of the Leadership between the caster and the target.]

#enchanted-item("BLESSED GRENADE OF AQUILIA", 30, one-use: true)[This item has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "4", "Armour Piercing (1), Magical Attacks"))

Place the small round template with its centre anywhere within range. If the attacks hits, resolve the damage as normal. If the attack misses, the template scatters D6".
]

#enchanted-item("SANCTIFIED RELIQUARY OF MYRMIDIA", 25)[The bearer and any unit they are with gain +1 Weapon Skill.]

#enchanted-item("SCRIPTURE OF TRUE INSIGHT", 25)[This item allows you to reroll the dice when determining which side to deploy on and who takes the first turn.]

#enchanted-item("AMPULLA OF MYRMIDIA'S WRATH", 15, only: "Priest of Myrmidia")[This item may be used at the start of any close combat the bearer is involved in by passing a Leadership test. If successful, the bearer's Attacks are doubled until the start of the next close combat phase.]

#enchanted-item("ROSARY OF THE MAIDEN", 15, only: "Priest of Myrmidia")[Every unsaved wound inflicted by the bearer's normal Attacks in Close Combat counts as two for the purposes of combat resolution.]

#enchanted-item("MISSAL OF MYRMIDIA'S WORD", 10, only: "Priest of Myrmidia")[All enemy units attempting to charge the bearer or their unit must pass a Psychology test. If they fail, they may not charge that turn.]
]

#magic-item-section("standard")[
#magic-standard("STANDARD OF MYRMIDIA", 45)[Each time the unit carrying this standard destroys or breaks an enemy unit, all models in it gain one of the following bonuses for as long as the banner remains in the unit. Each bonus is cumulative.

#chart((("Units:", "Result:"), ("1", "+1 Weapon Skill"), ("2", "+1 Strength"), ("3", "+1 Attack")))
]

#magic-standard("STANDARD OF SUPERIOR FORM", 25)[The unit carrying this standard may make a Swift Reform at the start of their Movement phase. The unit may then move as normal (including declaring charges). However, they have all their movement halved the rest of the Movement phase.]

#magic-standard("BANNER OF SANTIAGO", 20, one-use: true)[The unit carrying this standard automatically passes its first Break Test.]

#magic-standard("BANNER OF THE BULL", 15)[All models in the unit carrying this standard gain the Impact Hits (1) special rule.]

#magic-standard("COLOURS OF CONQUEST", 15)[The unit carrying this standard gains +1 Combat Resolution for each subsequent round of close combat they remain in after the first. This bonus resets once leaving combat.]

#magic-standard("STANDARD OF PROWESS", 15)[The unit carrying this standard gains the Fight in Extra Ranks (1) special rule.]

#magic-standard("BANNER OF COURAGE", 10)[The unit carrying this standard may re-roll failed Break tests.]
]

= CHARACTERS

#unit("COMMANDERS",
  first: true,
  profiles: (
    (name: "Grand Commander", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 90),
    (name: "Captain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  special-rules: "Tactical Supremacy",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Light lance +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Pistol +4 points
  - Brace of pistols +5 points
  - Crossbow +7 points
  - Handgun +7 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Pegasus +25 points
  - Aurochs +40 points
  - Griffon (Grand Commander) +125 points
- One Captain may carry the Battle Standard +25 points
- A Captain may take Magic Items up to a total of 50 points
- A Grand Commander may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("MAGOS",
  profiles: (
    (name: "Grand Mago", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 3, i: 3, a: 1, ld: 8, points: 160),
    (name: "Mago", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Mago is a Level 1 Wizard. A Grand Mago is a Level 3 Wizard. They use one of the following Lores of Magic:",
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
  special-rules: "Tactical Supremacy",
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Pegasus +25 points
- A Mago may take Magic Items up to a total of 50 points
- A Grand Mago may take Magic Items up to a total of 100 points
  ],
)

#unit("PRIESTS OF MYRMIDIA",
  profiles: (
    (name: "High Priest of Myrmidia", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 130),
    (name: "Priest of Myrmidia", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 90),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Magical Attacks, Magic Resistance (1), Tactical Supremacy",
  special-rules-body: [
- *Blessing of Myrmidia:* The model and any unit they are currently in have the Always Strikes First special rule.
- *Battle Prayers of Myrmidia:* A model with this special rule knows the three Battle Prayers listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. A friendly unit can only be under the effect of one Battle Prayer at a time.
  - *Skill of Combat:* The model and any unit they are with gain +1 To Hit in close combat until the start of your next turn.
  - *Shield of Myrmidia:* The model and any unit they are with gain a 6+ armour save until the start of your next turn.
  - *Spear of Myrmidia:* The model and any unit they are with gain the Armour Piercing (1) and Magical Attacks special rules until the start of your next turn.
  ],
  options: [
- May choose one of the following:
  - Spear +5 points
  - Light lance +5 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +3 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Altar of Myrmidia (High Priest of Myrmidia only) +100 points
- May take Magic Items up to a total of 100 points
- A Priest of Myrmidia may take Magic Items up to a total of 50 points
- A High Priest of Myrmidia may take Magic Items up to a total of 100 points
  ],
)

#unit("MAESTRO",
  profiles: (
    (name: "Maestro", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 100),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Tactical Supremacy",
  special-rules-body: [
- *Face Me, You Coward!* A Maestro must always issue and accept Challenges. If your opponent refuses to answer the challenge, you may force the one enemy character in the unit to take a Psychology test. If failed, that model must accept the challenge. While in a challenge, the Maestro may re-roll failed rolls To Hit and To Wound.
- *Duelling Techniques:* At the start of each round of close combat, a Maestro may choose to utilize one of the following Duelling Techniques. He may not use the same technique two rounds in a row.
  - *Quick Strikes:* The Maestro gains +D3 Attacks.
  - *Defence:* The Maestro gains the Parry (5+) rule.
  - *Perforation:* The Maestro gains the Killing Blow special rule.
  ],
  options: [
- May choose one of the following:
  - Buckler +5 points
  - Additional hand weapon +5 points
- May choose one of the following:
  - Pistol +5 points
  - Brace of pistols +6 points
- May take throwing weapons +5 points
- May take light armour +3 points
- May take Magic Items up to a total of 50 points
  ],
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

#unit("PEGASUS",
  profiles: (
    (name: "Pegasus", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
  special-rules: "Fly (9)",
  upgrades: (
    rule("Iron-hard Hooves")[A Pegasus with this upgrade re-roils failed To Wound rolls.],
    rule("Swift as the Wind")[A Pegasus with this upgrade re-rolls any dice results of a 1 when determining its charge range.],
  ),
  options: [
- May take Iron-hard Hooves +5 points
- May take Swift as the Wind +5 points
  ],
)

#unit("AUROCHS",
  compact: true,
  profiles: (
    (name: "Aurochs", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 6, points: "-"),
  ),
  troop-type: "Monstrous Beast (Bovine)",
  base-size: "50x75",
  special-rules: "Impact Hits (D3), Mighty Blow (1)",
)

#unit("GRIFFON",
  profiles: (
    (name: "Griffon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: "-"),
  ),
  troop-type: "Monstrous Creature (Chimeric)",
  base-size: "50x50",
  special-rules: "Fly (8), Natural Armour (6+)",
  upgrades: (
    rule("Shredding Talons")[The model gains the Armour Piercing (1) special rule.],
    rule("Swooping Strike")[The model gains the Devastating Charge special rule.],
  ),
  options: [
- May take Shredding Talons +5 points
- May take Swooping Strike +5 points
  ],
)

#unit("WAR ALTAR OF MYRMIDIA",
  profiles: (
    (name: "War Altar of Myrmidia", m: "-", ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: "-"),
    (name: "Bull", m: 6, ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
    (name: "Aurochs", m: 6, ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 3, a: 3, ld: "-", points: ""),
  ),
  troop-type: "Shrine (Armour save 6+)",
  base-size: "50x100 or 60x100",
  special-rules: "Magical Ward (4+)",
  special-rules-body: (
    rule("Holy Fervour")[All friendly Human units benefit from the rider's Blessing of Myrmidia special rule whilst within 6" of a War Altar of Myrmidia.],
    rule("The Power of Myrmidia")[Any Battle Prayers of Myrmidia cast by a model who is mounted on a War Altar of Myrmidia also target all friendly units within 6".],
  ),
  options: [
- May be drawn by one of the following:
  - Aurochs +15 points - 2 Bulls +15 points - 4 Bulls +25 points
  ],
  notes: [
- A War Altar of Myrmidia has a Line of Sight value of 4.
- A War Altar of Myrmidia drawn by an Aurochs (Bovine) is a Chariot with the Fear and Mighty Blow (1) special rule.
- A War Altar of Myrmidia drawn by 2 Bulls (Bovine) is a Chariot with the Impact Hits (D6+2 special rule).
- A War Altar of Myrmidia drawn by 4 Bulls (Bovine) is a Chariot with the Impact Hits (D6+4 special rule).
  ],
)

= CORE UNITS

#unit("PIKEMEN",
  first: true,
  profiles: (
    (name: "Pikeman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Pike, light armour",
  special-rules: "Tactical Supremacy",
  options: [
- May replace pikes with polearms free
- May take bucklers +0.5 point/model
- May take medium armour +1 point/model
- May upgrade one Pikeman to a Leader +5 points
- May upgrade one Pikeman to a Musician +5 points
- May upgrade one Pikeman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("RODELEROS",
  profiles: (
    (name: "Rodelero", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 5),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour, buckler",
  special-rules: "Tactical Supremacy",
  options: [
- May replace bucklers with one of the following:
  - Additional hand weapons +0.5 point/model
  - Shields +0.5 point/model
- May take medium armour +1 point/model
- May upgrade one Rodelero to a Leader +5 points
- May upgrade one Rodelero to a Musician +5 points
- May upgrade one Rodelero to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ARQUEBUSIERS",
  profiles: (
    (name: "Arquebusier", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, handgun",
  special-rules: "Countermarch Fire, Tactical Supremacy",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Arquebusier to a Leader +5 points
- May upgrade one Arquebusier to a Musician +5 points
- May upgrade one Arquebusier to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("CROSSBOWMEN",
  profiles: (
    (name: "Crossbowman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, crossbow",
  special-rules: "Countermarch Fire, Tactical Supremacy",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Crossbowman to a Leader +5 points
- May upgrade one Crossbowman to a Musician +5 points
- May upgrade one Crossbowman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("TERCIOS",
  profiles: (
    (name: "Tercio", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 9),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Pike, handgun, light armour, buckler",
  special-rules: "Tactical Supremacy, Tercio Formation",
  options: [
- May replace pikes with polearms free
- May replace handguns with crossbows free
- May upgrade one Tercio to a Leader +5 points
- May upgrade one Tercio to a Musician +5 points
- May upgrade one Tercio to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("DIESTROS",
  profiles: (
    (name: "Diestro", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 4),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapons +1 point/model
  - Pistols +3 points/model
- May take throwing weapons +1 point/model
- May upgrade one Duellist to a Leader +5 points
  ],
  special-rules: "Tactical Supremacy, Skirmishers",
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("HIDALGOS",
  profiles: (
    (name: "Hidalgo", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 13),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, medium armour, shield",
  special-rules: "Fast Cavalry, Tactical Supremacy",
  options: [
- May take light lances +1 point/model
- May take pistols +3 points/model
- May upgrade one Hidalgo to a Leader +5 points
- May upgrade one Hidalgo to a Musician +5 points
- May upgrade one Hidalgo to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("GENITORS",
  profiles: (
    (name: "Genitor", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 12),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, light armour, shield",
  special-rules: "Fast Cavalry, Tactical Supremacy",
  options: [
- May take light lances +1 point/model
- May take javelins +2 points/model
- May upgrade one Genitor to a Leader +5 points
- May upgrade one Genitor to a Musician +5 points
- May upgrade one Genitor to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ALMOGAVARS",
  profiles: (
    (name: "Almogavar", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 4),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  equipment: "Hand weapon",
  special-rules: "Skirmishers, Tactical Supremacy",
  special-rules-body: (
    rule("Close Formation")[Almogavars can choose to deploy in either a regular or skirmish formation. Whenever they make a Reform, they may choose to adopt either a regular or skirmish formation.],
  ),
  options: [
- May be upgraded to Ambushers +1 point/model
- May take spears +0.5 point/model
- May take javelins +2 points/model
- May take shields +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Almogavar to a Leader +5 points
- May upgrade one Almogavar to a Musician +5 points
- May upgrade one Almogavar to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("WAR DOGS",
  profiles: (
    (name: "War Dog", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 5),
    (name: "Handler", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
  ),
  unit-size: "10-30",
  troop-type: "War Beast (Canine)",
  handler: "1 Handler (Human)",
  special-rules: "Mixed Unit, Tactical Supremacy",
  options: [
- May be upgraded to Skirmishers +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Handler to a Musician +5 points
  ],
  notes: [
- One Handler must be included for every 10 War Dogs in the unit.
  ],
)

= SPECIAL UNITS

#unit("ROYAL GUARD",
  first: true,
  profiles: (
    (name: "Royal Guard", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 10),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm, medium armour",
  special-rules: "Stubborn, Tactical Supremacy",
  options: [
- May replace polearms with great weapons +1 point/model
- May take heavy armour +1.5 points/model
- May upgrade one Royal Guard to a Leader +5 points
- May upgrade one Royal Guard to a Musician +5 points
- May upgrade one Royal Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SISTERS OF FURY",
  profiles: (
    (name: "Sister of Fury", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 11),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Spear, heavy armour, shield",
  special-rules: "Hatred, Tactical Supremacy",
  options: [
- May upgrade one Sister of Fury to a Leader +5 points
- May upgrade one Sister of Fury to a Musician +5 points
- May upgrade one Sister of Fury to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("KNIGHTS",
  profiles: (
    (name: "Knight", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 15),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, heavy armour",
  special-rules: "Tactical Supremacy",
  upgrades: (
    rule("Knights of the Blazing Sun")[The model must be armed with heavy lance, shield and barding. Whenever a unit where the majority of models have this special rule makes a successful charge, the enemy unit being charged suffer \-1 Weapon Skill and Ballistic Skill for the duration of the turn.],
    rule("Knights of the Righteous Spear")[The model must be armed with heavy lance, shield and barding. All models with this special rule may re-roll failed To Wound rolls in turns that they successfully charge a unit.],
  ),
  options: [
- May be upgraded to one of the following:
  - Knights of the Blazing Sun +1 point/model
  - Knights of the Righteous Spear +1 point/model
- May choose one of the following:
  - Light lances +1 point/model
  - Heavy lances +2 points/model
- May take shields +2 points/model
- May take barding +1 point/model
- May upgrade one Knight to a Leader +5 points
- May upgrade one Knight to a Musician +5 points
- May upgrade one Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("CONQUISTADORS",
  profiles: (
    (name: "Conquistador", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 19),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, handgun, light armour",
  special-rules: "Fast Cavalry, Tactical Supremacy",
  special-rules-body: (
    rule("Caracole")[Models with this special rule ignore the Ponderous special rule, and may fire their missile weapons to their flanks (in up to two files to either side) as well as their front.],
  ),
  options: [
- May take medium armour +1 point/model
- May upgrade one Conquistador to a Leader +5 points
- May upgrade one Conquistador to a Musician +5 points
- May upgrade one Conquistador to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("MUSKETEERS",
  profiles: (
    (name: "Musketeer", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, musket",
  equipment-body: [
- *Musket:* Muskets have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("15/30\"", "5", "Armour Piercing (1), Move or Fire, Ponderous"))
  ],
  special-rules: "Countermarch Fire, Tactical Supremacy",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Musketeer to a Leader +5 points
- May upgrade one Musketeer to a Musician +5 points
- May upgrade one Musketeer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("GRENADIERS",
  profiles: (
    (name: "Grenadier", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 12),
  ),
  unit-size: "10+",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, grenades, light armour",
  special-rules: "Skirmishers, Tactical Supremacy",
  options: [
- May choose one of the following:
  - Pistols +1 point/model
  - Blunderbusses +2 points/model
- May take medium armour +1 point/model
- May upgrade one Grenadier to a Leader +5 points
  ],
)

#unit("MOUNTAIN BANDITS",
  profiles: (
    (name: "Mountain Bandit", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 8),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shortbow",
  special-rules: "Expendable, Scouts, Skirmishers",
  special-rules-body: (
    rule("Guerrilla Fighters")[Unless it charged, marched or fled during the Movement phase of its turn, a unit with this special rule may move up to its Movement value directly backwards after resolving its missile attacks in its Shooting phase.],
  ),
  options: [
- May upgrade one Mountain Bandit to a Leader +5 points
- May upgrade one Mountain Bandit to a Musician +5 points
  ],
)

#unit("MERCENARY OGRES",
  profiles: (
    (name: "Ogre", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 27),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40",
  equipment: "Hand weapons, light armour",
  equipment-body: [
- *Ogre Pistol:* Ogre pistols use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Quick Shot"))

- *Ogre Handgun:* Ogre handguns use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "Ponderous"))
  ],
  special-rules: "Independent, Natural Armour (6+)",
  special-rules-body: (
    rule("Ogre Charge")[Each model with this special rule that successfully charges an enemy has the Impact Hits (1) special rule. Models with this special rule that are part of a unit with ranks add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.],
  ),
  options: [
- May choose one of the following:
  - Bucklers +3 points/model
  - Addditional hand weapons +3 points/model
  - Polearms +6 points/model
  - Ogre handguns +6 points/model
  - Ogre pistols +6 points/model
  - Great weapons +9 points/model
- May take medium armour +6 points/model
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("FALCONET",
  profiles: (
    (name: "Falconet", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 60),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "2 Crew (Human)",
  base-size: "40x60 (Falconet), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, falconet",
  equipment-body: [
- *Falconet:* A falconet is a cannon that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "7", "Multiple Wounds (D3)"))

When firing grapeshot, hits are resolved at Strength 4 rather than Strength 5.
  ],
  options: [
- May take an additional crew +5 points
  ],
)

= RARE UNITS

#unit("KNIGHTS OF THE RAGING BULL",
  first: true,
  profiles: (
    (name: "Knight", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 55),
    (name: "Aurochs", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 6, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Human)",
  mount: "Aurochs (Bovine)",
  base-size: "50x75",
  equipment: "Heavy lance, heavy armour, shield",
  special-rules: "Impact Hits (D3), Mighty Blow (1) (Aurochs only), Tactical Supremacy",
  options: [
- May take barding +3 points/model
- May upgrade one Knight to a Leader +5 points
- May upgrade one Knight to a Musician +5 points
- May upgrade one Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("FIRE BULLS",
  profiles: (
    (name: "Fire Bull", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 5, points: 12),
    (name: "Picador", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 11),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "War Beast (Bovine)",
  handler: "1 Picador (Human)",
  mount: "1 Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Light lance (Picador only)",
  special-rules: "Mixed Unit",
  special-rules-body: [
- *Bull Run:* The Picadors may light up the horns of the Bulls at the start of any of your Movement phases. They then move using the Random Movement (3D6) special rule and gains the Immunity (Psychology) special rule for the remainder of the game.

If the Fire Bulls' move would bring them into contact with another unit, then they move through rather than stopping. If the Fire Bulls' move would end within a unit, then they automatically move through it – place the Fire Bulls 1" beyond the unit, in the direction they were moving. When a unit of Fire Bulls moves through a unit (friend or foe), each Bull in the unit inflicts a Strength 5 hit with the Flaming Attacks special rule.

Any unit that moves into contact with the front arc of a unit of Fire Bulls suffers a Strength 5 hit for each Fire Bull in base contact. These are resolved like Impact Hits in the close combat phase if the Fire Bulls are charged, or immediately in case a unit flees through them.

If the Picador(s) are killed before they have lit the bulls, the bulls simply wander off and are removed as casualties. If the Picadors are slain after they have lit the bulls, the Fire Bulls will move in a Random direction every turn.
  ],
  notes: [
- One Picador must be included for every 5 Fire Bulls in the unit.
  ],
  order: ("unit-size", "troop-type", "handler", "mount", "base-size", "equipment", "special-rules", "notes"),
)

#unit("CULVERIN",
  profiles: (
    (name: "Culverin", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Culverin), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, cannon",
  options: [
- May take an additional crew +5 points
  ],
)

#unit("LOMBARD",
  profiles: (
    (name: "Lombard", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 80),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x50 (Lombard), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, lombard",
  equipment-body: [
- *Lombard:* A lombard is a mortar that uses the small round template and the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "4(8)", "Multiple Wounds (D3)"))
  ],
  options: [
- May take an additional crew +5 points
  ],
)

= SPECIAL CHARACTERS

#unit("ISABELLA GIOVANNA LUCCELLI",
  solo: true,
  first: true,
  subtitle: "La Aguila Ultima, Head of the Order of the Eagle",
  profiles: (
    (name: "Isabella Giovanna Luccelli", m: 4, ws: 5, bs: 4, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 295),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Sacred Sword of Vengeance")[Magic Weapon. Enemies in base contact with the wielder suffer \-1 To Hit. In addition, attacks with this blade have the Ignores Armour saves special rule.],
    rule("Blessed Cuirass")[Magic Armour. Heavy armour. The wearer gains the Fly (10) special rule and a Magical Ward (4+), which may be re-rolled.],
    rule("Light of Myrmidia")[Talisman. Enemies must re-roll successful To Hit rolls with missile weapons against Isabella.],
  ),
  special-rules: "Battle Prayers of Myrmidia (see High Priest of Myrmidia), Blessing of Myrmidia (see High",
  special-rules-body: [
Priest of Myrmidia)*, Magical Attacks, Magic Resistance (1), Tactical Supremacy*

- *Living Saint:* Isabella and all friendly units within 12" may re-roll failed Psychology tests. In addition, Isabella may re-roll failed Leadership tests when using her Battle Prayers. Any Battle Prayers can target any friendly unit within 12" rather than just the unit she is with.
  ],
)

#unit("JUAN FEDERICO",
  solo: true,
  subtitle: "El Lider Glorioso, Grand Master of the Order of the Righteous Spear",
  profiles: (
    (name: "Juan Federico", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 205),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human).",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Shield, barding",
  magic-items: (
    rule("Sword of Retribution")[Magic Weapon. All attacks made with this sword gain +1 Strength as well as the Flaming Attacks and the Multiple Wounds (D3) special rules.],
    rule("Armour of Virtue")[Magic Armour. Heavy armour. The wearer and any unit they join have the Cold-Blooded special rule when taking Break tests.],
    rule("Eagle of Myrmidia")[Talisman. The Eagle of Myrmidia gives the wearer the Immunity (Multiple Wounds, Killing Blow) special rule.],
  ),
  special-rules: "Righteous Charge, Tactical Supremacy",
  special-rules-body: (
    rule("Grand Master")[Juan Federico and any unit of Knights of the Righteous Spear that he joins gains the Immunity (Psychology) special rule for as long as he remains in the unit.],
    rule("Knights of the Inner Circle")[If Juan Federico is in your army, you may upgrade one unit of Knights of the Righteous Spear to be Inner Circle for +2 points per model. These models gain +1 Strength and +1 Initiative.],
  ),
)

#unit("SANTIAGO DE VIVAR",
  solo: true,
  subtitle: "Champion of Estalia, Scourge of Araby",
  profiles: (
    (name: "Santiago de Vivar", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 9, points: 275),
    (name: "Babieca (Warhorse)", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Babieca (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Barding",
  magic-items: (
    rule("Tizona & Colada")[Magic Weapon. Two hand weapons. All attacks made with these swords may re-roll failed rolls To Hit and To Wound. In addition, the wielder gains the Fear special rule against enemy units with a lower Leadership value than them.],
    rule("Armour of the Champion")[Magic Armour. Heavy Armour. All successful To Wound rolls against the wearer must be re-rolled.],
  ),
  special-rules: "Tactical Supremacy",
  special-rules-body: (
    rule("Champion of Estalia")[Each Wound caused by Santiago in close combat counts as D3 Wounds for the purposes of combat resolution.],
  ),
)

#unit("FRANCISCO CORTEZ",
  solo: true,
  subtitle: "Conqueror of the New World",
  profiles: (
    (name: "Francisco Cortez", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 115),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Pistol, medium armour",
  magic-items: (
    rule("Rapier of Quietude")[Magic Weapon. All attacks made by this weapon have the Armour Piercing (3) and Parry (6+) special rules.],
    rule("Amulet of Pahuax")[Talisman. This item gives the wearer the Regeneration (4+) special rule.],
  ),
  options: [
- May be mounted on a Warhorse +12 points
  ],
  special-rules: "Tactical Supremacy",
  special-rules-body: (
    rule("Conquistador Commander")[If Cortez is in your army, units of Conquistadors count as Core Units instead of Special Units. In addition, all Conquistador units may use his Leadership just as if he was the Army General.],
  ),
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("DIEGO MONTOYA",
  solo: true,
  profiles: (
    (name: "Diego Montoya", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 130),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Pistol",
  magic-items: (
    rule("Blades of the Duellist")[Magic Weapon. Two hand weapons. For every attack that misses Diego in close combat, he may immediately make an attack back at that model.],
  ),
  special-rules: "Duelling Techniques (see Maestro), Face Me, You Coward! (see Maestro), Tactical",
  special-rules-body: [
*Supremacy*

- *Avenger:* At the start of the game, choose one enemy character. Against this model, Diego Montoya has the Hatred special rule. In addition, the target must re-roll all successful To Wound rolls against him.
  ],
)

#unit("DON LOMENTE",
  solo: true,
  profiles: (
    (name: "Don Lomente", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 2, i: 3, a: 2, ld: 10, points: 100),
    (name: "Rocinante (Warhorse)", m: 7, ws: 2, bs: 0, s: 2, t: 2, w: 1, i: 2, a: 1, ld: 4, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Rocinante (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, medium armour, shield",
  special-rules: "Unbreakable",
  special-rules-body: (
    rule("Tilting at Windmills")[Don Lomente may never be the Army General. If he has Line of Sight to a Monster or building, he must always move directly towards the nearest one whenever possible (charging if possible, even if the building is empty or garrisoned by a friendly unit). If he moves into contact with an empty or friendly building, he may move normally in his next turn.],
    rule("Insane Luck")[Don Lomente has a 3+ invulnerable save.],
  ),
)

#unit("MARIA DE SALVO",
  solo: true,
  subtitle: "Sister Assassin of the Order of the Eagle",
  profiles: (
    (name: "Maria de Salvo", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 150),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Throwing weapons",
  magic-items: (
    rule("The Eradicators")[Magic Weapon. Two hand weapons. All attacks made with the Eradicators have the Always Strikes First, Poisoned Attacks and Armour Piercing (1) special rules.],
    rule("Seal of Myrmidia")[Talisman. The Seal of Myrmidia gives Maria a 2+ invulnerable save against Magical Attacks.],
  ),
  special-rules: "Dodge (5+), Hidden, Immunity (Psychology), Tactical Supremacy",
  special-rules-body: (
    rule("Mark of Death")[At the start of the game, secretly nominate one enemy character to be Maria's chosen target. Against this character, she has the Killing Blow special rule.],
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
