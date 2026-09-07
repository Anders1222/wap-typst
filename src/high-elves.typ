// High Elves 3.1 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "high-elves",
  army: "High Elves",
  version: "3.1",
  layout: "army",
  cover: "covers/high-elves.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — High Elves 3.1")

#cover(
  title: "High Elves",
  subtitle: "Warhammer Armies Project · 3.1",
  art: "/assets/covers/high-elves.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    High Elves*, version 3.1 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a High Elf army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules' that apply to several High Elf units, and these are detailed here.

#namecost("ELVEN GRACE", "")

Models with this special rule have the Dodge (6+) special rule in close combat. However, this cannot be used against enemies that attack before the model with Elven Grace.

#namecost("FIERY BREATH", "")

A model with this special rule has a Strength 4 Breath Weapon with the Flaming Attacks special rule.

#namecost("LILEATH'S BLESSING", "")

A Wizard with this special rule gains a +1 dispel bonus.

#namecost("MARTIAL PROWESS", "")

Models with this special rule may re-roll all To Hit rolls of 1 when making close combat attacks.

#namecost("SWORDMASTER", "")

Models with this special rule ignore Initiative penalties from great weapons and gain the Dodge (6+) special rule against non-magical missile attacks with Strength 3 or below (except templates).

#namecost("VALOUR OF AGES", "")

Models with this special rule re-roll all failed Panic tests caused by Dark Elves.

#namecost("BOW OF AVELORN", "")
#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "4", "Armour Piercing (1), Flaming Attacks, Magical Attacks, Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not moved. Cannot be used as a charge reaction._

#namecost("ELVEN SHORTBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "3", "Armour Piercing (1), March & Shoot, Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not marched. Cannot be used as a charge reaction._

#namecost("ELVEN LONGBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "3", "Armour Piercing (1), Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not moved. Cannot be used as a charge reaction._

#namecost("DRAGON ARMOUR", "")

Heavy armour. Models with dragon armour gain a Magical Ward (6+) and the Immunity (Flaming Attacks) special rule.

#namecost("ITHILMAR BARDING", "")
#minitable(("Combat", "Missile", "Special Rules"), ("+1/6+", "+1/6+", "-"))
#namecost("LION CLOAK", "")

The bearer gains the Natural Armour (6+) special rule against missile attacks.

#lore("THE LORE OF HIGH MAGIC")[

#spell("SHIELD OF SAPHERY", "Lore Attribute")[Each time a spell from the Lore of High Magic is successfully cast, the caster and their unit immediately gain a Magical Ward (6+) until the beginning of the caster's next Magic phase. This bonus is cumulative.]

#spell("DRAIN MAGIC", "Signature Spell", cast: "6+")[_Drain Magic_ can be cast on any unit (friend or foe) and has a range of 24". If the target is a friendly unit, Drain Magic is an *augment* spell. If the target is an enemy unit, Drain Magic is a *hex* spell. In either case, all Remains in Play spells affecting the unit are immediately dispelled, and spells lasting to the caster's next Magic phase immediately come to an end.]

#spell("APOTHEOSIS", 1, cast: "5+")[_Apotheosis_ is an *augment* spell that targets a single model within 18". The target immediately regains a single lost Wound and gains the Fear special rule until the start of the caster's next Magic phase.]

#spell("HAND OF GLORY", 1, cast: "5+")[_Hand of Glory_ is an *augment* spell with a range of 18". The target's Weapon Skill, Ballistic Skill, Initiative or Movement (choose one) is increased by D3 until the start of the caster's next Magic phase.]

#spell("FORTUNE IS FICKLE", 1, cast: "6+")[_Fortune is Fickle_ is a *hex* spell with a range of 24" that targets an enemy wizard. Until the start of the caster's next Magic phase, whenever the targets roll a double when casting spells, that counts as a Miscast.]

#spell("CURSE OF ARROW ATTRACTION", 2, cast: "7+")[_Curse of Arrow Attraction_ is a *hex* spell with a range of 24". Any missile attacks against the target may re-roll To Hit until the start of the caster's next Magic phase.]

#spell("FURY OF KHAINE", 2, cast: "7+")[_Fury of Khaine_ is a *magic missile* with a range of 18" that causes 2D6 Strength 4 hits.]

#spell("COURAGE OF AENARION", 2, cast: "8+")[_Courage of Aenarion_ is an *augment aura* with a range of 6". Until the start of the caster's next Magic phase, all affected units gain the Stubborn special rule.]

#spell("GLAMOUR OF TECLIS", 3, cast: "8+")[Remains in Play. _Glamour of Teclis_ is a *hex* spell with a range of 24". While the spell is in play, the target unit must pass a Leadership test with an additional D6 (discarding the lowest result) if they attempt to move in their Movement phase. If the test is failed, the casting player may move the unit using the Random Movement (D6) special rule instead.]

#spell("CORUSCATION OF FINREIR", 3, cast: "8+")[Remains in play. _Coruscation of Finreir_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the Wizard adds 12" to the casting range of all their spells (excluding auras) and their dispel range, can draw Line of Sight in any direction and counts as having a Line of Sight value of 5.]

#spell("WALK BETWEEN WORLDS", 3, cast: "8+")[_Walk Between Worlds_ is a *conveyance* spell with a range of 18". The target gains the Ethereal special rule until the end of the phase and can immediately move up to 10" as if it were the Remaining Moves sub-phase.]

#spell("TEMPEST", 4, cast: "12+")[_Tempest_ is a *direct damage area* spell with a range of 30" that uses the large round template. All models hit by the template suffer a Strength 3 hit (models with the Fly special rule suffer a Strength 4 hit instead). Any unit under the template suffers a \-1 modifier to all To Hit rolls (both shooting and close combat) until the start of the caster's next Magic phase.]

#spell("VAUL'S UNMAKING", 4, cast: "13+")[_Vaul's Unmaking_ is a *direct damage* spell with a range of 24" that targets a single enemy model (even a character in a unit). The target suffers a single Wound which Ignores Armour Saves on a dice roll greater than or equal to the model's unmodified armour save (excluding Natural Armour, models without an armour save cannot be wounded). The owning player must then reveal to the caster all the magic items possessed by the target (if any). One item of your choice is destroyed and cannot be used for the rest of the game.]

#spell("FLAMES OF THE PHOENIX", 4, cast: "15+")[Remains in play. _Flames of the Phoenix_ is a *direct damage* spell with a range of 24". Every model in the target unit takes a Strength 3 hit with the Flaming Attacks special rule. At the end of every subsequent Magic phase, every model in the target unit suffers another hit with the Flaming Attacks special rule, with the Strength of each Hit increasing by 1 every time.]
]
= ELVEN HONOURS

*Characters may be given one Elven Honour as detailed in the army list. Each Honour can be taken by more than one model in the army.*

#namecost("ANOINTED OF ASURYAN", "50 points")

Model on foot only. The model gains a 4+ invulnerable save and the Immunity (Psychology) special rule. The model must take a polearm and may be mounted on a Flamespyre Phoenix (see Rare Units) for +200 points. In addition, all models in a unit that contains an Anointed of Asuryan may re-roll invulnerable save results of 1.

#namecost("BLOOD OF CALEDOR", "35 points")

The model gains dragon armour and the Devastating Charge special rule. The model must be mounted on an Elven Steed with ithilmar barding or a Moon Dragon. Alternatively, if the model is a Prince, they may be mounted on a Star Dragon for +390 points. If the model is a Noble, they may be mounted on a Sun Dragon for +235 points.

#namecost("CHRACIAN HUNTER", "20 points")

Model on foot only. The model gains a lion cloak, the Forest Strider, Multiple Wounds (2) and Stubborn special rules. The model must take a great weapon and may be mounted on a White Lion Chariot (see Special Units), replacing one of the crew, for +95 points.

#namecost("COTHIQUE MARINER", "20 points")

Model on foot only. The model may not take heavy armour. The model and one unit of Rangers that they must deploy with gains the Ambushers special rule.

#namecost("SHADOW STALKER", "20 points")

Model on foot only. The model must take an Elven shortbow or Elven longbow. They cannot take medium or heavy armour. They gain the Independent, Scouts and Sniper special rules.

#namecost("BLADELORD", "15 points")

Model on foot only. The model must take a great weapon. The model gains the Killing Blow and Swordmaster special rules.

#namecost("ELLYRIAN OUTRIDER", "15 points")

Model on Elven Steed only. The model may not take heavy armour. The model and any unit of Ellyrian Reavers they join may flee, pursuit and charge distances.

#namecost("PURE OF HEART", "15 points")

The model and any unit they join gain the Immunity (Panic) special rule. When fighting against Dark Elves in close combat, they gain Immunity (Psychology).

#namecost("GUARDIAN OF YVRESSE", "10 points")

Model on foot only. The model must take a shield. If this model is in a unit of Sentinels or Wardens, that unit gains the Fight in Extra Ranks (1) special rule.

#namecost("LOTHERN SEA HELM", "10 points")

Model on foot only. The model may take no other weapons besides spear, light lance and Elven shortbow, and may be mounted on a Lothern Skycutter (see Rare Units), replacing one of the crew, for +65 points. If a unit of Lothern Sea Guard contains one or more Sea Helms, they gain the Quick Shot special rule when making a Stand & Shoot charge reaction. In addition, the unit may then choose to do a Reform before moving the enemy unit.

#namecost("TIRANOC CHARIOT MASTER", "5 points")

Model on Tiranoc Chariot only. The model may roll an additional D6 for their Impact Hits and pick the highest result. In addition, they may re-roll failed Dangerous Terrain tests.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the High Elves. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("DEATHSINGER", 65)[At the beginning of each round of close combat, roll a D3; the result is the number you may increase the wielder's Weapon Skill, Strength and Attacks by.]

#magic-weapon("SWORD OF AGES", 60)[The Sword of Ages gives the wielder +1 To Hit, +2 Strength and +1 Attack.]

#magic-weapon("BLADE OF THE PHOENIX", 50)[The Blade of the Phoenix gives the wielder the Ignores Armour Saves special rule. Once per battle, at the start of any close combat phase the wielder can unleash the full power of the sword. For the remainder of that close combat phase, they get the Always Strikes First special rule and +D6 Attacks.]

#magic-weapon("BOW OF THE SEAFARER", 45, only: "Lothern Sea Helm")[The Bow of the Seafarer is a Bolt Thrower.]

#magic-weapon("CLOUDCLEAVER", 45, type: "Polearm")[All attacks made with Cloudcleaver have the Ignores Armour Saves special rule. In addition, it gives the wielder the Fear special rule and against War Beasts and Cavalry, they cause Terror.]

#magic-weapon("SPEAR OF THE SHORES", 40, type: "Light lance/spear")[This weapon gives the wielder +1 Strength and +2 Attacks.]

#magic-weapon("SWORD OF VICTORY", 35)[The Sword of Victory gives the wielder the Always Strikes First and Armour Piercing (1) special rules. In addition, they will always Wound on a 3+ or better.]

#magic-weapon("THE REAVER BOW", 30, type: "Elven shortbow")[The Reaver Bow has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("20/30\"", "5", "Armour Piercing (1), March & Shoot, Multiple Shots (3)"))
]

#magic-weapon("THE BLADE OF LEAPING GOLD", 25)[The Blade of Leaping Gold grants the wielder +3 Attacks. In addition, any roll of 6 To Wound made with the Blade of Leaping Gold Ignores Armour saves.]

#magic-weapon("BLADE OF DARTING STEEL", 25)[The Blade of Darting Steel gives the wielder +1 To Hit and the Always Strikes First special rule.]

#magic-weapon("SWORD OF HOETH", 20, type: "Great weapon")[All hits with the Sword of Hoeth wound automatically. Armour saves are modified by the Strength of the bearer.]

#magic-weapon("DRAGONBLADE LANCE", 20, type: "Heavy lance")[During turns in which the wielder of the Dragonblade Lance charges, it automatically hits all models in one file that is in base contact rather than fighting normally. Hits are resolved as that from a Bolt Thrower, except the Strength does not decrease for each rank.]

#magic-weapon("JADE BOW", 20, type: "Elven longbow")[All shots from the Jade Bow are resolved at Strength 4. In addition, if you successfully Wound your target, you may fire an additional shot against the same target. You may continue to fire additional shots until you fail to Hit, Wound or the target is dead.]

#magic-weapon("FOE BANE", 15)[Against Monstrous Infantry, Monstrous Cavalry, Monstrous Beasts, Monstrous Creatures and Monsters, this sword will always wound on a 2+.]

#magic-weapon("BOW OF TOR ALESSI", 10, type: "Elven longbow")[The Bow of Tor Alessi has the Quick Shot special rule. In addition, it may re-roll any failed To Hit rolls.]
]

#magic-item-section("armour")[
#magic-armour("THE GOLDEN SHIELD", 30, type: "Shield")[Infantry or Cavalry only. Enemies must re-roll all successful To Hit rolls against the bearer of the Golden Shield.]

#magic-armour("HELM OF FORTUNE", 30, only: "Infantry or Cavalry")[The Helm of Fortune gives the wearer a 6+ armour save. The wearer may re-roll failed armour saves.]

#magic-armour("ARMOUR OF HEROES", 25, type: "Heavy armour")[In order to allocate close combat attacks against the wearer, each enemy model must first pass a Leadership test at the start of each close combat phase. If the test is failed, the model may not attack at all this round.]

#magic-armour("DRAGONSCALE SHIELD", 25, type: "Shield")[The Dragonscale Shield adds an additional +1 armour save as well as the Magical Ward (6+) special rule.]

#magic-armour("SHIELD OF ITHINAR", 25, type: "Shield")[All close combat attacks against the bearer suffer \-1 To Hit.]

#magic-armour("TEMAKADOR'S GAUNTLETS", 25)[Temakador's Gauntlets gives the wearer a 6+ armour save. In addition, they gain the Magical Ward (5+) special rule against attacks of Strength 4 or greater.]

#magic-armour("WYRMSCALE ARMOUR OF THE DEEP", 25, type: "Heavy armour")[The Wyrmscale Armour of the Deep gives the wearer the Aquatic and Immunity (Flaming Attacks) special rules.]

#magic-armour("SHADOW ARMOUR", 20, only: "Model on foot", type: "Light armour")[The wearer gains the Strider special rule. In addition, no enemies can draw Line of Sight to them unless they are within 6".]

#magic-armour("ARMOUR OF STARS", 10, only: "Model on foot", type: "Light armour")[If the wearer of the Armour of Stars suffers an unsaved wound (but is not slain) they can choose to instantly teleport 3D6" in a random direction (placing it at least 1" away from other units or impassable terrain) with its front arc in a direction of your choosing. If the model teleports off the table, then treat this as it having pursued off the table.]

#magic-armour("SHIELD OF THE MERWYRM", 10, type: "Shield")[The bearer of the Shield of the Merwyrm gains the Parry (6+) special rule.]
]

#magic-item-section("talisman")[
#talisman("PINION OF THE PHOENIX", 55, only: "Model on foot")[The Pinion of the Phoenix gives the wearer the Magical Ward (5+) special rule. If the bearer is slain, the item is destroyed but restores the bearer to their starting Wound total and inflicts a Strength 5 Hit with the Flaming Attacks special rule on all models in base contact.]

#talisman("VAMBRACES OF DEFENCE", 55, only: "Infantry or Cavalry")[The bearer gains the Magical Ward (4+) special rule. In addition, they may re-roll failed armour saves.]

#talisman("NULL STONE", 50)[No model in base contact with the bearer of the Null Stone may cast spells, and all Magic Items lose their effects; treat them as mundane versions of the same type.]

#talisman("FOLARIATH'S ROBE", 40, only: "Model on foot")[The wearer of Folariath's Robe gains the Ethereal special rule.]

#talisman("GUARDIAN PHOENIX", 30)[The Guardian Phoenix gives the wearer the Immunity (Flaming Attacks) and Magical Ward (5+) special rules.]

#talisman("LOREMASTER'S CLOAK", 25)[The wearer of the Loremaster's Cloak gains the Magical Ward (3+) special rule against missile attacks.]

#talisman("THE SIGNET OF ATHINOL", 30)[Any attacks made against the bearer suffer a \-1 Strength penalty.]

#talisman("SACRED INCENSE", 25)[All missile attacks targeted at the bearer of the Sacred Incense or the unit they are with suffer \-1 To Hit.]

#talisman("GOLDEN CROWN OF ATRAZAR", 20)[The Golden Crown of Atrazar gives the bearer the Magical Ward (4+) and Stupidity special rules. In addition, at the start of each of your turns, they suffer \-1 to their Leadership. This penalty is cumulative.]

#talisman("PHOENIX STONE", 20, only: "Infantry or Cavalry")[Every time the bearer of this item rolls a natural 6 on their armour save or invulnerable save roll, they restore 1 Wound suffered earlier during game.]

#talisman("TALISMAN OF BLINDING LIGHT", 15)[All enemy units in base contact with the bearer suffer \-1 to their Weapon Skill in the first round of close combat.]

#talisman("TALISMAN OF SAPHERY", 10)[The Talisman of Saphery causes all Magic Weapons of enemy models in base contact to lose all their effects; treat them as mundane weapons of their type.]

#talisman("AMULET OF FIRE", 5)[The Amulet of Fire gives the wearer the Immunity (Flaming Attacks) and Magic Resistance (1) special rules.]
]

#magic-item-section("arcane")[
#arcane-item("BOOK OF HOETH", 60, type: "Relic")[The Book of Hoeth allows the bearer to re-roll a single dice from each of his casting or dispel attempts. Results of 6 cannot be re-rolled.]

#arcane-item("ANNULIAN CRYSTAL", 55, type: "Relic")[During the enemy's Magic phase, the Annulian Crystal allows you to remove one dice from the opponent's Power dice pool and add it to your own Dispel dice pool.]

#arcane-item("SIGIL OF ASURYAN", 55, type: "Charm", one-use: true)[When an enemy cast a spell, the bearer may use this item instead of attempting to dispel the spell by using dispel dice. This gives them 6 free dice to attempt to dispel the spell, which cannot be combined with any other dispel dice. In addition, the spell is destroyed and the enemy caster loses access to the spell for the rest of the game (note that this has no effect on Bound spells).]

#arcane-item("SEERSTAFF OF SAPHERY", 30, type: "Staff")[The Seerstaff of Saphery gives the bearer the Loremaster special rule.]

#arcane-item("TRICKSTER'S PENDANT", 30, type: "Relic")[If an enemy Wizard suffers a Miscast, the bearer of the Trickster's Pendant can choose to make the Wizard re-roll the result on the Miscast table.]

#arcane-item("STARWOOD STAFF", 25, type: "Staff")[The Starwood staff gives the bearer a +1 casting bonus. In addition, they may re-roll one failed channelling roll per turn.]

#arcane-item("STAFF OF SOLIDITY", 25, type: "Staff", one-use: true)[The Staff of Solidity makes the Wizard immune to the effects of their first Miscast.]

#arcane-item("JEWEL OF THE DUSK", 20, type: "Relic")[The Jewel of the Dusk gives the bearer +1 Power dice in each of your Magic phases. Only they may use this extra dice.]

#arcane-item("VORTEX SHARD", 20, type: "Charm", one-use: true)[The bearer may use the Vortex Shard at the start of any enemy Magic phase. Your opponent must remove D3 power dice from their power pool.]

#arcane-item("SILVER WAND", 10, type: "Staff")[The bearer of the Silver Wand may pick a spell one level higher than they are normally allowed.]

#arcane-item("SPELL CROWN OF DUSK", 10, type: "Relic")[The bearer of this item gains access to a randomly generated Lvl 1 spell (which may be replaced by the Signature Spell) from the Lore of High Magic.]
]

#magic-item-section("enchanted", columns: 2)[
#enchanted-item("RADIANT GEM OF HOETH", 35)[The bearer of the Radiant Gem of Hoeth becomes a Level 1 Wizard using the Lore of High Magic.]

#enchanted-item("KHAINE'S RING OF FURY", 35, bound: true)[Khaine's Ring of Fury contains the _Fury of Khaine_ spell from the Lore of High Magic.]

#enchanted-item("MORANION'S WAYSHARD", 35, only: "Model on foot")[The bearer of Moranion's Wayshard and one friendly Infantry unit they must deploy with has the Ambushers special rule. Instead of arriving as Reinforcements, they may choose to deploy in any non-impassable terrain feature in the turn they arrive.]

#enchanted-item("PENDANT OF VENGEANCE", 35)[When fighting Dwarfs, the bearer may force a successful Leadership test while using an Anvil of Doom or Rune Lore to be rerolled.]

#enchanted-item("RING OF CORIN", 35, bound: true)[The Ring of Corin contains the _Vaul's Unmaking_ spell from the Lore of High Magic.]

#enchanted-item("SKY ARROW OF NALOER", 25, only: "Model with non-magical Elven Longbow", one-use: true)[This item cannot be used with the Sniper special rule. The Sky Arrow of Naloer has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "6", "Magical Attacks, Multiple Wounds (D6)"))
]

#enchanted-item("SKEINSLIVER", 25)[The Skeinsliver allows the controlling player to add +1 to the roll to determine which player can decide whether to take the first turn or not.]

#enchanted-item("BLESSED TOME", 25)[The model gains the Inspiring Presence (6) special rule.]

#enchanted-item("GEM OF SUNFIRE", 25, one-use: true)[At the start of any of your turns, when the Gem of Sunfire is used, all of the bearer's spells, shooting attacks and close combat attacks (and their mount's, if they have one) have a +1 bonus To Wound (rolls of 1 still fail) provided that they also have the Flaming Attacks special rule.]

#enchanted-item("HORN OF ISHA", 20, only: "Handmaiden of the Everqueen", one-use: true)[The Horn of Isha can be used at the start of one of your Movement phases. For the remainder of the turn, all models in the bearer's unit receive a +1 To Hit bonus on all shooting and close combat attacks.]

#enchanted-item("AMULET OF THE PURIFYING FLAME", 15)[Enemy spells that target the character or the unit they are with suffer a \-3 casting penalty.]

#enchanted-item("AMULET OF THE TEMPEST", 15, only: "Storm Weaver or Mist Weaver")[Enemy Wizards within 12" of the bearer do not gain any casting bonus from their Wizard Level.]

#enchanted-item("CLOAK OF BEARDS", 15)[The wearer of the Cloak of Beards causes Fear. Against Dwarfs_,_ the wearer causes Terror instead. However, all Dwarfs gain the Hatred special rule while attacking the wearer. In addition, at the start of each Close Combat phase, roll a D6 for each magic item carried by each Dwarf that is in base contact with the bearer. On a roll of 4+, that magic or runic item is destroyed and cannot be used for the rest of the battle; it will count as a mundane version of whatever item it is instead. Note that this has no effect on magic items that are mounts, war machines, magic items that contain bound spells that have already miscast during the game, and any magic items labelled as 'one use only' that have already been used during the game – do not roll to see if these magic items are destroyed.]

#enchanted-item("AMULET OF LIGHT", 10)[All close combat attacks made by the bearer of the Amulet of Light and any unit they are with gain the Magical Attacks special rule.]

#enchanted-item("GEM OF COURAGE", 10, one-use: true, common: true)[The bearer of the Gem of Courage and any unit they are with may take any one Leadership test using the Cold-blooded special rule.]

#enchanted-item("TALISMAN OF LOEC", 10, one-use: true)[The Talisman of Loec may be used at the start of any close combat phase. Until the end of the phase, the bearer may re-roll all failed rolls To Hit and wound, and any model wounded by their attacks must re-roll all successful armour saves and invulnerable saves. However, at the end of the phase, the bearer loses half of their remaining Wounds (rounding down) with no saves of any kind allowed.]

#enchanted-item("STAR RUBY", 10)[At the start of each of your turns, all enemy units within 12" must reveal any Hidden models, upgrades and magic items they might have.]
]

#magic-item-section("standard")[
#magic-standard("BATTLE BANNER", 70)[The unit carrying this standard gains a +D6 Combat Resolution bonus (roll each time it is used).]

#magic-standard("BANNER OF THE WORLD DRAGON", 40)[The unit carrying this standard has the Magic Resistance (5) special rule. Furthermore, all Draconids (friend or foe) within 12" of the Banner of the World Dragon have the Stubborn special rule.]

#magic-standard("BANNER OF RESILIENCE", 40)[The unit carrying this standard gains +1 Toughness.]

#magic-standard("STANDARD OF BALANCE", 30)[The unit carrying this standard, and any enemy unit in base contact with it, gain the Immunity (Psychology) special rule, and any Frenzy or Hatred special rule have no effect.]

#magic-standard("BANNER OF SORCERY", 30)[The unit carrying this standard adds +1 Power dice to your power pool in each of your own Magic phases.]

#magic-standard("BANNER OF ELLYRION", 25, only: "Ellyrian Reavers")[The unit carrying this standard gains +1 Movement and the Strider special rule.]

#magic-standard("BANNER OF AVELORN", 10, only: "Handmaiden of the Everqueen or Sisters of Avelorn")[Spells from the Lore of Light and the Lore of Life cast by a friendly Wizard that target the unit carrying this standard receive a +2 casting bonus. If Alarielle the Radiant is included in your army and is slain, this ability is immediately lost.]

#magic-standard("BANNER OF LOTHERN", 10, only: "Lothern Sea Guard")[The unit carrying this standard gains the Fight in Extra Ranks (1) special rule.]

#magic-standard("LION STANDARD", 10, only: "White Lions of Chrace")[The unit carrying this standard gains the Immunity (Terror) special rule.]

#magic-standard("BANNER OF CONFIDENCE", 5)[The unit carrying this standard does not suffer \-1 To Hit when using Stand & Shoot as a charge reaction.]
]

= CHARACTERS

#unit("COMMANDERS",
  first: true,
  profiles: (
    (name: "Prince", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 125),
    (name: "Noble", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 55),
  ),
  troop-type: "Infantry (Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Elven shortbow +7 points
  - Elven longbow +8 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Elven Steed +15 points
  - Pegasus +25 points
  - Great Eagle +40 points
  - Tiranoc Chariot (replacing one of the crew) +70 points
  - Griffon (Prince only) +125 points
  - Moon Dragon (Prince only) +300 points
- One Noble may carry the Battle Standard +25 points
- A Noble may take one Elven Honour and Magic Items up to a total of 50 points
- A Prince may take one Elven Honour and Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("MAGES",
  profiles: (
    (name: "Arch Mage", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 3, i: 6, a: 2, ld: 9, points: 195),
    (name: "Mage", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 5, a: 1, ld: 8, points: 85),
  ),
  troop-type: "Infantry (Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Mage is a Level 1 Wizard. An Arch Mage is a Level 3 Wizard. They use one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Death
- Heavens
- High
- Fire
- Light
- Life
- Metal
- Shadow
  ],
  special-rules: "Elven Grace, Lileath's Blessing, Martial Prowess, Valour of Ages",
  options: [
- May take an additional Wizard Level +35 points
- May take light armour +3 points
- May be mounted on one of the following:
  - Elven Steed +15 points
  - Unicorn +25 points
  - Great Eagle +40 points
  - Tiranoc Chariot (replacing one of the crew) +70 points
  - Moon Dragon (Arch Mage only) +300 points
- A Mage may take Magic Items up to a total of 50 points
- An Arch Mage may take Magic Items up to a total of 100 points
  ],
)

#unit("LORDS OF AENARION",
  profiles: (
    (name: "Lord of Aenarion", m: 5, ws: 8, bs: 7, s: 4, t: 3, w: 3, i: 9, a: 5, ld: 10, points: 175),
  ),
  troop-type: "Infantry (Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Elven Grace, Frenzy, Hatred (Forces of Destruction), Martial Prowess, Valour of Ages",
  special-rules-body: (
    rule("Battle Trance")[If a Lord of Aenarion is in base contact with a friendly unit, he must pass a Leadership test at the start of any round of combat a he is involved in. If failed, he will make one Attack on every model in base contact instead of attacking normally. Roll to Hit as normal.],
    rule("Curse of Aenarion")[As soon as a model with this special rule is reduced to 1 Wound they gain a 3+ invulnerable save for the rest of the battle. This has no effect on attacks that would outright kill them before they are reduced to 1 Wound, like a spell or attack with the Multiple Wounds special rule. If they were to suffer multiple Wounds in a single phase, roll one save at a time (if they have any) for each Wound suffered until the invulnerable save takes effect.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on an Elven Steed +15 points
- May take Magic Items up to a total of 100 points
  ],
)

#unit("LOREMASTERS OF HOETH",
  profiles: (
    (name: "Loremaster", m: 5, ws: 6, bs: 4, s: 4, t: 3, w: 3, i: 7, a: 3, ld: 9, points: 220),
  ),
  troop-type: "Infantry (Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon",
  magic: "A Loremaster of Hoeth is a Level 3 Wizard. Instead of choosing spells normally, they always know the eight",
  magic-body: [
Signature Spells from the Winds of Magic.
  ],
  special-rules: "Elven Grace, Lileath's Blessing, Martial Prowess, Swordmaster, Valour of Ages",
  options: [
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take Magic Items up to a total of 100 points
  ],
)

#unit("PRIESTS OF MATHLANN",
  profiles: (
    (name: "Storm Weaver", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 3, i: 6, a: 2, ld: 9, points: 120),
    (name: "Mist Weaver", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 2, i: 5, a: 1, ld: 8, points: 75),
  ),
  troop-type: "Infantry (Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Elven Grace, Magic Resistance (1), Martial Prowess, Valour of Ages",
  special-rules-body: [
- *Eye of the Storm:* The model may re-roll failed Leadership tests for their Prayers as long as they are not engaged in close combat.
- *Prayers of Mathlann:* A model with this special rule knows the three Prayers listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. A friendly unit can only be under the effect of one Prayer at a time.
  - *Armour of Mathlann:* The model and any unit they are with gain the Magical Ward (6+) special rule until the start of your next turn.
  - *Mistress of the Deep:* Until the start of your next turn, any enemy unit attempting to charge the model or any unit they are with must pass a Leadership test with a \-2 modifier, otherwise the charge will automatically fail.
  - *The Writhing Mists:* All missile attacks targeting the model or any unit they are with suffer a \-1 To Hit penalty until the start of your next turn.
  ],
  options: [
- A Mist Weaver may take Magic Items up to a total of 50 points
- A Storm Weaver may take Magic Items up to a total of 100 points
  ],
)

#unit("DRAGON MAGES OF CALEDOR",
  profiles: (
    (name: "Dragon Mage", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 2, i: 6, a: 2, ld: 8, points: 300),
    (name: "Sun Dragon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 4, ld: 7, points: ""),
  ),
  troop-type: "Monster (Character, High Elf)",
  mount: "Sun Dragon (Draconid)",
  base-size: "50x100 or 60x100",
  equipment: "Hand weapon",
  magic: "A Dragon Mage is a Level 1 Wizard who uses spells from the Lore of Fire.",
  magic-items: (
    rule("Sunstaff")[Arcane Item. Staff. Bound Spell (Level 1, cast on 4+). This item contains an *augment* spell can be cast on the Wizard themselves. Until the start of their next Magic phase, the Wizard gains +1 Attack, +3 Strength, the Flaming Attacks special rule and always Hits on the roll of a 2+ in close combat.],
  ),
  special-rules: "Elven Grace, Fiery Breath, Fly (7), Lileath's Blessing, Martial Prowess, Natural Armour",
  special-rules-body: [
*(3+), Valour of Ages*

- *Reckless:* When a Dragon Mage casts a spell, a 'free' Power dice is added to the casting attempt. This extra dice counts towards Ultimate Power and can cause a Miscast as normal, and allows the Dragon Mage to roll more dice than they are normally allowed to.
  ],
  options: [
- May take an additional Wizard Level +35 points
- May take light armour +25 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("HANDMAIDENS OF THE EVERQUEEN",
  profiles: (
    (name: "Handmaiden", m: 5, ws: 5, bs: 6, s: 4, t: 3, w: 2, i: 6, a: 2, ld: 9, points: 45),
  ),
  troop-type: "Infantry (Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Spear, Bow of Avelorn",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  special-rules-body: (
    rule("Quicksilver Shot")[A Handmaiden and any unit of Sistern of Avelorn that they join gain the Quick Shot special rule, and can move and shoot without losing Multiple Shots.],
  ),
  options: [
- May take light armour +3 points
- One Handmaiden may carry the Battle Standard +25 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

= CHARACTER MOUNTS

#unit("ELVEN STEED",
  first: true,
  profiles: (
    (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
  options: [
- May take Ithilmar barding +10 points
  ],
)

#unit("PEGASUS",
  compact: true,
  profiles: (
    (name: "Pegasus", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
  special-rules: "Fly (9)",
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

#unit("GREAT EAGLE",
  profiles: (
    (name: "Great Eagle", m: 2, ws: 5, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 8, points: "-"),
  ),
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

#unit("GRIFFON",
  profiles: (
    (name: "Griffon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: "-"),
  ),
  troop-type: "Monstrous Creature (Chimeric)",
  base-size: "50x50, 50x100 or 60x100",
  special-rules: "Fly (8)",
  upgrades: (
    rule("Shredding Talons")[The model gains the Armour Piercing (1) special rule.],
    rule("Swooping Strike")[The model gains the Devastating Charge special rule.],
  ),
  options: [
- May take Shredding Talons +5 points
- May take Swooping Strike +5 points
  ],
)

#unit("SUN DRAGON",
  compact: true,
  profiles: (
    (name: "Sun Dragon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 4, ld: 7, points: "-"),
  ),
  troop-type: "Monster (Draconid)",
  base-size: "50x50, 50x100 or 60x100",
  special-rules: "Fiery Breath, Fly (7), Natural Armour (3+)",
)

#unit("MOON DRAGON",
  compact: true,
  profiles: (
    (name: "Moon Dragon", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: "-"),
  ),
  troop-type: "Monster (Draconid)",
  base-size: "50x50, 50x100 or 60x100",
  special-rules: "Fiery Breath, Fly (7), Natural Armour (3+)",
)

#unit("STAR DRAGON",
  compact: true,
  profiles: (
    (name: "Star Dragon", m: 6, ws: 7, bs: 0, s: 7, t: 7, w: 7, i: 2, a: 6, ld: 9, points: "-"),
  ),
  troop-type: "Monster (Draconid)",
  base-size: "50x50, 50x100 or 60x100",
  special-rules: "Fiery Breath, Fly (7), Natural Armour (2+)",
)

= CORE UNITS

#unit("SENTINELS",
  first: true,
  profiles: (
    (name: "Sentinel", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 10),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Spear, medium armour, shield",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- May upgrade one Sentinel to a Leader +5 points
- May upgrade one Sentinel to a Musician +5 points
- May upgrade one Sentinel to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("HAWKEYES",
  profiles: (
    (name: "Hawkeye", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Elven longbow",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May upgrade one Hawkeye to a Leader +5 points
- May upgrade one Hawkeye to a Musician +5 points
- May upgrade one Hawkeye to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("WARDENS",
  profiles: (
    (name: "Warden", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 9),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour, shield",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- May upgrade one Warden to a Leader +5 points
- May upgrade one Warden to a Musician +5 points
- May upgrade one Warden to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("LOTHERN SEA GUARD",
  profiles: (
    (name: "Sea Guard", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 14),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Spear, Elven shortbow, medium armour, shield",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- May upgrade one Sea Guard to a Leader +5 points
- May upgrade one Sea Guard to a Musician +5 points
- May upgrade one Sea Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("RANGERS",
  profiles: (
    (name: "Ranger", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 9),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, light armour",
  special-rules: "Elven Grace, Martial Prowess, Skirmishers, Valour of Ages",
  options: [
- May replace two hand weapons with great weapons +2 points/model
- May take Elven shortbows +4 points/model
- May upgrade one Ranger to a Leader +5 points
- May upgrade one Ranger to a Musician +5 points
- May upgrade one Ranger to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("SILVER HELMS",
  profiles: (
    (name: "Silver Helm", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 18),
    (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (High Elf)",
  mount: "Elven Steed (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, medium armour, shield",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- May take heavy armour +2.5 points/model
- May take ithilmar barding +2.5 points/model
- May upgrade one Silver Helm to a Leader +5 points
- May upgrade one Silver Helm to a Musician +5 points
- May upgrade one Silver Helm to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("ELLYRIAN REAVERS",
  profiles: (
    (name: "Reaver", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 15),
    (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (High Elf)",
  mount: "Elven Steed (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Light lance, light armour",
  special-rules: "Elven Grace, Fast Cavalry, Martial Prowess, Valour of Ages",
  options: [
- May take Elven shortbows +3 points/model
- May take medium armour +1.5 points/model
- May take shields +1 points/model
- May take ithilmar barding +1.5 points/model
- May upgrade one Reaver to a Leader +5 points
- May upgrade one Reaver to a Musician +5 points
- May upgrade one Reaver to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

= SPECIAL UNITS

#unit("SWORDMASTERS OF HOETH",
  first: true,
  profiles: (
    (name: "Swordmaster", m: 5, ws: 6, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 8, points: 16),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, heavy armour",
  special-rules: "Elven Grace, Martial Prowess, Swordmaster, Valour of Ages",
  options: [
- May upgrade one Swordmaster to a Leader +5 points
- May upgrade one Swordmaster to a Musician +5 points
- May upgrade one Swordmaster to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("WHITE LIONS OF CHRACE",
  profiles: (
    (name: "White Lion", m: 5, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 16),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, lion cloak, medium armour",
  special-rules: "Elven Grace, Forest Strider, Martial Prowess, Multiple Wounds (2), Stubborn, Valour of Ages",
  options: [
- May upgrade one White Lion to a Leader +5 points
- May upgrade one White Lion to a Musician +5 points
- May upgrade one White Lion to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SHADOW WARRIORS",
  profiles: (
    (name: "Shadow Warrior", m: 5, ws: 5, bs: 5, s: 3, t: 3, w: 1, i: 6, a: 1, ld: 8, points: 15),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Elven shortbow, light armour",
  special-rules: "Elven Grace, Hatred (Dark Elves), Independent, Martial Prowess, Scouts, Skirmishers, Valour of Ages",
  options: [
- May take additional hand weapons +1 point/model
- May replace Elven shortbows with Elven longbows +1 point/model
- May upgrade one Shadow Warrior to a Leader +5 points
  ],
)

#unit("DRAGON PRINCES OF CALEDOR",
  profiles: (
    (name: "Dragon Prince", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 1, ld: 9, points: 28),
    (name: "Elven Steed", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (High Elf)",
  mount: "Elven Steed (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, dragon armour, shield, ithilmar barding",
  special-rules: "Devastating Charge, Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- May upgrade one Dragon Prince to a Leader +5 points
- May upgrade one Dragon Prince to a Musician +5 points
- May upgrade one Dragon Prince to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("TIRANOC CHARIOT",
  profiles: (
    (name: "Tiranoc Chariot", m: 8, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 70),
    (name: "Charioteer", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
    (name: "Elven Steed", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 4, a: 1, ld: "-", points: ""),
  ),
  unit-size: "1-3",
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 Charioteers (High Elf)",
  drawn-by: "2 Elven Steeds (Equine)",
  base-size: "50x100",
  equipment: "Light lance, Elven shortbow, medium armour",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- One Tiranoc Chariot may be upgraded to a standard bearer +10 points
  ],
)

#unit("LION CHARIOT OF CHRACE",
  profiles: (
    (name: "Lion Chariot", m: 8, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 100),
    (name: "White Lion", m: "-", ws: 5, bs: 4, s: 4, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
    (name: "War Lion", m: "-", ws: 4, bs: 0, s: 4, t: "-", w: "-", i: 4, a: 2, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 White Lions (High Elf)",
  drawn-by: "2 War Lions (Feline)",
  base-size: "50x100",
  equipment: "Great weapon, lion cloak, medium armour",
  special-rules: "Elven Grace, Fear, Martial Prowess, Mighty Blow (1) (War Lion only), Multiple Wounds (2), Stubborn, Valour of Ages",
  options: [
- May be upgraded to a standard bearer +10 points
  ],
)

#unit("WAR LIONS OF CHRACE",
  profiles: (
    (name: "War Lion", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: 24),
  ),
  unit-size: "5-15",
  troop-type: "War Beast (Feline)",
  base-size: "25x50",
  special-rules: "Fear, Mighty Blow (1)",
  special-rules-body: (
    rule("Lion Coat")[The model has the Natural Armour (6+) special rule against missile attacks.],
  ),
)

#unit("EAGLE CLAW BOLT THROWER",
  profiles: (
    (name: "Eagle Claw Bolt Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 60),
    (name: "Crew", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: ""),
  ),
  troop-type: "War Machine",
  crew: "2 Crew (High Elf)",
  base-size: "50x50 (Eagle Claw Bolt Thrower), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, repeater bolt thrower, light armour",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- May take medium armour +1 point/Crew
- May take an additional Crew 10 points
  ],
)

= RARE UNITS

#unit("PHOENIX GUARD",
  first: true,
  profiles: (
    (name: "Phoenix Guard", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 9, points: 18),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm, heavy armour",
  special-rules: "Elven Grace, Immunity (Psychology), Martial Prowess, Valour of Ages",
  special-rules-body: (
    rule("Witness to Destiny")[A model with this special rule has a 4+ invulnerable save.],
  ),
  options: [
- May upgrade one Phoenix Guard to a Leader +5 points
- May upgrade one Phoenix Guard to a Musician +5 points
- May upgrade one Phoenix Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points
  ],
)

#unit("SISTERS OF AVELORN",
  profiles: (
    (name: "Sister of Avelorn", m: 5, ws: 4, bs: 5, s: 3, t: 3, w: 1, i: 6, a: 1, ld: 8, points: 19),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Bow of Avelorn, light armour",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  options: [
- May take spears +0.5 point/model
- May upgrade one Sister of Avelorn to a Leader +5 points
- May upgrade one Sister of Avelorn to a Musician +5 points
- May upgrade one Sister of Avelorn to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("LOTHERN SKYCUTTER",
  profiles: (
    (name: "Lothern Skycutter", m: "-", ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 80),
    (name: "Sea Guard", m: "-", ws: 4, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 1, ld: 8, points: ""),
    (name: "Swiftfeather Roc", m: "-", ws: 5, bs: 0, s: 4, t: "-", w: "-", i: 4, a: 2, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "3 Sea Guards (High Elf)",
  drawn-by: "1 Swiftfeather Roc (Avian)",
  base-size: "50x100 or 60x100",
  equipment: "Light lance, Elven shortbow, medium armour",
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages, Fly (8)",
  upgrades: [
- *Eagle Eye Bolt Thrower:* The Eagle Eye Bolt Thrower is a bolt thrower with the following profile, and can be fired by one of the Skycutter's crew instead of their own missile weapon.

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "5", "Armour Piercing (1), Cumbersome, Multiple Wounds (D3)"))
  ],
  options: [
- May replace one Sea Guard crew with an Eagle Eye Bolt Thrower +25 points
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

#unit("DRAKEMASTER",
  profiles: (
    (name: "Drakemaster", m: 5, ws: 6, bs: 4, s: 3, t: 3, w: 1, i: 6, a: 2, ld: 9, points: 200),
    (name: "Drake", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: ""),
  ),
  troop-type: "Monstrous Creature (High Elf)",
  mount: "Drake (Draconid)",
  base-size: "50x50, 50x75 or 50x100",
  equipment: "Heavy lance, dragon armour, shield",
  special-rules: "Devastating Charge, Elven Grace, Fiery Breath, Fly (8), Martial Prowess, Natural Armour",
  special-rules-body: [
*(4+), Valour of Ages*
  ],
)

#unit("MERWYRM",
  profiles: (
    (name: "Merwyrm", m: 6, ws: 6, bs: 0, s: 5, t: 5, w: 5, i: 3, a: 5, ld: 7, points: 205),
  ),
  troop-type: "Monster (Draconid)",
  base-size: "50x100 or 60x100",
  special-rules: "Aquatic, Natural Armour (3+), Regeneration (4+)",
  special-rules-body: (
    rule("Powerful Tail")[The Merwyrm may make one extra Attack at Strength 7 and Initiative 1.],
  ),
)

#unit("FLAMESPYRE PHOENIX",
  breakable: true,
  profiles: (
    (name: "Flamespyre Phoenix", m: 2, ws: 5, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 4, ld: 8, points: 235),
    (name: "Frostheart Phoenix", m: 2, ws: 6, bs: 0, s: 5, t: 6, w: 5, i: 3, a: 3, ld: 9, points: ""),
  ),
  troop-type: "Monster (Avian)",
  base-size: "50x100 or 60x100",
  special-rules: "Flaming Attacks, Immunity (Flaming Attacks), Fly (8)",
  special-rules-body: [
- *Attuned to Magic:* A model with this special rule has the Magical Attacks and Magical Ward (5+) special rules. After rolling for the Winds of Magics each turn, divide the result by the number of 1000 points played, rounding up (so at 2000 or more points, divide the result by 2; at 3000 or more points, divide the result by 3; and so on). Then consult the table below to see what effect it will have until the start of the next Magic phase:

#chart((("Score", "Result"), ("2", "Magical Dearth: The Phoenix's suffers a -1 penalty to its Magical Ward."), ("3", "Ebbing Zephyr: The Phoenix has -1 Strength."), ("4", "Energising Breeze: The Phoenix has +1 Attack."), ("5", "Invigorating Winds: The Phoenix has +1 Strength."), ("6", "Howling Gale: The Phoenix's gains a +1 bonus to its Magical Ward.")))

- *Phoenix Reborn:* As soon as a Flamespyre Phoenix loses its last Wound (including unsaved Wounds that killed the monster as a result of the Heroic Killing Blow or Multiple Wounds special rules), remove the model and place a Phoenix Reborn counter (a small coin will do) to mark the centre of the death spot. If your army contains several Flamespyre Phoenixes, you will need to place a Phoenix Reborn counter for each one that is slain (and a way of telling the counters apart).

At the end of the turn roll a D6 for each Phoenix Reborn counter and consult the table below:

#chart((("D6", "Result"), ("1-2", "Dead Embers: The Flamespyre Phoenix is dead, never to return – remove the Phoenix Reborn
counter from play."), ("3-5", "Flame Kindled: Centre the large round template over the centre of the Phoenix Reborn counter. All
models (friend or foe) hit by the template suffer a Strength 4 hit with the Flaming Attacks special
rule. This is a non-physical attack. The Phoenix Reborn counter remains in play – roll again at the
end of the next turn (yours or your opponent's)."), ("6+", "Rise from the Ashes: Place the Flamespyre Phoenix anywhere that is within 6\" of the centre of the
Phoenix Reborn counter and at least 1\" away from any unit, and then remove the marker from play. If
it is not possible to place the Phoenix due to the aforementioned restrictions, treat this result as a
Flame Kindled result instead. Reborn Flamespyre Phoenixes return with D3+2 Wounds. The reborn
model suffers no bonuses or penalties incurred from its former existence – i.e. if the model was
fleeing or affected by an augment or hex spell at the time of its death, the reborn model will not be.")))

If a Flamespyre Phoenix has a rider when it loses its last Wound, both monster and rider are removed and replaced with a Phoenix Reborn counter as described above. However, add +1 when rolling on the Phoenix Reborn table for a Flamespyre Phoenix that had a rider when it was removed.

At the end of the game, remove all Phoenix Reborn counters from the board – these Flamespyre Phoenixes and any riders they had count as casualties.

- *Wake of Fire:* If a Flamespyre Phoenix moves over an unengaged enemy unit in the Remaining Moves sub- phase, it suffers D6 Strength 4 hits with the Flaming Attacks special rule, distributed like hits from shooting from the rear. This is a non-physical attack.
  ],
  upgrades: (
    rule("Blessings of Asuryan")[The model gains the Always Strikes First special rule.],
    rule("Cleansing Flames")[All the model's attacks (including Flame Kindled and Wake of Fire) gain +1 Strength against Daemons and Undead.],
    rule("Frostheart Phoenix")[A Frostheart Phoenix loses the Flaming Attacks, Immunity (Flaming Attacks), Phoenix Reborn and Wake of Fire special rules. Instead, it gains the Ice Attacks and Natural Armour (5+) special rules. In addition, any enemy unit in base contact with one or more Frostheart Phoenixes suffers \-1 to its Strength (to a minimum of 1). This has no effect on models with Immunity (Ice Attacks).],
    rule("Omen of Hope")[The model gains the Hold Your Ground (12) special rule.],
    rule("Omen of Sacrifice")[All friendly units of Elves within 6" gain the Hatred special rule. However, they also suffer D6 Strength 3 Hits at the end of each round of close combat they are involved in (before Break tests are taken).],
  ),
  options: [
- May be upgraded to a Frostheart Phoenix +5 points
- May take Cleansing Flames (Flamespyre Phoenix only) +15 points
- May take Blessings of Asuryan +25 points
- May take Omen of Hope +25 points
- May take Omen of Sacrifice +25 points
  ],
)

= SPECIAL CHARACTERS

#unit("TYRION",
  solo: true,
  first: true,
  subtitle: "Defender of Ulthuan, Heir of Aenarion, Champion of the Everqueen",
  profiles: (
    (name: "Tyrion", m: 5, ws: 9, bs: 7, s: 4, t: 3, w: 3, i: 10, a: 5, ld: 10, points: 400),
    (name: "Malhandir (Elven Steed)", m: 10, ws: 4, bs: 0, s: 4, t: 3, w: 1, i: 5, a: 2, ld: 7, points: ""),
  ),
  troop-type: "Cavalry (Special Character, High Elf)",
  mount: "Malhandir (Equine)",
  base-size: "25x50, 30x60, 50x50",
  magic-items: (
    rule("Sunfang")[Magic Weapon. Hits from Sunfang are resolved at +3 Strength and have the Flaming Attacks special rule. In addition, Sunfang's bearer can make a Strength 3 Breath Weapon attack once per game. Hits from this attack are magical, and have the Flaming Attacks special rule.],
    rule("Dragon Armour of Aenarion")[Magic Armour. Heavy armour. The Dragon Armour of Aenarion grants Tyrion a 2+ armour save as well as the Immunity (Flaming Attacks) and Magical Ward (6+) special rule.],
    rule("Heart of Avelorn")[Talisman. The Heart of Avelorn gives Tyrion the Magic Resistance (2) special rule. In addition, if Tyrion suffers an unsaved Wound that would kill him (including unsaved Wounds that killed him as a result of the Killing Blow, Heroic Killing Blow or Multiple Wounds special rules), roll a D6 before removing him as a casualty; on a 2+ Tyrion negates the Wound and the Heart of Avelorn is destroyed. Otherwise, Tyrion is removed as a casualty as normal.],
  ),
  special-rules: "Curse of Aenarion (see Lord of Aenarion), Elven Grace, Martial Prowess, Valour of Ages",
  special-rules-body: (
    rule("Defender of Ulthuan")[If Tyrion is your Army's General, he has the Inspiring Presence (18) special rule in total.],
    rule("Feint")[Tyrion may re-roll any failed rolls to Hit in Close Combat.],
    rule("Riposte")[Tyrion has the Parry (6+) special rule, even while mounted. For each successful Parry made, he may immediately make an additional Attack back at the model who struck the blow.],
  ),
)

#unit("TECLIS",
  solo: true,
  subtitle: "High Loremaster of Hoeth, Warden of the White Tower",
  profiles: (
    (name: "Teclis", m: 5, ws: 3, bs: 3, s: 2, t: 2, w: 3, i: 5, a: 1, ld: 10, points: 460),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic: "Teclis is a Level 4 Wizard. He can either choose all of the spells in the Lore of High Magic, or one spell from",
  magic-body: [
each of the eight Winds of Magic.
  ],
  magic-items: (
    rule("Sword of Teclis")[Magic Weapon. All hits from the Sword of Teclis wound on a 2+, and Wounds caused by it Ignores Armour saves.],
    rule("Potion of Inner Strength")[Enchanted Item. One use only. This item can be used at the start of any turn. When Teclis does so, he will increase his Weapon Skill and Initiative to 6, and Strength, Toughness and Attacks to 3 for the remainder of the turn.],
    rule("Moon Staff of Lileath")[Arcane Item. Staff. The staff gives Teclis 1 extra Power and Dispel dice in each Magic phase. Once per game, The Moon Staff of Lileath can unleash its full power. It can either be used at the start of any of Teclis' Magic phases, in which case a bonus power dice is added to every casting attempt Teclis makes that phase (at least one normal Power dice must be used), or if Teclis suffers a miscast he can choose to ignore it (before any roll on the Miscast table is made). In either case, his staff will cease to provide any additional dice for the rest of the battle.],
    rule("Scroll of Hoeth")[Arcane Item. Charm. One use only. When an enemy cast a spell, the bearer may use this item instead of attempting to dispel the spell by using dispel dice. This gives them 6 free dice to attempt to dispel the spell, which cannot be combined with any other dispel dice. In addition, immediately after the dispel has been resolved, both Teclis and the caster must roll a D6; if Teclis scores higher, the caster immediately forgets the spell; otherwise, nothing else happens.],
    rule("War Crown of Saphery")[Arcane Item. Relic. The War Crown of Saphery allows Teclis to re-roll the result of any randomised spell effects (such as the number of hits inflicted by a magic missile).],
  ),
  special-rules: "Curse of Aenarion (see Lord of Aenarion), Elven Grace, Lileath's Blessing, Martial Prowess, Valour of Ages",
)

#unit("FINUBAR THE SEAFARER",
  solo: true,
  subtitle: "Phoenix King of Ulthuan",
  profiles: (
    (name: "Finubar", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 365),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour",
  magic-items: (
    rule("Royal Sceptre of Ulthuan")[Magic Weapon. Additional hand weapon. The Royal Sceptre gives Finubar +1 Strength and the Flaming Attacks special rule. In addition, it contains a Bound Spell (Level 1, cast on 3+). When cast, all enemy models in base contact suffer a Strength 5 Hit with the Flaming Attacks and Multiple Wounds (D3) special rules.],
    rule("Crown of the Phoenix King")[Talisman. Enemy missile attacks suffer a \-1 To Hit penalty when firing at Finubar or any unit he is with. In addition, it makes Finubar and any unit of White Lions of Chrace that he joins Unbreakable. Finally, all friendly units within 6" of Finubar are Stubborn.],
  ),
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  special-rules-body: (
    rule("Phoenix King")[Finubar has a 4+ invulnerable save and the Immunity (Flaming Attacks, Psychology) special rule. In addition, if Finubar is included in your army, Phoenix Guard are taken as Special Units instead of Rare units.],
  ),
)

#unit("ALARIELLE THE RADIANT",
  solo: true,
  subtitle: "Everqueen of Avelorn",
  profiles: (
    (name: "Alarielle", m: 5, ws: 5, bs: 4, s: 3, t: 3, w: 3, i: 6, a: 2, ld: 10, points: 400),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  magic: "Alarielle the Radiant is a Level 4 Wizard who uses the following Lores of Magic:",
  magic-body: [
- High
- Light
- Life

She can choose all of her spells from the same lore, or from two or more of the above lores in any combination.
  ],
  magic-items: [
- *The Shieldstone of Isha*: Talisman. The Shieldstone of Isha grants Alarielle the Radiant and her unit the Magical Ward (5+) special rule.
- *Stave of Avelorn*: Arcane Item. Staff. One use only. The Stave of Avelorn is used in the Magic phase. When used, it allows Alarielle to immediately attempt to cast a spell she has already cast that phase, even if the casting attempt failed, or was miscast. The spell is otherwise cast according to the normal rules.
- *Star of Avelorn*: Enchanted Item. At the start of your Movement phase, nominate a single friendly character within 12" – that model immediately regains a single Wound lost earlier in the battle. Alarielle can only restore her own Wounds if there is no other viable target within range.
  ],
  special-rules: "Elven Grace, Lileath's Blessing, Martial Prowess, Valour of Ages",
  special-rules-body: [
- *Boon of Isha:* All attacks made by models in Alarielle's unit gain +1 To Hit in close combat. In addition, all models in her unit have the Immunity (Fear, Terror) and Magical Attacks special rules.
- *Chaos Bane:* At the start of each of Alarielle's Magic phases, before rolling for the Winds of Magic, every unit with the Daemonic special rule within 12" of Alarielle the Radiant suffers D6 Strength 4 hits, distributed as for shooting attacks. However, Alarielle suffers a
  - D3 penalty to her casting attempts if there is one or more models with the Daemonic special rule within 12" of her.
- *Everqueen's Court Guards:* If Alarielle is with a unit of Sisters of Avelorn, the whole unit gains the Stubborn special rule. In addition, if Alarielle is included in your army, Sisters of Avelorn are taken as Special Units instead of Rare units.
- *Touch of the Everqueen:* If Alarielle makes a successful roll To Hit in close combat, the target model is reduced to Weapon Skill 1 for the remainder of that phase.
  ],
)

#unit("ELTHARION THE GRIM",
  solo: true,
  subtitle: "Warden of Tor Yvresse",
  profiles: (
    (name: "Eltharion", m: 5, ws: 8, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 330),
    (name: "Stormwing (Griffon)", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "50x50",
  equipment: "Light lance/spear, Elven shortbow, heavy armour",
  magic-items: (
    rule("Fangsword of Athel Tamarha")[Magic Weapon. Attacks made with the Fangsword are resolved at +2 Strength and Ignores Armour saves.],
    rule("Helm of Yvresse")[Magic Armour. 6+ armour save. The Helm of Yvresse grants Eltharion the Magical Ward (5+) special rule. In addition, Eltharion may re-roll any failed Leadership test.],
    rule("Talisman of Hoeth")[Talisman. This item grants Eltharion the Magic Resistance (1) special rule. The Talisman of Hoeth also makes Eltharion a Level 2 Wizard, who uses spells from one of the eight Winds of Magic.],
  ),
  special-rules: "Guardian of Yvresse (see Elven Honours), Hatred (Orcs & Goblins), Martial Prowess, Valour of Ages",
  special-rules-body: (
    rule("Silverin Guard")[If Eltharion the Grim is your Army General, you may upgrade one unit of Sentinels to Silverin Guard for a cost of +2 points per model. This unit has heavy armour and the Magic Resistance (1) special rule.],
  ),
  // The source heads this second block MAGIC ITEMS too, over what is plainly a
  // mounting option. Reproduced as printed, and named here so the mislabelling
  // is visible rather than buried in a repeated field.
  options: [
- May be mounted on Stormwing +115 points
  ],
  labels: (options: "MAGIC ITEMS"),
)

#unit("ELTHARION THE BLIND",
  solo: true,
  subtitle: "Bladelord of Hoeth",
  profiles: (
    (name: "Eltharion", m: 5, ws: 8, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 245),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic-items: (
    rule("The White Sword")[Magic Weapon. Great weapon. This weapon gives Eltharion the Killing Blow special rule.],
  ),
  special-rules: "Bladelord (see Elven Honours), Hatred (Dark Elves, Orcs & Goblins), Immunity",
  special-rules-body: [
*(Psychology), Martial Prowess, Valour of Ages*

- *The Dark Within:* Eltharion and any unit he joins is subject to the Berserk Rage part of the Frenzy special rule.
- *Great Leap:* At the start of any round of combat, before attacks are allocated or challenges issued, Eltharion may be moved to a different position in any unit he is in. He may not use this to position himself out of combat or if he is already involved in a challenge.
- *Impenetrable Defence:* Eltharion has the Dodge (5+) and Immunity (Killing Blow) special rules.
- *Lord of Hoeth:* If Eltharion is your Army General, you may take one unit of Swordmasters as a Core Unit instead of a Special Unit. Any unit of Swordmasters joined by Eltharion becomes Stubborn.
- *Swordmaster Fighting Styles:* At the start of each round of combat, Eltharion must declare which fighting style below he is using for that round.
  - *Way of the Willow Branch:* Any close combat attacks against Eltharion require 6's To Hit.
  - *Way of the Winter Breeze:* Eltharion gains +1 To Hit and ignores Parry saves.
  - *Way of the Swooping Eagle:* Eltharion may re-roll failed To Wound rolls and gains the Armour Piercing (1) special rule.
  - *Way of the Breaking Storm:* Eltharion gains +1 Attack.
  ],
)

#unit("ALITH ANAR",
  solo: true,
  subtitle: "The Shadow King, Prince of Nagarythe",
  profiles: (
    (name: "Alith Anar", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 9, a: 4, ld: 10, points: 265),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  magic-items: [
- *The Moonbow:* Magic Weapon. The Moonbow is a bolt thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "7", "Armour Piercing (1), Multiple Wounds (D3)"))

Any unit of Dark Elves that suffers one or more casualties from the Moonbow must take a Panic test.

- *Stone of Midnight:* Talisman. The Stone of Midnight grants Alith Anar the Magical Ward (4+) special rule. In addition, enemies suffer \-1 To Hit when shooting at Alith Anar or any unit he has joined.
- *The Shadow Crown:* Enchanted Item. Alith Anar and any unit he joins have the Swiftstride special rule.
  ],
  special-rules: "Elven Grace, Hatred (Dark Elves), Martial Prowess, Shadow Stalker (see Elven Honours), Valour of Ages",
  special-rules-body: (
    rule("The Grey")[If Alith Anar is included in your army, you may upgrade one unit of Shadow Warriors to The Grey for a cost of +1 point per model. If this unit is wholly within a terrain feature, enemies cannot draw Line of Sight to them unless they are within 12".],
  ),
)

#unit("IMRIK",
  solo: true,
  subtitle: "Lord of Dragons, Prince of Caledor",
  profiles: (
    (name: "Imrik", m: 5, ws: 8, bs: 7, s: 4, t: 3, w: 3, i: 9, a: 4, ld: 10, points: 600),
    (name: "Minaithnir (Star Dragon)", m: 6, ws: 7, bs: 0, s: 7, t: 7, w: 7, i: 2, a: 6, ld: 9, points: ""),
  ),
  troop-type: "Monster (Special Character, High Elf)",
  mount: "Minaithnir (Draconid)",
  base-size: "50x50, 50x100 or 60x100",
  magic-items: (
    rule("Star Lance")[Magic Weapon. Heavy lance. Imrik gains the Mighty Blow (1) and Ignores Armour saves special rules when charging.],
    rule("Armour of Caledor")[Magic Armour. Heavy armour. The Armour of Caledor grants the Immunity (Flaming Attacks) and Magical Ward (5+) special rules.],
    rule("Dragonhorn")[Enchanted Item. One use only. At the start of any of his own turns, Imrik may sound the Dragonhorn. This fills his army with pride, and all friendly High Elf units may re-roll any failed Rally and Psychology tests until the start of their next turn.],
  ),
  special-rules: "Blood of Caledor (see Elven Honours), Fiery Breath, Fly (7), Martial Prowess, Natural",
  special-rules-body: [
*Armour (2+), Valour of Ages*

- *Dragon Kin:* No Draconids will fight Imrik. If they are in base contact with other models (and not in a challenge) then they fight them instead, otherwise they may do nothing. Their riders (if they have any) still fight as normal.
- *The Fireborn:* If Imrik is your Army General, you may upgrade one unit of Dragon Princes of Caledor to The Fireborn for a cost of +2 points per model. This unit has the Flaming Attacks and Multiple Wounds (2) special rules.
- *Loyal Bond:* Whenever Imrik suffers an unsaved Wound, Minaithnir will become subject to Hatred against the model or unit that inflicted the Wound for the remainder of the turn.
  ],
)

#unit("SEA LORD AISLINN",
  solo: true,
  subtitle: "Master of the Mists, Herald of Mathlann",
  profiles: (
    (name: "Sea Lord Aislinn", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 200),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, medium armour",
  magic-items: (
    rule("Mask of the Merlord")[Magic Armour. This mask confers a 6+ armour save. In addition, the wearer and any unit they join gains the River Strider special rule and counts as being in soft cover while in any river.],
  ),
  special-rules: "Elven Grace, Lothern Sea Helm (see Elven Honours), Martial Prowess, Valour of Ages",
  special-rules-body: (
    rule("Master of the Mists")[If Sea Lord Aislinn is in your army, all friendly units of Lothern Sea Guard may deploy using the Vanguard special rule. In addition, immediately after both armies have been fully deployed (including Scouts), each unit of Lothern Sea Guards and Eagle Claw Bolt Throwers in your army gets to fire as if it was the Shooting phase.],
    rule("The Storm Riders")[If Sea Lord Aislinn is your Army General, you may upgrade one unit of Lothern Sea Guard to Storm Riders for a cost of +1 point per model. This unit has the Hatred special rule, and causes Fear in all Dark Elves.],
  ),
  options: [
- May be mounted on a Lothern Skycutter (replacing one of the crew) +65 points
- May take Magic Items up to a total of 75 points
  ],
)

#unit("ALTHRAN STORMRIDER",
  solo: true,
  subtitle: "Elven Prince",
  profiles: (
    (name: "Althran Stormrider", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 200),
    (name: "Sharpclaw (Griffon)", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: ""),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Shield",
  magic-items: (
    rule("The Stormrider's Sword")[Magic Weapon. This weapon gives Althran the Multiple Wounds (2) special rule.],
    rule("Armour of Protection")[Magic Armour. Heavy armour. This armour grants Althran the Magical Ward (5+) special rule.],
  ),
  special-rules: "Elven Grace, Martial Prowess, Valour of Ages",
  special-rules-body: (
    rule("Glory of the Elves")[Once per game, declared at the start of any close combat phase, Althran and all friendly units with the Martial Prowess special rule within 6" of him gain +1 To Hit for the duration of that phase.],
  ),
  options: [
- May be mounted on Sharpclaw +125 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("BELANNAER THE WISE",
  solo: true,
  subtitle: "Loremaster of the White Tower",
  profiles: (
    (name: "Belannaer the Wise", m: 5, ws: 6, bs: 5, s: 4, t: 3, w: 3, i: 9, a: 3, ld: 10, points: 405),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  magic: "Belannaer is a Level 3 Wizard. Instead of choosing spells normally, he always knows the eight Signature",
  magic-body: [
Spells from the Winds of Magic.
  ],
  magic-items: [
- *Blade of Bel-Korhadris*: Magic Weapon. Non-magical armour saves cannot be taken against Wounds caused by this weapon. In addition, once per battle, at the beginning of any close combat phase, Belannaer can choose to gain +D6 Attacks and the Flaming Attacks special rule that turn.
- *Cloak of Stars*: Talisman. All shooting and close combat Attacks that strike Belannaer will be resolved at \-1 Strength (with a minimum of 1).
- *Staff of Cyeos:* Arcane Item. Staff. Belannaer may add an additional free Power Dice to one spell attempt each turn.
- *Book of the Phoenix*: Enchanted Item. At the beginning of the battle Belannaer may read one of the verses of the book. The effect will last for the end of the game, unless the Book is destroyed or nullified by some means_._
  - *The Verse of Destruction:* This verse will double Belannaer's Strength characteristic.
  - *The Verse of Flame Eternal:* This verse will allow Belannaer to automatically cast one of his spells without using any power dice once per Magic phase. It can still be dispelled as normal, at a Power Level of 5.
  - *The Verse of Rebirth:* The first time Belannaer is killed, he causes a Flaming Strength 6 hit on each model, friend or foe, in base-to-base contact with him, and remain alive with D3 wounds. This does not apply if Belannaer is caught in pursuit.
  ],
  special-rules: "Elven Grace, Martial Prowess, Swordmaster, Valour of Ages",
  special-rules-body: (
    rule("Glamour of Hoeth")[Enemies who declare a charge against Belannaer or his unit must re-roll successful charge distance rolls.],
  ),
  options: [
- May take light armour +3 points
  ],
)

#unit("KORHIL LIONMANE",
  solo: true,
  subtitle: "Charandis-bane, Hunter Captain of the White Lions",
  profiles: (
    (name: "Korhil", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 180),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour",
  magic-items: [
- *Chayal:* Magic Weapon. Two hand weapons. Close combat attacks made with Chayal are resolved at +2 Strength and have the Killing Blow special rule.
- *Pelt of Charandis:* Magic Armour. The Pelt of Charandis has the following armour profile:

#minitable(("Combat", "Missile", "Special Rules"), ("+1/6+", "+2/5+", "Immunity (Poisoned Attacks)"))
  ],
  special-rules: "Chracian Hunter (see Elven Honours), Elven Grace, Forest Strider, Martial Prowess, Mighty Blow (1), Valour of Ages",
  special-rules-body: [
- *Hunter Captain:* Korhil may use one the following abilities in close combat in the situations described below:
  - *Lion Rampant:* Lion Rampant can be used in a turn when choosing Hold as a charge reaction. Korhil gains the Parry (6+) special rule for the duration of the close combat phase.
  - *Lion Leaping:* Lion Leaping can be used in a turn when Korhil is charging. Enemy models in base contact are subject to the Always Strikes Last special rule for the duration of the close combat phase.
  - *Lion Claw:* Lion Claw can be used fighting against Monstrous Infantry, Monstrous Beasts and Monstrous Cavalry. Against these Troop Types, Korhil has the Heroic Killing Blow special rule in the first turn of close combat.
- *The Puremane Company:* Unless Korhil is mounted on a Lion Chariot of Chrace, he must be accompanied by a unit of White Lions of Chrace chosen from the army list as normal. This unit has the Immunity (Fear) special rule. Korhil may never choose to leave this unit.
  ],
  options: [
- May be mounted on a Lion Chariot of Chrace (replacing one of the crew) +95 points
  ],
)

#unit("CARADRYAN OF THE FLAME",
  solo: true,
  subtitle: "Chosen of Asuryan, Captain of the Phoenix Guard",
  profiles: (
    (name: "Caradryan", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 180),
    (name: "Ashtari (Frostheart Phoenix)", m: 2, ws: 6, bs: 0, s: 6, t: 6, w: 5, i: 3, a: 4, ld: 9, points: ""),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour",
  magic-items: (
    rule("The Phoenix Blade")[Magic Weapon. Polearm. Close combat attacks made with the Phoenix Blade have the Flaming Attacks and Multiple Wounds (D3) special rules.],
  ),
  special-rules: "Anointed of Asuryan (see Elven Honours), Elven Grace, Immunity (Psychology), Magic",
  special-rules-body: [
*Resistance (1), Martial Prowess, Valour of Ages,*

- *Mark of Asuryan:* If Caradryan is slain in close combat, the unit that killed him immediately suffers D3 Wounds which Ignores Armour Saves. If Caradryan is killed in a challenge, then only his opponent takes these Wounds – any excess Wounds caused by the Mark of Asuryan count towards overkill.
- *Keepers of the Flame:* Unless Caradryan is mounted on Ashtari, he must be accompanied by a unit of Phoenix Guard chosen from the army list as normal. This unit has the Magical Attacks special rule. Caradryan may never choose to leave this unit.
  ],
  options: [
- May be mounted on Ashtari +260 points
  ],
)

#unit("ISHAYA VESS",
  solo: true,
  subtitle: "Sentinel of the Silent Isle",
  profiles: (
    (name: "Ishaya Vess", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 145),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Elven shortbow, medium armour, shield",
  magic-items: (
    rule("Mathlann's Ire")[Magic Weapon. Spear. This weapon gives Ishaya Vess +1 Strength and the Armour Piercing (1) special rule. In addition, enemies must re-roll successful To Hit rolls against her in close combat.],
  ),
  special-rules: "Elven Grace, Inspiring Presence (6), Lothern Sea Helm (see Elven Honours), Martial",
  special-rules-body: [
*Prowess, Valour of Ages*

- *Precision Strikes:* Any Lothern Sea Guard unit joined by Ishaya Vess gains the Armour Piercing (1) special rule.
  ],
)

#unit("PHYTRION",
  solo: true,
  subtitle: "Chosen of Tor Yvresse",
  profiles: (
    (name: "Phytrion", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 120),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Shield",
  magic-items: (
    rule("Sword of Retaliation")[Magic Weapon. All enemy models from the Forces of Destruction suffer \-1 To Hit Phytrion in close combat.],
    rule("Moonshade Armour")[Magic Armour. Heavy armour. The Moonshade Armour gives Phytrion the Magical Ward (5+) special rule.],
  ),
  special-rules: "Elven Grace, Guardian of Yvresse (see Elven Honours), Hatred (Warriors of Chaos), Martial Prowess, Valour of Ages",
  special-rules-body: (
    rule("Favour of Destiny")[Roll a D3 at the start of the game; this is the number of dice that Phytrion may re-roll of either To Hit, To Wound, armour saves or invulnerable saves during the course of the game.],
  ),
)

#unit("GILEAD & FITHVAEL",
  solo: true,
  subtitle: "Last of Tor Anrok",
  profiles: (
    (name: "Gilead", m: 5, ws: 7, bs: 7, s: 4, t: 3, w: 3, i: 8, a: 4, ld: 10, points: 170),
    (name: "Shadowfast", m: 8, ws: 10, bs: 6, s: 4, t: 3, w: 3, i: 10, a: 8, ld: 10, points: "-"),
    (name: "Fithvael", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 70),
  ),
  troop-type: "Infantry (Special Character, High Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Elven longbow, light armour, shield",
  magic-items: (
    rule("Blade of Galeth")[Magic Weapon. All attacks made by Gilead with the Blade of Galeth have the Armour Piercing (1) special rule.],
  ),
  special-rules: "Elven Grace, Independent, Martial Prowess, Multiple Shots (3) (Fithvael only), Skirmishers, Valour of Ages",
  special-rules-body: [
- *Doom-saga:* At the beginning of the battle, after deployment, nominate one enemy character on the battlefield. Against this particular target, Gilead re-rolls all failed rolls To Hit and To Wound.
- *Melancholic Distractions*: At the start of each of his turns, Gilead must take a Leadership test, unless he is engaged in combat. If this test is failed, roll a D6. On a 1\-3 Gilead cannot move that turn. On a 4\-6 Gilead must move his full movement for that turn towards the closest table edge. If he leaves the table, he is treated as a casualty and will not return. If Gilead is engaged in combat, he will fight as normal.
- *Shadowfast*: Once per game, at the start of any of the High Elf player's movement phase, Gilead may enter Shadowfast. Until the start of his next turn, Gilead's stat line will change to his Shadowfast characteristics. In addition, while Shadowfast, Gilead also gains the Always Strikes First and Dodge (4+) special rules.
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
