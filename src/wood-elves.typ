// Wood Elves 3.1 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "wood-elves",
  army: "Wood Elves",
  version: "3.1",
  layout: "army",
  cover: "covers/wood-elves.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Wood Elves 3.1")

#cover(
  title: "Wood Elves",
  subtitle: "Warhammer Armies Project · 3.1",
  art: "/assets/covers/wood-elves.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Wood Elves*, version 3.1 — written and freely distributed by Mathias
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

#columns(2)[
This section of the book describes all the different units used in a Wood Elf army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules' that apply to several Wood Elf units, and these are detailed here.

#namecost("AMBUSH FROM THE WORLDROOTS", "")

A Wood Elf army can always place an additional forest no more than 12" in diameter on the battlefield. This is done during deployment, before any units are deployed, and must be placed wholly in your half of the battlefield. Declare which type of forest it is when you place it. If you cannot fit the forest on your half of the table, move other terrain features by the shortest distance necessary so that the forest can be placed. If you still cannot place the forest, or if the scenario means that the Wood Elf army does not have a table half in which to deploy, this additional forest is not used in this battle.

#namecost("ASRAI ARCHERY", "")

Models with this rule do not suffer the normal \-1 To Hit penalty for moving and shooting.

#namecost("BLESSINGS OF THE ANCIENTS", "")

A Wizard that has this rule and is within 6" of a forest gains a +1 casting and dispel bonus.

#namecost("ELVEN SHORTBOW", "")

Elven shortbows have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "3", "Armour Piercing (1), March & Shoot, Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not marched. Cannot be used as a charge reaction_

#namecost("ELVEN LONGBOW", "")

Elven longbows have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "3", "Armour Piercing (1), Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not moved. Cannot be used as a charge reaction._

#namecost("ELVEN GRACE", "")

Models with this rule have the Dodge (6+) special rule in close combat. However, this cannot be used against enemies that attack before the model with Elven Grace.

#namecost("ENCHANTED ARROWS", "")

Some models in the Wood Elf army have the option to purchase enchanted arrows. If a model has enchanted arrows, they must use them when shooting with Elven shortbows or longbows. Note that a model can only have one kind of Enchanted Arrows.

- *Arcane Bodkins:* Shooting attacks made with Arcane Bodkins have the Armour Piercing (1) special rule.

- *Hagbane Tips:* Shooting attacks made with Hagbane Tips have the Poisoned Attacks special rule.

- *Moonfire Shot:* Shooting attacks made with Moonfire Shot have the Flaming Attacks and Magical Attacks special rules.

- *Starfire Shafts:* Shooting attacks made with Starfire Shafts have the Magical Attacks special rule and force enemies to re-roll successful Panic tests caused by Heavy Casualties.

- *Swiftshiver Shards:* Shooting attacks made with Swiftshiver Shards allow the model to fire Multiple Shots even when moving (in case of longbows) or marching (in case of shortbows) that turn.

- *Trueflight Arrows:* Shooting attacks made with Trueflight Arrows ignore all shooting modifiers that are not caused by magic items or spells.

#namecost("FOREST SPIRIT", "")

A model with this rule has the Fear, Forest Strider, Immunity (Psychology), Magical Attacks and Magical Ward (5+) special rules. However, units of Forest Spirits may only be joined by characters that are also Forest Spirits and vice versa.

#namecost("FOREST STALKER", "")

While inside a wood, models with this special rule are at an additional \-1 to be Hit with missile attacks. In addition, when using the Scouts special rule they may deploy within 12" of an enemy unit if they do so within a wood.

#namecost("LETHAL SHOT", "")

Models with this rule have the Killing Blow special rule with missile attacks from their Elven longbows or shortbows.

#namecost("MARTIAL MEMORIES", "")

Models with this rule may re-roll 1's when rolling To Hit and To Wound in close combat.

#namecost("SAEARATH", "")

Spear. Unless used with a shield in combat or when using the Mighty Blow (1) special rule from the weapon, a model armed with a saerath gains +1 Attack.

#namecost("SHADOW DANCES OF LOEC", "")

Models with this rule may choose one of the following Shadow Dances at the start of each round of close combat. This is done before Impact Hits are resolved. All models in the same unit must choose the same Shadow Dance. The effect of each Shadow Dance lasts until the end of that turn or until a new Shadow Dance is chosen. Models cannot choose the same Shadow Dance in two consecutive rounds of combat.

- *Whirling Death:* The model gains the Armour Piercing (1) and Killing Blow special rules.

- *Storm of Blades:* The model gains +1 Attack.

- *The Shadows Coil:* All close combat attacks against the model suffer \-1 To Hit.

- *Woven Mist:* The model gains the Always Strikes First special rule.

#namecost("TREE ASPECTS", "")

Models with this rule may choose one of the following Tree Aspects at the start of each round of close combat. This is done before Impact Hits are resolved. All models in the same unit must choose the same Tree Aspect. The effect of each Tree Aspect lasts until the end of that turn or until a new Tree Aspect is chosen. Models cannot choose the same Tree Aspect in two consecutive rounds of combat.

- *Birch Aspect:* The model gains +1 Attack.

- *Oak Aspect:* The model gains +1 Toughness.

- *Willow Aspect:* All close combat attacks against the model suffer \-1 To Hit.

#namecost("TREE WHACK", "")

A model with this rule can choose to make a single Tree Whack in place of making their normal close combat attacks. To resolve a Tree Whack, nominate an enemy model in base contact. That model must pass an Initiative test or suffer D6 Wounds which Ignores Armour Saves.
]

#lore("THE LORE OF ATHEL LOREN")[

#spell("GLAMOURWEAVING", "Lore Attribute")[Whenever a spell from the Lore of Athel Loren is successfully cast, all enemy units suffer a \-3" penalty to their spell and maximum weapon ranges in their next turn when targeting any friendly units within 6" of the Wizard. This is a cumulative effect.]

#spell("TREE SINGING", "Signature Spell", cast: "6+")[_Tree Singing_ is a special type of spell which targets a single forest within 24" of the caster. The target immediately moves up to D6+1" in a direction of your choice. A forest cannot move to within 1" of other terrain features.]

#spell("FURY OF THE FOREST", 1, cast: "5+")[_Fury of the Forest_ is a *direct damage* spell with a range of 18". If the target is within 6" of a forest it suffers 2D6 Strength 4 hits. If the target is partially or wholly within a forest it suffers 3D6 Strength 4 hits.]

#spell("DURTHU'S WRATH", 1, cast: "6+")[_Durthu's Wrath_ is a *direct damage* spell that can be cast in close combat. All models in the front rank of any unit in base contact with the caster must pass an Initiative test or suffer a Strength 4 hit with the Ignores Armour Saves and Multiple Wounds (D3) special rules.]

#spell("THE TWILIGHT HOST", 1, cast: "6+")[_The Twilight Host_ is an *augment* spell with a range of 18". The target gains the Fear special rule until the start of the caster's next Magic phase. In addition, the target will count as having twice the Unit Strength and number of ranks it really has for the purpose of determining Outnumber and Steadfast.]

#spell("THE HIDDEN PATH", 2, cast: "7+")[_The Hidden Path_ is an *augment* spell with a range of 18". The unit gains the Ethereal special rule until the start of the caster's next Magic phase. If the unit becomes engaged in close combat, the spell instantly ends.]

#spell("SPITEFUL TORRENT", 2, cast: "8+")[Remains in play. _Spiteful Torrent_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move suffers a Strength 2 hit with the Armour Piercing (1) special rule.]

#spell("ASPECT OF ATHEL LOREN", 2, cast: "9+")[_Aspect of Athel Loren_ is an *augment aura* with a range of 12". Until the start of the caster's next Magic phase, all affected units gain the Magical Ward (6+) special rule.]

#spell("MADRIGAL OF GREENING", 3, cast: "9+")[_Madrigal of Greening_ is a *summoning* spell with a range of 18". This summons a forest of your choosing no more than 12" in diameter.]

#spell("CAGE OF THORNS", 3, cast: "10+")[Remains in play. _Cage of Thorns_ is a *hex* spell with a range of 24". While the spell is in effect, the target unit halves all their Movement (rounding up). In addition, the target suffer D6 Strength 3 Hits any time it moves.]

#spell("SAPPING BLIGHT", 3, cast: "10+")[Remains in Play. _Sapping Blight_ is a *hex* spell with a range of 18". While the spell is in effect, the target has \-1 Strength and \-1 Toughness (to a minimum of 1).]

#spell("THE CALL OF THE HUNT", 4, cast: "11+")[_The Call of the Hunt_ is a *conveyance* spell with a range of 18". The target immediately moves forward towards the closest enemy unit within line of sight using the Random Movement (2D6) special rule. If no enemy unit is in line of sight, the unit will move directly forwards. In addition, the unit gains +1 Attack (except mounts) until the start of the caster’s next Magic phase.]

#spell("VERDUROUS HARMONY", 4, cast: "12+")[_Verdurous Harmony_ is an *augment aura* with a range of 12". All targets instantly recover D3 Wounds' worth of models slain earlier in the battle, just like a summoning spell.]

#spell("ARIEL'S BLESSING", 4, cast: "13+")[_Ariel's Blessing_ is an *augment* spell with a range of 18". The target gains the Regeneration (4+) special rule until the start of the caster's next Magic phase.]
]
= FOREST SPITES

*Characters may choose Spites as detailed in the army list. Each Spite may only be chosen once per army.*

#namecost("A BLIGHT OF TERRORS", "25 points")

A character with a Blight of Terrors gains the Terror special rule.

#namecost("A CLUSTER OF RADIANTS", "25 points")

Forest Spirit only. A character with a Cluster of Radiants adds one extra dice to their Dispel pool in their opponent's Magic phase.

#namecost("AN ANNOYANCE OF NETLINGS", "20 points")

Any enemy attempting to strike a character with an Annoyance of Netlings in close combat will suffer \-1 To Hit.

#namecost("A MUSTER OF MALEVOLENTS", "20 points")

A Muster of Malevolents is a shooting attack that can be used in addition to the models other shooting attacks. This cannot be used in combination with the Sniper special rule. It has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "2", "Magical Attacks, Multiple Shots (D6), Poisoned Attacks, Quick Shot, Rapid Fire"))
#namecost("HAGBANE SPITE", "20 points")

One use only. A Hagbane Spite can be used after an enemy Wizard has successfully cast a spell within 24" instead of dispelling it. When used, the enemy Wizard automatically suffers D3 Hits that Wound on a 4+ with the Ignores Armour Saves special rule.

#namecost("A PAGEANT OF SHRIKES", "15 points")

A Pageant of Shrikes is a shooting attack that can be used in addition to the model's other shooting attacks. It has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/18\"", "4", "Cumbersome, Magical Attacks, Sniper"))
#namecost("A BEFUDDLEMENT OF MISCHIEFS", "10 points")

Bound Spell (Level 2, cast on 7+). _A Befuddlement of Mischiefs_ is a *hex* spell with a range of 18". The target becomes subject to Stupidity until the start of your next Magic phase.

#namecost("A LAMENTATION OF DESPAIRS", "10 points")

Bound Spell (Level 2, cast on 7+). _Lamentation of Despairs_ is a *direct damage* spell with a range of 12" which can be used to target enemy Characters or Monsters, even within a unit. The targeted model must pass a Leadership test, or else suffer D3 Wounds which Ignores Armour saves.

#namecost("A MURDER OF SPITES", "10 points")

A Murder of Spites is a close combat attack that can be used in addition to the model's other attacks. It has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "2", "Magical Attacks, Poisoned Attacks, Random Attacks (D6)"))
#namecost("A RESPLENDENCE OF LUMINESCENTS", "10 points")

A Resplendence of Luminescents gives the character and any unit they join Magical Attacks.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Wood Elves. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", columns: 2, first: true)[
#magic-weapon("THE SPIRIT SWORD", 50)[Armour saves cannot be taken against Wounds caused by the Spirit Sword. Furthermore, immediately when an enemy single model unit or Character suffers one or more unsaved Wounds from the Spirit Sword, both they and the wielder must roll 2D6 and add their respective Leadership values. If the wounded model’s total is higher, or the totals are the same, nothing else happens. If the wounded model’s total is lower, it immediately suffers a Wound which Ignores Armour Saves for each point by which its total was exceeded.]

#magic-weapon("DAITH'S REAPER", 50)[All failed To Hit and To Wound rolls made with Daith's Reaper must be re-rolled, as must all successful armour saves taken against Wounds caused by this weapon.]

#magic-weapon("DAWNSPEAR", 35, type: "Light lance/spear")[If the wielder of the Dawnspear causes an unsaved wound on an enemy, then all enemy models in that unit that have not yet attacked suffer \-1 To Hit in this round of close combat.]

#magic-weapon("CALLACH'S CLAW", 25)[Any unit suffering one or more unsaved wounds from the Callach's Claw suffers a \-2 penalty to their Leadership for the remainder of the Combat phase.]

#magic-weapon("THE HUNTER'S TALON", 25, type: "Elven longbow")[The Hunter's Talon gives the wielder the Sniper special rule.]

#magic-weapon("SPEAR OF DAITH", 25, type: "Light lance/spear")[The Spear of Daith gives the wielder the Parry (5+) special rule.]

#magic-weapon("THE BOW OF LOREN", 20, type: "Elven longbow")[All shots from the Bow of Loren are resolved at Strength 4 with Multiple Shots (A) special rule. Multiple Shots (A) means the bow fires a number of shots equal to the wielder’s Attacks characteristic. It cannot fire enchanted arrows.]

#magic-weapon("BLADES OF LOEC", 20, only: "Shadowdancer", type: "Two hand weapons")[The Blades of Loec allow the wielder to re-roll failed rolls To Wound.]

#magic-weapon("GREENWOOD GLADIUS", 20)[The wielder of this item gains +D3 Attacks, rolled at the start of each round of close combat.]

#magic-weapon("HUNT MASTER'S PRIDE", 20, only: "Wild Hunter", type: "Light lance")[All attacks with this weapon have the Multiple Wounds (D3) special rule.]

#magic-weapon("SPEAR OF TWILIGHT", 20, type: "Light lance/spear")[The Spear of Twilight gives the wielder the Killing Blow special rule.]

#magic-weapon("SWORD OF A THOUSAND WINTERS", 20)[The Sword of a Thousand Winters gives the bearer the Ice Attacks special rule. In addition, Characters and Monsters must take a Toughness test for each unsaved wound suffered by the Sword of a Thousand Winters. For every test failed, they suffer \-1 Strength, Initiative and Attacks for the remainder of the game.]

#magic-weapon("VAUL'S WRATH", 20, type: "Elven longbow")[This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "4", "Armour Piercing (1), Multiple Shots (2), Multiple Wounds (2) Volley Fire"))
]

#magic-weapon("SPEAR OF THE HUNT", 15, only: "Wild Hunter", type: "Light lance")[This item gives the wielder the Armour Piercing (1) special rule. In addition, they and any unit they are with may re-roll 1's for their charge distance.]

#magic-weapon("SPLINTERBIRCH BLADE", 15)[Whenever an enemy model makes a successful save against Wounds caused by this blade, they suffer an additional D6 Strength 1 Hits.]

#magic-weapon("STARCASTER LONGBOW", 15, type: "Elven longbow")[All shots from this bow have the Multiple Wounds (D3) special rule. On a To Wound roll of a natural 6, that shot has the Multiple Wounds (D6) special rule instead.]

#magic-weapon("ASYENDI'S BANE", 10, type: "Elven longbow")[This weapon allows the wielder to re- roll all failed rolls To Hit. However, if the shot still misses after this re-roll, then they suffer a Strength 3 hit.]

#magic-weapon("RAGETH'S WILDFIRE BLADES", 10, type: "Two hand weapons")[Rageth's Wildfire Blades give the wielder the Flaming Attacks special rule.]
]

#magic-item-section("armour")[
#magic-armour("ARMOUR OF THE FEY", 30, type: "Light armour")[The Armour of the Fey gives the bearer the Magical Ward (4+) special rule against Magical Attacks.]

#magic-armour("THE OAKEN ARMOUR", 30, type: "Light armour")[The Oaken Armour gives the wearer the Regeneration (4+) special rule.]

#magic-armour("CLOAK OF TUMBLING LEAVES", 25, only: "Model on foot", type: "Light armour")[The bearer's gains the Fly (10) special rule.]

#magic-armour("BRIARSHEATH", 15, only: "Model on foot", type: "Light armour")[The Briarsheath causes any missile attacks targeted at the wearer to suffer \-1 To Hit, or \-2 To Hit if the wearer is in a forest.]

#magic-armour("THE HELM OF THE HUNT", 15, only: "Wild Hunter")[This item gives the wearer a 6+ armour save. In addition, they may re-roll To Hit in turns that they successfully charge into combat.]

#magic-armour("RAILARIAN'S MANTLE", 15, type: "Light armour")[Railarian's Mantle gives the wearer a Magical Ward (5+) if they are within 6" of a forest.]

#magic-armour("AMBER ARMOUR", 10, type: "Light armour")[The bearer's armour save can never be reduced below a 6+.]
]

#magic-item-section("talisman")[
#talisman("RHYMER'S HARP", 60)[The Rhymer's Harp gives the bearer and any unit they join the Magical Ward (5+) and Strider special rules.]

#talisman("GLAMOURWEAVE BROOCH", 35)[The Glamourweave Brooch gives the bearer the Magical Ward (4+) special rule against missile attacks. In addition, any model attempting to strike the bearer in close combat must first pass a Leadership test or require 6's To Hit the bearer during that Combat phase.]

#talisman("AMARANTHINE BROOCH", 30)[The Amaranthine Brooch gives the wearer the Magical Ward (4+) special rule against non-Magical Attacks.]

#talisman("STONE OF THE CRYSTAL MERE", 30)[The Stone of the Crystal Mere gives the bearer the Magical Ward (3+) special rule. However, if this Ward Save is ever failed, the Magical Ward is lost for the rest of the game.]

#talisman("AMBER PENDANT", 25)[The Amber Pendant causes all enemy units in base contact with the wearer to be subject to the Always Strikes Last special rule.]

#talisman("FIMBULWINTER SHARD", 25)[The Fimbulwinter Shard causes enemies attacking the bearer in close combat to suffer \-1 To Hit. However, all models with the Forest Spirit special rule (including the bearer) suffer from Stupidity while the bearer is within 6".]

#talisman("TALISMAN OF QWARR", 20)[Models targeting the bearer with missile attacks must re-roll successful rolls To Hit.]

#talisman("STONE OF REBIRTH", 15, one-use: true)[If the bearer of the Stone of Rebirth is killed, roll a D6. On a 2+, the model is brought back to life with one Wound remaining. This has no effect if the wearer was killed as a result of being pursued down.]

#talisman("MERCIW'S LOCUS", 15)[Merciw's Locus causes the bearer and any model attacking them to lose all Strength bonuses from any weapon they might carry.]

#talisman("DEEPMIRE CLOAK", 10, only: "Model on foot")[If the wearer is in cover and is at their starting number of Wounds, enemy missile attacks targeting them suffer \-1 To Hit. If the wearer is in cover and has suffered one or more Wounds during the game, they cannot be targeted by missile attacks at all.]
]

#magic-item-section("arcane")[
#arcane-item("ORB OF MIDSUMMER", 40, type: "Relic")[The bearer of this item may re-roll failed casting attempts, unless a Miscast has been rolled.]

#arcane-item("RANU'S HEARTSTIONE", 40, type: "Relic")[Once per Magic phase, the bearer of this item may re-roll one of the dice when casting or dispelling a spell. This can be used to prevent a miscast or to cause Ultimate Power.]

#arcane-item("VESPERAL GEM", 40, type: "Charm", one-use: true)[This item can be used at the start of your Magic phase. Once used, the Wizard can automatically cast any one of their spells from the Lore of Athel Loren without using any power dice this turn. This spell cannot be dispelled. After resolving the effects of the spell, roll a D6. On a 1, the bearer suffers 1 Wound with no saves allowed.]

#arcane-item("OAKEN STAVE", 35, type: "Staff")[The bearer of this item may roll an extra D6 when dispelling and discard the lowest result.]

#arcane-item("SILVERWOOD CIRCLET", 30, type: "Relic")[The bearer of this item adds +12" to the range of all their spells (excluding auras).]

#arcane-item("VIRIDESCENT SHAWL", 30, type: "Relic")[This item gives the bearer a +1 casting bonus. In addition, all enemy missile attacks targeting the bearer suffer \-1 To Hit.]

#arcane-item("DIVINATION ORB", 25, type: "Relic")[If an opponent uses more than three power dice (from any source) when casting any spell, the bearer of the Divination Orb may add an extra free Dispel dice into the attempt to dispel that spell.]

#arcane-item("DEEPWOOD SPHERE", 20, type: "Relic")[Any enemy unit that enters a forest within 18" of the bearer of the Deepwood Sphere suffers D6 Strength 4 Hits as soon as they have finished their move. They continue to suffer D6 Strength 4 Hits at the start of any of their Movement phases for as long as they remain in the forest and the bearer of the item remains within range.]

#arcane-item("ELF CHARM", 20, type: "Relic")[When casting spells from the Lore of Life, the wizard may add a +D3 casting bonus once per Magic phase.]

#arcane-item("CALAINGOR'S STAVE", 15, type: "Staff")[When casting the _Tree Singing_ spell from the Lore of Athel Loren, the bearer may re-roll the distance the forest moves.]

#arcane-item("HEARTWOOD PENDANT", 10, type: "Relic")[The bearer of this item may choose their spells from the Lore of Athel Loren in addition to one other spell lore.]

#arcane-item("WARSONG STAVE", 10, type: "Staff")[The bearer of this item knows the _Tree Singing_ spell from the Lore of Athel Loren in addition to their other spells.]

#arcane-item("WENDING WAND", 5, type: "Staff")[Any friendly unit that pursued off the table can enter the table from any point of any table edge of their choice in their next turn, as long as it is within 24" of the bearer of this item.]

#arcane-item("SIGIL OF THE MAGE QUEEN", 5, type: "Charm", one-use: true, common: true)[This item may be used after making a casting roll. When used, it adds a +3 casting bonus.]
]

#magic-item-section("enchanted")[
#enchanted-item("CROWN OF FELL BOWERS", 40)[The wearer and any unit they are with gain +1 To Wound in close combat.]

#enchanted-item("WARDROTH HORN", 40, one-use: true)[This item may be used at the start of any close combat phase. Once used, all friendly units (excluding mounts) within 12" gain +1 Attack for the duration of this turn.]

#enchanted-item("MOONSTONE OF THE HIDDEN WAYS", 35)[If the bearer’s unit is wholly within a forest at the end of your Movement phase, and is not in close combat, it can forestwalk. If it does so, remove it from the battlefield and immediately replace it, wholly within any forest on the battlefield, just like a summoning spell. A unit that forestwalks counts as having marched in the Movement phase.]

#enchanted-item("HAIL OF DOOM ARROW", 35, one-use: true)[Model with Elven longbow only. The Hail of Doom arrow can be used instead of making a Shooting attack with the bearer’s Elven longbow, though it cannot be used with the Sniper rule. Declare that the Hail of Doom Arrow is being used before any dice are rolled.

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "4", "Multiple Shots (3D6)"))
]

#enchanted-item("FORGET-ME-KNOT", 25, one-use: true)[This item can be used against one enemy model in base contact at the start of any round of close combat. For the duration of that round, the target may not Attack or Stomp.]

#enchanted-item("HORN OF THE ASRAI", 25, one-use: true)[The Horn of the Asrai can be used at the beginning of any enemy Movement phase. When used, all enemies able to declare a charge against the bearer of this item must take a Psychology test. If they fail, they must declare a charge against the bearer this turn.]

#enchanted-item("WAYSTALKER'S CLOAK", 25)[The Waystalker's Cloak gives the wearer the Forest Stalker and Scouts special rules.]

#enchanted-item("WRAITHSTONE", 25)[All enemy units within 6" of the bearer of the Wraithstone suffer a \-1 penalty to their Leadership.]

#enchanted-item("ELYNETT'S BROOCH", 20)[Elynett's Brooch allows the wearer and any unit they are with to re-roll failed Psychology tests.]

#enchanted-item("WAILING ARROWS", 15, common: true)[Enchanted Arrows. Any unit that suffers an unsaved wound from these arrows must make a Panic test.]

#enchanted-item("ARROWS OF POTENCY", 10, common: true)[Enchanted Arrows. Any shots made with the Arrows of Potency have the Multiple Wounds (2) special rule.]

#enchanted-item("BLIGHT-TIPPED ARROWS", 10, common: true)[Enchanted Arrows. Any Character, Monstrous Creature or Monster that suffers an unsaved Wound by Blight- Tipped Arrows must pass a Toughness test at the start of each turn for the remainder of the game or suffer an additional Wound which Ignores Armour Saves.]

#enchanted-item("CROWN OF ANTLERS", 10)[The bearer of this item gains the Impact Hits (D3) special rule. The Impact Hits are Armour Piercing (1).]

#enchanted-item("ORION'S FAVOUR", 10, one-use: true, common: true)[The bearer can re-roll any failed rolls To Hit and/or To Wound made during either the Shooting or Close Combat phase.]

#enchanted-item("GWYTHERC'S HORN", 5)[All friendly units within 12" of the bearer of Gwytherc's Horn gain +1 to their Leadership when attempting to Rally.]

#enchanted-item("DRAGONTOOTH ARROWS", 5, common: true)[Enchanted Arrows. Any Character, Monstrous Creature or Monster that suffers an unsaved Wound by Dragontooth Arrows gains the Stupidity special rule for the remainder of the game.]
]

#magic-item-section("standard")[
#magic-standard("BATTLE STANDARD OF ATHEL LOREN", 75)[Whenever an enemy spell is cast at a friendly unit within 12" of this standard, roll a D6; on a 5+, the spell is automatically dispelled.]

#magic-standard("BANNER OF THE WILDWOOD", 40)[All enemy units with Line of Sight to this banner suffer \-1 to their Leadership.]

#magic-standard("BANNER OF THE ETERNAL QUEEN", 35)[The unit carrying this standard has the Magic Resistance (3) special rule. In addition, it gains +1 combat resolution bonus if it is within 6" of a forest.]

#magic-standard("BANNER OF THE HUNTER KING", 30, only: "Wild Riders")[The unit carrying this standard add +D6" to their charge range.]

#magic-standard("GAEMRATH, THE BANNER OF MIDWINTER", 25, one-use: true)[Gaemrath, the Banner of Midwinter may be used at the start of any close combat phase. Until the start of your next Movement phase, the unit carrying the banner may not move and gains the Unbreakable special rule.]

#magic-standard("FAOGHIR, THE BANNER OF DWINDLING", 25)[Enemies that attempt to charge or flee from the unit carrying Faoghir, the Banner of Dwindling roll one dice fewer than normal to determine their charge/flee distance.]

#magic-standard("SAEMRATH, THE BANNER OF ZENITH", 25)[Enemy units within 12" of the unit carrying Saemrath, the Banner of the Zenith at the start of their Movement phase may not March.]

#magic-standard("STANDARD OF MORNING'S CHILL", 25)[All missile attacks targeting the unit carrying this standard suffer \-1 To Hit.]

#magic-standard("TAPESTRY OF TALSYN", 25)[The unit carrying this standard gains the Hold Your Ground (6) special rule.]

#magic-standard("BANNER OF THE WILD HUNT", 20, only: "Wild Riders")[The unit carrying this standard gains +1 Combat Resolution and may re-roll failed pursuit rolls.]

#magic-standard("AECH, THE BANNER OF SPRINGTIDE", 10)[The unit carrying Aech, the Banner of Springtide gains the Quick Shot special rule and may fire Multiple Shots with their bows when choosing Stand & Shoot as a charge reaction.]

#magic-standard("BANNER OF MIDSUMMER'S EVE", 10)[The unit carrying this standard ignores To Hit penalties for shooting at enemies in cover.]
]

= CHARACTERS

#unit("HIGHBORNS",
  first: true,
  profiles: (
    (name: "Glade Lord", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 120),
    (name: "Glade Captain", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 55),
  ),
  troop-type: "Infantry (Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Asrai Archery, Elven Grace, Forest Strider",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Elven shortbow +6 points
  - Elven longbow +8 points
- May take light armour +3 points
- May take a shield +5 points
- May choose one of the following:
  - Arcane Bodkins +1 point
  - Moonfire Shot +1 point
  - Starfire Shafts +1 point
  - Hagbane Tips +2 points
  - Swiftshiver Shards +2 points
  - Trueflight Arrows +2 points
- May be mounted on one of the following:
  - Elven Steed +15 points
  - Warhawk +25 points
  - Great Eagle +40 points
  - Great Stag +50 points
  - Meadow Chariot (replacing one of the crew) +70 points
  - Forest Dragon (Glade Lord only) +325 points
- One Glade Captain may carry the Battle Standard +25 points
- A Glade Captain may take one Spite and/or Magic Items up to a total of 50 points
- A Glade Lord may take one Spite and/or Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("SPELLSINGERS",
  profiles: (
    (name: "Spellweaver", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 3, i: 6, a: 2, ld: 9, points: 195),
    (name: "Spellsinger", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 5, a: 1, ld: 8, points: 85),
  ),
  troop-type: "Infantry (Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Spellsinger is a Level 1 Wizard. A Spellweaver is a Level 3 Wizard. They use one of the following Lores",
  magic-body: [
of Magic:

- Athel Loren
- Beasts
- Heavens
- Light
- Life
- Shadow
  ],
  special-rules: "Blessings of the Ancients, Elven Grace, Forest Strider",
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Elven Steed +15 points
  - Warhawk +25 points
  - Unicorn +25 points
  - Great Eagle +40 points
- A Spellsinger may take one Spite and/or Magic Items up to a total of 50 points
- A Spellweaver take one Spite and/or Magic Items up to a total of 100 points
  ],
)

#unit("SHADOWDANCER",
  profiles: (
    (name: "Shadowdancer", m: 5, ws: 8, bs: 6, s: 4, t: 3, w: 2, i: 8, a: 4, ld: 8, points: 100),
  ),
  troop-type: "Infantry (Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Shadowdancer who is a Wizard who chooses spells from the Lore of Shadow.",
  options: [
- May be upgraded to a Level 1 Wizard +35 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Saerath +5 points
  - Great weapon +15 points
- May take one Spite and/or Magic Items up to a total of 50 points
  ],
  special-rules: "Blessings of the Ancients, Elven Grace, Forest Strider, Magical Ward (6+), Magic",
  special-rules-body: [
*Resistance (1), Shadow Dances of Loec*
  ],
  order: ("troop-type", "base-size", "equipment", "magic", "options", "special-rules"),
)

#unit("WILD HUNTER",
  profiles: (
    (name: "Wild Hunter", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 110),
    (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Character, Wood Elf)",
  base-size: "25x50 or 30x60",
  mount: "Elven Steed (Equine)",
  equipment: "Light lance",
  special-rules: "Devastating Charge, Elven Grace, Forest Spirit, Frenzy",
  options: [
- May take a shield +5 points
- May take light armour +3 points
- May replace Elven Steed with one of the following:
  - Steed of Kurnous +5 points
  - Great Stag +25 points
- May take one Spite and/or Magic Items up to a total of 50 points
  ],
  order: ("troop-type", "base-size", "mount", "equipment", "special-rules", "options"),
)

#unit("WAYSTALKER",
  profiles: (
    (name: "Waystalker", m: 5, ws: 6, bs: 7, s: 4, t: 3, w: 2, i: 7, a: 2, ld: 8, points: 90),
  ),
  troop-type: "Infantry (Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Elven shortbow",
  special-rules: "Asrai Archery, Elven Grace, Forest Strider, Forest Stalker, Lethal Shot, Scouts, Sniper",
  options: [
- May take an additional hand weapon +3 points
- May replace Elven shortbow with Elven longbow +2 points
- May choose one of the following:
  - Arcane Bodkins +1 point
  - Moonfire Shot +1 point
  - Hagbane Tips +2 points
  - Starfire Shafts +2 points
  - Swiftshiver Shards +2 points
  - Trueflight Arrows +2 points
- May take one Spite and/or Magic Items up to a total of 50 points
  ],
)

#unit("ARCH-REVENANT",
  profiles: (
    (name: "Arch-Revenant", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 160),
  ),
  troop-type: "Infantry (Character, Forest Spirit)",
  base-size: "25x25 or 30x30",
  equipment: "Polearm, shield",
  special-rules: "Fly (10), Forest Spirit, Natural Armour (6+)",
  special-rules-body: (
    rule("Call to Battle")[All friendly units with the Forest Spirit special rule within 6" of the Arch-Revenant are subject to the Frenzy special rule as long as they remain within range, and do not lose Frenzy even if losing combat.],
  ),
  options: [
- May take one Spite and/or Magic Items up to a total of 100 points
  ],
)

#unit("WARSONG REVENANT",
  profiles: (
    (name: "Warsong Revenant", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 5, a: 1, ld: 9, points: 250),
  ),
  troop-type: "Infantry (Character, Forest Spirit)",
  base-size: "50x75",
  equipment: "Hand weapon",
  magic: "A Warsong Revenant is a Level 3 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Athel Loren
- Life
  ],
  special-rules: "Blessings of the Ancients, Fly (5), Forest Spirit, Regeneration (5+), Natural Armour (6+)",
  special-rules-body: (
    rule("Song of Athel Loren")[Friendly models within 12" of one or more Warsong Revenants gain +1 to their Leadership. Enemy models within 12" of one or more Warsong Revenants suffer \-1 to their Leadership.],
  ),
  options: [
- May take one Spite and/or Magic Items up to a total of 100 points
  ],
)

#unit("TREELORD ANCIENT",
  profiles: (
    (name: "Treelord Ancient", m: 5, ws: 4, bs: 4, s: 6, t: 6, w: 6, i: 2, a: 3, ld: 10, points: 250),
  ),
  troop-type: "Monster (Character, Forest Spirit)",
  base-size: "75x50 or 100x100",
  equipment: "Hand weapon",
  magic: "A Treelord Ancient is a Level 1 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Athel Loren
- Life
  ],
  special-rules: "Blessings of the Ancients, Flammable, Forest Spirit, Natural Armour (3+), Stubborn, Tree",
  special-rules-body: [
*Whack*
  ],
  upgrades: [
- *Strangleroots:* Strangleroots have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "5", "Multiple Shots (D6+1), Quick Shot, Rapid Fire"))
  ],
  options: [
- May be upgraded to a Level 2 Wizard +35 points
- May take Strangleroots +10 points
- May take Spites up to a total of 100 points
  ],
)

#unit("GROVE GUARDIAN",
  profiles: (
    (name: "Grove Guardian", m: 5, ws: 6, bs: 6, s: 4, t: 4, w: 3, i: 7, a: 4, ld: 9, points: 170),
  ),
  troop-type: "Infantry (Character, Forest Spirit)",
  base-size: "50x100 or 60x100",
  equipment: "Great weapon",
  special-rules: "Flammable, Forest Spirit, Hatred, Natural Armour (6+)",
  special-rules-body: (
    rule("Regenesis")[All friendly units of Forest Spirits within 6" of a Grove Guardian gain the Regeneration (6+) special rule.],
    rule("Soulshriek")[Each time a model with the Forest Spirit special rule is removed as a casualty in close combat within 12" of a Grove Guardian, roll a D6. On a 5+, the enemy model that struck the blow suffers one Wound which Ignores Armour Saves.],
  ),
  options: [
- May take Spites up to a total of 100 points
  ],
)

#unit("BRANCHWRAITH",
  profiles: (
    (name: "Branchwraith", m: 5, ws: 6, bs: 6, s: 4, t: 4, w: 2, i: 7, a: 4, ld: 9, points: 85),
  ),
  troop-type: "Infantry (Character, Forest Spirit)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  magic: "A Branchwraith who is a Wizard chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Athel Loren
- Life
  ],
  special-rules: "Blessings of the Ancients, Flammable, Forest Spirit, Hatred, Natural Armour (6+), Tree",
  special-rules-body: [
*Aspects*
  ],
  options: [
- May be upgraded to a Level 1 Wizard +35 points
- May take a great weapon +15 points
- May take Spites up to a total of 50 points
  ],
)

= CHARACTER MOUNTS

#unit("ELVEN STEED",
  compact: true,
  profiles: (
    (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
)

#unit("STEED OF KURNOUS",
  compact: true,
  profiles: (
    (name: "Steed of Kurnous", m: 9, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Cervine)",
  base-size: "25x50 or 30x60",
)

#unit("UNICORN",
  profiles: (
    (name: "Unicorn", m: 10, ws: 5, bs: 0, s: 4, t: 4, w: 2, i: 5, a: 2, ld: 8, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
  special-rules: "Forest Strider, Magical Attacks, Magic Resistance (2)",
  special-rules-body: (
    rule("Impale")[A Unicorn gains the Mighty Blow (1) special rule in any turn that it charges.],
  ),
)

#unit("WARHAWK",
  compact: true,
  profiles: (
    (name: "Warhawk", m: 2, ws: 4, bs: 0, s: 4, t: 3, w: 2, i: 5, a: 2, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Avian)",
  base-size: "40x40 or 50x50",
  special-rules: "Fly (10)",
)

#unit("GREAT STAG",
  compact: true,
  profiles: (
    (name: "Great Stag", m: 9, ws: 5, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 2, ld: 7, points: "-"),
  ),
  troop-type: "Monstrous Beast (Cervine)",
  base-size: "50x50",
  special-rules: "Forest Strider, Impact Hits (D3)",
)

= CORE UNITS

#unit("GLADE GUARD",
  first: true,
  profiles: (
    (name: "Glade Guard", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 7),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Spear, shield",
  special-rules: "Elven Grace, Forest Strider",
  options: [
- May upgrade one Glade Guard to a Leader +5 points
- May upgrade one Glade Guard to a Musician +5 points
- May upgrade one Glade Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points
  ],
)

#unit("GLADE ARCHERS",
  profiles: (
    (name: "Glade Archer", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Elven longbow",
  special-rules: "Asrai Archery, Elven Grace, Forest Strider",
  options: [
- May choose one of the following:
  - Arcane Bodkins +1 point/model
  - Moonfire Shot +1 point/model
  - Starfire Shafts +1 point/model
  - Hagbane Tips +2 points/model
  - Swiftshiver Shards +2 points/model
  - Trueflight Arrows +2 points/model
- May upgrade one Glade Archer to a Leader +5 points
- May upgrade one Glade Archer to a Musician +5 points
- May upgrade one Glade Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points
  ],
)

#unit("DEEPWOOD SCOUTS",
  profiles: (
    (name: "Deepwood Scout", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 12),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Elven shortbow",
  special-rules: "Asrai Archery, Elven Grace, Forest Strider, Scouts, Skirmishers",
  options: [
- May replace Elven shortbows with Elven longbows +1 points/model
- May choose one of the following:
  - Arcane Bodkins +1 point/model
  - Moonfire Shot +1 point/model
  - Starfire Shafts +1 point/model
  - Hagbane Tips +2 points/model
  - Swiftshiver Shards +2 points/model
  - Trueflight Arrows +2 points/model
- May upgrade one Deepwood Scout to a Leader +5 points
- May upgrade one Deepwood Scout to a Musician +5 points
- May upgrade one Deepwood Scout to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points
  ],
  notes: [
- You may not have more units of Deepwood Scouts than you have units of Glade Archers.
  ],
)

#unit("GLADE RIDERS",
  profiles: (
    (name: "Glade Rider", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 13),
    (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Wood Elf)",
  mount: "Elven Steed (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon",
  special-rules: "Asrai Archery, Elven Grace, Fast Cavalry, Forest Strider",
  options: [
- May take light lances +1 point/model
- May choose one of the following:
  - Elven longbows +3 points/model
  - Elven shortbows +3 points/model
- May take light armour +1.5 point/model
- May take shields (if armed with light lances) +1 point/model
- May choose one of the following:
  - Arcane Bodkins +1 point/model
  - Moonfire Shot +1 point/model
  - Starfire Shafts +1 point/model
  - Hagbane Tips +2 points/model
  - Swiftshiver Shards +2 points/model
  - Trueflight Arrows +2 points/model
- May upgrade one Glade Rider to a Leader +5 points
- May upgrade one Glade Rider to a Musician +5 points
- May upgrade one Glade Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up 25 points
  ],
)

#unit("DRYADS",
  profiles: (
    (name: "Dryad", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 2, ld: 8, points: 11),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Forest Spirit)",
  base-size: "25x25 or 30x30",
  special-rules: "Flammable, Forest Spirit, Hatred, Natural Armour (6+), Tree Aspects",
  options: [
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Dryad to a Leader +5 points
  ],
)

#unit("SPITE SWARMS",
  compact: true,
  profiles: (
    (name: "Spite Swarm", m: 5, ws: 3, bs: 0, s: 2, t: 2, w: 6, i: 4, a: 6, ld: 6, points: 35),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Forest Spirit)",
  base-size: "40x40",
  special-rules: "Forest Spirit",
)

= SPECIAL UNITS

#unit("ETERNAL GUARD",
  first: true,
  profiles: (
    (name: "Eternal Guard", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 9, points: 10),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Saearath, light armour",
  special-rules: "Elven Grace, Forest Strider, Stubborn",
  special-rules-body: (
    rule("Fortress of Boughs")[A unit where the majority of the models have this special rule counts as fighting behind a defended obstacle.],
  ),
  options: [
- May take shields +1 point/model
- May upgrade one Eternal Guard to a Leader +5 points
- May upgrade one Eternal Guard to a Musician +5 points
- May upgrade one Eternal Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points
  ],
  notes: [
- You may take one unit of Eternal Guard as a Core Unit instead of a Special Unit for every Glade Lord in your army.
  ],
)

#unit("WILDWOOD RANGERS",
  profiles: (
    (name: "Wildwood Ranger", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 1, ld: 9, points: 13),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, light armour",
  special-rules: "Elven Grace, Forest Strider, Immunity (Psychology)",
  special-rules-body: (
    rule("Guardians of the Wildwood")[If a model with this special rule is in base contact with at least one enemy model with either the Fear or Terror special rule, it gains +1 Attack.],
  ),
  options: [
- May upgrade one Wildwood Ranger to a Leader +5 points
- May upgrade one Wildwood Ranger to a Musician +5 points
- May upgrade one Wildwood Ranger to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points
  ],
)

#unit("WARDANCERS",
  profiles: (
    (name: "Wardancer", m: 5, ws: 6, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 8, points: 13),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Elven Grace, Forest Strider, Magical Ward (6+), Magic Resistance (1), Shadow Dances of Loec, Skirmishers",
  options: [
- Must choose at least one of the following:
  - Saeraths +0.5 point/model
  - Additional hand weapons +1 point/model
- May upgrade one Wardancer to a Leader +5 points
- May upgrade one Wardancer to a Musician +5 points
- May upgrade one Wardancer to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points
  ],
)

#unit("ALTERS",
  profiles: (
    (name: "Alter", m: 8, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 8, points: 14),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Wood Elf)",
  base-size: "20x20 or 25x25",
  special-rules: "Ambushers, Elven Grace, Fear, Forest Strider, Skirmishers, Swiftstride",
  special-rules-body: [
- *Animal Form*: Models with this special rule may choose one of the following Animal Forms at the start of each round of close combat. This is done before Impact Hits are resolved. All models in the same unit must choose the same Animal Form. The effect of each Animal Form lasts until the end of that turn or until a new Animal Form is chosen. Models cannot choose the Animal Form in two consecutive rounds of combat.
  - *Bear:* The model gains +1 Strength.
  - *Boar:* The model gains +1 Toughness.
  - *Wolf:* The model gains +1 Attack and the Armour Piercing (1) special rule.
  - *Stag:* The model gains the Impact Hits (1) special rule with Mighty Blow (1).
  ],
  options: [
- May upgrade one Alter to a Leader +5 points
  ],
)

#unit("WILD RIDERS",
  profiles: (
    (name: "Wild Rider", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 1, ld: 9, points: 24),
    (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
    (name: "Steed of Kurnous", m: 9, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Wood Elf)",
  mount: "Elven Steed (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Light lance",
  special-rules: "Devastating Charge, Elven Grace, Fast Cavalry, Forest Spirit, Frenzy",
  options: [
- May take light armour +1.5 point/model
- May take shields +1 point/model
- May replace Elven Steeds with Steeds of Kurnous +2 points/model
- May upgrade one Wild Rider to a Leader +5 points
- May upgrade one Wild Rider to a Musician +5 points
- May upgrade one Wild Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points
  ],
)

#unit("WARHAWK RIDERS",
  profiles: (
    (name: "Warhawk Rider", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 24),
    (name: "Warhawk", m: 2, ws: 4, bs: 0, s: 4, t: 3, w: 2, i: 5, a: 2, ld: 5, points: ""),
  ),
  unit-size: "3-9",
  troop-type: "Cavalry (Wood Elf)",
  mount: "Warhawk (Avian)",
  base-size: "40x40 or 50x50",
  equipment: "Light lance, Elven shortbow",
  special-rules: "Asrai Archery, Elven Grace, Fast Cavalry, Fly (10)",
  options: [
- May replace Elven shortbows with Elven longbows free
- May take shields +2 points/model
- May choose one of the following:
  - Arcane Bodkins +1 point/model
  - Moonfire Shot +1 point/model
  - Starfire Shafts +1 point/model
  - Hagbane Tips +2 points/model
  - Swiftshiver Shards +2 points/model
  - Trueflight Arrows +2 points/model
- May upgrade one Warhawk Rider to a Leader +5 points
  ],
)

#unit("MEADOW CHARIOT",
  profiles: (
    (name: "Meadow Chariot", m: 8, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 70),
    (name: "Charioteer", m: "-", ws: 5, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 1, ld: 9, points: ""),
    (name: "Elven Steed", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 4, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 Charioteers (Wood Elf)",
  drawn-by: "2 Elven Steeds (Equine)",
  base-size: "50x100 or 100x100",
  equipment: "Light lance, Elven shortbow",
  special-rules: "Asrai Archery, Elven Grace",
  options: [
- May replace Elven shortbows with Elven longbows free
- May take two additional Elven Steeds +5 points
- May take two additional Charioteers +10 points
  ],
)

#unit("TREE REVENANTS",
  profiles: (
    (name: "Tree Revenant", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 2, ld: 8, points: 15),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Forest Spirit)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Forest Spirit, Martial Memories, Natural Armour (6+)",
  special-rules-body: (
    rule("Spirit-walk")[Instead of moving normally, the unit can walk the spirit paths during the Remaining Moves sub- phase. Remove it from play and set it up so that the centre of the unit is within any wood on the table.],
  ),
  options: [
- May upgrade one Tree Revenant to a Leader +5 points
- May upgrade one Tree Revenant to a Musician +5 points
- May upgrade one Tree Revenant to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points
  ],
)

#unit("SPITE REVENANTS",
  profiles: (
    (name: "Spite Revenant", m: 5, ws: 4, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 2, ld: 8, points: 14),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Forest Spirit)",
  base-size: "25x25 or 30x30",
  special-rules: "Forest Spirit, Hatred, Natural Armour (6+), Scouts, Skirmishers",
  special-rules-body: (
    rule("Unbridled Malice")[Spite Revenants' Hatred special rule applies in all rounds of close combat, not just the first. In addition, enemy units in base contact with them must re-roll successful Leadership tests. This has no effect on units that have Immunity (Psychology).],
  ),
  options: [
- May upgrade one Spite Revenant to a Leader +5 points
  ],
)

#unit("TREE KIN",
  profiles: (
    (name: "Tree Kin", m: 5, ws: 4, bs: 4, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 8, points: 45),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Forest Spirit)",
  base-size: "40x40 or 50x50",
  special-rules: "Flammable, Forest Spirit, Natural Armour (4+), Stubborn",
  options: [
- May choose one of the following:
  - Greatbows +6 points/model
  - Polearms +6 points/model
  - Great weapons +9 points/model
- May upgrade one Tree Kin to a Leader +5 points
  ],
)

#unit("TREEMAN",
  compact: true,
  profiles: (
    (name: "Treeman", m: 5, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 4, ld: 9, points: 155),
  ),
  troop-type: "Monstrous Creature (Forest Spirit)",
  base-size: "50x50 or 75x50",
  special-rules: "Flammable, Forest Spirit, Natural Armour (3+), Stubborn, Tree Whack",
)

= RARE UNITS

#unit("WAYWATCHERS",
  first: true,
  profiles: (
    (name: "Waywatcher", m: 5, ws: 4, bs: 5, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 19),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Elven shortbow",
  special-rules: "Asrai Archery, Elven Grace, Forest Strider, Forest Stalker, Lethal Shot, Scouts, Skirmishers",
  upgrades: [
- *Traps:* A Waywatcher unit that is within a forest is automatically assumed to set traps around its positions. Any enemy charging the unit through the forest will activate the traps as soon as the enemy unit touches the forest. If the chargers are already inside the forest when the charge is declared the traps are activated as soon as the charge is declared. Roll a D6 to determine the type and effect of the trap.

#chart((("D6", "Result"), ("1-2", "Spikes: The enemy unit suffers D6 Strength 3 hits."), ("3", "Snares: The enemy unit deducts D3\" from the charge distance."), ("4", "Nets: D3 models in the enemy unit suffer -1 Attacks."), ("5", "Camouflaged Pit: The enemy unit counts as moving through Dangerous Terrain. If the unit would
already treat the forest as Dangerous Terrain, they instead fail the test on a 1-2."), ("6", "Impaler: Treat the unit as being hit by a bolt thrower in the front rank. The file it hits is determined
by the Wood Elf player.")))
  ],
  options: [
- May replace Elven shortbows with Elven longbows +1 point/model
- May take additional hand weapons +1 point/model
- May take traps +15 points
- May choose one of the following:
  - Arcane Bodkins +1 point/model
  - Moonfire Shot +1 point/model
  - Starfire Shafts +1 point/model
  - Hagbane Tips +2 points/model
  - Swiftshiver Shards +2 points/model
  - Trueflight Arrows +2 points/model
- May upgrade one Waywatcher to a Leader +5 points
  ],
)

#unit("SISTERS OF THE THORN",
  profiles: (
    (name: "Sister of the Thorn", m: 5, ws: 4, bs: 5, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 25),
    (name: "Steed of Isha", m: 9, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Wood Elf)",
  mount: "Steed of Isha (Cervine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon, javelins, light armour",
  magic: "A unit of Sisters of the Thorn is a Level 1 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Athel Loren
- Beasts
- Life
  ],
  special-rules: "Asrai Archery, Blessings of the Ancients, Elven Grace, Fast Cavalry, Forest Strider, Magical Ward (4+), Poisoned Attacks",
  special-rules-body: (
    rule("Deepwood Coven")[The unit receives an additional +1 casting bonus for every 5 five models in the unit with this special rule. Each time the unit casts a spell (or is targeted by a special rule that affects a Wizard), you must nominate one Sister of the Thorn as the caster (or target) for the purposes of line of sight, range, etc. In the event of a Sisters of the Thorn unit rolling a miscast, do not roll on the Miscast table. Instead, the unit suffers D3 Wounds with no saves of any kind allowed.],
  ),
  options: [
- May upgrade one Sister of the Thorn to a Leader +5 points
- May upgrade one Sister of the Thorn to a Musician +5 points
- May upgrade one Sister of the Thorn to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points
  ],
)

#unit("GREAT STAG KNIGHTS",
  profiles: (
    (name: "Wild Rider", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 1, ld: 9, points: 58),
    (name: "Great Stag", m: 9, ws: 5, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 2, ld: 7, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Wood Elf)",
  mount: "Great Stag (Cervine)",
  base-size: "50x50",
  equipment: "Light lance",
  special-rules: "Devastating Charge, Elven Grace, Forest Spirit, Forest Strider, Frenzy, Impact Hits (D3)",
  options: [
- May take light armour +3 points/model
- May take shields +3 points/model
- May upgrade one Great Stag Knight to a Leader +5 points
- May upgrade one Great Stag Knight to a Musician +5 points
- May upgrade one Great Stag Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points
  ],
)

#unit("GREAT EAGLE",
  profiles: (
    (name: "Great Eagle", m: 2, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 8, points: 50),
  ),
  unit-size: "1-3",
  troop-type: "Monstrous Beast (Avian)",
  base-size: "40x40 or 50x50",
  special-rules: "Fly (9)",
  upgrades: (
    rule("Swiftsense")[The model gains the Always Strikes First special rule in any turn that they charge.],
    rule("Shredding Talons")[The model gains the Armour Piercing (1) special rule.],
  ),
  options: [
- May take Shredding Talons +5 points
- May take Swiftsense +5 points
  ],
)

#unit("GOSSAMID ARCHERS",
  profiles: (
    (name: "Gossamid Archer", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 2, ld: 8, points: 23),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Forest Spirit)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon, Elven longbow",
  special-rules: "Fly (10), Forest Spirit, Martial Memories, Natural Armour (6+).",
  special-rules-body: (
    rule("Larval Shafts")[If a model with this special rule rolls a natural 6 To Hit with their bows, that Attack automatically Wounds with the Multiple Wounds (D3) special rule.],
    rule("Zephyrspites")[After a unit where the majority of the models with this special rule has resolved all their missile attacks and is within 6" of an enemy unit; they may move directly backwards D6", keeping the same unit facing.],
  ),
  options: [
- May upgrade one Gossamid Archer to a Leader +5 points
  ],
)

#unit("SPITERIDER REVENANTS",
  profiles: (
    (name: "Spiterider Revenant", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 2, ld: 8, points: 60),
    (name: "Dragonspite", m: 3, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 5, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Cavalry (Forest Spirit)",
  mount: "Dragonspite (Insectoid, Forest Spirit)",
  base-size: "50x50 or 50x75",
  equipment: "Hand weapon, shields",
  special-rules: "Devastating Charge, Fast Cavalry, Fly (9), Forest Spirit, Martial Memories, Natural",
  special-rules-body: [
*Armour (5+), Regeneration (5+)*
  ],
  options: [
- May take light lances +2 points/model
- May upgrade one Spiterider Revenant to a Leader +5 points
- May upgrade one Spiterider Revenant to a Musician +5 points
- May upgrade one Spiterider Revenant to a Standard Bearer +10 points
  - May take a Magic Standard worth up 50 points
  ],
)

#unit("ZOAT",
  profiles: (
    (name: "Zoat", m: 8, ws: 4, bs: 3, s: 4, t: 5, w: 3, i: 4, a: 3, ld: 8, points: 130),
  ),
  troop-type: "Monstrous Beast (Zoat)",
  base-size: "50x75",
  equipment: "Great weapon",
  magic: "A Zoat is a Level 1 Wizard that can use spells from the Lore of Life.",
  special-rules: "Cold-blooded, Forest Strider, Magic Resistance (1), Natural Armour (4+)",
  special-rules-body: (
    rule("Master of the Vengeful Forest")[If a Zoat is wholly within a forest, all enemy models treat that forest as Dangerous Terrain and will fail their Dangerous Terrain tests on a roll of a 1 or 2.],
    rule("The Power of the Deepwoods")[If a Zoat is wholly within a forest, it gets a +2 casting bonus.],
  ),
  options: [
- May be upgraded to a Level 2 Wizard +35 points
  ],
)

#unit("TREELORD",
  profiles: (
    (name: "Treelord", m: 5, ws: 6, bs: 6, s: 6, t: 6, w: 6, i: 2, a: 6, ld: 9, points: 260),
  ),
  troop-type: "Monster (Forest Spirit)",
  base-size: "75x50 or 100x100",
  special-rules: "Flammable, Forest Spirit, Natural Armour (3+), Stubborn, Tree Whack",
  upgrades: [
- *Strangleroots:* Strangleroots have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "5", "Multiple Shots (D6+1), Quick Shot, Rapid Fire"))
  ],
  options: [
- May take Strangleroots +20 points
  ],
)

#unit("FOREST DRAGON",
  profiles: (
    (name: "Forest Dragon", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: 325),
  ),
  troop-type: "Monster (Draconid, Forest Spirit)",
  base-size: "50x50 or 50x100",
  special-rules: "Fly (7), Forest Spirit, Natural Armour (3+)",
  special-rules-body: (
    rule("Soporific Breath")[A Forest Dragon has a Strength 2 Breath Weapon. Armour saves taken against Wounds caused by Soporific Breath suffer a \-3 penalty. All models in a unit that suffers one or more hits from Soporific Breath gain the Stupidity special rule for the remainder of the game.],
  ),
)

= SPECIAL CHARACTERS

#unit("ORION",
  solo: true,
  first: true,
  subtitle: "The King in the Woods",
  profiles: (
    (name: "Orion", m: 9, ws: 8, bs: 8, s: 5, t: 5, w: 5, i: 9, a: 5, ld: 10, points: 420),
    (name: "Hound of Orion", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 1, i: 4, a: 1, ld: 6, points: ""),
  ),
  troop-type: "Monstrous Infantry (Special Character, Forest Spirit)",
  base-size: "40x40 or 50x50 (Orion), 25x50 (Hound of Orion)",
  magic-items: [
- *Spear of Kurnous:* Magic Weapon. Spear. The Spear of Kurnous gives Orion +1 Strength, as well as the Armour Piercing (1) and Multiple Wounds (D3) special rules. In addition, it can be used to make shooting attacks using the same rules as a bolt thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/18\"", "As user +1", "Armour Piercing (1), Multiple Wounds (D3)"))

- *Hawk's Talon:* Magic Weapon. This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("30/42\"", "6", "Multiple Shots (6)"))

- *Cloak of Isha:* Talisman. The Cloak of Isha grants Orion a Magical Ward (6+) and the Magic Resistance (2) special rule. At the start of each of your turns, roll a D6. On a score of 6, Orion regains a Wound lost earlier in the battle.
- *Horn of the Wild Hunt:* Enchanted Item. One use only. At the start of any turn, the Horn of the Wild Hunt may be sounded. Once it has, Orion and all friendly units within 18" gain the Devastating Charge and Fear special rules for the remainder of the turn.
  ],
  special-rules: "Asrai Archery, Elven Grace, Forest Spirit, Frenzy, Terror, Unbreakable",
  special-rules-body: (
    rule("The Wild Hunt")[Orion must be the Army General. In addition, Wild Riders counts as Core Units instead of Special Units. An army led by Orion must include at least one unit of Wild Riders.],
  ),
  upgrades: (
    rule("Orion's Equerries")[The Hounds of Orion are War Beasts (Canine, Forest Spirit) with the Frenzy, Forest Spirit and Unbreakable special rules. They must be deployed as a unit with Orion. Orion cannot leave this unit, and cannot join other units.],
  ),
  options: [
- May take two Hounds of Orion +20 points
  ],
)

#unit("ARIEL",
  solo: true,
  subtitle: "Mage Queen of Athel Loren",
  profiles: (
    (name: "Ariel", m: 5, ws: 5, bs: 5, s: 4, t: 4, w: 5, i: 7, a: 0, ld: 10, points: 380),
  ),
  troop-type: "Monstrous Infantry (Special Character, Forest Spirit)",
  base-size: "40x40 or 50x50",
  magic: "Ariel is a level 4 Wizard who uses spells from the Lore of Athel Loren.",
  magic-items: (
    rule("The Dart of Doom")[Magic Weapon. One use only. The Dart of Doom has a range of 12". If the dart hits a model it causes 1 automatic Wound which Ignores Armour saves. If the wound is not saved the dart sucks energy out of the victim, draining their Strength characteristic by D3 to a minimum of 1.],
    rule("The Heartstone of Athel Loren")[Talisman. If Ariel successfully dispels a spell targeted at her, the casting Wizard must immediately take a Leadership test. If he fails, he immediately loses a Wizard level and may not cast that spell for the remainder of the game.],
    rule("The Wand of Wych Elm")[Arcane Item. This staff allows any failed Dispel attempt to be re-rolled.],
    rule("The Berry Wine")[Enchanted Item. One use only. The wine can be drunk at the start of any phase. Ariel will immediately regain up to D3 Wounds previously lost during the battle.],
    rule("The Acorn of Ages")[Enchanted Item. One use only. At the start of the game, after the battlefield has been set up, but before deployment begins, place a forest, no more than 12" in diameter, on the battlefield. This forest can be placed anywhere at least 1" away from another terrain feature and the edge of the battle field. Once the forest have been placed, it scatters 2D6". If this scatter causes a forest to end up within 1" (or on top of) other terrain, or within 1" of the battle field edge, reduce or increase the scatter by the smallest amount necessary to avoid the obstruction. When this has been done, declare which type of forest you want it to be from those available in the Main Rulebook.],
  ),
  special-rules: "Blessings of the Ancients, Fly (9), Forest Spirit, Loremaster (Lore of Athel Loren), Magic",
  special-rules-body: [
*Resistance (3)*

- *Aura of the Fey Queen:* All friendly units within 6" of Ariel have the Immunity (Panic) special rule.
- *Earthbind:* Any units declaring a charge on Ariel count as moving through Dangerous Terrain for the duration of the turn. In addition, if Ariel flees from combat, any enemies attempting to pursue her roll an extra D6 when determining their pursuit distance and discard the highest result.
- *Screech:* Ariel may use Screech when it would normally be her time to attack in close combat. This is a special attack that automatically Hits all enemy models in base contact at Strength 4 with the Ignores Armour special rule.
  ],
)

#unit("NAESTRA & ARAHAN",
  solo: true,
  subtitle: "Sisters of Twillight",
  profiles: (
    (name: "Naestra", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 90),
    (name: "Arahan", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 90),
    (name: "Ceithin-Har (Forest Dragon)", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: ""),
    (name: "Gwindalor (Great Eagle)", m: 2, ws: 5, bs: 0, s: 4, t: 4, w: 4, i: 4, a: 3, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, Wood Elf)",
  base-size: "40x40 or 50x50 (Gwindalor), 50x50 or 50x100 (Ceithin-Har)",
  equipment: "Shield",
  magic-items: [
- *Talon of Dawn:* Magic Weapon. The Talon of Dawn is a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "5", "Armour Piercing (1), Flaming Attacks, Multiple Wounds (D6)"))

If an attack from the Talon of Dawn causes one or more unsaved Wounds, they regain a single Wound lost earlier in the battle.

- *Talon of Dusk:* Magic Weapon. The Talon of Dusk is a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "2", "Armour Piercing (1), Multiple Shots (2D6), Poisoned Attacks, Rapid Fire"))
  ],
  special-rules: "Asrai Archery, Elven Grace.",
  special-rules-body: (
    rule("Conjoined Destiny")[Naestra and Arahan counts as a single model for all purposes. If they have been reduced to less than 4 Wounds at the end of any turn, they will be restored to 4 Wounds.],
    rule("Impetuous")[If Ceithin-Har can declare a Charge during the Charge sub-phase, he must do so unless he passes a Leadership test.],
    rule("Hunter’s Mount")[When mounted on Gwindalor, Naestra and Arahan re-roll all failed To Hit rolls when making shooting attacks.],
    rule("Sisters of Twilight")[Naestra’s close combat attacks receive a +1 bonus To Wound against models from the Forces of Destruction. Arahan’s close combat attacks receive a +1 bonus To Wound against models from the Forces of Order.],
  ),
  options: [
- Must be mounted on one of the following:
  - Gwindalor +100 points
  - Ceithin-Har +320 points
  ],
)

#unit("ARALOTH THE BOLD",
  solo: true,
  subtitle: "Lord of Talsyn",
  profiles: (
    (name: "Araloth", m: 5, ws: 8, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 5, ld: 10, points: 185),
  ),
  troop-type: "Infantry (Special Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour, shield",
  magic-items: (
    rule("Spear of Talsyn")[Magic Weapon. Spear. This weapon has the Armour Piercing (1) special rule.],
  ),
  special-rules: "Elven Grace, Forest Strider, Magical Ward (5+)",
  special-rules-body: [
- *Boldest of the Bold:* Whilst Araloth is a lone character, he has the Unbreakable special rule.
- *Guardians of Talsyn:* If Araloth is included in your army, you may upgrade one unit of Eternal Guard to the Guardians of Talsyn for a cost of +1 point per model. This unit has +1 Attack.
- *Skaryn the Eye Thief:* Skaryn the Eye Thief uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "3", "Sniper"))

Rather than rolling to Hit using Ballistic Skill, the target must pass a Weapon Skill test to avoid being Hit. If the Wound is unsaved, and the To Wound roll was a 6, the model suffers a \-5 penalty to Weapon Skill, Ballistics Skill, and Initiative (to a minimum of 1) for the rest of the game. A model can only suffer this penalty once.
  ],
  options: [
- May take one Spite and/or Magic Items up to a total of 75 points
  ],
  notes: [
- You may take one unit of Eternal Guard as a Core Unit instead of a Special Unit if Araloth is included in your army.
  ],
)

#unit("SCARLOC",
  solo: true,
  subtitle: "The Hooded One, Mistwalker of Athel Loren",
  profiles: (
    (name: "Scarloc", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 8, points: 100),
  ),
  troop-type: "Infantry (Special Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Elven longbow",
  magic-items: (
    rule("Runesword of Darkwood")[Magic Weapon. This weapon gives Skarloc the Always Strikes First and Armour Piercing (1) special rules.],
  ),
  special-rules: "Asrai Archery, Elven Grace, Forest Strider, Scouts",
  options: [
- May choose one of the following:
  - Arcane Bodkins +1 point
  - Moonfire Shot +1 point
  - Starfire Shafts +1 point
  - Hagbane Tips +2 points
  - Swiftshiver Shards +2 points
  - Trueflight Arrows +2 points
- May take one Spite and/or Magic Items up to a total of 25 points
  ],
)

#unit("NAIETH THE PROPHETESS",
  solo: true,
  subtitle: "High Seer of Athel Loren",
  profiles: (
    (name: "Naieth", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 5, a: 1, ld: 8, points: 100),
  ),
  troop-type: "Infantry (Special Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "Naieth is a Level 2 Wizard who uses the Lore of Heavens.",
  magic-items: (
    rule("The Rod of Divination")[Arcane Items. The Rod of Divination gives Naieth an extra Power dice at the start of each Magic phase.],
  ),
  special-rules: "Blessings of the Ancients, Elven Grace, Forest Strider",
  special-rules-body: (
    rule("Othu the Owl")[Othu may settle on any unit of Wood Elves with a Standard Bearer at the start of the shooting phase. This unit may then re-roll To Hit rolls of 1 with missile attacks this turn. The owl never settles on the same unit twice in succession. Othu is not vulnerable to weapons, missiles or magic, but if Naieth is removed from play Othu flies away.],
  ),
)

#unit("WYCHWETHYL",
  solo: true,
  profiles: (
    (name: "Wychwethyl", m: 5, ws: 8, bs: 6, s: 4, t: 3, w: 2, i: 8, a: 4, ld: 8, points: 110),
  ),
  troop-type: "Infantry (Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: (
    rule("The Drum of Orcskin")[Enchanted Item. The Drum of Orcskin gives Wychwethyl and any unit he joins the Swiftstride special rule when they roll their charge distance.],
  ),
  special-rules: "Elven Grace, Forest Strider, Magical Ward (6+), Magic Resistance (1), Shadow Dances of Loec",
  special-rules-body: (
    rule("Choose Opponent")[In close combat, Wychwethyl can choose to attack any enemy model in the enemy unit (excluding Challenges), not just the models in base contact with him.],
    rule("Dance of Doom")[Wychwethyl can use the Dance of Doom instead of his normal Shadow Dances. If he does so, he gains +1 Attack for every enemy model in base contact with him.],
  ),
)

#unit("SKAW",
  solo: true,
  subtitle: "The Falconer",
  profiles: (
    (name: "Skaw", m: 5, ws: 5, bs: 5, s: 4, t: 3, w: 2, i: 6, a: 2, ld: 8, points: 80),
  ),
  troop-type: "Infantry (Special Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: (
    rule("The Lash of Claws")[Magic Weapon. The Lash of Claws gives Skaw the Always Strikes First and Mighty Blow (1) special rules. In addition, if the victim is hit but not wounded, it loses 1 Attack for the duration of the turn.],
    rule("The Cape of Feathers")[Magic Armour. This armour gives Skaw a Magical Ward (6+). In addition, he gains the Natural Armour (4+) special rule against missile attacks.],
  ),
  special-rules: "Elven Grace, Forest Strider",
  special-rules-body: [
- *Falcons*: The falcons use the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "3", "Multiple Shots (3)"))

Rather than rolling to Hit using Ballistic Skill, the target must pass a Weapon Skill test to avoid being Hit.

In close combat, the falcons give Skaw an additional 3 Attacks that are resolved at Weapon Skill 4, Strength 3 and Initiative 4. These attacks no not benefit from any special rules or items that Skaw might have.
  ],
)

#unit("GRUARTH",
  solo: true,
  subtitle: "The Beastmaster",
  profiles: (
    (name: "Gruarth", m: 8, ws: 5, bs: 5, s: 4, t: 3, w: 2, i: 6, a: 2, ld: 8, points: 75),
    (name: "Fang", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 5, points: ""),
    (name: "Claw", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 5, points: ""),
  ),
  troop-type: "Infantry (Special Character, Wood Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic-items: [
- *The Binding Bolas:* Magic Weapon. The Binding Bolas is a missile weapon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18\"", "1", "Armour Piercing (1), Multiple Shots (2), Sniper"))

If a target has Unit Strength 3 or less and is Hit, but not slain, then it is temporarily entangled and cannot move in their next Movement phase. Entangled enemies may be left behind, counting as casualties, or in the case of a Character, as if they had left the unit.
  ],
  special-rules: "Animal Form (Gruarth only, see Alters), Elven Grace (Gruarth only), Forest Strider, Mixed",
  special-rules-body: [
*Unit, Natural Armour (6+), Skirmishers*

- *Beastmaster:* Fang and Claw are War Beasts (Canine) and Gruarth is their Handler. If Gruath is slain, Fang and Claw become subject to Frenzy. If both Fang and Claw are slain, Gruarth becomes subject to Hatred.
  ],
)

#unit("DURTHU OAKHEART",
  solo: true,
  subtitle: "Eldest of Ancients",
  profiles: (
    (name: "Durthu", m: 5, ws: 6, bs: 6, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 10, points: 320),
  ),
  troop-type: "Monster (Special Character, Forest Spirit)",
  base-size: "75x50",
  magic: "Durthu is a Level 1 Wizard who uses the Lore of Beasts.",
  magic-items: (
    rule("Sword of Daith")[Magic Weapon. This sword gives Durthu the Hatred special rule. In addition, he can never lose his Frenzy special rule.],
  ),
  special-rules: "Blessings of the Ancients, Flammable, Forest Spirit, Frenzy, Hatred, Natural Armour (3+), Strangleroots (see Treeman Ancient), Stubborn, Tree Whack",
  special-rules-body: [
- *Unburden of Thieflings:* An Unburden of Thieflings is a close combat attack that can be used in addition to Durthu's other attacks. It has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "2", "Magical Attacks, Poisoned Attacks, Random Attacks (D6)"))

Any enemy units that suffer Wounds from any of these attacks suffer \-1 To Hit and To Wound as well as \-1 to their armour saves until the start of your next turn.
  ],
  options: [
- May take one Spite and/or Magic Items up to a total of 50 points
  ],
)

#unit("BELTHANOS",
  solo: true,
  subtitle: "First Thorn of Kurnoth",
  profiles: (
    (name: "Belthanos", m: 5, ws: 7, bs: 6, s: 5, t: 5, w: 4, i: 7, a: 5, ld: 9, points: 400),
    (name: "Carnelian Greatspite", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 5, i: 3, a: 4, ld: 7, points: ""),
  ),
  troop-type: "Monster (Special Character, Forest Spirit)",
  mount: "Carnelian Greatspite (Forest Spirit)",
  base-size: "100x150",
  equipment: "Polearm",
  magic-items: (
    rule("Mantle of Leaves")[Talisman. This item allows Belthanos to re-roll failed Magical Ward saves.],
    rule("War-horn of Kurnous")[Enchanted Item. One use only. At the start of any turn, the War-horn of Kurnous may be sounded. All friendly units within 12" may re-roll failed charge distances this turn.],
  ),
  special-rules: "Flammable, Fly (7), Forest Spirit, Natural Armour (3+)",
)

#unit("THE LADY OF VINES",
  solo: true,
  profiles: (
    (name: "The Lady of Vines", m: 5, ws: 7, bs: 6, s: 5, t: 5, w: 5, i: 7, a: 5, ld: 9, points: 390),
  ),
  troop-type: "Monstrous Creature (Special Character, Forest Spirit)",
  base-size: "50x50",
  magic: "The Lady of Vines is a Level 2 Wizard who uses the Lore of Athel Loren.",
  magic-items: (
    rule("Kurnotheal's Wrath")[Magic Weapon. Spear/javelin. All attacks (both shooting and close combat) made with this weapon may re-roll failed rolls To Hit and have the Multiple Wounds (D3) special rule.],
    rule("Verdian Crown")[Talisman. All friendly units with the Forest Spirit special rule within 6" of the Lady of Vines count as being in soft cover.],
  ),
  special-rules: "Blessings of the Ancients, Flammable, Forest Spirit, Natural Armour (5+)",
  special-rules-body: [
- *Writhing Vines:* At the start of each round of close combat, the Lady of Vines can choose one of the following effects:
  - *Protective Barrier:* Enemy units targeting the Lady of Vines or any unit she is with suffer \-1 To Hit this round of close combat.
  - *Ensnare Foes:* The Lady of Vines and any unit she is with gain +1 To Hit this round of close combat.
  ],
)

#unit("DRYCHA",
  solo: true,
  subtitle: "Briarmaiden of Woe",
  profiles: (
    (name: "Drycha", m: 5, ws: 7, bs: 6, s: 4, t: 4, w: 3, i: 7, a: 4, ld: 9, points: 185),
  ),
  troop-type: "Infantry (Special Character, Forest Spirit)",
  base-size: "25x25 or 30x30",
  magic: "Drycha is a Level 2 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Athel Loren
- Life
- Shadow
  ],
  special-rules: "Blessings of the Ancients, Flammable, Forest Spirit, Natural Armour (6+), Spirit-walk (see",
  special-rules-body: [
Tree-Revenants)*, Tree Aspects*

- *Eternal Rage:* Drycha has the Hatred special rule which applies in every round of close combat, not just the first.
- *Fanatical Resolve:* If Drycha is reduced to 1 Wound, she gains the Frenzy special rule. She automatically loses Frenzy if she is healed back to her starting number of Wounds.
- *Roused to Wrath:* You may choose up to D3 units with the Forest Spirit special rule to deploy as Ambushers. When these unit would normally enter the battlefield, instead place them so that all models in the unit are wholly within a forest, and at least 1" away from other units and impassable terrain. Units that cannot be deployed this way enter the board as normal Ambushers instead. This rule cannot be used if there are no forests on the battlefield when it is time to deploy your army.
  ],
  options: [
- May take Spites up to a total of 50 points
  ],
)

= CREDITS

#unit("Written & Edited by:",
  first: true,
  subtitle: "Mathias Eliasson",
  before: [
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
  ],
)
