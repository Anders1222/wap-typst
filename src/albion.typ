// Albion 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "albion",
  army: "Albion",
  version: "3.0",
  layout: "army",
  cover: "covers/albion.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Albion 3.0")

#cover(
  title: "Albion",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/albion.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Albion*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in an Albion army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Albion units, and these are detailed here.

#namecost("BATTLE CRY", "")

All friendly unit joined by a model with this special rule may add D3" to their charge distance.

#namecost("WAR FURY", "")

All models with this special rule re-roll 1's on their charge distances. In addition, whenever they declare a charge or pursue a fleeing enemy, the models gain the Hatred special for the duration of the turn.

#namecost("TRIBAL AFFILIATION", "")

Your army may be associated with one of the Tribes below. Having a Clan Affiliation will allow your army to use special abilities on the battlefield that reflects their famous Tribe. Certain units in your army may have a Tribal Affiliation, as detailed in the army list. However, you may not have multiple Tribal Affiliations in the same army.

- *Falian:* Infantry models with this special rule may deploy as Ambushers, and get +1 To Hit in close combat when attacking enemies in their flank or rear.

- *Finian:* Models with this special rule have the Cold- Blooded special rule when taking Panic and Break tests.

- *Fir Domain:* Models with this special rule gain +1 armour save when using shields.

- *Sessair:* Models with this special rule re-roll 1's when rolling To Wound in close combat.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Albionites. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("THE LIGHTNING SPEAR", 80, type: "Light lance/spear/javelins")[All close combat and missile attacks with this weapon automatically Hit and have the Lightning Attacks special rule. Any Hits from Shooting penetrates ranks as if it were a Bolt Thrower.]

#magic-weapon("THE BARBED SPEAR", 50, type: "Light lance/spear")[This weapon gives the wielder +1 Strength and the Multiple Wounds (D6) special rule.]

#magic-weapon("THE GREAT STAFF", 35, type: "Great weapon")[For every unsaved Wound caused by this weapon in close combat, you may restore 1 Wounds worth of models in the same unit previously slain during the battle just like a summoning spell.]

#magic-weapon("THE ANSWERER", 30)[This sword has the Ignore Armour Saves special rule, and for every Wound caused, the enemy model must pass a Toughness test or suffer an additional Wound.]

#magic-weapon("THE SINGING SWORD", 30)[In any turn in which the wielder causes one or more unsaved Wound with this sword, all enemy units within 12" must immediately take and resolve a Panic Test.]

#magic-weapon("SPEAR OF FIACHA", 25, type: "Light lance/spear")[The wielder gains Magic Resistance (2). If a spell is dispelled with the assistance of this item, the Wizard who cast it forgets that spell on the roll of a 4+.]

#magic-weapon("WHITE HILT", 25, type: "Great weapon")[The wielder of this sword gains Flaming Attacks. Against models with Toughness 5 or more, he may re-roll failed rolls To Wound.]

#magic-weapon("YSBADDADAN'S JAVELINS", 15, type: "Javelins")[These weapons have the Multiple Wounds (D3) and Poisoned Attacks special rules.]

#magic-weapon("SICKLE SWORDS OF HORDEK", 10, only: "Wizard", type: "Two hand weapons")[On any to hit roll of 5+, the weapon automatically wounds.]
]

#magic-item-section("armour")[
#magic-armour("OGHAM ARMOUR", 35, type: "Light armour")[The wearer gains a Magical Ward (5+) and may re-roll Ward save results of 1.]

#magic-armour("THE EAR OF BEAUTY", 35, type: "Shield")[The wielder gains the Parry (5+) special rule. For every successful Parry save the wielder makes in close combat, he may make an extra attack back immediately against the model/unit that struck the blow.]

#magic-armour("MOOR ARMOUR", 25, type: "Light armour")[All attacks made against the bearer are resolved at \-1 Strength.]

#magic-armour("SWIFT TO HAND", 20, type: "Shield")[The bearer gains +1 Attack.]

#magic-armour("HELM OF PRIDWEN", 15)[This item gives the wearer a 6+ armour save. In addition, the wearer gains the Mighty Blow (1) special rule in any turn in which they make a successful charge.]

#magic-armour("RED-BACKED", 15, type: "Shield")[This shield (but not any other armour the wearer might have) ignores all negative modifiers when taking armour saves.]

#magic-armour("FIMIR-SKIN CLOAK", 5)[The wearer of this item gains the Natural Armour (6+) special rule. However, all Fimir models gain the Hatred special rule against the wearer.]
]

#magic-item-section("talisman")[
#talisman("THE TRISKELE", 35, only: "Wizard", common: true)[The wearer of the Triskele gains the Magical Ward (5+) and Magic Resistance (2) special rules.]

#talisman("RING OF ELUNED THE FORTUNATE", 30, only: "Model on foot")[The character cannot be targeted by any missile attack.]

#talisman("BRACELET OF PURITY", 25)[The wearer can take a Leadership test at the start of each turn. If passed, they are immediately granted a Magical Ward (4+) for the duration of the turn.]

#talisman("HONOUR BELT OF CONSTITUTION", 25)[The wearer gains +1 to their Toughness.]
]

#magic-item-section("arcane")[
#arcane-item("STAFF OF LIGHT", 40, type: "Staff")[The bearer gains +1 dispel bonus and +1 to all channelling rolls for dispel dice.]

#arcane-item("STAFF OF SUMMONING", 40, type: "Staff")[The bearer gains a casting bonus equal to the rank bonus of any unit they are in.]

#arcane-item("MAGIC CATCHER", 25, type: "Relic")[Whenever an enemy spell (except *summoning* spells) is successfully cast within 12" of the bearer of this item, roll a D6. On a 4+, that spell can then be cast once as a Bound Spell as a power level equal to the spell's normal casting value in your next Magic phase.]

#arcane-item("POTION OF KNOWLEDGE", 15, type: "Charm", one-use: true)[The potion can be used at the start of any of your Magic phases. Once used, the Wizard gains the Loremaster special rule from any one lore normally available to them for the duration of this Magic phase.]

#arcane-item("OGHAM SHARD", 15, type: "Charm", one-use: true)[Any spell that is cast this turn will count the roll of any double (except 1's) as 6's for the purpose of rolling Ultimate Power.]
]

#magic-item-section("enchanted")[
#enchanted-item("CAULDRON OF REBIRTH", 75)[At the start of each of your Magic phases, you may restore up to D3 Wounds worth of models in the same unit previously slain during the battle, just like a summoning spell. Any friendly character slain in this unit may also be resurrected once in this manner. However, a resurrected character does not bestow his Leadership onto the unit, nor can the unit benefit from his War Cry ability. Resurrected Wizards can no longer cast spells.]

#enchanted-item("WHETSTONE OF TUDWAL TUDGLYD", 40)[The bearer will automatically Wound with their Close Combat attacks.]

#enchanted-item("HORN OF BORABU", 25)[One Infantry unit in your army may be given the Ambushers special rule. In addition, that unit may automatically enter the battlefield within 24" of the bearer of this item, instead of rolling to see if they arrive.]

#enchanted-item("ARDAGH CHALICE", 20, one-use: true)[This item may be used at the start of any of your turns. When used, the bearer gains +1 Strength, Toughness and Attacks until the start of your next turn.]

#enchanted-item("CHARIOT OF MORGAN MWYNFAWR", 20, only: "Model on Chariot")[The model's Chariot gains the Fly (7) special rule.]

#enchanted-item("CRANE-SKIN BAG OF CUMHAIL", 20)[The wearer may choose between any one Magic Weapon from the Main Rulebook worth up to 15 points each turn. They may not take any other Magic Weapon.]

#enchanted-item("HARP OF DAGDA", 15, bound: (level: 1, cast: "5+"))[This item contains an *augment aura* spell with a range of 12". All fleeing units within range automatically Rally.]

#enchanted-item("RORY MOR'S HORN", 15, one-use: true)[At the start of the battle, the bearer may attempt to drink from the Horn by passing a Strength test. If passed, they gain +1 to their Leadership for the remainder of the battle.]

#enchanted-item("MAD MARSH WADERS", 10)[The wearer of these magical boots and any unit he joins gain the Swamp Strider special rule, and are always Steadfast when in a marsh.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF THE SUN KING", 60)[All models in the unit will always Wound enemies on at least a 3+ in close combat. Armour saves are affected by the unit's normal Strength. In addition, the unit receives +D3 to its Combat Resolution bonus in any turn that they charge.]

#magic-standard("BANNER OF THE ANCIENTS", 50)[All friendly units of Half Giants, Giants, Bonegrinder Giants, Centaurs and Pixies gain a Magical Ward (6+) if they are within 12" of this banner.]

#magic-standard("VIRIDIAN STANDARD", 30)[The unit carrying this standard gains the Flammable and Natural Armour (6+) special rules.]

#magic-standard("BANNER OF THE MISTS", 30)[Any missile fire directed against the unit carrying this standard suffer \-1 To Hit.]

#magic-standard("THE BOG STANDARD", 25)[All models in any unit charging the unit carrying this standard must take a dangerous terrain test as though charging through a marsh.]

#magic-standard("THE FAIRY FLAG OF DUNVEGAN", 25)[All enemy units within 12" and with line of sight to the unit carrying this standard at the start of their turn must take a Psychology test. If failed, the unit must move straight towards them, following all the rules for Stupidity.]

#magic-standard("STANDARD OF FIONN MAC CUMHAILL", 25)[The unit may re-roll failed rolls to Wound in the first round of Close Combat.]
]

= CHARACTERS

#unit("WARLEADERS",
  first: true,
  profiles: (
    (name: "Chieftain", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 95),
    (name: "Champion", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 8, points: 55),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Battle Cry, War Fury",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Shortbow +4 points
  - Javelins +6 points
- May take light armour +3 points
- May take a shield +5 points
- May have a Magical Ward (6+) +10 points
- May take one Tribal Affiliation +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Elk +20 points
  - Shieldbearers (Chieftain only) +25 points
  - Chariot (replacing one of the crew) +50 points
  - Mastodon (Chieftain only, replacing one of the crew) +200 points
- One Champion may carry the Battle Standard +25 points
- A Champion may take Magic Items up to a total of 50 points
- A Chieftain may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("DRUID ELDERS",
  profiles: (
    (name: "Truthsayer", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 3, a: 2, ld: 8, points: 170),
    (name: "Wyrd Druid", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 75),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Wyrd Druid is a Level 1 Wizard. A Truthsayer is a Level 3 Wizard. They use one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Heavens
- Life
- Light

In addition, they know the following spell:

- *Elemental Power:* Level 1, cast on 5+. _Elemental Power_ is an *augment/conveyance* spell with a range of 24" that targets Fenbeasts, Fenhulks and Viridian Lords. The target immediately regains D3 Wounds worth of models lost earlier during the battle up to their starting value. Alternatively, the target may choose to make a normal move as if it were the Remaining Moves sub-phase.
  ],
  special-rules: "Magical Ward (6+), War Fury",
  options: [
- May take an additional Wizard Level +35 points
- May choose one of the following:
  - Additional hand weapon +3 points
  - Polearm +4 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Elk +20 points
  - Chariot (replacing one of the crew) +50 points
- A Wyrd Druid may take Magic Items up to a total of 50 points
- A Truthsayer may take Magic Items up to a total of 100 points
  ],
)

= CHARACTER MOUNTS

#unit("SHIELDBEARERS",
  first: true,
  profiles: (
    (name: "Shieldbearers", m: 4, ws: 4, bs: 3, s: 4, t: "-", w: "-", i: 4, a: 2, ld: "-", points: "-"),
  ),
  troop-type: "Infantry (Human)",
  base-size: "20x40, 25x50, 40x40 or 50x50",
  special-rules: "Inspiring Presence (6), War Fury",
  notes: [
- Shieldbearers have a Unit Strength and Line of Sight value of 2.
  ],
)

#unit("WARHORSE",
  compact: true,
  profiles: (
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
)

#unit("ELK",
  compact: true,
  profiles: (
    (name: "Elk", m: 8, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Cervine)",
  base-size: "25x50 or 30x60",
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
  special-rules: "War Fury",
  options: [
- May take one Tribal Affiliation +1 point/model
- May choose one of the following:
  - Spears +0.5 point/model
  - Replace shields with great weapons +2 points/model
- May take light armour +0.5 point/model
- May take javelins +1 point/model
- May upgrade one Warrior to a Leader +5 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("WOAD RAIDERS",
  profiles: (
    (name: "Woad Raider", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shield",
  special-rules: "Frenzy, Magical Ward (6+), War Fury",
  options: [
- May choose one of the following:
  - Replace shields with additional hand weapons free
  - Spears +0.5 point/model
- May take javelins +1 point/model
- May take one Tribal Affiliation +1 point/model
- May upgrade one Woad Raider to a Leader +5 points
- May upgrade one Woad Raider to a Musician +5 points
- May upgrade one Woad Raider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("YOUNGBLOODS",
  profiles: (
    (name: "Youngblood", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, javelins",
  special-rules: "Skirmishers, War Fury",
  options: [
- May replace javelins with slings +1 point/model
- May take shields +1 point/model
- May take one Tribal Affiliation +1 point/model
- May upgrade one Youngblood to a Leader +5 points
- May upgrade one Youngblood to a Musician +5 points
  ],
)

#unit("WAR HOUNDS",
  profiles: (
    (name: "War Hound", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 5),
    (name: "Handler", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
  ),
  unit-size: "10-30",
  unit-size-body: [
v
  ],
  troop-type: "War Beast (Dog)",
  handler: "1 Handler (Human)",
  base-size: "25x25 or 25x50",
  equipment: "Hand weapon (Handler only)",
  special-rules: "Mixed Unit, War Fury (Handler only)",
  notes: [
- One Handler must be included for every 5 War Hounds in the unit.
  ],
)

#unit("AONBARR HORSE WARRIORS",
  profiles: (
    (name: "Aonbarr Horse Warrior", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 13),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, shield",
  special-rules: "Fast Cavalry, War Fury",
  options: [
- May take light lances +1 point/model
- May take javelins +2 points/model
- May take light armour +1 point/model
- May have a Magical Ward (6+) +1.5 points/model
- May take one Tribal Affiliation +1 point/model
- May upgrade one Aonbarr Horse Warrior to a Leader +5 points
- May upgrade one Aonbarr Horse Warrior to a Musician +5 points
- May upgrade one Aonbarr Horse Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("CHARIOTS",
  profiles: (
    (name: "Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 55),
    (name: "Charioteer", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 8, points: ""),
    (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 Charioteers (Human)",
  drawn-by: "2 Warhorses (Equine)",
  base-size: "50x100",
  equipment: "Light lance, javelins",
  special-rules: "War Fury",
  options: [
- May take light armour +4 points/model
- May take shields +4 points/model
- May take scythes +5 points/model
- May have a Magical Ward (6+) +5 points/model
- May take one Tribal Affiliation +5 points/model
- May upgrade one Chariot to a Leader +5 points
- May upgrade one Chariot to a Musician +5 points
- May upgrade one Chariot to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

= SPECIAL UNITS

#unit("HEARTHGUARD",
  first: true,
  profiles: (
    (name: "Hearthguard", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 10),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour, shield",
  special-rules: "Stubborn, War Fury",
  options: [
- May replace shields with great weapons +2 points/model
- May take javelins +2 points/model
- May have a Magical Ward (6+) +1 point/model
- May take one Tribal Affiliation +1 point/model
- May upgrade one Hearthguard to a Leader +5 points
- May upgrade one Hearthguard to a Musician +5 points
- May upgrade one Hearthguard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SWORDMAIDENS",
  profiles: (
    (name: "Swordmaiden", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 9),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon",
  special-rules: "Devastating Charge, Magical Ward (6+), War Fury",
  options: [
- May take one Tribal Affiliation +1 point/model
- May upgrade one Swordmaiden to a Leader +5 points
- May upgrade one Swordmaiden to a Musician +5 points
- May upgrade one Swordmaiden to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("HUNTERS",
  profiles: (
    (name: "Hunter", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, javelin",
  special-rules: "Scouts, Skirmishers, War Fury",
  upgrades: [
● *War Hawks:* Models with this upgrade may use their War Hawk in addition to another missile weapon during the Shooting phase. War hawks use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "3", "-"))

Rather than rolling to Hit using Ballistic Skill, the target must pass a Weapon Skill test to avoid being Hit.
  ],
  options: [
- May replace javelins with shortbows free
- May take War Hawks +1 point/model
- May have a Magical Ward (6+) +1 point/model
- May take one Tribal Affiliation +1 point/model
- May upgrade one Hunter to a Leader +5 points
- May upgrade one Hunter to a Musician +5 points
  ],
)

#unit("WARRIORS OF DANU",
  profiles: (
    (name: "Warrior of Danu", m: 4, ws: 4, bs: 3, s: 5, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 22),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "25x25 or 30x30",
  equipment: "Great weapon",
  special-rules: "Frenzy, Magical Ward (6+), Skirmishers, War Fury",
  options: [
- May take one Tribal Affiliation +1 point/model
- May upgrade one Warrior of Danu to a Leader +5 points
  ],
)

#unit("VIRIDIAN LORDS",
  profiles: (
    (name: "Viridian Lord", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 9, points: 17),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Animated Construct)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  special-rules: "Flammable, Regeneration (4+), Skirmishers, Unstable, War Fury",
  options: [
- May replace hand weapons with great weapons +2 points/model
- May upgrade one Viridian Lord to a Leader +5 points
  ],
)

#unit("FENBEASTS",
  profiles: (
    (name: "Fenbeast", m: 5, ws: 3, bs: 0, s: 5, t: 5, w: 4, i: 1, a: 3, ld: 8, points: 38),
  ),
  unit-size: "1-6",
  troop-type: "Monstrous Infantry (Animated Construct)",
  base-size: "40x40 or 50x50",
  special-rules: "Animated Construct, Marsh Strider, Regeneration (4+), Stupidity, Unstable",
  upgrades: (
    rule("Born of Bloodmarsh")[The model gains +1 Attack.],
    rule("Fly-Infested Rotweed")[All enemy units in base contact with the model suffer \-1 to their Weapon Skill.],
    rule("Leechloam")[During any turn in which one or more spells from the Lore of Life is successfully cast within 12", the model gains +1 Strength.],
    rule("Lifebloom Silt")[The model may re-roll failed Regeneration results of 1.],
  ),
  options: [
- May choose one of the following:
  - Born of Bloodmarsh +3 points/model
  - Leechloam +3 points/model
  - Lifebloom Silt +3 points/model
  - Fly-Infested Rotweed +3 points/model
  ],
)

#unit("CENTAURS",
  profiles: (
    (name: "Centaur", m: 8, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 8, points: 19),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Centaur)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, shield",
  special-rules: "Fast Cavalry, Independent, War Fury",
  options: [
- May take one Tribal Affiliation +1 point/model
- May choose one of the following:
  - Replace shields with additional hand weapon free
  - Light lances +1 point/model
  - Replace shields with bows +1 point/model
  - Replace shields with great weapons +2 points/model
- May choose one of the following:
  - Javelins +2 points/model
  - Throwing axes +2 points/model
- May take light armour +1 point/model
- May have a Magical Ward (6+) +1.5 points/model
- May upgrade one Centaur to a Leader +5 points
- May upgrade one Centaur to a Musician +5 points
- May upgrade one Centaur to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("HALF GIANTS",
  profiles: (
    (name: "Half Giant", m: 6, ws: 3, bs: 2, s: 5, t: 5, w: 3, i: 3, a: 3, ld: 7, points: 35),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Half Giant)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Independent, War Fury",
  options: [
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Shields +3 points/model
  - Polearms +6 points/model
  - Great weapons +6 points/model
- May take javelins +4 points/model
- May take light armour +1.5 points/model
- May have a Magical Ward (6+) +3 points/model
- May upgrade one Half Giant to a Leader +5 points
- May upgrade one Half Giant to a Musician +5 points
- May upgrade one Half Giant to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("PIXIE SWARMS",
  profiles: (
    (name: "Pixie Swarm", m: 1, ws: 3, bs: 3, s: 1, t: 1, w: 8, i: 5, a: 10, ld: 8, points: 40),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Forest Spirit)",
  base-size: "40x40",
  special-rules: "Fear, Fly (6), Forest Strider, Immunity (Psychology), Magical Attacks, Magical Ward (5+)",
  special-rules-body: (
    rule("Befuddling Glamour")[All enemy units within 12" and with line of sight to one or more units of Pixie Swarms at the start of their turn must take a Psychology test. If failed, the unit must move straight towards them, following all the rules for Stupidity.],
  ),
)

= RARE UNITS

#unit("DRUID NEOPHYTES",
  first: true,
  profiles: (
    (name: "Druid Neophyte", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 9),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A unit of Druid Neophytes is a Level 1 Wizard that uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Life
  ],
  special-rules: "Skirmishers, War Fury",
  special-rules-body: (
    rule("Druid Circle")[The unit receives an additional +1 casting bonus for every 5 five models in the unit with this special rule. Each time the unit casts a spell (or is targeted by a special rule that affects a Wizard), you must nominate one Druid Neophyte as the caster (or target) for the purposes of line of sight, range, etc. In the event of a Druid Neophyte unit rolling a miscast, do not roll on the Miscast table. Instead, the unit suffers D3 Wounds with no saves of any kind allowed.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Polearms +2 points/model
- May have a Magical Ward (6+) +1 point/model
- May upgrade one Druid Neophyte to a Leader +5 points
  ],
)

#unit("STONE THROWER",
  profiles: (
    (name: "Stone Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine (Stone Thrower)",
  crew: "3 Crew (Human)",
  base-size: "20x20 or 25x25 (Crew)",
  equipment: "Hand weapon",
  special-rules: "War Fury",
  upgrades: [
- *Fire Pots:* A Stone Thrower with Fire Pots may choose to use the large round template with the following profile (this replaces their normal profile):

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "3(6)", "Flaming Attacks, Multiple Wounds (D3)"))
  ],
  options: [
- May take Fire Pots +10 points
  ],
  labels: (upgrades: "UPGRADE"),
)

#unit("MASTODON",
  profiles: (
    (name: "Mastodon", m: 6, ws: 3, bs: 0, s: 5, t: 6, w: 6, i: 1, a: 4, ld: 6, points: 200),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Monster (Mastodon)",
  crew: "3 Crew (Human)",
  base-size: "50x100 or 100x150",
  equipment: "Light lance, javelins (Crew only)",
  special-rules: "Immunity (Psychology), Impact Hits (D6+1), Natural Armour (4+), Stubborn, War Fury",
  special-rules-body: [
(Crew only)
  ],
)

#unit("FENHULK",
  profiles: (
    (name: "Fenhulk", m: 5, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 1, a: 5, ld: 8, points: 250),
  ),
  troop-type: "Monster (Animated Construct)",
  base-size: "50x50 or 100x100",
  special-rules: "Animated Construct, Magic Resistance (1), Marsh Strider, Regeneration (4+), Stupidity, Unstable",
  special-rules-body: (
    rule("Conduit of Power")[Friendly Wizards within 6" receive a +1 modifier to their channelling rolls.],
    rule("Embodiment of Albion")[Every model in base contact with a Fenhulk must take a Dangerous Terrain test as if they are moving through Marsh Terrain at the start of the first round of close combat, before Impact Hits are resolved.],
  ),
  upgrades: (
    rule("Born of Bloodmarsh")[The model gains +1 Attack.],
    rule("Fly-Infested Rotweed")[All enemy units in base contact with the model suffer \-1 to their Weapon Skill.],
    rule("Leechloam")[During any turn in which one or more spells from the Lore of Life is successfully cast within 12", the model gains +1 Strength.],
    rule("Lifebloom Silt")[The model may re-roll failed Regeneration results of 1.],
  ),
  options: [
- May choose one of the following:
  - Lifebloom Silt +10 points
  - Born of Bloodmarsh +15 points
  - Leechloam +15 points
  - Fly-Infested Rotweed +15 points
  ],
)

#unit("GIANT",
  breakable: true,
  profiles: (
    (name: "Giant", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 6, i: 3, a: "*", ld: 10, points: 180),
  ),
  troop-type: "Monster (Giant)",
  base-size: "50x50 or 50x75",
  equipment: "Hand weapon",
  special-rules: "Immunity (Psychology), Natural Armour (6+), Stubborn",
  special-rules-body: [
- *Fall Over:* A Giant must test to see whether it falls over if any of the following apply:
  - If it is beaten in close combat. Test once results are established but before taking a Break test.
  - If it is fleeing at the start of the Movement phase.
  - When it crosses an obstacle. Test when the obstacle is reached.
  - If the Giant decides to Jump Up and Down on an enemy. Test immediately beforehand.

To see if a Giant falls over roll a D6. On a roll of 1, the Giant falls over. A slain Giant falls over automatically. To determine in which direction the Giant falls, roll a scatter dice. Place the small round template in base contact with the Giant in the direction of the scatter dice, measured from the centre of the Giant's base. A model hit by a falling Giant suffers a Strength 6 Hit with the Multiple Wounds (D3) special rule. If the unit is in combat and the Giant has fallen over whilst attempting to Jump Up and Down, wounds inflicted by a falling Giant count towards the combat result. A Giant that falls over automatically suffers 1 wound. If the Giant is in combat then this Wound counts towards combat resolution.

Once on the ground, a Giant may get up in his following Movement phase, but may not move in the Movement phase that turn. Whilst on the ground a Giant may not attack, but he can still defend himself after a fashion so the enemy must still roll to score hits on him. If forced to flee whilst on the ground the Giant is slain. If the Giant gets the opportunity to pursue his foes whilst he's on the ground he stands up instead. A Giant may attack in close combat as usual on the turn he stands up.

- *Giant Special Attacks:* To determine what a Giant does in each Close Combat phase, pick a unit in base contact with the Giant and roll a D6 on one of the following tables. Which table you use depends on the size of the Giant's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Large Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4-6", "Swing with Club")))

*BIG THINGS CHART *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2-4", "Thump with Club"), ("5-6", "'Eadbutt")))

*\- 'Eadbutt:* The Giant automatically inflicts D3 Wounds which Ignores Armour Saves. If the victim is wounded but not slain, then it loses all of its following attacks. If the target has not yet attacked in that combat round, it loses those attacks; if it has already attacked, then it loses the next round's attacks. *\- Jump Up and Down:* The Giant must test to determine if it falls over (see previous page). If it falls over, work out where it falls and calculate damage as already described. Any wounds caused by the fall (on either side) count towards the combat result. Otherwise, it will attack using the Stomp (3D6) special rule this turn instead of its normal Stomp. A Giant that starts to Jump Up and Down will therefore continue to do so on the same target until it falls over, the target is destroyed, or the combat ends. *\- Swing with Club:* The Giant fights using the Random Attacks (2D6) special rule this round. *\- Thump with Club:* The Giant chooses a single model from the target unit that is in base contact. The target may attempt to avoid the blow by passing an Initiative test (use the lowest if the model has several different values). If the test is failed, the model takes 2D3 Wounds which Ignores Armour Saves. If a double is rolled the Giant cannot attack at all in the following round of the same combat. *\- Yell and Bawl:* Neither the Giant nor models in contact with it fight if they have not already done so this round. The Giant automatically wins the combat by 2 points. *\- Pick Up and\.\.\.:* The Giant stoops down and grabs a single Character in base contact from the target unit (Giant player's choice). The Giant grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Bag: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Giant should be slain, any enemy trapped in its bag are freed at the end of the
battle, and no longer counts as casualties."), ("2", "Throw Back into Combat: The victim is hurled into its own unit like a living missile. The
victim suffers D3 Strength 6 Hits which Ignores Armour saves, and D6 Strength 3 hits are
inflicted on the unit (save as normal)."), ("3", "Hurl: The victim is hurled into an enemy unit within 12\" of the Giant – randomly determine
which. The victim is removed as a casualty, and the unit takes D6 Strength 3 hits. Unsaved
Wounds from these hits count towards the Giant's combat result. If no enemy units are in range,
treat this as a Throw Back into Combat result instead."), ("4-5", "Squash or Eat: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Giant had rolled the Stuff into Bag result, above, and
then choose another victim. Roll again on this table to see what the Giant does with it.")))
  ],
  upgrades: [
*Throw Rocks:* A Giant with this upgrade gains a stone thrower with the following profile. If a misfire is rolled, the Giant suffers 1 Wound which Ignores Armour Saves.

#minitable(("Range", "Strength", "Special Rules"), ("6-18\"", "4(8)", "Multiple Wounds (D3), Slow to Fire"))
  ],
  options: [
- May have a Magical Ward (6+) +20 points
- May be upgraded to Throw Rocks +30 points
  ],
  notes: [
- You may take 1\-2 Giants as a single Rare choice.
  ],
)

#unit("BONEGRINDER GIANT",
  breakable: true,
  profiles: (
    (name: "Bonegrinder Giant", m: 10, ws: 3, bs: 3, s: 8, t: 8, w: 10, i: 1, a: "*", ld: 10, points: 380),
  ),
  troop-type: "Monster (Giant)",
  base-size: "50x100, 60x100 or 100x150",
  equipment: "Hand weapon",
  special-rules: "Immunity (Psychology), Natural Armour (6+), Stubborn",
  special-rules-body: [
- *Fall Over:* A Bonegrinder Giant must test to see whether it falls over if any of the following apply:
  - If it is beaten in close combat. Test once results are established but before taking a Break test.
  - If it is fleeing at the start of the Movement phase.
  - When it crosses an obstacle. Test when the obstacle is reached.
  - If the Bonegrinder Giant decides to Jump Up and Down on an enemy. Test immediately beforehand.

To see if a Bonegrinder Giant falls over roll a D6. On a roll of 1, the Bonegrinder Giant falls over. A slain Bonegrinder Giant falls over automatically. To determine in which direction the Bonegrinder Giant falls, roll a scatter dice. Place the large round template in base contact with the Bonegrinder Giant in the direction of the scatter dice, measured from the centre of the Bonegrinder Giant's base. A model hit by a falling Bonegrinder Giant suffers a Strength 8 Hit with the Multiple Wounds (D6) special rule. If the unit is in combat and the Bonegrinder Giant has fallen over whilst attempting to Jump Up and Down, wounds inflicted by a falling Bonegrinder Giant count towards the combat result. A Bonegrinder Giant that falls over automatically suffers 1 wound. If the Bonegrinder Giant is in combat then this Wound counts towards combat resolution.

Once on the ground, a Bonegrinder Giant may get up in his following Movement phase, but may not move in the Movement phase that turn. Whilst on the ground a Bonegrinder Giant may not attack, but he can still defend himself after a fashion so the enemy must still roll to score hits on him. If forced to flee whilst on the ground the Giant is slain. If the Bonegrinder Giant gets the opportunity to pursue his foes whilst he's on the ground he stands up instead. A Bonegrinder Giant may attack in close combat as usual on the turn he stands up.

- *Bonegrinder Giant Special Attacks:* To determine what a Bonegrinder Giant does in each Close Combat phase, pick a unit in base contact with the Giant and roll a D6 on one of the following tables. Which table you use depends on the size of the Bonegrinder Giant's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Large Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4", "Vomit"), ("5", "Kick"), ("6", "Crush")))

*BIG THINGS CHART *_Use this chart when fighting Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4-6", "Swing with Club")))

*BIGGER THINGS CHART *_Use this chart when fighting Monsters and Monstrous Creatures._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2-3", "Thump with Club"), ("4-5", "'Eadbutt"), ("6", "Grapple and...")))

*\- 'Eadbutt:* The Bonegrinder Giant automatically inflicts D6 Wounds which Ignores Armour Saves. If the victim is wounded but not slain, then it loses all of its following attacks. If the target has not yet attacked in that combat round, it loses those attacks; if it has already attacked, then it loses the next round's attacks. *\- Jump Up and Down:* The Bonegrinder Giant must test to determine if it falls over (see previous page). If it falls over, work out where it falls and calculate damage as already described. Any wounds caused by the fall (on either side) count towards the combat result. Otherwise, it will attack using the Stomp (3D6) special rule. A Bonegrinder Giant that starts to Jump Up and Down will therefore continue to do so on the same target until it falls over, the target is destroyed, or the combat ends. *\- Swing with Club:* The Bonegrinder Giant fights using the Random Attacks (3D6) special rule this round. *\- Thump with Club:* The Bonegrinder Giant chooses a single model from the target unit that is in base contact. The target may attempt to avoid the blow by passing an Initiative test (use the lowest if the model has several different values). If the test is failed, the model takes 2D6 Wounds which Ignores Armour Saves. If a double is rolled the Bonegrinder Giant cannot attack at all in the following round of the same combat. *\- Yell and Bawl:* Neither the Bonegrinder Giant nor models in contact with it fight if they have not already done so this round. The Bonegrinder Giant automatically wins the combat by 3 points. *\- Vomit:* Place the flame template so that the narrow end is in base contact with the Bonegrinder Giant and the body of the template is over at least one other unit. All models (friendly and enemy) under the template suffer an automatic Strength 5 hit which Ignores Armour Saves. All unsaved Wounds from these hits count towards the combat result (unsaved Wounds on friendly models count to your opponent's combat result). Once damage has been resolved, roll a D6. On a roll of 1\-3, the Bonegrinder Giant falls over. *\- Kick:* Choose a model in base contact with the Bonegrinder Giant That model is immediately removed as a casualty. The model behind the victim suffer a Strength 8 hit with the Multiple Wounds (D3) special rule that continues to pierce ranks like a bolt thrower. If he is slain, the model behind him suffers a Strength 7 hit with the Multiple Wounds (D3) special rule, and so on, until the unit runs out of ranks/files. *\- Crush!:* Place the small round template so that it is at least partially covering one or more models in base contact with the Giant, but not the Giant himself. The model under the centre of the template suffers an automatic Strength 10 hit with the Multiple Wounds (D6) special rule. Roll an artillery dice and halve the result – all other models (friendly and enemy) under the template suffer an automatic hit of this Strength. If the roll is a: misfire, the Giant manages to miss the rest of the unit.

*\- Grapple and\.\.\.:* Roll a D6 and consult the table below:

*D6 Result 1\-2 Knobbly Knee:* The victim immediately suffers D3 Wounds which Ignores Armour Saves and has their Weapon Skill and Initiative reduced to 1 until the end of the next player turn. *3 Slam:* The victim immediately suffers 2D3 Wounds which Ignores Armour Saves. If there is another enemy unit in base contact with the Bonegrinder Giant, that unit also suffers 2D3 Wounds which Ignores Armour Saves. If there are two or more other enemy units in base contact with the Bonegrinder Giant, randomise to see which is slammed. *4 Bear Hug:* Roll 2D6 and add the Bonegrinder Giant's Strength. Your opponent rolls 2D6 and adds the victim's Toughness. If the Bonegrinder Giant's score is higher, the victim is removed as a casualty with no saves of any kind allowed. *5 Fall Over:* Roll 2D6 and add the Bonegrinder Giant's Strength. Your opponent rolls 2D6 and adds the victim's Toughness. If the Bonegrinder Giant's score is higher, the victim is removed as a casualty with no saves of any kind allowed. Then continue to resolve the Bonegrinder Giant falling over, in the direction of the target. *6 Punch, and\.\.\.:* The victim suffers D3 Wounds which Ignores Armour Saves, then roll again on this table.

*\- Pick Up and\.\.\.:* The Bonegrinder Giant stoops down and grabs a single Character in base contact from the target unit (Bonegrinder Giant player's choice). The Bonegrinder Giant grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Bag: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Bonegrinder Giant should be slain, any enemy trapped in its bag are freed at the
end of the battle, and no longer counts as casualties."), ("2", "Throw Back into Combat: The victim is hurled into its own unit like a living missile. The
victim suffers D3 Strength 8 Hits which Ignores Armour saves, and D6 Strength 5 hits are
inflicted on the unit (save as normal)."), ("3", "Hurl: The victim is hurled into an enemy unit within 12\" of the Bonegrinder Giant – randomly
determine which. The victim is removed as a casualty, and the unit takes D6 Strength 5 hits.
Unsaved Wounds from these hits count towards the Bonegrinder Giant's combat result. If no
enemy units are in range, treat this as a Throw Back into Combat result instead."), ("4-5", "Squash or Eat: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Bonegrinder Giant had rolled the Stuff into Bag result,
above, and then choose another victim. Roll again on this table to see what the Giant does with
it.")))
  ],
  options: [
- May have a Magical Ward (6+) +35 points
  ],
  notes: [
- A Bonegrinder Giant has a Line of Sight value of 10.
  ],
)

= SPECIAL CHARACTERS

#unit("GWENLAEN",
  solo: true,
  first: true,
  subtitle: "The Warrior Queen",
  profiles: (
    (name: "Gwenlaen", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 9, points: 250),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Blade of Ogma")[Magic Weapon. The Blade of Ogma gives Gwenlaen +1 Strength as well as the Mighty Blow (1) and Devastating Charge special rules.],
    rule("The Black Shield")[Magic Armour. Shield. Enemies must re-roll all successful rolls To Hit against the wearer (both shooting and close combat).],
    rule("Torc of Protection")[Talisman. One use only. Declare if you want to use the Torc at the start of any phase. When used, the wearer cannot be harmed by any Spell, Missile or Close Combat attack for the duration of the turn.],
  ),
  special-rules: "Magical Ward (6+), Sessair, War Fury",
  special-rules-body: (
    rule("Warrior Queen")[Gwenlaen, and all friendly units within 12" of her, may re-roll failed Psychology tests, automatically pass Rally tests and may add D3" to their charge distance. In addition, the restriction on Tribal Affiliation is lifted – you may field units from any of the four tribes in the same army if you wish.],
  ),
  options: [
- May take javelins +6 points
- May take light armour +3 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Elk +20 points
  - Shieldbearers +25 points
  - Chariot (replacing one of the crew) +50 points
  ],
)

#unit("CORMAC CHATH",
  solo: true,
  subtitle: "Hero of Albion",
  profiles: (
    (name: "Cormac Chath", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 150),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic-items: (
    rule("Caladbolg Claymore")[Magic Weapon. Great Weapon. All hits with this sword are multiplied by D3.],
    rule("Seal of Chath")[Talisman. Enemies suffer \-1 on all To Wound rolls against Cormac Chath.],
  ),
  special-rules: "Battle Cry, Fir Domain, Magical Ward (6+), War Fury",
  special-rules-body: (
    rule("Hero of Albion")[For every unsaved wound caused by Cormac Chath in Close Combat, all friendly units in combat within 6" receive +1 to their combat resolution bonus (to a maximum of +3).],
  ),
)

#unit("CONOR MAC FEUD",
  solo: true,
  subtitle: "The Highlander",
  profiles: (
    (name: "Conor Mac Feud", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 175),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Great Fury")[Magic Weapon. This sword allows Conor to re-roll all failed rolls To Hit and To Wound.],
  ),
  special-rules: "Battle Cry, Finian, Hatred (Fimir), War Fury",
  special-rules-body: [
- *Fateful Destiny:* Conor has the Ward save (3+) special rule against all attacks except successful Killing Blows.
- *'There Can Be Only One!'* Conor must always issue and accept challenges when possible. In addition, he may nominate one enemy character. If Conor slays this character in a challenge, you receive +100 Victory Points. While in a challenge, Conor has the Heroic Killing Blow special rule.
  ],
)

#unit("ROTH MAC LYR",
  solo: true,
  subtitle: "Champion of Danu",
  profiles: (
    (name: "Roth Mac Lyr", m: 4, ws: 6, bs: 5, s: 5, t: 4, w: 3, i: 6, a: 4, ld: 8, points: 185),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "25x25 or 30x30",
  magic-items: (
    rule("Brainbiter")[Magic Weapon. Great weapon. All Attacks made with this weapon have the Ignores Armour Saves and Killing Blow special rule.],
    rule("Pelt of Chogor")[Magic Armour. The pelt grants Roth the Natural Armour (4+) special rule. In addition, enemy units within 6" of him must re-roll successful Psychology tests.],
    rule("Vambraces of Danu")[Talisman. The Vambraces of Danu give Roth Regeneration (6+).],
  ),
  special-rules: "Frenzy, Magical Ward (6+), Sessair, War Fury",
)

#unit("AMANTHAS",
  solo: true,
  subtitle: "The Huntress",
  profiles: (
    (name: "Amanthas", m: 4, ws: 4, bs: 6, s: 4, t: 4, w: 2, i: 5, a: 2, ld: 8, points: 115),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: [
- *Bow of the Sidhe:* Magic Weapon. The Bow of the Sidhe is a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("20/30\"", "5", "Killing Blow, Multiple Shots (2)"))
  ],
  special-rules: "Falian, Hatred (Dark Elves), Magical Ward (6+), Scouts, Sniper, War Fury",
  special-rules-body: (
    rule("Master of the Hunt")[Amanthas may deploy within 6" of the enemy instead of the normal 12" and is at an additional \-1 to hit with missile weapons when in Forests.],
  ),
)

#unit("AMANTHAS",
  solo: true,
  subtitle: "The Huntress",
  profiles: (
    (name: "Amanthas", m: 4, ws: 4, bs: 6, s: 4, t: 4, w: 2, i: 5, a: 2, ld: 8, points: 115),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: [
- *Bow of the Sidhe:* Magic Weapon. The Bow of the Sidhe is a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("30\"", "5", "Killing Blow, Multiple Shots (2)"))
  ],
  special-rules: "Falian, Hatred (Dark Elves), Magical Ward (6+), Scouts, Sniper, War Fury",
  special-rules-body: (
    rule("Master of the Hunt")[Amanthas may deploy within 6" of the enemy instead of the normal 12" and is at an additional \-1 to hit with missile weapons when in Forests.],
  ),
)

#unit("DURAL DURAK",
  solo: true,
  subtitle: "Leader of the Council of Druids",
  profiles: (
    (name: "Dural Durak", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 3, i: 3, a: 1, ld: 9, points: 285),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "Dural Durak is a Level 4 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Heavens
- Life
- Light

In addition, he knows the _Elemental Power_ spell (see Druid Elders) and the following spell:

- *Voice of Command:* Level 4, cast on 12+. _Voice of Command_ is a *hex* spell with a range of 24". The target cannot voluntarily move in its next Movement phase or shoot in its next Shooting phase.
  ],
  magic-items: (
    rule("The Heartwood Staff")[Arcane Item. The Heartwood Staff gives Dural Durak +1 casting bonus, which is increased to +2 if he is within 6" of a forest.],
  ),
  special-rules: "Magical Ward (6+), War Fury",
  special-rules-body: (
    rule("High Druid")[Dural Durak may reroll all Power Dice when casting a spell once per turn, as long as it was not a Miscast result. This is done after resolving any Unlimited Power rolls.],
  ),
  options: [
- May be mounted on one of the following:
  - Warhorse +15 points
  - Elk +20 points
  - Chariot (replacing one of the crew) +50 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("MORRIGAN",
  solo: true,
  subtitle: "The Phantom Queen",
  profiles: (
    (name: "Morrigan", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 9, points: 295),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "Morrigan is a Level 3 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Death
- Shadows

She always knows _The Flock of Doom_ spell from the Lore of Beasts in addition to her other spells.
  ],
  special-rules: "Fear, Fly (10), Independent",
  special-rules-body: (
    rule("Murder of Crows")[Morrigan causes 2D6 Strength 2 Impact Hits with the Magical Attacks special rule whenever she makes a successful charge.],
    rule("Omen of War")[All friendly units with the War Fury special rule within 8" of Morrigan gain +1 To Hit in Close Combat, and enemy units suffer \-1 to their Leadership. However, Morrigan may never be the army's General.],
    rule("The Phantom Queen")[Morrigan has a Magical Ward (4+).],
  ),
)

#unit("AGUM THE WATCHER",
  solo: true,
  subtitle: "Guardian of the Coast",
  profiles: (
    (name: "Agum the Watcher", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 6, i: 3, a: "*", ld: 10, points: 250),
  ),
  troop-type: "Monster (Special Character, Giant)",
  base-size: "50x50 or 50x75",
  equipment: "Hand weapon",
  special-rules: "Fall Over (see Giants), Giant Special Attacks (see Giants), Immunity (Psychology), Loner, Natural Armour (6+), Stubborn",
  special-rules-body: (
    rule("Guardian of the Coast")[Agum has the Throw Rocks upgrade (see Giants). In addition, Agum's may re-roll the scatter dice.],
    rule("Thick Skull")[Agum's 'Eadbutt attack has the Multiple Wounds (D6) special rule.],
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
  subtitle: "Stefan Wolf",
  before: [
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
  ],
)
