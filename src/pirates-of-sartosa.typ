// Pirates of Sartosa 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "pirates-of-sartosa",
  army: "Pirates of Sartosa",
  version: "3.0",
  layout: "army",
  cover: "covers/pirates-of-sartosa.png",
  align: "neutral",
)

#show: book.with(title: "Warhammer Armies Project — Pirates of Sartosa 3.0")

#cover(
  title: "Pirates of Sartosa",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/pirates-of-sartosa.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Pirates of Sartosa*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a Pirates of Sartosa army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Pirates of Sartosa units, and these are detailed here.

#namecost("DIRTY FIGHTING", "")

All models with this special rule gain +1 To Hit in the first round of close combat.

#namecost("MASTERS AND IDLERS", "")

Masters and Idlers are upgrades for certain units, follow the rules for normal Command Group models. You may have one Master and Idler of each sort for every Pirate Captain or Pirate Lord in your army.

- *Bosun:* A unit with a Bosun gains the Cold-Blooded special rule.

- *Look-Out:* A character within 6" of a unit with a Look-Out may re-roll failed "Look out, Sir!" tests, and characters in the unit may use the rule even if they are below 5 models.

- *Master Gunner:* A unit with a Master Gunner joined can re-roll 1's when rolling To Hit with blunderbusses, handguns and pistols. If he is part of a War Machine crew, that war machine may re-roll one Artillery Dice per game.

- *Pilot:* A unit with a Pilot gains the Ambushers special rule.

#namecost("NAVAL BOMBARDMENT", "")

Once per game, you may fire D3 Cannon shots in the shooting phase from the edge of your deployment zone for every full 1000 points of game size you are playing. Each shot is fired from a separate point within a 45° angle no more than 3" apart from each other, and with a Line of Sight value of 3. If a Misfire is rolled, count the result as a "May not Shoot".

#namecost("RACIAL DISTRUST", "")

Most models belong to a certain race as detailed in their Troop Type. This includes Human, Dwarf, Ogre and Orc. Characters may only join units belonging to the same race.

#namecost("SEA LEGS", "")

All models with this special rule may re-roll failed Dangerous Terrain tests.

#namecost("HARPOON LAUNCHER", "")
#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "5", "Multiple Wounds (D3), Ponderous"))
#namecost("SWIVEL GUN", "")
#minitable(("Range", "Strength", "Special Rules"), ("18/36\"", "6", "Ponderous"))
#namecost("VOLLEY GUN", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "5", "Multiple Shots (D6), Ponderous"))

#lore("THE LORE OF THE DEEP")[

#spell("KISS OF THE DEEP", "Lore Attribute")[Whenever a spell from the Lore of the Deep is cast on an enemy unit, that unit also suffers D6 Strength 1 Hits which Ignores Armour Saves in addition to the effects of the spell.]

#spell("TIDECALL", "Signature Spell", cast: "6+")[_Tidecall_ is a *direct damage* spell. The caster makes a Strength 2 Breath Weapon Attack with the Ignores Armour Saves special rule. This may be cast in close combat, following the normal rules for Breath Weapons.]

#spell("BLOOD IN THE WATER", 1, cast: "5+")[_Blood in the Water_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, all models in the target unit gets to immediately make an additional Attack for every unsaved Wound they cause in Close Combat. These Attacks can generate additional Attacks to a maximum of +2 Attacks per attacking model in the unit.]

#spell("COUNTER-CURRENT", 1, cast: "5+")[Remains in play. _Counter-Current_ is a *hex* spell with a range of 24". While the spell is in effect, the target halves all its movement (rounding up) while moving closer to the caster and while being within their front arc.]

#spell("FOG OF THE DAMNED", 1, cast: "6+")[Remains in Play. _Fog of the Damned_ is a *hex* spell with a range of 24". While the spell is in effect, the target cannot gain combat resolution bonuses from Ranks or Outnumber.]

#spell("PRESSURE OF THE DEEP", 2, cast: "6+")[_Pressure of the Deep_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). The target must take D6 Toughness tests. Each failed Toughness test causes a Wound which Ignores Armour Saves.]

#spell("ABYSSAL DARKNESS", 2, cast: "7+")[_Abyssal Darkness_ is an *augment* spell that is cast on the Wizard itself. Until the start of the caster's next Magic phase all missile attacks targeted at the Wizard and any unit they are with suffer a \-1 To Hit penalty, and enemies need to be within 18" to be able to draw Line of Sight to them.]

#spell("GAZE INTO THE ABYSS", 2, cast: "7+")[_Gaze Into the Abyss_ is a *hex* spell with a range of 24". The target unit suffers \-1 Weapon Skill, \-1 Initiative and \-2 Leadership until the start of the caster's next Magic Phase.]

#spell("STEED OF TIDES", 3, cast: "9+")[_Steed of Tides_ is a *conveyance* spell with a range of 18". The target is immediately picked up and may be moved to any position on the battlefield within 3D6" of their original position (or within any water terrain feature on the battlefield), just like a summoning spell.]

#spell("WATERY GRAVE", 3, cast: "9+")[_Watery Grave_ is a *hex* spell with a range of 24". The target unit counts as moving through dangerous terrain until the start of the caster's next Magic phase. For every 4" the unit moves while the spell is in effect, the chance of them failing the test increases by +1.]

#spell("ARCANE CORRASION", 3, cast: "10+")[_Arcane Corrasion_ is a *magic missile* that causes a number of Strength 4 Hits depending on the distance to the target. If the target is within less than 12" it suffers D6 Hits. If the target is within 12" to 24" it suffers 2D6 Hits. If the target is within 24" to 36" it suffers 3D6 Hits.]

#spell("DENIZENS OF THE DEEP", 4, cast: "12+")[_Denizens of the Deep_ is a *direct damage* spell with a range of 24" that causes 6D6 Strength 2 Hits.]

#spell("KRAKEN'S PULL", 4, cast: "12+")[Remains in Play. _Kraken's Pull_ is a *magical vortex* that uses the small round template. Any model touched by the template must pass a Strength test or suffer a Wound which Ignores Armour Saves.]

#spell("VORPAL MAELSTROM", 4, cast: "13+")[_Vorpal Maelstrom_ is a *direct damage* spell. Place the large template anywhere within 18" of the Wizard; it then scatters D6". All models under the template suffer a Strength Hit equal to their Unit Strength plus 2. In addition, any surviving models will have their Movement value lowered by half until the start of the caster's next Magic Phase.]
]
#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Pirates of Sartosa. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("TIDAL BLADE", 40)[Each successful Hit made with this weapon penetrates ranks like a bolt thrower.]

#magic-weapon("STORM TRIDENT", 35, type: "Polearm")[Attacks made with this weapon have the Lightning Attacks special rule. Additionally, all natural To Wound rolls of 6 with the weapon have the Multiple Wounds (D3) special rule.]

#magic-weapon("SERPENT CUTLASS", 25)[Attacks made with this weapon are made with +1 Strength and have the Poisoned Attacks special rule.]

#magic-weapon("SQUALL SABRE", 25)[This weapon grants its wielder a Strength 3 Breath Weapon and Immunity (Flaming Attacks). Enemy units hit by this Breath Weapon lose the Flaming Attacks special rule until the beginning of the wielder’s next turn.]

#magic-weapon("WAVECUTTER", 20, type: "Great weapon")[This weapon does not suffer the normal Initiative penalties for being a great weapon. Additionally, the wielder can choose to exchange all of their Attacks to make a special attack. If they do so, all enemy models in base contact with the wielder suffer a single automatic hit. In a challenge, only the model engaged in the challenge count as being in base contact with the wielder.]

#magic-weapon("BLOODY BOARDING AXE", 15, only: "Model on foot", type: "Additional hand weapon")[The wielder gains the Mighty Blow (1) special rule. In addition, they suffer no penalties when attacking units that are garrisoned or defending an obstacle.]

#magic-weapon("CROW'S FEET", 15, type: "Throwing weapons")[After resolving a Stand and Shoot charge reaction with this weapon against a non-Flying charging unit, the unit must immediately take 2D6 dangerous terrain tests, up to the number of models in the unit. For each failed test, the enemy unit suffers \-1 to their charge distance roll against the wielder’s unit.]

#magic-weapon("PISTOLS OF KING DEATH", 15, type: "Brace of pistols")[All failed To Hit and To Wound rolls with missile attacks from these weapons may be re- rolled.]

#magic-weapon("STROMFEL'S FIN", 15)[Attacks made with this weapon have the Killing Blow special rule, and may reroll failed To Wound rolls when attacking a unit or model containing one or more models that have suffered one or more Wounds (excluding slain models).]

#magic-weapon("EL CADAVO'S HOOK-HAND", 10, type: "Additional hand weapon")[Attacks made with this weapon have the Armour Piercing (1) special rule.]
]

#magic-item-section("armour")[
#magic-armour("STORMRIDER ARMOUR", 15, type: "Light armour")[The wearer’s armour save can never be reduced to less than 6+, and they have the Immunity (Lightning Attacks) special rule. Additionally, any time the wearer makes a successful armour save in close combat, they inflict a Strength 4 Hit with the Lightning Attacks special rule on the attacker.]

#magic-armour("BARNACLE COAT", 15, type: "Light armour")[The wearer gains the Regeneration (6+) special rule.]

#magic-armour("MEGALADON HELMET", 15)[The wearer gains a 6+ armour save and the Frenzy special rule.]

#magic-armour("KRAKEN COAT", 15, type: "Light armour")[At the start of each round of close combat, the Kraken Cloak causes one enemy model in base contact of your choosing to suffer a \-1 penalty to their Attack characteristic for the remainder of the close combat phase.]

#magic-armour("SEA SERPENT SCALES", 15, type: "Light armour")[The wearer has the Immunity (Poisoned Attacks) and Natural Armour (6+) special rules.]

#magic-armour("BLACK BARNABUS' BUCKLER", 10, type: "Buckler")[The wielder may reroll failed Parry saves.]
]

#magic-item-section("talisman")[
#talisman("COIN OF THE BETRAYER", 40)[The bearer gains a 3+ Ward save. However, for every roll of a natural 1 when taking Ward saves, they suffer D3 Wounds instead of 1.]

#talisman("THE BLACK SPOT", 30)[The bearer of this item gains the Fear special rule. In addition, enemies attacking the bearer in close combat suffer \-1 To Hit.]

#talisman("WHALEBONE CHARM", 30, one-use: true)[When used, enemies must re-roll successful rolls To Wound against the wearer for the duration of the turn. In addition, whenever the wearer would normally lose their last Wound, this is automatically negated on a 2+.]

#talisman("THE GUNNARSSON KRON", 20)[The bearer of this item gains +1 Toughness.]

#talisman("POLLY THE PARROT", 20)[All enemies attempting to strike the bearer of this item must re-roll 6's To Hit in close combat. In addition, the bearer gains a 3+ Ward save against War Machines.]

#talisman("SHARKTOOTH NECKLACE", 20)[The model has the Immunity (Killing Blow, Multiple Wounds) special rule. Additionally, enemies must reroll To Wound rolls of 6's against them.]

#talisman("LUCKY GOLDEN TOOTH", 15)[The bearer of this item may re-roll failed armour and Ward saves.]

#talisman("SWASHBUCKLER'S BOOTS", 10)[The bearer of this item gains the Dodge (6+) special rule. Additionally, they may freely change their position in the front rank of their unit at the beginning of every close combat phase, unless in a challenge.]
]

#magic-item-section("arcane")[
#runin[GRAND NAVIGATOR]'#runin[S STAFF 35 points] The bearer gains a +1 casting bonus when casting spells from the Lore of Heavens. Additionally, they may reroll 1's when channelling Power and Dispel dice.

#arcane-item("ARCANE ASTROLABE", 40, one-use: true)[When used, the model bearing this item may re-roll the result from the Winds of Magic in your turn.]

#arcane-item("GROUNDING LODESTONE", 20)[Whenever the bearer of this item must roll on the Miscast table, subtract 1 from the result.]

#arcane-item("AETHYRIC ANCHOR", 20, one-use: true)[The Wizard may ignore their first miscast. If they do so, they cannot voluntarily move until the beginning of their next Magic phase.]

#arcane-item("DROWNING EFFIGY", 15)[The bearer may reroll failed To Wound rolls caused by the _Kiss of the Deep_ Lore Attribute when casting spells from the Lore of the Deep.]
]

#magic-item-section("enchanted")[
#enchanted-item("HELLFIRE POWDER", 35)[The bearer of this item, and any unit they join, add +1 Strength to all their missile attacks (except javelins, harpoon launchers and throwing weapons). However, every To Hit roll of 1 with their missile attacks inflicts a Hit from the weapon on the shooter instead.]

#enchanted-item("STORM IN A BOTTLE", 35, bound: (power: 6))[This item contains the _Storm of Cronos_ spell from the Lore of Heavens.]

#enchanted-item("REYNO BLOODLOCK'S HAT", 25)[The bearer of this item gains the Inspiring Presence (6) special rule.]

#enchanted-item("BLACKEYE PEARL", 20)[The Blackeye Pearl gives the model the Sniper special rule. In addition, the bearer may pick one enemy unit within Line of Sight at the start of each of your turns. Your opponent must reveal all Magic Items, Hidden models and the like that unit might have.]

#enchanted-item("FIREWATER", 20, one-use: true)[The Firewater may be used at the start of any Shooting or Close Combat phase. The model gains a Strength 3 Breath Weapon with the Flaming Attacks special rule for the remainder of the phase.]

#enchanted-item("CURSED MOONSHINE", 15, one-use: true)[This item can be used at the start of any of your turns. When used, the bearer gains the Frenzy and Terror special rules until the beginning of your next turn.]

#enchanted-item("SALTY SKIPPER'S PIPE", 15)[The model has the Immunity (Psychology) special rule. In addition, any unit they join may reroll failed Panic tests.]

#enchanted-item("BLACK BUCKTHORN'S TREASURE MAP", 10)[Black Buckthorn's Treasure Map adds +1 to the dice rolled when determining which side to deploy on.]

#enchanted-item("WILLEM LONGTOOTH'S PEG LEG", 10)[The bearer of this item gains the Stomp (1) special rule.]

#enchanted-item("THE SMUGGLER'S SATCHEL", 10)[The bearer of this item may take an additional Talisman, Arcane Item or Enchanted Item.]

#enchanted-item("MAELSTROM BANNER", 25)[At the beginning of each of your turns, enemy units within 12" of the standard are ‘pulled’ directly towards the unit by D3” (they do not change facing). If the target unit comes into contact with another unit or impassable terrain, it stops 1" away. Additionally, any enemy unit fleeing from combat while in base contact with the unit suffers a -D3 penalty to their Flee distance.]

#enchanted-item("BANNER OF BOUNTIFUL TREASURE", 20)[Each enemy standard captured by the unit carrying this standard gives them an addition +1 to their combat resolution score. In addition, any captured standards by this unit are worth twice their normal Victory Points.]

#enchanted-item("BOATSWAIN'S BURGEES", 20)[The unit carrying this standard gains +1 to their Leadership.]

#enchanted-item("PRESS-GANGER STANDARD", 15)[The unit carrying this standard may re-roll their Pursuit distance. In addition, they inflict twice the number of casualties when pursuing enemy units than normal.]
]

#magic-item-section("standard")[
#magic-standard("SKULL AND CROSSBONES", 35)[The unit carrying this standard gains the Terror and Vanguard special rules.]

#magic-standard("BLOODY JACK'S FLAG", 25)[The unit carrying this standard may re-roll failed To Wound rolls in close combat.]

#magic-standard("GONFALON O' THE GREEN HANDS", 25)[The unit carrying this standard gains +1 To Hit with missile weapons.]
]

= CHARACTERS

#unit("CAPTAINS",
  first: true,
  profiles: (
    (name: "Pirate Lord", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 90),
    (name: "Pirate Captain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Dirty Fighting, Sea Legs",
  options: [
- May choose one of the following:
  - Buckler +3 points
  - Spear +3 points
  - Additional hand weapon +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Throwing weapons +4 points
  - Pistol +5 points
  - Blunderbuss +7 points
  - Brace of pistols +7 points
  - Handgun +7 points
- May take light armour +3 points
- A Pirate Captain may take Magic Items up to a total of 50 points
- A Pirate Lord may take Magic Items up to a total of 100 points
  ],
)

#unit("SORCERERS",
  profiles: (
    (name: "Sorcerer Lord", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
    (name: "Sorcerer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 8, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Sorcerer is a Level 1 Wizard. A Sorcerer Lord is a Level 3 Wizard. They use one of the following Lores of Magic:",
  magic-body: [
- Death
- Deep
- Fire
- Heavens
- Metal
- Shadow
  ],
  special-rules: "Dirty Fighting, Sea Legs",
  options: [
- May take an additional Wizard Level +35 points
- A Sorcerer may take Magic Items up to a total of 50 points
- A Sorcerer Lord may take Magic Items up to a total of 100 points
  ],
  notes: [
- A Sorcerer may not be the Army General.
  ],
)

#unit("QUARTERMASTER",
  profiles: (
    (name: "Quartermaster", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 35),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Dirty Fighting, Sea Legs",
  options: [
- May choose one of the following:
  - Buckler +3 points
  - Spear +3 points
  - Additional hand weapon +5 points
  - Polearm +5 points
  - Great weapon +10 points
- May choose one of the following:
  - Throwing weapons +3 points
  - Pistol +4 points
  - Blunderbuss +6 points
  - Brace of pistols +6 points
  - Handgun +6 points
- May take light armour +3 points
- One Quartermaster may carry the Battle Standard +25 points
- May take Magic Items up to a total of 25 points
  ],
  notes: [
- You may have one Quartermaster for each Pirate Captain or Pirate Lord in your army.
- A Quartermaster may not be the Army General.
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("PRIEST OF STROMFELS",
  profiles: (
    (name: "Priest of Stromfels", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 90),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Magic Resistance (1)",
  special-rules-body: [
- *Blessing of Stromfels*: The model and any unit they are currently in have the Aquatic special rule and may re- roll 1's To Wound in close combat.
- *Prayers of Stromfels:* A model with this special rule knows the three Prayers listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and take immediate effect. A unit can only be under the effect of one Prayer at a time.
  - *Curse of the Harsh Mistress:* Until the start of your next turn, all enemy units in base contact with the Priest suffer \-2 to their Movement, Initiative and Leadership, and roll one dice fewer than normal for their charge, flee and pursuit distance.
  - *Sea Sickness:* All enemy units in base contact with the Priest suffer \-1 to their Weapon Skill until the start of your next turn.
  - *Storm Winds:* All enemy missile attacks targeting the Priest or their unit suffer \-1 To Hit until the start of your next turn.
  ],
  options: [
- May choose one of the following:
  - Buckler +3 points
  - Additional hand weapon +5 points
  - Polearm +5 points
- May take a pistol +4 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- A Priest of Stromfels may not be the Army General.
  ],
)

= CORE UNITS

#unit("DECKHANDS",
  first: true,
  profiles: (
    (name: "Deckhands", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 3.5),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, buckler",
  special-rules: "Dirty Fighting, Sea Legs",
  options: [
- May replace bucklers with one of the following:
  - Spears free
  - Additional hand weapons +0.5 point/model
  - Polearms +1.5 points/model
  - Great weapons +2.5 points/model
- May take throwing weapons +1 point/model
- May upgrade one Deckhand to one of the following:
  - Look-Out +5 points
  - Bosun +20 points
  - Pilot +20 points
- May upgrade one Deckhand to a Leader +5 points
- May upgrade one Deckhand to a Musician +5 points
- May upgrade one Deckhand to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("GUNNERS",
  profiles: (
    (name: "Gunner", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, pistol",
  special-rules: "Dirty Fighting, Sea Legs",
  options: [
- May replace pistols with one of the following:
  - Blunderbusses +2 points/model
  - Handguns +2 points/model
- May upgrade one Gunner to one of the following:
  - Look-Out +5 points
  - Bosun +20 points
  - Pilot +20 points
  - Master Gunner +20 points
- May upgrade one Gunner to a Leader +5 points
- May upgrade one Gunner to a Musician +5 points
- May upgrade one Gunner to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("BUCCANEERS",
  profiles: (
    (name: "Buccaneer", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Dirty Fighting, Sea Legs, Skirmishers",
  options: [
- May take one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapons +1 point/model
- May take throwing weapons +1 point/model
- May upgrade one Buccaneer to a Leader +5 points
- May upgrade one Buccaneer to a Musician +5 points
  ],
)

#unit("HARPOONERS",
  profiles: (
    (name: "Harpooner", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 6),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, javelins",
  special-rules: "Dirty Fighting, Sea Legs, Skirmishers",
  options: [
- May take bucklers +0.5 point/model
- May upgrade one Harpooner to a Leader +5 points
  - May replace javelins with a harpoon launcher +10 points
- May upgrade one Harpooner to a Musician +5 points
  ],
)

#unit("SWABBIES",
  profiles: (
    (name: "Swabbie", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 2),
    (name: "Press Ganger", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 2, ld: 7, points: 15),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  handler: "Press Ganger (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Expendable, Mixed Unit",
  options: [
- May take one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapons +1 point/model
- May take throwing weapons +0.5 point/model
- May upgrade one Buccaneer to a Leader +5 points
- May upgrade one Buccaneer to a Musician +5 points
  ],
  notes: [
- You must include one Press Ganger for every 20 Swabbies in the unit.
  ],
)

= SPECIAL UNITS

#unit("SEADOGS",
  first: true,
  profiles: (
    (name: "Seadog", m: 4, ws: 4, bs: 4, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 7),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Dirty Fighting, Sea Legs",
  options: [
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapons +1 point/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
  - Pistols +5 points/model
- May take throwing weapons +2 points/model
- May take light armour +0.5 point/model
- May upgrade one Seadog to one of the following:
  - Look-Out +5 points
  - Bosun +20 points
  - Master Gunner +20 points
  - Pilot +20 points
- May upgrade one Seadog to a Leader +5 points
- May upgrade one Seadog to a Musician +5 points
- May upgrade one Seadog to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("POWDER MONKEYS",
  profiles: (
    (name: "Powder Monkey", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, brace of pistols",
  special-rules: "Dirty Fighting, Sea Legs",
  special-rules-body: (
    rule("Festooned with Pistols")[In close combat, all attacks made by Powder Monkeys are resolved at Strength 4 with the Armour Piercing (1) special rule in the first round of close combat. These attacks do not benefit from any bonuses that normally only affect close combat attacks.],
  ),
  options: [
- May upgrade one Powder Monkey to one of the following:
  - Look-Out +5 points
  - Bosun +20 points
  - Master Gunner +20 points
  - Pilot +20 points
- May upgrade one Powder Monkey to a Leader +5 points
- May upgrade one Powder Monkey to a Musician +5 points
- May upgrade one Powder Monkey to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("GROG LUBBERS",
  profiles: (
    (name: "Grog Lubber", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 7, points: 6),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, grenades",
  special-rules: "Dirty Fighting, Sea Legs, Skirmishers",
  special-rules-body: [
- *Combustible Breath:* Grog Lubbers can spit grog as a Stand and Shoot reaction as soon as their enemies come into base contact with them, and in Close Combat after all normal attacks have been resolved. Each attack with Combustible Breath causes an automatic Strength 3 hit with the Flaming Attacks special rule on all models in base contact.
- *Hard Stuff:* At the start of each of your turns, roll a D6 and consult the table below to see what effect the unit has until the start of your next turn:

#chart((("D6", "Result"), ("1-2", "Three Sheets to the Wind: The Grog Lubbers are subject to Stupidity."), ("3", "Pirate Grog: The Grog Lubbers gain the Immunity (Psychology) special rule."), ("4", "Norse Mead: The Grog Lubbers gain the Frenzy special rule."), ("5", "Dwarf Brew: The Grog Lubbers gain +1 to their Toughness."), ("6", "Lustrian Wine: The Grog Lubbers gain +1 to their Strength.")))
  ],
  options: [
- May take one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapons +1 point/model
- May upgrade one Grog Lubber to a Leader +5 points
- May upgrade one Grog Lubber to a Musician +5 points
  ],
)

#unit("DWARF PRIVATEERS",
  profiles: (
    (name: "Dwarf Privateer", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 5),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Hatred (Goblins, Orcs, Skaven)",
  special-rules-body: (
    rule("Relentless")[Units entirely composed of models with this special rule do not need to pass a Leadership test in order to march, regardless of the proximity of enemy units.],
    rule("Resolute")[When taking Break tests, models with this special rule count as having lost the combat with 1 point fewer than they actually have.],
  ),
  options: [
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Spears +0.5 point/model
  - Additional hand weapons +1 point/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
  - Dwarfen pistols +4 points/model
  - Dwarfen handguns +6 points/model
- May take throwing weapons +1 point/model
- May upgrade one Privateer to a Leader +5 points
- May upgrade one Privateer to a Musician +5 points
- May upgrade one Privateer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ORC FREEBOOTERZ",
  profiles: (
    (name: "Orc Freebooter", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 5),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Common Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: [
- *Animosity:* Units with this special rule must test for Animosity in the Charge sub-phase after all normal charges have been declared during each of your turns, unless any of the following applies:
  - The unit has fewer than 5 models.
  - The unit has declared a charge this turn.
  - The unit is engaged in close combat.
  - The unit is garrisoning a building.
  - The unit is fleeing or currently off the battlefield.

Roll a D6 for each eligible unit. If the dice roll is a 2 or more, the unit behaves normally this turn. If the roll is a 1, however, the unit has failed its Animosity test and must roll on the Animosity table below:

#chart((("D6", "Result"), ("1", "Get 'Em: For every complete rank the unit has, it suffers D3 hits at the Strength characteristic of the
majority of the models in the unit. The unit may not voluntarily move or shoot this turn. Wounds
caused by the Get 'Em result never cause Panic tests."), ("2-4", "Squabble: If it is possible to do so, the unit must declare a charge against the closest viable enemy
unit. If the unit is unable to declare a charge, the unit may not move in the Movement phase or shoot
this turn."), ("5-6", "We'll Show 'Em: Pivot the unit on the spot to face the nearest visible enemy unit, and then make a
full normal move in a straight line towards it. If there is no visible enemy, the unit must move straight
ahead instead. If it is impossible for the unit to pivot to face the closest enemy, it will pivot towards it
as far as it can, and will then move as far forward as it can while still keeping the enemy within its
forward arc. After the move is complete the unit must declare a charge against the closest visible
enemy unit, if it is possible to do so. If the unit cannot declare a charge then it may carry on with the
rest of its turn normally, as if it had not yet moved this turn.")))
  ],
  options: [
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Spears +0.5 point/model
  - Additional hand weapons +1 point/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
  - Pistols +4 points/model
- May upgrade one Freebooter to a Leader +5 points
- May upgrade one Freebooter to a Musician +5 points
- May upgrade one Freebooter to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("OGRE SCALLYWAGS",
  profiles: (
    (name: "Ogre Scallywag", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 25),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon",
  equipment-body: [
- *Ogre Pistol:* Ogre pistols use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Quick Shot"))

In close combat, an Ogre pistol counts as an additional hand weapon that does not give the model the Parry special rule.

- *Ogre Handgun:* Ogre handguns use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/48\"", "6", "Ponderous"))

- *Leadbelcher Gun:* Leadbelcher guns have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Cumbersome, Multiple Shots (D6), Rapid Fire"))
  ],
  special-rules: "Natural Armour (6+)",
  special-rules-body: (
    rule("Ogre Charge")[Each model on foot with the Ogre Charge special rule that successfully charges an enemy has the Impact Hits (1) special rule. Models with this special rule that are part of a unit with ranks add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Bucklers +3 points/model
  - Ogre pistols +5 points/model
  - Ogre handguns +6 points/model
  - Great weapons +9 points/model
  - Leadbelcher guns +13 points/model
- May upgrade one Scallywag to a Leader +5 points
- May upgrade one Scallywag to a Musician +5 points
- May upgrade one Scallywag to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("WERESHARKS",
  profiles: (
    (name: "Weresharks", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 7, points: 48),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Werecreature)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Aquatic, Killing Blow, Natural Armour (5+)",
  special-rules-body: (
    rule("Bloodlust")[For every successful Wound caused (after saves) by a Wereshark, it may make an additional attack. These additional attacks do not generate any further attacks.],
  ),
  options: [
- May take polearms +6 points/model
- May upgrade one Wereshark to a Leader +5 points
  ],
)

#unit("DECK GUNNERS",
  profiles: (
    (name: "Deck Gunner", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 15),
  ),
  unit-size: "3-9",
  troop-type: "Infantry (Human)",
  base-size: "20x40 or 25x50",
  equipment: "Hand weapon, swivel gun",
  special-rules: "Dirty Fighting, Sea Legs",
  options: [
- May replace swivel guns with one of the following:
  - Harpoon launchers free
  - Volley guns +3 points/model
  ],
)

#unit("CARRONADE",
  profiles: (
    (name: "Carronade", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Carronade), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, cannon",
  special-rules: "Dirty Fighting, Sea Legs",
  upgrades: [
- *Chain Shot:* Chain shot has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-36\"", "6", "Multiple Wounds (D3)"))

When fired upon an enemy unit, the shot strikes the models in D3 files rather than one. This can be used instead of firing normally.

- *Heat Shot:* The cannon gains the Flaming Attacks special rule. However, if a misfire is rolled, add \-1 to the misfire result. This can be used instead of firing normally.
  ],
  options: [
- May take Chain Shot +10 points
- May take Heat Shot +5 points
- May upgrade one Crew to a Master Gunner +5 points
- May take an additional crew +5 points
  ],
)

#unit("MORTAR",
  profiles: (
    (name: "Mortar", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Mortar), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, mortar",
  special-rules: "Dirty Fighting, Sea Legs",
  options: [
- May upgrade one Crew to a Master Gunner +5 points
- May take an additional crew +5 points
  ],
)

= RARE UNITS

#unit("DARK MAIDENS",
  first: true,
  profiles: (
    (name: "Dark Maiden", m: 4, ws: 4, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 5, points: 47),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Animated Construct)",
  base-size: "40x40 or 50x50",
  equipment: "Two hand weapons",
  special-rules: "Animated Construct, Aquatic, Flammable, Magical Ward (5+), Natural Armour (5+)",
  special-rules-body: (
    rule("Maiden's Chant")[In the Shooting phase, a unit of Dark Maidens may target one enemy unit within 18" and their line of sight. The unit must take a Leadership test with a \-2 modifier. For ever point above their Leadership the test shows, the enemy unit suffer 1 Wound with no save of any kind allowed.],
  ),
)

#unit("AIRSKIFF",
  profiles: (
    (name: "Airskiff", m: "-", ws: "-", bs: "-", s: 4, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 80),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Chariot (Armour Save 4+)",
  base-size: "50x100 or 60x100",
  crew: "3 Crew (Human)",
  equipment: "Hand weapon, swivel guns",
  special-rules: "Fly (6), Flammable",
  special-rules-body: (
    rule("Hull-mounted")[An Airskiff is armed with two missile weapons, one on either side. Each weapon can fire within the model's front arc, or within the model's left and right arc, respectively. These weapons are not Ponderous.],
  ),
  options: [
- May replace swivel guns with one of the following:
  - Harpoon launchers free
  - Volley guns +6 points
  ],
  order: ("troop-type", "base-size", "crew", "equipment", "special-rules", "options"),
)

#unit("SEA ELEMENTAL",
  compact: true,
  profiles: (
    (name: "Sea Elemental", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 7, points: 165),
  ),
  troop-type: "Monstrous Creature (Elemental)",
  base-size: "50x50",
  magic: "A Sea Elemental is a Level 1 Wizard who knows the Tidecall spell from the Lore of the Deep.",
  special-rules: "Aquatic, Ethereal, Immunity (Flaming Attacks), Unstable",
)

#unit("SEA GIANT",
  profiles: (
    (name: "Sea Giant", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 10, points: 200),
  ),
  troop-type: "Monster (Giant)",
  base-size: "50x50 or 50x75",
  equipment: "Hand weapon",
  special-rules: "Aquatic, Immunity (Psychology), Natural Armour (5+), Stubborn",
  special-rules-body: (
    rule("Anchor Smash")[Rather than attacking normally, a Sea Giant may make a special attack. If this Attack Hits, it is resolved at Strength 10 with the Multiple Wounds (D6) special rule.],
  ),
)

#unit("TURTIGON",
  profiles: (
    (name: "Turtigon", m: 5, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 1, a: 4, ld: 6, points: 310),
    (name: "Crew", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Monster (Reptile)",
  base-size: "50x100, 60x100 or 100x150",
  crew: "3 Crew (Human)",
  equipment: "Hand weapon, cannon",
  special-rules: "Aquatic, Armour Piercing (1) (Turtigon only), Killing Blow (Turtigon only), Natural Armour",
  special-rules-body: [
*(2+), Stubborn*

- *Cannon Misfire:* In case the cannon rolls a Misfire, the Turtigon suffer D3 Wounds which Ignores Armour Saves.
- *Fiery Breath:* The Turtigon have a Strength 4 Breath Weapon with the Flaming Attacks special rule.
- *Loss of Heads:* Once the Turtigon is reduced to 3 Wounds, its number of attacks drops to 2. In addition, the strength of the Turtigon's Breath Weapon is reduced to Strength 2.
  ],
  order: ("troop-type", "base-size", "crew", "equipment", "special-rules"),
)

#unit("HELL-HAMMER CANNON",
  profiles: (
    (name: "Hell-Hammer", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: 140),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "5 Crew (Human)",
  base-size: "60x100 or 100x150 (Hell-Hammer), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, Hell-Hammer",
  equipment-body: [
- *Hell-Hammer:* A Hell-Hammer is a cannon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-72\"", "10", "Multiple Wounds (D6+1)"))

Hellhammer Cannons may re-roll the distance bounced by the cannon ball and failed rolls To Wound. If a Misfire is rolled, add \-1 to the result on the Blackpowder Misfire Chart.
  ],
  special-rules: "Dirty Fighting, Sea Legs",
)

#unit("IRONFIST MORTAR",
  profiles: (
    (name: "Ironfist Mortar", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: 150),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "5 Crew (Human)",
  base-size: "60x100 or 100x150 (Ironfist Mortar), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, Ironfist Mortar",
  equipment-body: [
- *Ironfist Mortar:* An Ironfist Mortar is a mortar that uses the large temple and has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "4(8)", "Armour Piercing (1), Multiple Wounds (D3)"))

If a Misfire is rolled, add \-1 to the result on the Blackpowder Misfire Chart.
  ],
  special-rules: "Dirty Fighting, Sea Legs",
)

= SPECIAL CHARACTERS

#unit("CARMEN SICILIERI",
  solo: true,
  first: true,
  subtitle: "The Pirate Princess",
  profiles: (
    (name: "Carmen Sicilieri", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 9, points: 275),
  ),
  troop-type: "Infantry (Special Character, Human, Pirate Lord)",
  base-size: "20x20 or 25x25",
  equipment: "Brace of pistols, light armour",
  magic-items: (
    rule("Tidebreaker")[Magic Weapon. All attacks from this sword always Wounds on at least a 3+ and have have Ignores Armour Saves special rule.],
    rule("The Blasted Skull")[Talisman. The skull gives Carmen a 4+ Ward save. In addition, for every 1 rolled on the enemy's To Wound roll against her, they suffer 1 Wound themselves which Ignores Armour Saves.],
  ),
  special-rules: "Dirty Fighting, Fear, Sea Legs",
  special-rules-body: (
    rule("Pirate Princess")[Carmen has the Inspiring Presence (6) special rule. In addition, all friendly units within her Inspiring Presence range may re-roll failed Panic tests.],
  ),
)

#unit("JAEGO ROTH",
  solo: true,
  subtitle: "Captain of the Heldenhammer",
  profiles: (
    (name: "Jaego Roth", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 185),
  ),
  troop-type: "Infantry (Special Character, Human, Pirate Lord)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, repeater pistol, light armour",
  equipment-body: [
- *Repeater Pistol:* A repeater pistol has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "4", "Armour Piercing (1), Multiple Shots (3), Quick to Fire"))

In close combat, a repeater pistol counts as an additional hand weapon that does not give the model the Parry special rule.
  ],
  magic-items: (
    rule("Arcane Moondial")[Enchanted Item. One use only. When used, this item allows Roth and any unit he is with to move as if they had the Ethereal special rule for the duration of the turn.],
    rule("Indigo Roth's Sea Chart")[Enchanted Item. This item gives Roth the Pilot special rule.],
    rule("Arabyan Spy-glass")[Enchanted Item. This item gives Roth the Sniper special rule. In addition, at the start of each of your turns, one enemy unit within line of sight of Roth must reveal all hidden units, special upgrades and Magic Items.],
  ),
  special-rules: "Dirty Fighting, Sea Legs",
  special-rules-body: (
    rule("Captain of the Heldenhammer")[If Jaego Roth is included your army, you may fire an additional D3 shots when using the Naval Bombardment special rule.],
    rule("Will of Steel")[Captain Roth and any unit he is with may re-roll any failed Leadership tests. When fighting in challenges, he may re-roll all failed rolls To Hit.],
  ),
)

#unit("ARANESSA SALTSPITE",
  solo: true,
  subtitle: "The Queen of Tides, Captain of the Swordfysh",
  profiles: (
    (name: "Aranessa Saltspite", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 230),
  ),
  troop-type: "Infantry (Special Character, Human, Pirate Lord)",
  base-size: "20x20 or 25x25",
  equipment: "Pistol",
  magic-items: (
    rule("Kraken's Bane")[Magic Weapon. Polearm. Kraken's Bane gives Aranessa +1 Strength, +1 Attack and the Heroic Killing Blow special rule.],
  ),
  special-rules: "Dirty Fighting, Hatred (Norsca, Warriors of Chaos), Sea Legs",
  special-rules-body: [
- *Blessed of Manann:* Aranessa and any unit she is with may re-roll one D6 when charging and pursuing enemies. In addition, Aranessa may re-roll one roll To Hit or To Wound each round of close combat, and has a 5+ Ward save.
- *Spearfisher's Net:* At the start of each round of close combat, Aranessa may target one enemy model in base contact. Roll to Hit against the target; if successful, that model is ensnared and suffers
  - D3 to its Attacks this round.
  ],
)

#unit("GIACCHINO DE FALCO",
  solo: true,
  subtitle: "The Crazed Captain",
  profiles: (
    (name: "Giacchino de Falco", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 6, points: 100),
  ),
  troop-type: "Infantry (Special Character, Human, Pirate Captain)",
  base-size: "20x20 or 25x25",
  equipment: "Pistol",
  magic-items: (
    rule("The Caitiff's Cutlass")[Magic Weapon. This cutlass grants Captain Giacchino the Parry (5+) special rule. For each wound suffered, he gains +1 to his Parry save.],
    rule("Lucky Charms")[Talisman. Giacchino has Magic Resistance (2). In addition, enemies must re-roll successful rolls of 6 To Wound him.],
  ),
  special-rules: "Dirty Fighting, Sea Legs",
  special-rules-body: [
- *Dead Men Tell No Tales:* Giacchino and any unit he is with have the Swiftstride special rule when fleeing.
- *Son of a Biscuit Eater:* Before the start of the game, choose one enemy character on the table. Once during the game, Giacchino may make a special shot with the Sniper special rule against the chosen model. This shot is resolved with the Killing Blow special rule.
- *Strange and Confused:* At the start of your Movement phase, roll a D6 and consult the table below:

#chart((("D6", "Result"), ("1", "Aaaarrrrgggghhhh!: Giacchino and the unit he is with counts as having failed a Stupidity test this
turn."), ("2", "Bring a Spring Upon 'er: Giacchino and any unit he is with must take a Leadership test. If failed,
they must immediately make a swift reform or combat reform so they are facing a random direction as
determined by the scatter dice."), ("3", "Shiver Me Timbers! Giacchino and any unit he is with must re-roll successful Leadership tests until
the start of your next turn."), ("4", "Avast Ye! Giacchino and any unit he is with may re-roll failed Leadership tests until the start of your
next turn."), ("5", "Batten Down the Hatches! Giacchino and any unit he is with gain the Stubborn special rule until the
start of your next turn."), ("6", "Send 'em to Stromfels! Giacchino and any unit he is with must immediately declare a charge against
the nearest enemy unit if possible. In addition, they may re-roll their charge distance and gain the
Devastating Charge special rule until the start of your next turn.")))
  ],
)

#unit("WILHELM SCHWARZ",
  solo: true,
  subtitle: "Quartermaster of Great Renown",
  profiles: (
    (name: "Wilhelm Schwarz", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 75),
    (name: "Lizzy", m: "-", ws: 2, bs: 3, s: 2, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Infantry (Special Character, Human, Quartermaster)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, handgun, blunderbuss, pistol",
  special-rules: "Dirty Fighting, Sea Legs",
  special-rules-body: [
- *Lizzy, the Salamander:* Lizzy has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "2", "Quick to Fire, Flaming Attacks"))

- *Armed and Ready:* One Human Infantry unit in the army may choose between being equipped with Light Armour or gain the Armour Piercing (1) special rule.
  ],
  options: [
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- Wilhelm Schwarz may not be the Army General.
  ],
)

#unit("FLEUR AND ESTELLA",
  solo: true,
  subtitle: "Flint & Steel",
  profiles: (
    (name: "Estella", m: 4, ws: 6, bs: 4, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 60),
    (name: "Fleur", m: 4, ws: 4, bs: 5, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: 60),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons (Estella), brace of pistols (Fleur)",
  special-rules: "Dirty Fighting, Sea Legs",
  special-rules-body: [
- *Pistolier Extraordinaire*: Fleur has the Festooned with Pistols (see Powder Monkeys) and Rapid Fire special rules.
- *Princess of Parries*: Estella has the Parry (6+) special rule. If Estella has a higher Weapon Skill than her attacker, she gains +1 to her Parry rolls.
- *Protective:* Fleur & Estella must deploy together and fight as a single unit, though they may join other units as normal. If Fleur is killed, Estella will be subject to Hatred and Frenzy for the remainder of the game.
  ],
  options: [
- Estella may take Magic Items up to a total of 25 points
- Fleur may take Magic Items up to a total of 25 points
  ],
  notes: [
- Fleur & Estella may not be the Army General.
  ],
)

#unit("KRUSHER THE ANCHORMAN",
  solo: true,
  profiles: (
    (name: "Krusher the Anchorman", m: 4, ws: 5, bs: 4, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 8, points: 150),
    (name: "Giant Parrot", m: "-", ws: 2, bs: "-", s: 2, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Monstrous Infantry (Special Character, Ogre)",
  base-size: "40x40",
  magic-items: (
    rule("Lucky Smasher")[Magic Weapon. Great weapon. All attacks with this weapon have the Multiple Wounds (D3) special rule. In addition, Krusher may re-roll 1's when rolling To Hit.],
  ),
  special-rules: "Immunity (Psychology), Natural Armour (6+), Ogre Charge (see Ogre Scallywags), Stubborn",
  options: [
- May choose one of the following:
  - Ogre pistol +7 points
  - Brace of Ogre pistols +10 points
- May take Magic Items up to a total of 25 points
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
