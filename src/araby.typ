// Araby 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "araby",
  army: "Araby",
  version: "3.0",
  layout: "army",
  cover: "covers/araby.png",
  align: "neutral",
)

#show: book.with(title: "Warhammer Armies Project — Araby 3.0")

#cover(
  title: "Araby",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/araby.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Araby*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in an Araby army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules' that apply to several Araby units, and these are detailed here.

#namecost("TACTICAL WITHDRAWAL", "")

Models with this rule may re-roll the lowest dice roll for their flee distance when choosing Flee as a charge reaction.

#namecost("ZEALOTRY", "")

Units with this rule counts as having one rank more than they actually have when determining if they are Steadfast. In addition, they have the Cold-blooded special rule for any Break tests taken in the first round of combat.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Arabyans. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#runin[MARTYR]'#runin[S SHARD 50 points] If the wielder of this weapon causes an unsaved wound on an enemy model, they may choose to lose D3 of their own Wounds to instantly kill the opponent. No kind of saves may be taken by either side.

#magic-weapon("BEDAYAH", 40)[The wielder of this weapon gains +3 Weapon Skill and the Always Strikes First special rule.]

#magic-weapon("DHAMI, THE BLACK SWORD OF ANTAR", 40)[The wielder gains +1 To Wound and the Lightning Attacks special rule.]

#magic-weapon("SUNSPEAR", 40, type: "Light lance/spear")[The wielder of this weapon gains +1 To Hit and may re-roll failed rolls To Wound.]

#magic-weapon("BLADE OF HOLY WRATH", 30)[The wielder gains a Strength bonus equal to the Wound characteristics of any enemy model he Hits in close combat.]

#magic-weapon("FIRE EATER", 30)[The wielder of this item gains a Breath Weapon with Strength 4 and the Flaming Attack special rule. In addition, they gain the Immunity (Flaming Attacks) special rule.]

#magic-weapon("BOW OF SEEKING", 25, type: "Bow")[Shots fired with this weapon are resolved at Strength 4 and have the Sniper special rule.]

#magic-weapon("EBONY BOW", 25, type: "Shortbow")[Shots fired with this weapon are resolved at Strength 5 and have the Multiple Wounds (D3) special rule.]

#magic-weapon("EFREET'S BLADE", 25, one-use: true)[This weapon can be activated at the start of any round of Close Combat. For the remainder of the round, the model gains +3 Strength and Attacks as well as the Flaming Attacks and Multiple Wounds (D3) special rules.]

#magic-weapon("HORN OF THE AL-MIRAJ", 25, type: "Light lance/spear")[The wielder of this weapon gains the Killing Blow and Terror and special rules against War Beasts, Cavalry, Monstrous Infantry, Monstrous Cavalry and Chariots.]

#magic-weapon("THE DAGGER OF THE GRAND MASTER", 20, only: "Hashishin", type: "Additional hand weapon")[Nominate one enemy character at the start of the battle. The wielder of the Dagger will wound that model on a 2+. In addition, that model must re-roll successful armour saves against Wounds caused by this weapon.]

#magic-weapon("THE THIRSTING BLADE", 20)[The wielder gains the Frenzy special rule. For every 6 rolled To Hit, they gain +1 Attack. These additional Attacks can also generate additional Attacks. However, every time the wielder rolls a 1 To Hit, they must resolve a Hit against themselves instead.]
]

#magic-item-section("armour")[
#magic-armour("SHIELD OF FAITH", 45, type: "Shield")[The bearer gains a Ward save (5+). If the bearer is wounded by an enemy with a magical weapon but passes their Ward save, the enemies weapon is destroyed.]

#magic-armour("SCALES OF AL-TINNIN", 40, type: "Medium armour")[The wearer gains the Natural Armour (6+) and Terror special rules.]

#magic-armour("ARMOUR OF DEFLECTION", 25, type: "Medium armour")[For every successful armour save the wearer of this item makes in close combat, the attacking model suffers back a Hit using the same Strength and special rules as they used to attack.]

#magic-armour("HELM OF THE SUN'S WRATH", 25)[This item adds a 6+ armour save. This item gives the wearer the Immunity (Flaming Attacks) and Hatred special rules.]

#magic-armour("BRACERS OF THE SNAKE", 20)[This item adds a 6+ armour save. One enemy model in base contact, chosen by the bearer, suffer \-1 penalty to their Attack characteristic.]

#magic-armour("SCORPION ARMOUR", 20, type: "Light armour")[The wearer has the Natural Armour (5+) and Poisoned Attacks special rules.]
]

#magic-item-section("talisman")[
#talisman("RING OF DIVINE HEALING", 40)[At the start of each player’s turn, the ring will restore one lost Wound suffered earlier in the game, up to the model's starting value.]

#talisman("ORB OF ILLUSION", 40, only: "Hashishin")[Roll a D6 for every Hit the bearer suffers in close combat. On a 1\-3, the Hit is ignored.]

#talisman("TALISMANIC TUNIC OF THE ONE", 40)[This item gives the wearer a 5+ Ward save. In addition, the wearer may re-roll armour save rolls of 1.]

#talisman("HABOOB CLOAK", 35)[All close combat attacks against the wearer suffer \-1 To Hit. In addition, the wearer and any unit they join always counts as being in soft cover.]

#talisman("HAND OF FATIMA", 20)[This item gives the bearer the Magic Resistance (1) special rule. In addition, they may re-roll one roll To Hit, To Wound or when taking armour or Ward saves per turn.]

#talisman("NAZAR AMULET", 20, one-use: true)[The first time the wielder or their unit is targeted by an enemy spell, it is automatically dispelled.]
]

#magic-item-section("arcane")[
#arcane-item("THE SUN OF KNOWLEDGE", 50)[The bearer of this item gain a +D3 casting bonus to each of their spell casting attempts and the Loremaster special rule. However, if they roll a Miscast, they must add their casting bonus from this item to the result on the Miscast table.]

#arcane-item("BOOK OF HIDDEN THINGS", 40)[The bearer of this item may re-roll any failed Dispel attempts.]

#arcane-item("THE AIM OF THE SAGE", 35)[The bearer of this item may roll an additional free dice when casting spells from the Lore of the Heavens, and discard one dice of their choice.]

#arcane-item("ENCHANTED PUZZLEBOX", 25)[The Puzzlebox has an effect based on the Winds of Magic roll. If the total rolled for the Winds of Magic is an odd number, add 1 dice to your power pool. If it is an even number, the bearer gains a +1 casting bonus this Magic phase.]

#arcane-item("ABODE OF DJINN", 20)[The bearer of this item may re-roll one Power Dice each spellcasting attempt. However, they also suffer a \-1 casting penalty.]

#arcane-item("TOME OF OMENS", 20)[The wielder of this item may re-roll 1's when channelling power and dispel dice.]

#arcane-item("BOOK OF IDOLS", 15)[The bearer may reroll failed attempts of Genie Binding, and may summon them up to 12" away instead of 6".]

#arcane-item("ARCANE WINDGLASS", 10, one-use: true)[The bearer can use the Windglass immediately after your opponent has rolled the dice for the Winds of Magic. If they do so, your opponent must re-roll the result.]
]

#magic-item-section("enchanted")[
#enchanted-item("SCROLLS OF RUQYAH", 30, bound: (power: 3))[This item contains the spell _Healing Energy_ from the Lore of Light.]

#enchanted-item("CROWN OF SULTAN SHADDAD", 25, only: "Army General")[The wearer of this item gains the Inspiring Presence (6) special rule.]

#enchanted-item("THE GOLDEN CARAFE", 25)[Enemy armours lose all magical bonuses against any close combat attacks made by the bearer; they count as mundane armours of their type. In addition, any successful enemy Ward saves must be re-rolled.]

#enchanted-item("LAMP OF ALA UD-DIN", 25, one-use: true)[At the start of any of his turns, the bearer of this item may choose to summon a Genie of any type. The Genie must be placed within 6" of the bearer, at least 1" away from any units or impassable terrain. This Genie lasts until the start of the bearer's next turn.]

#enchanted-item("MASK OF THE FAITH", 25)[This item gives the wearer the Terror special rule. In addition, Undead models treat this model as causing Fear against them, even though they are normally immune to Fear.]

#enchanted-item("CHALICE OF PAIN", 20)[If the bearer of this item rolls a 5 or 6 To Hit with either close combat or missile weapons that Attack automatically Wounds.]

#enchanted-item("CLOAK OF SHADOWS", 20, only: "Hashishin")[Enemy missile attacks suffer \-2 to hit to the wearer of this item.]

#enchanted-item("ECHO OF THE HATIF", 20)[At the beginning of each of your turns, choose one friendly unit with the Zealotry special rule within 24" of the bearer. Until the beginning of your next turn, the chosen has the same Leadership Characteristic as the bearer of this item.]

#enchanted-item("HORN OF SHADHAVAR", 20, one-use: true)[This item can be used at the start of any of your turns. Until the start of your next turn, all friendly units within 12" gain +1 Leadership.]

#enchanted-item("RING OF ALI AL-MAWLA", 20)[The wearer and any unit they have joined gain the Immunity (Fear, Panic) special rule.]

#enchanted-item("ROPE OF KADIZAR", 20, only: "Model on foot")[The bearer may use this item at the start of their Remaining Moves phase instead of moving normally, as long as they are not in base contact with an enemy model or has moved previously this turn. The model can move to any location on the battlefield, but must be placed at least 1" away from enemy units and impassable terrain.]
]

#magic-item-section("standard")[
#magic-standard("STANDARD OF AL-HAIKK", 75)[The unit carrying this standard gains the Fear special rule. In addition, all friendly units within 12" gains +1 to their Combat Resolution bonus.]

#magic-standard("BANNER OF THE DESERT", 50)[Enemies firing at the unit must re-roll successful To Hit rolls with their missile weapons. In addition, enemy units in base contact with the unit carrying this standard suffer \-1 to their Weapon Skill.]

#magic-standard("BANNER OF THE JEWELLED OASIS", 35)[The unit carrying this standard gains the Vanguard special rule. In addition, they may re-roll failed rolls To Hit in close combat on any turn that they charge.]

#magic-standard("BANNER OF THE DJINN", 35)[The unit carrying this standard counts as being Ethereal for the purposes of Movement.]

#magic-standard("ICON OF THE BLESSED WALI", 25)[The unit carrying this standard gains a 6+ Ward save against non-Magical Attacks.]

#magic-standard("STANDARD OF BEL-ALIAD", 25)[At the start of each close combat phase, all enemy units in base contact with the unit carrying this standard suffer D6 Strength 3 Hits.]

#magic-standard("BANNER OF HOLY FERVOUR", 20)[The unit carrying this standard gains +1 to their Movement and Initiative characteristics.]

#magic-standard("STANDARD OF THE STEED", 15, only: "Cavalry")[The unit carrying this standard gains +D3 to their charge and pursuit distances.]
]

= CHARACTERS

#unit("COMMANDERS",
  first: true,
  profiles: (
    (name: "Emir", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 90),
    (name: "Sheikh", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Tactical Withdrawal, Zealotry",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Shortbow +4 points
  - Handgun +7 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Camel +10 points
  - Flying Carpet +15 points
  - Arabyan Steed +20 points
  - Radiant Pegasus +40 points
  - War Elephant (replacing two of the crew) +120 points
- One Sheikh may carry the Battle Standard +25 points
- A Sheikh may take Magic Items up to a total of 50 points
- An Emir may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("SORCERERS",
  profiles: (
    (name: "Magus", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
    (name: "Sahir", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Magus is a Level 3 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Heavens
- Fire
- Light
- Metal
- Shadow
  ],
  special-rules: "Zealotry",
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Camel +10 points
  - Flying Carpet +15 points
  - Arabyan Steed +20 points
  - Radiant Pegasus +40 points
- A Sahir may be accompanied by one Genie +85 points
- A Magus may be accompanied by up to two Genies +85 points/Genie
- A Battle Wizard may take Magic Items up to a total of 50 points
- A Battle Wizard Lord may take Magic Items up to a total of 100 points
  ],
)

#unit("CLERIC OF THE ONE",
  profiles: (
    (name: "Cleric", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 90),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  options: [
- May take light armour +3 points
- May be mounted on one of the following:
  - Camel +15 points
  - Arabyan Steed +20 points
- May take Magic Items up to a total of 50 points
  ],
  special-rules: "Magical Attacks, Magic Resistance (1), Zealotry",
  special-rules-body: [
- *Battle Prayers of The One:* A model with this special rule knows the three Battle Prayers listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. A friendly unit can only be under the effect of one Battle Prayer at a time.
  - *Invocation of the Blade:* The unit gains the Hatred special rule until the start of your next turn.
  - *Resolve of the Devout:* The unit gains the Stubborn special rule until the start of your next turn.
  - *Shield of the Crescent Moon:* The unit gains a 6+ Ward save until the start of your next turn.
- *Holy Fury*: The model and any unit they are currently in have the Frenzy special rule.
  ],
  order: ("troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("HASHISHIN",
  profiles: (
    (name: "Hashishin", m: 5, ws: 6, bs: 6, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 95),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Dodge (5+), Hidden, Immunity (Psychology), Scouts, Zealotry",
  options: [
- May take an additional hand weapon +5 points
- May have the Killing Blow special rule +15 points
- May have the Poisoned Attacks special rule +10 points
- May take Magic Items up to a total of 50 points
  ],
)

= CHARACTER MOUNTS

#unit("ARABYAN STEED",
  first: true,
  profiles: (
    (name: "Arabyan Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
  options: [
- May take barding +5 points
  ],
)

#unit("CAMEL",
  profiles: (
    (name: "Camel", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Camelid)",
  base-size: "25x50 or 30x60",
  special-rules: (
    rule("Scare Horses")[Models with this special rule have the Fear special rule when fighting Equines.],
  ),
)

#unit("FLYING CARPET",
  compact: true,
  profiles: (
    (name: "Flying Carpet", m: "-", ws: "-", bs: "-", s: "-", t: "-", w: "-", i: "-", a: "-", ld: "-", points: ""),
  ),
  troop-type: "Infantry (Animated Construct)",
  base-size: "40x40",
  special-rules: "Fly (10)",
)

#unit("RADIANT PEGASUS",
  profiles: (
    (name: "Radiant Pegasus", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "40x40 or 40x60",
  special-rules: "Fly (9)",
  special-rules-body: (
    rule("Radiant Aura")[Any unit in base contact with a model with this special rule at the start of each round of close combat suffer D6 Strength 2 Hits with the Magical Attacks special rule.],
  ),
)

#unit("GENIES",
  profiles: (
    (name: "Dao", m: 6, ws: 5, bs: 3, s: 4, t: 5, w: 3, i: 4, a: 3, ld: 7, points: "-"),
    (name: "Marid", m: 6, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 7, points: "-"),
    (name: "Djinn", m: 6, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 6, a: 3, ld: 7, points: "-"),
    (name: "Efreet", m: 6, ws: 5, bs: 3, s: 5, t: 4, w: 3, i: 5, a: 3, ld: 7, points: "-"),
  ),
  troop-type: "Monstrous Infantry (Daemon)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Magical Attacks, Unstable, Ward save (5+)",
  special-rules-body: (
    rule("Genie Binding")[A Genie is not deployed on the table at the start of the battle, but may instead be summoned at the start of any of your turns (as long as they are not already summoned and alive) by the Magus who controls the Genie by passing a Leadership test (using their own Leadership characteristics). Place the Genie within 6" of the Magus, at least 1" away from other units or impassable terrain. It may act normally in the turn it is summoned. If the Genie is slain, it can be summoned back in a later turn, but the Magus will suffer a cumulative \-1 penalty to the Leadership test required every time they try to do so. However, if the Magus is slain, the Genie is immediately removed as a casualty.],
  ),
  upgrades: (
    rule("Dao")[A Dao has the Natural Armour (4+) special rule.],
    rule("Djinn")[A Djinn has the Fly (10) special rule.],
    rule("Efreet")[An Efreet has the Hatred, Flaming Attacks, and Immunity (Flaming Attacks) special rules.],
    rule("Marid")[A Marid has the Magic Resistance (2) special rule.],
  ),
  notes: [
- A Genie must be given one of the upgrades above at no additional cost.
  ],
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
  special-rules: "Tactical Withdrawal, Zealotry",
  options: [
- May take spears +0.5 point/model
- May take light armour +0.5 point/model
- May upgrade one Warrior to a Leader +5 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("BOWMEN",
  profiles: (
    (name: "Bowman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shortbow",
  special-rules: "Tactical Withdrawal, Zealotry",
  options: [
- May replace shortbows with crossbows +3 points/model
- May take light armour +0.5 point/model
- May take bucklers +0.5 point/model
- May upgrade one Bowman to a Leader +5 points
- May upgrade one Bowman to a Musician +5 points
- May upgrade one Bowman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("TRIBAL SKIRMISHERS",
  profiles: (
    (name: "Tribal Skirmisher", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 6),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, javelins",
  special-rules: "Skirmishers, Tactical Withdrawal, Zealotry",
  options: [
- May replace javelins with slings +1 point/model
- May take shields +1 point/model
- May upgrade one Tribal Skirmisher to a Leader +5 points
- May upgrade one Tribal Skirmisher to a Musician +5 points
- May upgrade one Tribal Skirmisher to a Standard Bearer +10 points
  ],
)

#unit("CORSAIRS",
  profiles: (
    (name: "Corsair", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, buckler",
  special-rules: "Skirmishers, Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Slavers")[Whenever a unit containing at least 5 models with this special rule breaks an enemy unit in close combat and pursues them, the fleeing unit must re-roll the highest result on their flee roll.],
  ),
  options: [
- May be upgraded to Ambushers +1 point/model
- May replace bucklers with additional hand weapons +0.5 point/model
- May take throwing weapons +1 point/model
- May upgrade one Corsair to a Leader +5 points
- May upgrade one Corsair to a Musician +5 points
- May upgrade one Corsair to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("SLAVE LEVIES",
  profiles: (
    (name: "Slave", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: 2),
    (name: "Slavemaster", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 20),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  handler: "Slavemaster (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Mixed Unit",
  special-rules-body: (
    rule("Slavemaster")[Each unit of Slaves must take a leadership test at the start of each of their turns. If failed, the unit will suffer D6 Strength 3 Hits for each Slavemaster.],
  ),
  options: [
- May take spears +0.5 point/model
- May take shields +1 point/model
  ],
  notes: [
- You must include one Slavemaster for every 20 Slaves in the unit.
  ],
)

#unit("SIPAHIS",
  profiles: (
    (name: "Sipahi", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 16),
    (name: "Arabyan Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Arabyan Steed (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, light armour, shield",
  special-rules: "Fast Cavalry, Tactical Withdrawal, Zealotry",
  options: [
- May take light lances +1 point/model
- May take shortbows +1 point/model
- May take medium armour +1.5 points/model
- May upgrade one Sipahi to a Leader +5 points
- May upgrade one Sipahi to a Musician +5 points
- May upgrade one Sipahi to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("DESERT RIDERS",
  profiles: (
    (name: "Desert Rider", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 11),
    (name: "Arabyan Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Arabyan Steed (Equine)",
  base-size: "25x50",
  equipment: "Hand weapon",
  special-rules: "Fast Cavalry, Quick Shot, Tactical Withdrawal, Zealotry",
  options: [
- May take light lances +1 point/model
- May take shortbows +1 point/model
- May take light armour +1 point/model
- May take shields +1 point/model
- May upgrade one Desert Rider to a Leader +5 points
- May upgrade one Desert Rider to a Musician +5 points
- May upgrade one Desert Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("CAMEL RIDERS",
  profiles: (
    (name: "Camel Rider", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 11),
    (name: "Camel", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Camel (Camelid)",
  base-size: "25x50",
  equipment: "Hand weapon",
  special-rules: "Fast Cavalry, Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Scare Horses")[Models with this special rule has the Fear special rule when fighting Equines.],
  ),
  options: [
- May take light lances +1 point/model
- May take shortbows +1 point/model
- May take light armour +1 point/model
- May take shields +1 point/model
- May upgrade one Camel Rider to a Leader +5 points
- May upgrade one Camel Rider to a Musician +5 points
- May upgrade one Camel Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

= SPECIAL UNITS

#unit("PALACE GUARD",
  first: true,
  profiles: (
    (name: "Palace Guard", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, medium armour",
  special-rules: "Stubborn, Tactical Withdrawal, Zealotry",
  options: [
- May upgrade one Palace Guard to a Leader +5 points
- May upgrade one Palace Guard to a Musician +5 points
- May upgrade one Palace Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("JANISSARIES",
  profiles: (
    (name: "Janissary", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 7),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, buckler",
  special-rules: "Disciplined, Immunity (Panic), Tactical Withdrawal, Zealotry",
  options: [
- May replace bucklers with one of the following:
  - Shields +0.5 point/model
  - Polearms +1.5 points/model
  - Shortbows +2.5 points/model
  - Handguns +5.5 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May upgrade one Janissary to a Leader +5 points
- May upgrade one Janissary to a Musician +5 points
- May upgrade one Janissary to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("MAMELUKES",
  profiles: (
    (name: "Mameluke", m: 4, ws: 4, bs: 4, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 22),
    (name: "Arabyan Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Arabyan Steed (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Light lance, medium armour, shield",
  special-rules: "Devastating Charge, Fast Cavalry, Tactical Withdrawal, Zealotry",
  options: [
- May take shortbows +2 points/model
- May take heavy armour +2 points/model
- May take barding +1 point/model
- May upgrade one Mameluke to a Leader +5 points
- May upgrade one Mameluke to a Musician +5 points
- May upgrade one Mameluke to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SILENT GUARD",
  profiles: (
    (name: "Silent Guard", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 9, points: 11),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human).",
  base-size: "20x20 or 25x25",
  equipment: "Spear, light armour, shield",
  special-rules: "Unbreakable",
  options: [
- May upgrade one Silent Guard to a Leader +5 points
- May upgrade one Silent Guard to a Musician +5 points
- May upgrade one Silent Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("BLADEDANCERS",
  profiles: (
    (name: "Bladedancer", m: 4, ws: 5, bs: 5, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 9),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  special-rules: "Dodge (6+), Tactical Withdrawal, Zealotry",
  special-rules-body: [
- *Bladedances:* At the start of each round of combat, the unit must choose one of the following dances which effect lasts for the duration of the turn. They may not use the same dance in two consecutive turns of the same combat engagement.
  - *Kiss of the Scorpion:* The Bladedancers gain the Killing Blow special rule.
  - *Serpent's Embrace:* The Bladedancers gain +1 To Hit.
  - *Veil of Seduction:* Enemies suffer \-1 To Hit the Bladedancers in close combat.
  ],
  options: [
- May have Poisoned Attacks +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Bladedancer to a Leader +5 points
- May upgrade one Bladedancer to a Musician +5 points
- May upgrade one Bladedancer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("WHIRLING DERVISHES",
  profiles: (
    (name: "Dervish", m: 5, ws: 5, bs: 3, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 12),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  special-rules: "Frenzy, Impact Hits (1), Independent, Skirmishers, Swiftstride, Zealotry",
  options: [
- May upgrade one Dervish to a Leader +5 points
  ],
)

#unit("NAFFATUN",
  profiles: (
    (name: "Naffatah", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, naphtha bombs",
  equipment-body: [
- *Naphtha Bombs:* Naphtha bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "4", "Flaming Attacks (non-physical), Ignore Armour Saves, March & Shoot, Quick Shot"))

- *Naphtha Siphon:* Naphtha siphons are fire throwers with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "3", "Flaming Attacks, Ignore Armour Saves"))

Unlike normal fire throwers, naphtha siphons do not roll any artillery dice. An enemy unit taking a casualty from naphtha siphons must take a Panic test.
  ],
  special-rules: "Skirmishers, Tactical Withdrawal, Zealotry",
  options: [
- One model may replace their naphtha bombs with naphtha siphon +20 points
  ],
)

#unit("NOMAD SCOUTS",
  profiles: (
    (name: "Nomad Scout", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 11),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, handgun",
  special-rules: "Scouts, Skirmishers, Tactical Withdrawal, Zealotry",
  options: [
- May upgrade one Nomad Scout to a Leader +5 points
  ],
)

#unit("FLYING CARPET RIDERS",
  profiles: (
    (name: "Carpet Rider", m: 0, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 12),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "40x40",
  equipment: "Hand weapon, shortbow",
  special-rules: "Fly (10), Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Carpet Bombing")[Once per turn, during the Remaining Moves segment of the Movement phase, a unit of Carpet Riders may carpet bomb an enemy unit at least one of its models has moved over during that phase. Each Flying Carpet Rider inflicts D3 Strength 2 Hits with the Poisoned Attacks special rule.],
  ),
)

= RARE UNITS

#unit("PEGASUS GUARD",
  first: true,
  profiles: (
    (name: "Pegasus Guard", m: 4, ws: 4, bs: 4, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 38),
    (name: "Radiant Pegasus", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: ""),
  ),
  unit-size: "3-9",
  troop-type: "Cavalry (Human)",
  mount: "Radiant Pegasus (Equine)",
  base-size: "40x40 or 40x60",
  equipment: "Light lance, medium armour, shield",
  special-rules: "Fly (9), Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Radiant Aura")[Any unit in base contact with a model with this special rule at the start of each round of close combat suffer D6 Strength 2 Hits with the Magical Attacks special rule.],
  ),
  options: [
- May take shortbows +2 points/model
- May upgrade one Pegasus Guard to a Leader +5 points
- May upgrade one Pegasus Guard to a Musician +5 points
- May upgrade one Pegasus Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("WAR ELEPHANT",
  profiles: (
    (name: "War Elephant", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 5, i: 2, a: 4, ld: 6, points: 120),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  ),
  unit-size: "1-3",
  troop-type: "Monstrous Creature (Elephantine)",
  crew: "3 (Human)",
  base-size: "50x75 or 50x100",
  equipment: "Hand weapon, shortbow (Crew only)",
  special-rules: "Impact Hits (D3+1), Natural Armour (5+), Zealotry (Crew only)",
  special-rules-body: (
    rule("Stampede")[If a War Elephant suffers a wound from a missile attack, it must immediately take a Panic test. Any time a War Elephant fails a Panic or Break test it will Flee in a random direction, as determined by the Scatter dice. If it flees through any unit, it inflicts D6+1 Strength 5 hits.],
  ),
  upgrades: (
    rule("Mahout Expert")[The War Elephant may re-roll failed Stampede tests.],
    rule("Spike Chain")[The War Elephant gains the Impact Hits (D6+1) special rule.],
    rule("Spiked Tusks")[The War Elephant gains +1 Strength to its Attacks.],
  ),
  options: [
- May replace shortbows with bows +5 points/model
- May take up to two extra Crew +5 points/Crew
- May take light armour +10 points/model
- May take barding +5 points/model
- May take Mahout Expert +10 points/model
- May take Spike Chains +15 points/model
- May take Spiked Tusks +15 points/model
  ],
)

#unit("CANNON",
  profiles: (
    (name: "Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Cannon), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, cannon",
  special-rules: "Zealotry",
  options: [
- May take an additional Crew +6 points
  ],
)

#unit("MONSTER BOMBARD",
  profiles: (
    (name: "Monster Bombard", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: 140),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x100 (Monster Bombard), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, monster bombard",
  equipment-body: [
- *Monster Bombard:* A monster bombard is a great cannon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-72", "10", "Multiple Wounds (D6+1)"))

A monster bombard may re-roll the distance bounced by the cannon ball and failed rolls To Wound. If a Misfire is rolled, add \-1 to the result on the Blackpowder Misfire Chart.
  ],
  special-rules: "Zealotry",
  options: [
- May take up to two additional Crew +6 points/Crew
  ],
)

#unit("QAMAR SANDGLASS",
  profiles: (
    (name: "Qamar Sandglass", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 125),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: ""),
  ),
  troop-type: "War Machine (Human)",
  crew: "3 Crew (Human)",
  base-size: "50x50 or 50x75 (Qamar Sandglass), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon",
  special-rules: "Zealotry",
  special-rules-body: [
- *Well of Endless Dunes:* Arcane Item. This contains the following three Bound Spells:
  - *Mirage:* Level 2, cast on 8+. Remains in Play. _Mirage_ is a *hex* spell with a range of 24". Place a marker within 24" and Line of Sight of the target. While the spell is in effect, the target must turn and move directly towards the marker as far as possible in the Movement phase. The spell is immediately dispelled if the target reaches the marker, has lost Line of Sight to it at the start of their Movement phase or becomes engaged in close combat.
  - *Sandstorm:* Level 2, cast on 8+. _Sandstorm_ is an *hex aura* spell with a range of 12" Until the start of your next Magic phase, all units (friend and foe) within range cannot use missile weapons or the Fly special rule, and no Line of Sight can be drawn to or from units within range. In addition, enemy units within range cannot March.
  - *Shifting Sands:* Level 2, cast on 8+. _Shifting Sands_ is a *hex* spell with a range of 24". Until the start of your next Magic phase, all models in the target unit halve all their movement and must take a Dangerous Terrain test whenever they move.
  ],
)

#unit("ROC",
  profiles: (
    (name: "Roc", m: 4, ws: 5, bs: 0, s: 6, t: 6, w: 6, i: 5, a: 5, ld: 7, points: 230),
  ),
  troop-type: "Monster (Avian)",
  base-size: "50x100, 60x100 or 100x150",
  special-rules: "Fly (8)",
  special-rules-body: [
- *Drop Attack:* Once per turn, during the Remaining Moves sub-phase, a Roc using their Fly move may pick up one enemy model with maximum Unit Strength of 3 (except Swarms or models with the Ethereal special rules) chosen by the Araby player ("Look Out Sir!" still applies) that it has moved over during that phase. The model can avoid the Drop Attack by passing an Initiative test.

If the model is successfully picked up, it is then either dropped to the ground, or it may be dropped over another unengaged enemy unit that the Roc moves over afterwards during their Fly move. That target unit immediately suffers D6 hits with a Strength equal to the Unit Strength of the picked-up model plus 2, distributed as Hits from shooting. The dropped model is automatically removed as a casualty with no saves allowed.
  ],
)

= SPECIAL CHARACTERS

#unit("KHALIL AL-ZAHIR",
  solo: true,
  first: true,
  subtitle: "Great Sultan of Araby",
  profiles: (
    (name: "Khalil al-Zahir", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 2, ld: 10, points: 290),
    (name: "Thronebearers", m: 4, ws: 4, bs: 3, s: 4, t: "-", w: "-", i: 3, a: 4, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  mount: "Thronebearers (Human)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon, medium armour",
  magic-items: (
    rule("Jewel of Mullah Aklan'd")[Talisman. This item gives the bearer the Magical Ward (5+) and Magic Resistance (2) special rules.],
    rule("Scriptures of the Prophet")[Enchanted Item. This item gives the bearer the Battle Prayers of The One (see Clerics of the One) special rule. However, each Battle Prayer can target any friendly unit with the Zealotry special rule within 12" rather than just the bearer's unit.],
  ),
  special-rules: "Inspiring Presence (6), Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Bodyguard")[The Great Sultan must be accompanied by a unit of Palace Guard, and he may not leave this unit. He is placed in the second rank as centrally as possible. As long as the Great Sultan is alive, the Palace Guard has the Immunity (Psychology) special rule.],
    rule("Great Sultan of Araby")[Khalil al-Zahir must be the Army General. In addition, he has the Hold Your Ground (12) and Inspiring Presence (6) special rules and he also counts as having the ability like a Battle Standard Bearer. Furthermore, any friendly unit within 12" adds +1 to their Combat Resolution bonus.],
  ),
  notes: [
- Khalil al-Zahir has a Unit Strength of 5 and a Line of Sight value of 2.
  ],
)

#unit("SALAH AD-DIN",
  solo: true,
  subtitle: "The Sword of The One",
  profiles: (
    (name: "Salâh ad-Dîn", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 10, points: 265),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Zulfiqar")[Magic Weapon. This weapon gives the wielder the Always Strikes First and Ignores Armour saves special rules.],
    rule("Armour of the Sun")[Magic Armour. Medium armour. Enemies attempting to strike the wearer must re-roll all successful rolls to hit in close combat.],
  ),
  options: [
- May be mounted on an Arabyan Steed +21 points
  ],
  special-rules: "Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Righteousness of Faith")[Salâh ad-Dîn has the Inspiring Presence (6) special rule, and any unit joined by him may re-roll failed Psychology tests and add +1 to their combat resolution.],
    rule("Strategic Genius")[If Salâh ad-Dîn is the Army General, any Core unit in the army may deploy as Ambushers per the normal rules.],
  ),
  order: ("troop-type", "base-size", "magic-items", "options", "special-rules"),
)

#unit("LAYLA BINT SURAYA",
  solo: true,
  subtitle: "Princess of Araby",
  profiles: (
    (name: "Layla bint Suraya", m: 4, ws: 5, bs: 3, s: 4, t: 3, w: 2, i: 5, a: 3, ld: 8, points: 130),
    (name: "Silvermane (Arabyan Steed)", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Silvermane (Equine)",
  base-size: "25x50 or 30x60",
  magic-items: (
    rule("Sword of Light")[Magic Weapon. The Sword of Light gives the wielder the Mighty Blow (2) special rule when charging and +1 Attack.],
    rule("Anklet of The One")[Talisman. The Anklet of The One gives the bearer a Magical Ward (4+).],
  ),
  special-rules: "Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Enchanting Beauty")[Any fleeing friendly Human Arabyan unit within 12" of Layla will rally automatically. If she is killed, all friendly Human Arabyan units will get the Hatred special rule against the model or unit responsible for her death.],
  ),
)

#unit("MEHMED AGHA",
  solo: true,
  subtitle: "Commander of the First Division",
  profiles: (
    (name: "Mehmed Agha", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 120),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Pistol, medium armour",
  magic-items: (
    rule("Commander's Yatagan")[Magic Weapon. This weapon gives Mehmed Agha +1 To Hit in close combat and the Parry (6+) special rule.],
    rule("Blessed Ketche of the Crescent Moon")[Talisman. This item gives Mehmed Agha a Magical Ward (5+). In addition, any Janissary unit he joins gains the Stubborn special rule.],
  ),
  special-rules: "Immunity (Panic), Superior Discipline (see Janissaries), Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("The First Division")[Mehmed Agha must be accompanied by a unit of Janissaries. This unit may be armed with both a special close combat weapon and a missile weapon, chosen among the normal weapon options for Janissaries in the army list. Mehmed Agha may never choose to leave this unit.],
  ),
)

#unit("SINDABAD",
  solo: true,
  subtitle: "Corsair Captain of Lashiek",
  profiles: (
    (name: "Sindabad", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 150),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Blades of the Great Seas")[Magic Weapon. Two hand weapons. These weapons allow the wielder to re-roll 1's To Hit. In addition, they gain 1 additional Attack for every enemy model in base contact.],
    rule("The Ruby Eye")[Talisman. This item gives the bearer a a Magical Ward (5+). In addition, enemies attempting to strike them in close combat must first pass a Leadership test; if failed, they can only Hit the bearer on the roll of a natural 6.],
  ),
  special-rules: "Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Corsair Captain")[All friendly Corsair units always treat Sindabad as the Army General for all purposes, regardless of what character actually is the Army General.],
  ),
)

#unit("SULTAN JAFFAR",
  solo: true,
  subtitle: "Despot of Araby",
  profiles: (
    (name: "Jaffar", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 1, ld: 9, points: 325),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic: "Jaffar is a Level 4 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Death
- Shadow
  ],
  magic-items: [
- *Serpent Staff:* Enchanted Item. At the start of the close combat phase, one enemy model in base contact must pass a Psychology test or it will come under the bearer's control for the duration of the combat phase, and will attack any friendly models in base contact (chosen by the Araby player), even if in a challenge.
- *Black Book of Ibn Naggazar*: Arcane Item. Relic. The Black Book gives the bearer the Loremaster special rule. In addition, whenever the bearer attempt to casts a spell, they must roll a D3 – remove this number of models from the caster's unit as casualties, and add this many dice to the casting attempt. If there are insufficient models for this, the caster and their unit are removed as casualties and the spell automatically fails. No saves of any kind can be taken by models slain this way. If the bearer has not managed to successfully cast at least one spell at the end of each of their Magic phases, they suffer 1 Wound with no saves allowed.
  ],
  special-rules: "Tactical Withdrawal",
  special-rules-body: (
    rule("Despot of Araby")[Jaffar must be the Army General. All friendly units within 12" of Jaffar may re-roll failed Psychology tests. However, units that are outside his Inspiring Presence range suffer \-1 to their Leadership.],
  ),
)

#unit("THE GOLDEN MAGUS",
  solo: true,
  subtitle: "Sultan of the Seas",
  profiles: (
    (name: "The Golden Magus", m: 4, ws: 4, bs: 2, s: 4, t: 4, w: 3, i: 4, a: 2, ld: 9, points: 365),
  ),
  troop-type: "Infantry (Special Character, Human).",
  base-size: "20x20 or 25x25",
  magic: "The Golden Magus is a Level 3 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Death
- Heavens
- Fire
- Light
- Metal
- Shadow
  ],
  magic-items: (
    rule("The Sword of Fiery Curses")[Magic Weapon. This sword gives the Golden Magus +1 Strength and the Flaming Attacks special rule. Any Flammable model that suffers an unsaved wound from this weapon is slain outright.],
    rule("Golden Robe of Protection")[Talisman. The Golden Robe grants the Golden Magus a Magical Ward (5+). In addition, any attacks allocated towards him in close combat suffer \-1 To Hit.],
  ),
  special-rules: "Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Conjure Genies")[At the beginning of the Araby player's turn, the Golden Magus may summon either a Djinn, Efreet or Marid to do his bidding following the normal rules for Genie Binding. This model acts like a normal Genie in all respects. He may have a maximum of 3 Genies summoned at any one time, and every summoned Genie must be of a different type.],
  ),
)

#unit("ABDUL ALHAZRED",
  solo: true,
  subtitle: "The Mad Sorcerer",
  profiles: (
    (name: "Abdul Alhazred", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 8, points: 160),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic: "Abdul Alhazred is a Level 2 Wizard who uses the Lore of Death.",
  equipment: "Hand weapon",
  magic-items: (
    rule("The Eye Pendant")[Talisman. The Eye Pendant gives Abdul a Magical Ward (4+). In addition, any model with the Undead special rule wishing to attack Abdul must first pass a Leadership test. If failed, that model may not attack this round.],
    rule("The Necronomicon")[Arcane Item. This item gives the bearer the Loremaster (Lore of Death) special rule, and gives them knowledge of all spells in their chosen Lore regardless of Wizard Level. In addition, the bearer may re-roll any 1's when casting spells. However, every time he successfully casts a spell, he must pass a Leadership test. If he fails the test and the result is an even number, Abdul counts as having failed a Stupidity test. If he fails the test and the result is an odd number, Abdul suffers a Wound with no saves allowed. In addition, any unit joined by Abdul suffers \-1 to its Leadership value.],
  ),
  options: [
- May be accompanied by a Genie +85 points
  ],
  special-rules: "Immunity (Psychology), Tactical Withdrawal, Zealotry",
  special-rules-body: [
- *Genie Master:* Abdul may re-roll failed Leadership tests when trying to summon Genies.
- *Mad Magus*: Before Abdul attempts to cast any spell besides the Lore's Signature spell, you must first roll 2D6 and refer to the spell order in the Lore of Death to determine which spell he may cast at this time. This can allow him to cast the same spell several times in the same Magic phase. The resulting spell is otherwise cast as normal. In addition, Abdul may never be the Army General, nor may any unit he joins use his Leadership.
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "magic-items", "options", "special-rules"),
)

#unit("MALIK IBN LA'AHAD",
  solo: true,
  subtitle: "Master Assassin",
  profiles: (
    (name: "Malik Ibn La'Ahad", m: 5, ws: 7, bs: 6, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 185),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Throwing weapons",
  magic-items: (
    rule("Dimashquine Blade")[Magic Weapon. This weapon adds +1 Strength. In addition, if the wielder is fighting an enemy with a magic weapon, roll a D6 for every attack that they Hit with. On a 5+, the enemy’s magic weapon is destroyed.],
  ),
  special-rules: "Dodge (4+), Immunity (Psychology), Hidden, Killing Blow, Scouts, Tactical Withdrawal, Zealotry",
  special-rules-body: (
    rule("Counterattack")[For every Close Combat Attack that fails To Hit against Malik, he may make an additional Attack back at that model.],
  ),
)

#unit("KASSIM",
  solo: true,
  subtitle: "The Prince of Thieves",
  profiles: (
    (name: "Kassim", m: 5, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 165),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Dagger of Truth")[Magic Weapon. Attacks made with this weapon always Wounds on a 2+, and any enemy wounded must re-roll all successful armour saves.],
  ),
  special-rules: "Hidden, Tactical Withdrawal",
  special-rules-body: (
    rule("Acrobat")[Kassim has the Obstacle Strider special rule and can move over solid impassable terrain such as walls, rock formations or buildings, but not water and the like. In close combat, all successful hits against him must be re-rolled. At the end of each combat he is in, before break tests are taken, he may choose to leave his unit and move out of combat. Place him anywhere within 1" his unit. He may move as normal in his next turn.],
    rule("Master Thief")[If Kassim is in base contact with an enemy character or champion with magic items, he may attempt to steal them. Roll a D6 at the start of each combat phase: on a 4+, Kassim successfully steals one random Talisman, Enchanted or Arcane item from the character. The item is then removed from play. Any items stolen are worth their cost in additional Victory Points, even if Kassim is removed as a casualty later in the game.],
  ),
)

#unit("KHAR-MEL",
  solo: true,
  subtitle: "The Desert Wind",
  profiles: (
    (name: "Khar-mel", m: 6, ws: 6, bs: 3, s: 4, t: 4, w: 3, i: 6, a: 3, ld: 7, points: 145),
  ),
  troop-type: "Monstrous Infantry (Special Character, Daemon)",
  equipment: "Hand weapon",
  special-rules: "Fly (10), Genie Binding (see Genies), Magical Attacks, Magical Ward (5+), Unstable",
  special-rules-body: [
- *Khar-mel's Curse:* All enemy units within 6" of Khar-mel suffer a \-1 modifier to their To Hit rolls for both close combat and missile attacks, as well as \-1 to any armour, Ward or Regeneration saves they might have.
- *Khar-mel's Luck:* Khar-mel may re-roll failed Ward saves.
- *Wind Forms:* Khar-mel can turn into one of the following Wind Forms at the start of each of your turns. The effect lasts until the start of your next turn.
  - *Heat Haze:* All missile fire targeting Khar-mel suffer \-1 To Hit.
  - *Dust Devil:* All units that Khar-mel moves over during the Remaining Moves sub-phase suffer D6 Strength 2 Hits.
  - *Pillar of Fire:* All enemy models in base contact with Khar-mel at the start of each round of close combat suffer a Strength 4 Hit with the Flaming Attacks special rule.
  ],
  notes: [
- Khar-mel must be taken in addition to a Magus or Sahir as one of their normal Genie choices.
  ],
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
#namecost("Stefan Wolf", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
  ],
)
