// Dwarfs 3.11 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "dwarfs",
  army: "Dwarfs",
  version: "3.11",
  layout: "army",
  cover: "covers/dwarfs.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Dwarfs 3.11")

#cover(
  title: "Dwarfs",
  subtitle: "Warhammer Armies Project · 3.11",
  art: "/assets/covers/dwarfs.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Dwarfs*, version 3.11 — written and freely distributed by Mathias
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

#namecost("ANCESTRAL GRUDGE", "")

Dwarfs have the Hatred special rule against Orcs, Goblins and Skaven.

#namecost("DEATHBLOW", "")

If a model with this special rule is killed by normal Close Combat Attacks, it will immediately make a single Attack back against the unit or model that killed it before it is removed as a casualty.

#namecost("DWARFEN CROSSBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("30/36\"", "4", "Ponderous"))
#namecost("DWARFEN HANDGUN", "")
#minitable(("Range", "Strength", "Special Rules"), ("18/24\"", "5", "Ponderous"))
#namecost("DWARFEN PISTOL", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/12\"", "5", "Multiple Shots (2)*, Quick Shot"))

#note[_\*Requires a brace of Dwarfen pistols._]

#namecost("GROMRIL ARMOUR", "")

Models with this special rule add +1 to their armour saves if they wear light, medium or heavy armour.

#namecost("OATH STONES", "")

A model with an Oathstone gains the Magic Resistance (2) special rule. A unit that contains one or more models with an Oath Stone can never choose to flee as a charge reaction, cannot be disrupted and can make Parry saves against attacks made to their flanks and rear. In addition, a character with an Oath Stone must always accept a challenge. However, if a model on an Oathstone fails a Break Test, they are removed as a casualty.

#namecost("RELENTLESS", "")

Units entirely composed of models with this special rule do not need to pass a Leadership test in order to march, regardless of the proximity of enemy units.

#namecost("RESOLUTE", "")

When taking Break tests, models with this special rule count as having lost the combat with 1 point fewer than they actually have.

#namecost("SLAYER", "")

Models with this special rule always Wound on a To Wound roll of 4+ in close combat, unless they would need a lower result. Use the model's Strength to determine the armour save modifier for any successful Wounds. In addition, there are three forms of Slayers with the following additional rules:

- *Giant Slayer:* The model has the Multiple Wounds (D3) special rule when attacking Monstrous Infantry, Monstrous Beasts or Monstrous Cavalry.
- *Dragon Slayer:* The model has the Giant Slayer special rule. The model has the Multiple Wounds (D3) special rule when attacking Monstrous Creatures and Monsters.
- *Daemon Slayer:* The model has the Dragon Slayer special rule. In addition, any successful Magical Ward saves against Attacks made by the model must be re-rolled.

#namecost("WARDS OF GRIMNIR", "")

A model with Wards of Grimnir has the Magical Ward (6+) special rule against missile attacks and the Magic Resistance (2) special rule.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Dwarfs. Dwarfs may not use magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("HAMMER OF SMEDNIR", 45)[Each Hit with this weapon is multiplied into D3 Hits.]

#magic-weapon("RED AXE OF KARAK EIGHT PEAKS", 40)[Against all Orcs, Goblins and Skaven, this weapon allows its wielder to re-roll To Hit and To Wound rolls as well as cause Terror.]

#magic-weapon("KRAGGIS' ANCESTRAL PICKAXE", 25, type: "Great weapon")[The wielder of this weapon has the Armour Piercing (1) and Underground Advance (see Miners) special rules.]

#magic-weapon("HAMMER OF KARAK DRAZH", 20)[Attacks with the Hammer of Karak Drazh are resolved at +3 Initiative, and any enemy models that suffer one or more unsaved Wounds from it are subject to the Always Strikes Last special rule until the end of the next Close Combat phase.]
]

#magic-item-section("armour")[
#magic-armour("MAGNIFICENT ARMOUR OF BOREK BEETLEBROW", 35, type: "Heavy armour")[This armour gives the wearer a Magical Ward (3+) against all attacks of Strength 6 or higher.]

#magic-armour("EVER-BURNING HELMET OF GRUNGNI", 30)[This armour gives the wearer a 6+ armour save. All close combat attacks directed against the wearer must re-roll To Hit.]

#magic-armour("RUNIC BRACERS OF SKAVOR", 25)[This armour gives the wearer a 6+ armour save. The wearer gains the Regeneration (5+) special rule.]

#magic-armour("HELMET OF THE ANVIL", 10)[This armour gives the wearer a 6+ armour save. In addition, their armour save cannot be worse than a 6+.]
]

#magic-item-section("talisman")[
#talisman("GOLDEN BANDS OF GRIMNIR", 45)[This item gives the wearer +1 Wound and the Magic Resistance (3) special rule.]

#talisman("HEAVY METAL INGOT", 30)[This item allows the wielder to re-roll failed armour saves and invulnerable saves rolls of 1 in any turn they have not moved.]
]

#magic-item-section("enchanted")[
#enchanted-item("FOCAL LENS OF MORGRIM", 40)[The bearer and any unit they join gain +1 To Hit with missile weapons.]

#enchanted-item("FIERY RING OF THORI", 35)[The Fiery Ring of Thori gives its bearer a Strength 4 Breath Weapon with the Flaming Attacks special rule.]

#enchanted-item("GOLDEN SCEPTRE OF NORGRIM", 30)[The bearer and any unit they are with may re-roll 1's To Hit and To Wound in close combat.]

#enchanted-item("RUNIC TABLET OF THUNGNI", 30)[The bearer and any unit they join gain the Armour Piercing (1) special rule.]

#enchanted-item("SILVER HORN OF VENGEANCE", 30, one-use: true)[The Silver Horn of Vengeance can be used at the start of any friendly turn. Its wielder, and any friendly units within 6", have the Devastating Charge special rule until the start of their following turn. Additionally, once used, the blower of the Silver Horn of Vengeance, and any unit he joins, cause Fear in all Elves for the rest of the game.]

#enchanted-item("TEARDROP OF GRUNGNI", 20, one-use: true)[This item is a missile attack with a 6" range. The target automatically suffers D3 Strength 6 Hits. In addition, if the target is a lone model, it must halve all its Movement until the start of your next turn.]

#enchanted-item("HEALING SALVE OF VALAYA", 15, one-use: true)[This item can be used at the start of the controlling player's turn. The model immediately recovers D3 Wounds up to their starting value.]

#enchanted-item("RESOUNDING GROMRIL HORN", 10, one-use: true)[This item may be used at the start of any of your turns. Once used, all friendly units within 12" gain +1 to their Leadership for the duration of the turn.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF LOST HOLDS", 60)[All models in a unit that carries the Banner of Lost Holds can re-roll failed To Wound rolls in close combat.]
]

= RUNIC ITEMS

Runic items are effectively magic items tailored to your own requirements by combining abilities. A Dwarf character can carry runic items, and the total points values of those runic items is limited as mentioned in the army list.

It is important to remember that a runic item is no different from a magic item, and all the usual rules for magic items still apply. All the rules that apply to the possession and use of magic items also apply to runic items.

#entry("CREATING A RUNIC ITEM")
Unless otherwise noted, runes can be inscribed onto the following things: weapons, armour, talismans, standards, and war machines. Each of these has its own types of runes.

If a model is permitted to take a Magic Weapon, they may choose Weapon Runes and apply them to their hand weapon.

If a model is permitted to take Magic Armour, they may choose Armour Runes and apply them to their armour.

Every character is assumed to have a Talisman which can have Talismanic Runes.

If a model is permitted to take a Magic Standard, they may choose Banner Runes.

Dwarf war machines can be inscribed with engineering runes.

Characters with the Slayer special rule may take Runic Tattoos.

#entry("RULES OF THE RUNES")
You may inscribe up to three runes onto an item, which will henceforth be considered magical. Runic magic items are subject to the following restrictions:

1) No single item can have more than three runes.

2) No more than one item may carry the exact same combination of runes. This restriction also applies to the use of single runes.

3) No master rune may be used more than once per army, and no more than one master rune can be inscribed on an item.

4) Apart from the master runes other runes can be combined as you wish, to produce varied or cumulative effects. With the exception of master runes, runes can be used in multiples when specified, although whether their effects are simply added together or combine into a new power will be stated within the rune's rules. The point costs for cumulative runes can be stated as 5/10/20 for example, where the higher numbers are the cost for the second and/or third cumulative rune.

#entry("WEAPON RUNES")
#columns(2)[
#namecost("MASTER RUNE OF SMITING", "35 points")

A weapon engraved with the Master Rune of Smiting has the Multiple Wounds (D6) special rule.

#namecost("MASTER RUNE OF DEATH", "30 points")

A weapon engraved with the Master Rune of Death grants its wielder the Heroic Killing Blow special rule.

#namecost("MASTER RUNE OF DRAGON", "")
#namecost("SLAYING", "30 points")

Against Dragons and Drakes, a weapon engraved with the Master Rune of Dragon Slaying will always wound on a To Wound roll of 2+ and has the Multiple Wounds (2) special rule.

#namecost("MASTER RUNE OF ALARIC", "")
#namecost("THE MAD", "25 points")

A weapon engraved with the Master Rune of Alaric the Mad has the Ignores Armour Saves special rule.

#namecost("MASTER RUNE OF BREAKING", "25 points")

If a model with a weapon engraved with the Master Rune of Breaking scores one or more successful hits against a model, the foe's weapon or armour is destroyed on a D6 roll of 2+ (roll once, regardless of the number of successful hits). If the foe has more than one weapon or armour piece (note that two hand weapons count as one), roll a D6 to randomly determine which one is destroyed.

#namecost("MASTER RUNE OF SNORRI", "")
#namecost("SPANGELHELM", "25 points")

A weapon engraved with the Master Rune of Snorri Spangelhelm always hits on a To Hit roll of 2+.

#namecost("MASTER RUNE OF SWIFTNESS", "25 points")

A weapon engraved with the Master Rune of Swiftness has the Always Strikes First special rule.

#namecost("MASTER RUNE OF BANISHMENT", "20 points")

A weapon engraved with the Master Rune of Banishment may re-roll failed To Wound rolls against models with the Ethereal, Undead or Vampiric special rule.

#namecost("MASTER RUNE OF FLIGHT", "20 points")

A weapon engraved with the Master Rune of Flight can be thrown like a missile weapon with a range of up to 12" which always hits on a roll of 2+. Roll To Wound as if the target had suffered a hit from the weapon in close combat.

Any additional runes on the weapon will also take effect. After this, the weapon flies back to the wielder. A weapon with the Master Rune of Flight can also be used in close combat as normal.

#namecost("MASTER RUNE OF SKALF", "")
#namecost("BLACKHAMMER", "20 points")

A weapon engraved with the Master Rune of Skalf Blackhammer will Wound any model not in magic armour on a To Wound roll of 2+, regardless of the target's Toughness. Against models in magic armour, a roll of 3+ is required.

#namecost("MASTER RUNE OF KRAGG", "")
#namecost("THE GRIM", "5 points")

This rune can only be placed on great weapons. It allows the great weapon to be inscribed with runes.

#namecost("RUNE OF DAEMON SLAYING 25/50/100 points", "")

Against any model with the Daemonic special rule, a weapon engraved with a Rune of Daemon Slaying receives a +1 bonus To Hit and To Wound.

Against any model with the Daemonic special rule, a weapon engraved with two Runes of Daemon Slaying receives a +1 bonus To Hit and To Wound and gains the Multiple Wounds (D3) special rule.

Against any model with the Daemonic special rule, a weapon engraved with three Runes of Daemon Slaying hits and Wounds on a roll of 2+, has the Multiple Wounds (D3) special rule and cannot take Magical Ward saves against it.

#namecost("RUNE OF FIRE 5/35/55 points", "")

A weapon engraved with a Rune of Fire has the Flaming Attacks special rule.

A weapon engraved with two Runes of Fire has the Flaming Attacks special rule, and grants its wielder a Strength 4 Breath Weapon with the Flaming Attacks special rule.

A weapon engraved with three Runes of Fire has the Flaming Attacks special rule, and grants its wielder a Strength 4 Breath Weapon that has the Flaming Attacks and Multiple Wounds (D3) special rules.

#namecost("RUNE OF FURY 15/25/50 points", "")

A weapon engraved with a Rune of Fury grants its wielder +1 Attack.

A weapon engraved with two Runes of Fury grants its wielder +1 Attack and the Frenzy special rule.

A weapon engraved with three Runes of Fury grants its wielder +1 Attack and the Frenzy special rule and, after each successful roll To Hit and to Wound, it grants its user another Attack; roll To Hit and To Wound as normal. Attacks generated in this way do not generate further Attacks.

#namecost("RUNE OF STRIKING 10/30/40 points", "")

A weapon engraved with a Rune of Striking grants its wielder +1 Weapon Skill.

A weapon engraved with two Runes of Striking grants its wielder +1 Weapon Skill and allows its wielder to re-roll failed To Hit rolls in close combat.

A weapon engraved with three Runes of Striking grants its wielder Weapon Skill 10 and allows him to re-roll failed To Hit rolls in close combat.

#namecost("RUNE OF CLEAVING 5/20/35 points", "")

A weapon engraved with a Rune of Cleaving has the Armour Piercing (1) special rule.

A weapon engraved with two Runes of Cleaving has the Armour Piercing (1) special rule, and additionally grants its wielder +1 Strength.

A weapon engraved with three Runes of Cleaving has the Armour Piercing (1) special rule, and additionally grants its wielder +1 Strength and the Killing Blow special rule.

#namecost("RUNE OF MIGHT 25/35 points", "")

A weapon engraved with a Rune of Might doubles its wielder's Strength against foes of Toughness 5 or higher in close combat.

A weapon engraved with two Runes of Might maintains the previous effect, and grants the Multiple Wounds (D3) special rule against foes of Toughness 5 or higher in close combat.

#namecost("RUNE OF DISMAY 15/25 points", "")

A weapon engraved with a Rune of Dismay grants its wielder the Fear special rule.

A weapon engraved with two Runes of Dismay grants its wielder the Terror special rule.

#namecost("RUNE OF PARRYING", "20 points")

A weapon engraved with a Rune of Parrying causes all enemy models attempting to attack its wielder in close combat to suffer a \-1 penalty to their To Hit rolls.

#namecost("GRUDGE RUNE", "20 points")

For each Grudge Rune in your army, nominate one enemy character or monster at the beginning of the game. The wielder of a weapon engraved with a Grudge Rune gains +1 To Hit and can re-roll failed To Wound rolls in close combat when attacking the nominated model.

#namecost("RUNE OF SPEED", "5 points")

A weapon engraved with a Rune of Speed grants its wielder +1 Initiative.
]

#entry("ARMOUR RUNES")
#namecost("MASTER RUNE OF ADAMANT", "50 points")

A model wearing armour engraved with the Master Rune of Adamant can only be wounded on natural To Wound rolls of 6.

#namecost("MASTER RUNE OF GROMRIL", "30 points")

Armour engraved with the Master Rune of Gromril ignores negative modifiers to its armour save. This rune cannot be combined with any other armour runes.

#namecost("MASTER RUNE OF STEEL", "30 points")

Enemies must re-roll successful To Wound rolls against a model wearing armour engraved with the Master Rune of Steel.

#namecost("RUNE OF FORTITUDE 20/45/55 points", "")

Armour engraved with a Rune of Fortitude grants its wearer +1 Toughness.

Armour engraved with two Runes of Fortitude grants its wearer +1 Toughness and the Magical Ward (5+) special rule.

Armour engraved with three Runes of Fortitude grants its wearer +1 Toughness, as well the Immunity (Multiple Wounds) and Magical Ward (5+) special rules.

#namecost("RUNE OF IRON 15/35/45 points", "")

Armour engraved with a Rune of Iron grants its wearer +1 Wound.

Armour engraved with two Runes of Iron grants its wearer +1 Wound and +1 Toughness.

Armour engraved with three Runes of Iron grants its wearer +1 Wound, +1 Toughness and the Regeneration (5+) special rule.

#namecost("RUNE OF RESISTANCE", "25 points")

This rune allows the character to re-roll any failed armour saving throws.

#namecost("RUNE OF IMPACT", "15 points")

Armour engraved with a Rune of Impact grants its wearer the Impact Hits (1) and Mighty Blow (1) special rules.

#namecost("RUNE OF SHIELDING", "15 points")

Armour engraved with a Rune of Shielding grants its wearer the Magical Ward (2+) special rule against Wounds caused by missile attacks.

#namecost("RUNE OF PRESERVATION", "10 points")

Armour engraved with a Rune of Preservation grants the wearer the Immunity (Killing Blow) special rule.

#namecost("RUNE OF STONE", "10 points")

Armour engraved with a Rune of Stone adds +1 to its wearer's armour save.

#entry("TALISMANIC RUNES")
#namecost("MASTER RUNE OF BALANCE", "50 points")

Runesmiths/Runelords only. During the enemy's Magic phase, this rune allows the owning player to remove one power dice from his opponent's pool and add it to his own dispel pool.

#namecost("MASTER RUNE OF KINGSHIP", "40 points")

Dwarf Lord only. The Master Rune of Kingship gives the Lord and the unit he is with the Stubborn and Immunity (Fear/Terror) special rules for as long as he remains with the unit. If the model is not in a unit, it has no effect.

#namecost("MASTER RUNE OF SPITE", "30 points")

Every time a model with the Master Rune of Spite is Hit in close combat, the model that struck the blow suffers a Strength 4 hit.

#namecost("MASTER RUNE OF PASSAGE", "20 points")

A model with the Master Rune of Passage, and any unit he joins gains the Strider special rule.

#namecost("MASTER RUNE OF SPELLBINDING", "20 points")

A model with the Master Rune of Spellbinding gets a +1 bonus to all attempts to channel dispel dice.

#namecost("MASTER RUNE OF CHALLENGE", "15 points")

One use only. The rune is used during the enemy turn before they declare charges. Nominate one enemy unit within 12" of the rune user. The unit must be able to charge and reach the rune user or the unit he is with according to the normal rules. The enemy unit must either declare a charge against the rune user (and any unit he is with) or must flee in the Compulsory Movement phase as if it had failed a Panic test. The rune user (and any unit he is with) can only elect to Hold or Stand and Shoot. Any Terror tests are taken as normal. This rune has no effect on units that have Immunity (Psychology).

#namecost("RUNE OF WARDING 10/25/40 points", "")

A model with a Rune of Warding has the Magical Ward (6+) special rule.

A model with two Runes of Warding has the Magical Ward (5+) special rule.

A model with three Runes of Warding has the Magical Ward (4+) special rule.

#namecost("RUNE OF SPELLBREAKING 25/35 points", "")

Runesmiths/Runelords only. One use only. When an enemy spell has been cast, the bearer can use it instead of attempting to dispel the spell by using dispel dice. This gives them 6 free dispel dice to attempt to dispel the spell, which cannot be combined with any other dispel dice (Ultimate Power applies as normal). This may also be used to dispel spells that Remains in Play.

A second Rune of Spell breaking maintains the previous effect and, after the spell is dispelled, roll a D6; on a 4+, the enemy spell is lost to the Wizard casting it and cannot be cast by him for the rest of the game.

#namecost("RUNE OF FATE", "15 points")

One use only. The model has the Magical Ward (2+) special rule against the first unsaved Wound suffered.

#namecost("RUNE OF BROTHERHOOD", "5 points")

May not be used by a character with an Oath stone or Shieldbearers. A character with this rune may either be deployed with a unit of Rangers utilising the Scouts special rule or join a unit of Miners utilising the Ambushers special rule.

#namecost("RUNE OF THE FURNACE", "5 points")

A model with the Rune of the Furnace has the Immunity (Flaming Attacks) special rule.

#namecost("RUNE OF LUCK", "5 points")

One use only. A model with a Rune of Luck can re-roll a single To Hit roll, To Wound roll, armour save, invulnerable save or characteristic test during the game.

#entry("BANNER RUNES")
#columns(2)[
#namecost("MASTER RUNE OF GROTH ONE-EYE", "75 points")

A standard bearing the Master Rune of Groth One-Eye confers the Stubborn special rule to the bearer's unit and all friendly Dwarf units within 12" of the bearer.

#namecost("MASTER RUNE OF STROMNI", "")
#namecost("REDBEARD", "60 points")

A standard bearing the Master Rune of Stromni Redbeard confers a further +1 bonus to the bearer's unit's combat result score, and the combat result score of all other friendly Dwarf units within 12" of the bearer.

#namecost("MASTER RUNE OF GRUNGNI", "60 points")

A standard bearing the Master Rune of Grungni confers the Magical Ward (5+) special rule against Wounds caused by missile attacks to any friendly units within 12" of the bearer.

#namecost("MASTER RUNE OF GRIMNIR", "50 points")

Slayers only. Any friendly Slayer unit within 12" of the standard gains the Magical Ward (5+) special rule against all missile attacks.

#namecost("MASTER RUNE OF VALAYA", "25 points")

A standard bearing the Master Rune of Valaya confers a +1 bonus upon all attempts to dispel magic by the owning player. Additionally, all Remains in Play spells are immediately dispelled on a D6 roll of 3+ at the start of each friendly Magic phase (roll separately for each Remains in Play spell).

#namecost("MASTER RUNE OF FEAR", "25 points")

A standard bearing the Master Rune of Fear confers the Fear special rule to the bearer's unit.

#namecost("RUNE OF BATTLE 20/40/60 points", "")

A standard bearing a Rune of Battle confers a further +1 bonus to the bearer's unit's combat result score.

A standard bearing two Runes of Battle confers a further +2 bonus to the bearer's unit's combat result score.

A standard bearing three Runes of Battle confers a further +2 bonus to the bearer's unit's combat result score, and additionally confers the Fight in Extra Ranks (1) special rule to the bearer's unit.

#namecost("RUNE OF SLOWNESS 20/30/50 points", "")

Any foes charging a unit including a standard bearing a Rune of Slowness subtract D3" from their charge distance (roll after their charge distance has been determined). If the enemy fails to make contact, all the rules for failed charges apply.

A second Rune of Slowness means a foe rolls 2D3 and must choose the highest dice when subtracting from his charge distance.

A third Rune of Slowness maintains the previous effects and, should a foe contact the bearing unit, they have the Always Strikes Last special rule in the first round of combat.

#namecost("RUNE OF STOICISM", "40 points")

A standard bearing the Rune of Stoicism confers the Stubborn special rule to the bearer's unit.

#namecost("RUNE OF GUARDING", "30 points")

Battle Standard Bearer only. The bearer of a standard with the Rune of Guarding has the Magical Ward (5+) special rule.

#namecost("RUNE OF COURAGE", "20 points")

A standard bearing the Rune of Courage confers the Immunity (Psychology) special rule to the bearer's unit.

#namecost("RUNE OF KADRIN", "20 points")

A standard bearing the Rune of Kadrin allow all models in the unit to re-roll all To Wound rolls of 1 with close combat and missile attacks.

#namecost("RUNE OF SANCTUARY 10/20 points", "")

A standard bearing a Rune of Sanctuary confers the Magic Resistance (2) special rule to the bearer's unit.

A standard bearing two Runes of Sanctuary confers the Magic Resistance (3) special rule to the bearer's unit.

#namecost("RUNE OF DETERMINATION", "15 points")

One use only. The unit may take a Break test on a single D6 rather than 2D6.

#namecost("STROLLAZ' RUNE", "10 points")

A standard bearing Strollaz' Rune confers the Vanguard special rule to the bearer's unit.

#namecost("ANCESTOR RUNE", "10 points")

One use only. If the unit carrying a banner with this rune has to take a Break test, the rune is expended. The unit tests as if it were Stubborn.
]

#entry("ENGINEERING RUNES")
#columns(2)[
#namecost("MASTER RUNE OF BURSTING", "")
#namecost("FLAME", "40 points")

Grudge Thrower only. A war machine engraved with a Master Rune of Bursting Flame uses the large round template.

#namecost("MASTER RUNE OF IMMOLATION", "20 points")

One use only. A Dwarf player can cause a war machine engraved with the Master Rune of Immolation to explode at the end of any round of combat before determining the combat results. Both the war machine and all its remaining crew are instantly removed from play, and each enemy unit in combat with the war machine suffers 2D6 magical Strength 4 hits with the Flaming Attacks special rule, allocated as for shooting. Any surviving enemy units who charged that turn may make an overrun move as normal. This rune will also be triggered automatically when the war machine loses its last Wound in close combat.

#namecost("MASTER RUNE OF DEFENCE", "20 points")

A war machine engraved with a Master Rune of Defence gains the Magical Ward (3+) special rule against all missile attacks.

#namecost("MASTER RUNE OF SLAYING", "20 points")

A war machine engraved with a Master Rune of Slaying always Wound on a 3+ or better against enemy Monstrous Creatures and Monsters.

#namecost("MASTER RUNE OF SKEWERING", "20 points")

Bolt Thrower only. A war machine engraved with a Master Rune of Skewering always hits on a 3+ with no modifiers.

#namecost("MASTER RUNE OF DISGUISE", "15 points")

A war machine engraved with the Master Rune of Disguise always counts as being in hard cover.

#namecost("RUNE OF PENETRATING 30/50 points", "")

A war machine engraved with a Rune of Penetration increases the Strength of its shots by +1. Note that in the case of a Grudge Thrower, this bonus increases the Strength of both Strength values in its profile.

A war machine engraved with two Runes of Penetration increases the Strength of its shots by +1, and allows the user to re-roll failed To Wound rolls.

#namecost("RUNE OF RAPID FIRE", "30 points")

Bolt Thrower only. A war machine engraved with a Rune of Rapid Fire gains the Multiple Shots (2) special rule.

#namecost("RUNE OF FORGING", "25 points")

A war machine engraved with a Rune of Forging can re-roll the artillery dice whenever a misfire result is rolled.

#namecost("RUNE OF ACCURACY", "20 points")

A war machine with engraved with a Rune of Accuracy may re-roll 1's To Hit. If it does not use Ballistic Skill To Hit, it can instead re-roll the scatter dice.

#namecost("RUNE OF RELOADING", "20 points")

A war machine engraved with a Rune of Reloading can shoot every turn, even if it has moved or rolled a misfire the previous turn.

#namecost("FLAKKSON'S RUNE OF SEEKING", "15 points")

Bolt Throwers only. A war machine engraved with Flakkson's Rune of Seeking gains +1 To Hit against any units with the Fly special rule.

#namecost("RUNE OF CONCUSSIVE FORCE", "15 points")

Bolt Thrower, Grudge Thrower and Cannon only. A unit directly hit with an attack made by a war machine engraved with a Rune of Concussive Force gains the Stupidity special rule until your next Shooting phase.

#namecost("RUNE OF FORTUNE", "10 points")

If a machine has the Rune of Fortune the player may re-roll the result on the machine's Misfire chart.

#namecost("STALWART RUNE 5/10 points", "")

A war machine engraved with a Stalwart Rune confers a +1 bonus to its crew's combat result score.

A war machine engraved with two Stalwart Runes confers a +1 bonus to its crew's combat result score, and its crew also gain the Stubborn special rule.

#namecost("RUNE OF BURNING", "5 points")

All shooting attacks from a war machine engraved with a Rune of Burning have the Flaming Attacks special rule.

#namecost("ENCHANTED RUNE", "5 points")

All shooting attacks from a war machine engraved with an Enchanted Rune have the Magical Attacks special rule.

#namecost("RUNE OF THE RECKLESS", "20 points")

A model with this runic tattoo gains +1 To Hit and the Frenzy special rule. However, enemy models that target this model in close combat also gain +1 To Hit.

#namecost("RUNE OF THE HATEFUL", "15 points")

A model with this runic tattoo gains the Hatred special rule.

#namecost("RUNE OF WRATH", "15 points")

A model with this runic tattoo gains +1 Attack.

#namecost("RUNE OF THE DAUNTLESS", "10 points")

A model with this runic tattoo must always issue and accept challenges (if possible). During a challenge, this model may re-roll any failed rolls To Hit.

#runin[WARRIOR]'#runin[S RUNE 10 points] A model with this runic tattoo gains +1 Weapon Skill.

#namecost("RUNE OF BLAZING FURY", "5 points")

A model with this runic tattoo has the Flaming Attacks special rule.
]

#entry("RUNIC TATTOOS")
#namecost("RUNE OF THE DISHONOURED", "30 points")

Once a model with this runic tattoo is reduced to their last Wound, they gain the Magical Ward (3+) special rule against any further wounds suffered. However, at the end of the battle, a model with this runic tattoo that has been slain is worth no Victory Points. If it is still alive, the enemy player wins a bonus number of Victory Points equal to 100% of its points cost.

#namecost("RUNE OF ENDLESS BATTLE", "25 points")

During a turn in which a model with this runic tattoo charged, every attack it makes that causes an unsaved Wound allows it to immediately make one additional attack. This does not generate additional attacks.

#namecost("RUNE OF GRIT", "20 points")

A model with this runic tattoo gains +1 Toughness.

= CHARACTERS

#unit("LORDS",
  first: true,
  profiles: (
    (name: "King", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 125),
    (name: "Thane", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 9, points: 65),
  ),
  troop-type: "Infantry (Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ancestral Grudge, Gromril Armour, Magic Resistance (1), Relentless, Resolute",
  special-rules-body: (
    rule("Royal Clansmen")[You may upgrade one unit of Dwarf Warriors with heavy armour for +1.5 points/model for each King in your army.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Dwarfen pistol +5 points
  - Dwarfen crossbow +7 points
  - Dwarfen handgun +7 points
- May choose one of the following:
  - Medium armour +18 points
  - Heavy armour +27 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Oathstone +25 points
  - Shieldbearers (King only) +25 points
- One Thane may carry the Battle Standard +25 points
- A Thane may take Magic Items and/or Runic Items up to a total of 50 points
- A King may take Magic Items and/or Runic Items up to a total of 100 points
  ],
)

#unit("RUNESMITHS",
  profiles: (
    (name: "Runelord", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 9, points: 150),
    (name: "Runesmith", m: 3, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 90),
  ),
  troop-type: "Infantry (Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ancestral Grudge, Gromril Armour, Magic Resistance (2), Relentless, Resolute",
  special-rules-body: [
- *Forgefire*: Models with this special rule and any unit they join gain the Armour Piercing (1) special rule.
- *Rune Lore:* Runelords follow the rules for Level 4 Wizards for the purposes of channelling dispel dice and dispelling. Runesmiths follow the rules for Level 2 Wizards for the purposes of channelling dispel dice and dispelling.

In addition, a model with this special rule has the four Runes listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the Rune is struck and takes immediate effect. A unit can only be under the effect of one Rune at a time. - *Rune of Haste & Urgency:* The model and their unit gain +1 Movement and the Swiftstride special rule until the start of your next turn. - *Rune of Hearth & Hold:* The model and their unit gain the Stubborn special rule until the start of your next turn. - *Rune of Stone & Steel:* The model and their unit gain a 6+ armour until the start of your next turn. - *Rune of Wrath & Ruin:* All enemy units in base contact with the model suffer 2D6 Strength 4 hits.
  ],
  options: [
- May take a great weapon +10 points
- May choose one of the following:
  - Light armour +9 points
  - Medium armour +18 points
  - Heavy armour +27 points
- May take a shield +5 points
- May be mounted on an Anvil of Doom (Runelord only) +120 points
- A Runesmith may take Magic Items and/or Runic Items up to a total of 50 points
- A Runelord may take Magic Items and/or Runic Items up to a total of 100 points
  ],
)

#unit("SLAYERS OF LEGEND",
  profiles: (
    (name: "Daemon Slayer", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 5, a: 4, ld: 10, points: 140),
    (name: "Dragon Slayer", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 10, points: 70),
  ),
  troop-type: "Infantry (Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ancestral Grudge, Daemon Slayer (Daemon Slayer only), Deathblow, Dragon Slayer, Magic",
  special-rules-body: [
*Resistance (1), Relentless, Unbreakable*
  ],
  upgrades: (
    rule("Beast Slayer")[Each wound inflicted by the model counts double towards that round's Combat Resolution (excluding Wounds from Overkill in a challenge).],
    rule("Killing Blow")[The model gains the Killing Blow special rule.],
    rule("Skaven Slayer")[The model gains a number of Attacks equal to the number of enemy models in base contact with him.],
    rule("Vampire Slayer")[The model may re-roll failed rolls To Wound against enemies with Toughness 5 or higher.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Killing Blow +15 points
  - Vampire Slayer +15 points
  - Beast Slayer +25 points
  - Skaven Slayer +25 points
- May have Wards of Grimnir +20 points
- A Dragon Slayer may take Magic Items and/or Runic Items up to a total of 50 points
- A Daemon Slayer may take Magic Items and/or Runic Items up to a total of 100 points
  ],
  notes: [
- For each Daemon Slayer in your army, you may take one unit of Troll Slayers as a Core Unit.
  ],
)

#unit("BREWMASTER",
  profiles: (
    (name: "Brewmaster", m: 3, ws: 4, bs: 4, s: 4, t: 5, w: 2, i: 1, a: 2, ld: 9, points: 70),
  ),
  troop-type: "Infantry (Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Relentless, Resolute",
  special-rules-body: [
- *Beer Casks:* At the start of each of your turns, the Brewmaster can bestow one of the following beers to himself and the unit they are with. Roll a D6; on a 1, the Brewmaster and their unit suffer \-1 to their Weapon Skill, Ballistic Skill and Initiative in addition to the effect of the chosen beer. Each beer effect lasts until the start of your next turn. A unit can only be under the effect of one beer type at a time.
  - *Bugman's XXXXXX:* The unit gains the Mighty Blow (1) special rule.
  - *Dwarf Special Reserve:* The unit gains the Immunity (Psychology) special rule.
  - *Troll Brew:* The unit gains the Regeneration (6+) special rule.
  ],
  options: [
- May take a great weapon +10 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May be mounted on a Beer Cart +25 points
- May take Magic Items and/or Runic Items up to a total of 50 points
  ],
)

#unit("MASTER ENGINEER",
  profiles: (
    (name: "Master Engineer", m: 3, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 60),
  ),
  troop-type: "Infantry (Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Relentless, Resolute",
  special-rules-body: [
- *Artillery Master:* One war machine that is within 3" of a Master Engineer can use his Ballistic Skill or re-roll one artillery dice or scatter dice during each Shooting phase. This cannot be the artillery dice that determines the distance a cannonball bounces. You must nominate which weapon, if any, will be using this special rule at the start of each Shooting phase, before any such weapons within 3" of the Master Engineer are fired.
- *Entrenchment:* Up to one unit with the troop type war machine can be entrenched for each Master Engineer in the army. An entrenched war machine is treated as being in hard cover when shot at and any charging models suffer a \-1 To Hit modifier in close combat. An entrenched war machine can be pivoted to fire, but if it moves in any other way, the entrenchment is lost. If the war machine is destroyed, the entrenchment is considered destroyed as well. A war machine can only be entrenched once.
- *"Stand Back Sir!":* A model with this special rule that is within 3" of a war machine is allowed to take a "Look Out Sir!" roll just as if he was within 3" of a unit of five or more models of the same troop type as himself. If the roll is successful, the hit is resolved instead against the nearest friendly war machine.
  ],
  options: [
- May take a great weapon +10 points
- May choose any of the following:
  - Dwarfen pistol +5 points
  - Dwarfen brace of pistols +7 points
  - Dwarfen handgun +7 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take Magic Items and/or Runic Items up to a total of 50 points
  ],
)

= CHARACTER MOUNTS

#unit("SHIELDBEARERS",
  first: true,
  profiles: (
    (name: "Shieldbearers", m: 3, ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 2, ld: 9, points: "-"),
  ),
  troop-type: "Infantry (Dwarf)",
  base-size: "20x40, 25x50, 40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Ancestral Grudge, Inspiring Presence (6), Relentless, Resolute",
  options: [
- May take an additional shieldbearer +3 points
  ],
  notes: [
- Shieldbearers have a Unit Strength and Line of Sight value of 2. An additional shieldbearer adds +1 Attack and +1 Unit Strength.
  ],
)

#unit("BEER CART",
  profiles: (
    (name: "Beer Cart", m: 6, ws: "-", bs: "-", s: 4, t: 4, w: 3, i: "-", a: "-", ld: "-", points: "-"),
    (name: "Draft Pony", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Dwarf)",
  drawn-by: "Draft Pony (Equine)",
  base-size: "40x60 or 50x75",
  special-rules: "Relentless, Resolute",
  special-rules-body: (
    rule("Beer Cart")[A Beer Cart allows the Brewmaster's Beer Casks special rule to affect all friendly units within 6".],
  ),
)

#unit("ANVIL OF DOOM",
  profiles: (
    (name: "Anvil of Doom", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: "-"),
    (name: "Anvil Guard", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "War Machine",
  crew: "2 Anvil Guards (Dwarf)",
  base-size: "75x75 (Anvil of Doom) 20x20 or 25x25 (Anvil Guard)",
  equipment: "Hand weapon, heavy armour, shield",
  special-rules: "Ancestral Grudge, Relentless, Resolute",
  special-rules-body: [
- *Anvil of Doom:* A Runelord with an Anvil of Doom gains the Magical Ward (4+) and Unbreakable special rules. In addition, his troop type changes to War Machine and he counts as being part of the crew. The Runelord can never choose to leave the Anvil during the game. If the Runelord is killed, the whole Anvil is also removed as a casualty.
- *Locus of Power:* For each friendly Anvil of Doom on the battlefield at the start of any Magic phase, add one dice to your dispel pool.
- *Strike the Runes:* Instead of using the Runes from their Rune Lore special rule, a model mounted on an Anvil of Doom can use the following Ancestor Runes once each at the start of each of your turns:
  - *Ancestor Rune of Grungni:* Choose one friendly Dwarf unit within 24". Until the start of your next turn, the target gains the Fight in Extra Ranks (1) special rule and may re-roll failed rolls To Hit in close combat and with missile weapons.
  - *Ancestor Rune of Valaya:* Choose one friendly Dwarf unit within 24". The target regains D3+1 Wounds' worth of models slain earlier in the battle, just like a summoning spell.
  - *Ancestor Rune of Grimnir:* Choose one unengaged enemy unit within 24"; that unit suffer 2D6 Strength 4 hits.

Choose which rune you wish the model to strike. Then the model needs to take a Leadership test on their own unmodified Leadership. If passed, the Rune is struck and take immediate effect. If the Leadership test is failed, roll a D6 and consult the Failed Rune table below:

#chartlabel("FAILED RUNE TABLE")
#chart((("D6", "Result"), ("1", "Remove the Anvil of Doom, the Runelord and the Anvil Guards as casualties immediately."), ("2-3", "The rune does not take effect and the Anvil of Doom may not attempt to strike any further runes this
turn."), ("4-6", "The rune does not take effect.")))
  ],
)

= CORE UNITS

#unit("WARRIORS",
  first: true,
  profiles: (
    (name: "Warrior", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 7),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Relentless, Resolute",
  options: [
- Must choose at least one of the following:
  - Shields +1 point/model
  - Great weapons +3 points/model
- May upgrade one Warrior to a Leader +5 points
- May upgrade one Warrior to a Musician +5 points
- May upgrade one Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("QUARRELLERS",
  profiles: (
    (name: "Quarreller", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Dwarfen crossbow, light armour",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Relentless, Resolute",
  options: [
- May take great weapons +3 points/model
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Shields +1 point/model
- May take medium armour +1 point/model
- May upgrade one Quarreller to a Leader +5 points
- May upgrade one Quarreller to a Musician +5 points
- May upgrade one Quarreller to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("THUNDERERS",
  profiles: (
    (name: "Thunderer", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Dwarfen handgun, light armour",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Relentless, Resolute",
  options: [
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Shields +1 point/model
- May take medium armour +1 point/model
- May upgrade one Thunderer to a Leader +5 points
  - May replace Dwarfen handgun with brace of Dwarfen pistols free
- May upgrade one Thunderer to a Musician +5 points
- May upgrade one Thunderer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("MINERS",
  breakable: true,
  profiles: (
    (name: "Miner", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 11),
    (name: "Miner's Cart", m: 6, ws: "-", bs: "-", s: 4, t: 4, w: 3, i: "-", a: "-", ld: "-", points: ""),
    (name: "Draft Pony", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25 (Miner), 40x60 or 50x75 (Miner's Cart)",
  equipment: "Great weapon, medium armour",
  equipment-body: [
- *Blasting Charges:* One use only. Blasting charges have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "4", "Armour Piercing (1), Flaming Attacks, Quick Shot"))

- *Steam Drill:* Great weapon. Steam drills add +1 Strength. A Miner unit equipped with a steam drill can re-roll a failed arrival for its Ambushers special rule.
  ],
  special-rules: "Ancestral Grudge, Magic Resistance (1), Relentless, Resolute",
  special-rules-body: [
- *Underground Advance:* Miners have the Ambushers special rule, with the following exceptions.

When they enter the battle in the Remaining Moves sub-phase, they do not move onto the board as reinforcements in the normal way. Instead, when a unit of Miners enters the battle, place a small marker (no more than 1" in diameter) anywhere on the battlefield, but not in impassable terrain or within 1" of a deployed unit.

Roll a scatter dice and an artillery dice. If you roll a Hit on the scatter dice, the marker stays in place. If you roll an arrow, move the marker the number, in inches, indicated by the artillery dice in the direction shown. If the marker is under a friendly unit, impassable terrain or a building, place it 1" away from the closest edge of the unit/terrain.

Once the final position of the marker is established, place the emerging unit in a legal formation such that it touches the marker, facing any direction. If the marker is under an enemy unit, you may place your unit into base contact with the enemy unit in their front arc; your unit will counts as charging this turn.

If you roll a misfire, or if for any reason some of the models in the unit cannot be placed, then the unit does not emerge. Instead, remove the marker and roll on the Underground Mishap table. If a unit emerges successfully, it may act normally this turn.

If you have several units of Miners, then repeat this process, one unit at a time.

#chartlabel("UNDERGROUND MISHAP CHART")
#chart((("D6", "Result"), ("1-2", "Cave-in! The Miners are instantly killed."), ("3-5", "Partial Collapse. All models in the unit must pass a Strength test or be removed as casualties. Any
models that survive may not move or charge on the turn they emerge after a Partial Collapse. If the
models emerge into close combat they have the Always Strikes Last special rule for the remainder of
the turn."), ("6", "Should Have Taken That Left Turn. Your opponent places the marker anywhere within 18\" of the
original position on the table and this is where the Miners emerge. They cannot move or charge on
the turn they emerge.")))
  ],
  upgrades: (
    rule("Miner's Cart")[A Miner's Cart is a Shrine drawn by a Draft Pony. It may not choose to leave the unit. A unit with a Miner's Cart can use Blasting Charges every turn rather than just once. However, if the Miner's Cart is destroyed from a close combat or missile attack, place the centre of the large round template on top of it before removing it. All models under the template suffer a Strength 4 Hit with the Armour Piercing (1) and Flaming Attacks special rules.],
  ),
  options: [
- May take blasting charges +15 points
  - May take a Miner's Cart +20 points
- May upgrade one Miner to a Leader +5 points
  - May replace great weapon with steam drill +10 points
- May upgrade one Miner to a Musician +5 points
- May upgrade one Miner to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

= SPECIAL UNITS

#unit("LONGBEARDS",
  first: true,
  profiles: (
    (name: "Longbeard", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 14),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour",
  special-rules: "Ancestral Grudge, Hatred, Magic Resistance (1), Relentless, Resolute",
  special-rules-body: (
    rule("Old Grumblers")[Longbeards have the Immunity (Panic) special rule. In addition, any friendly Dwarf units within 6'' of a unit of Longbeards can re-roll failed Panic tests.],
  ),
  options: [
- Must choose at least one of the following:
  - Shields +1.5 point/model
  - Great weapons +3 points/model
- May upgrade one Longbeard to a Leader +5 points
- May upgrade one Longbeard to a Musician +5 points
- May upgrade one Longbeard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("IRONBREAKERS",
  profiles: (
    (name: "Ironbreaker", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 14),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour, shield",
  equipment-body: [
- *Cinderblast bombs:* Cinderblast bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "5", "Armour Piercing (1), Multiple Wounds (D3), Quick Shot"))

Each Hit from a cinderblast bomb is multiplied into D3 Hits.
  ],
  special-rules: "Ancestral Grudge, Gromril Armour, Magic Resistance (1), Relentless, Resolute",
  special-rules-body: (
    rule("Shieldwall")[Models with this special rule may re-roll failed Parry saves.],
  ),
  options: [
- May upgrade one Ironbreaker to a Leader +5 points
  - May take cinderblast bombs +5 points
- May upgrade one Ironbreaker to a Musician +5 points
- May upgrade one Ironbreaker to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("TROLL SLAYERS",
  profiles: (
    (name: "Troll Slayer", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 10, points: 8),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ancestral Grudge, Deathblow, Slayer, Magic Resistance (1), Relentless, Unbreakable, Vanguard",
  options: [
- May choose any of the following:
  - Additional hand weapons +1 point/model
  - Great weapons +3 points/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Troll Slayer to a Leader +5 points
- May upgrade one Troll Slayer to a Musician +5 points
- May upgrade one Troll Slayer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("RANGERS",
  profiles: (
    (name: "Ranger", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 7),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  special-rules: "Ancestral Grudge, Hill Strider, Magic Resistance (1), Relentless, Resolute, Scouts",
  options: [
- May choose any of the following:
  - Throwing axes +2 points/model
  - Dwarfen crossbows +3 points/model
  - Great weapons +3 points/model
- May take shields +1 point/model
- May take medium armour +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Ranger to a Leader +5 points
- May upgrade one Ranger to a Musician +5 points
- May upgrade one Ranger to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("DEATHROLLER",
  profiles: (
    (name: "Deathroller", m: "*", ws: "-", bs: "-", s: 5, t: 4, w: 3, i: "-", a: "-", ld: "-", points: 80),
    (name: "Driver", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "Chariot (Armour Save 5+)",
  crew: "1 Driver (Dwarf)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Random Movement (2D6), Resolute",
  special-rules-body: [
- *The Best Defence:* The Deathroller has an armour save of 3+ against all models attacking from the front.
- *Grinding Attack:* A Deathroller is moved during combat to crush the enemies trying to dodge the heavy machine. In addition to its normal Impact Hits when charging, the Deathroller inflicts D6 Impact Hits at the start of each close combat round. If you roll a 6 when determining the number of Impact Hits, the driver has pushed the boiler beyond his limits. Roll a D6 and consult the Boiler Incident Table.
- *Over-Pressured Boiler:* If two or more l's are rolled when rolling for its movement, you need to roll another D6 and consult the Boiler Incident Table. The driver can take the risk and increase the pressure of the steam boiler before choosing to move the Deathroller. This gives the Deathroller the Random Movement (3D6) special rule for the rest of this turn.

#chartlabel("BOILER INCIDENT TABLE")
#chart((("D6", "Result:"), ("1", "Remove the Deathroller as a casualty. All units in base contact with the Deathroller suffer D6
Strength 4 Hits with the Armour Piercing special rule."), ("2-4", "The Deathroller may not move this turn or use its Grinding Attack. If it breaks from combat this
round, it is automatically destroyed."), ("5-6", "The Deathroller may only roll one D6 for each of its Movements this turn (including fleeing and
pursuit).")))
  ],
)

#unit("FIRE THROWER",
  profiles: (
    (name: "Fire Thrower", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 45),
  ),
  troop-type: "Infantry (Dwarf)",
  base-size: "20x40 or 25x50",
  equipment: "Hand weapon, fire thrower, light armour",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Relentless, Resolute, Weapon Team",
  options: [
- May take medium armour +2 points
  ],
  notes: [
- Firethrowers have a Unit Strength of 2.
  ],
)

#unit("BOLT THROWER",
  profiles: (
    (name: "Bolt Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 45),
    (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Dwarf)",
  base-size: "50x50 (Bolt Thrower), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, bolt thrower",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Resolute",
  options: [
- May take light armour +1 point/crew
- May take engineering runes up to 50 points
  ],
)

#unit("GRUDGE THROWER",
  profiles: (
    (name: "Grudge Thrower", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 90),
    (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Dwarf)",
  base-size: "50x75 (Grudge Thrower), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, stone thrower",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Resolute",
  options: [
- May take light armour +1 point/crew
- May take engineering runes up to 50 points
  ],
)

#unit("CANNON",
  profiles: (
    (name: "Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 90),
    (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Dwarf)",
  base-size: "50x50 (Cannon), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, cannon",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Resolute",
  options: [
- May take light armour +1 point/crew
- May take engineering runes up to 50 points
  ],
)

#unit("GYROCOPTER",
  profiles: (
    (name: "Gyrocopter", m: "-", ws: "-", bs: "-", s: 4, t: 5, w: 3, i: "-", a: "-", ld: "-", points: 85),
    (name: "Pilot", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "Chariot (Armour Save 4+)",
  crew: "1 Pilot (Dwarf)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon, steam gun",
  equipment-body: [
- *Steam Gun:* Steam guns are Breath Weapon attacks with Strength 2 and the Armour Piercing (1) special rule. It cannot be used in close combat, but it can always be used in the shooting phase.
- *Brimstone Gun:* Brimstone guns have the following profile. These are non-physical attacks.

#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "5", "Flaming Attacks, March & Shoot, Multiple Shots (3), Quick Shot, Rapid Fire"))

- *Clattergun:* Clatterguns have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "4", "March & Shoot, Multiple Shots (5), Quick Shot, Rapid Fire"))
  ],
  special-rules: "Ancestral Grudge, Fly (9), Magic Resistance (1), Relentless, Resolute",
  special-rules-body: [
- *Dive Bomb:* Once per game, during the Remaining Moves sub-phase, models with this special rule may drop bombs unless they are fleeing.

To Dive Bomb, select one unengaged enemy unit that the Gyrocopter moved over in that turn. To determine the damage caused by the bombs, roll an artillery dice; this is the number of hits inflicted as missile attacks from the rear. If a misfire is rolled, the Gyrocopter takes a single Wound with no armour save allowed. The Gyrocopter's bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "3", "Armour Piercing (1)"))

If a Gyrocopter Dive Bombs, it cannot make any other shooting attacks in that turn.

- *Quick Turn:* A model with this special rule may pivot on the spot like a Lone Model despite being a chariot.
  ],
  options: [
- May replace steam gun with one of the following:
  - Brimstone gun free
  - Clattergun free
  ],
)

= RARE UNITS

#unit("HAMMERERS",
  first: true,
  profiles: (
    (name: "Hammerer", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 2, ld: 9, points: 18),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, heavy armour",
  special-rules: "Ancestral Grudge, Armour Piercing (1), Magic Resistance (1), Relentless, Resolute, Stubborn",
  special-rules-body: (
    rule("King's Guard")[If the unit is joined by the Army General, it gains the Immunity (Fear/Terror) special rule.],
  ),
  options: [
- May take shields +1.5 points/model
- May upgrade one Hammerer to a Leader +5 points
- May upgrade one Hammerer to a Musician +5 points
- May upgrade one Hammerer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points
  ],
)

#unit("IRONDRAKES",
  profiles: (
    (name: "Irondrake", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 15),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, drakegun, heavy armour",
  equipment-body: [
- *Drakegun:* Drakeguns have the following profile. These are non-physical attacks.

#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "5", "Armour Piercing (1), Flaming Attacks, Multiple Shots (2), Quick Shot"))

- *Brace of Drakefire Pistols:* Drakefire pistols have the following profile. These are non-physical attacks.

#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "5", "Armour Piercing (1), Flaming Attacks, Quick Shot"))

- *Trollhammer Torpedo:* Trollhammer Torpedoes have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "8", "Flaming Attacks, Multiple Wounds (D3), Slow to Fire"))
  ],
  special-rules: "Ancestral Grudge, Immunity (Flaming Attacks), Gromril Armour, Magic Resistance (1), Relentless, Resolute",
  options: [
- May upgrade one Irondrake to a Leader +5 points
  - May take cinderblast bombs (see Ironbreakers) +5 points
  - May replace drakegun with one of the following:
- Brace of drakefire pistols free
- Trollhammer torpedo +15 points
- May upgrade one Irondrake to a Musician +5 points
- May upgrade one Irondrake to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("GIANT SLAYERS",
  profiles: (
    (name: "Giant Slayer", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 2, ld: 10, points: 13),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ancestral Grudge, Deathblow, Giant Slayer, Magic Resistance (1), Relentless, Unbreakable, Vanguard",
  options: [
- May choose any of the following:
  - Additional hand weapons +1 point/model
  - Great weapons +3 points/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Giant Slayer to a Leader +5 points
- May upgrade one Giant Slayer to a Musician +5 points
- May upgrade one Giant Slayer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("DOOMSEEKERS",
  profiles: (
    (name: "Doomseeker", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 3, a: "*", ld: 10, points: 35),
  ),
  unit-size: "3-6",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Doomseeker axes",
  equipment-body: [
- *Doomseeker axes:* Doomseeker axes have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Impact Hits (D6)"))

Doomseeker axes inflicts Impact Hits (D6) at the start of each round of close combat, not just when charging. In addition, any close combat attacks directed against a Doomseeker suffer \-1 To Hit.
  ],
  special-rules: "Ancestral Grudge, Deathblow, Magic Resistance (1), Slayer, Relentless, Skirmishers, Unbreakable, Wards of Grimnir",
)

#unit("RUNE GUARDIANS",
  profiles: (
    (name: "Rune Guardian", m: 6, ws: 3, bs: 0, s: 5, t: 5, w: 3, i: 1, a: 3, ld: 10, points: 50),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Animated Construct)",
  base-size: "40x40",
  equipment: "Hand weapon, heavy armour",
  special-rules: "Animated Construct, Immunity (Poisoned Attacks)",
  upgrades: (
    rule("Rune of Cleaving")[The Rune Guardian gains the Armour Piercing (1) and Magical Attacks special rule.],
    rule("Rune of Fury")[The Rune Guardian gains +1 Attack and the Magical Attacks special rule.],
    rule("Rune of Striking")[The Rune Guardian gains +1 Weapon Skill and the Magical Attacks special rule.],
    rule("Rune of Stone")[The Rune Guardian gains +1 to its armour save.],
    rule("Rune of Warding")[The Rune Guardian gains the Magical Ward (6+) special rule.],
  ),
  options: [
- Must choose one of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +9 points/model
- May choose up to two of the following:
  - Rune of Cleaving +3 points/model
  - Rune of Warding +3 points/model
  - Rune of Fury +5 points/model
  - Rune of Striking +5 points/model
  - Rune of Stone +6 points/model
  ],
)

#unit("ORGAN GUN",
  profiles: (
    (name: "Organ Gun", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Dwarf)",
  base-size: "50x50 (Organ Gun), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, organ gun",
  special-rules: "Ancestral Grudge, Magic Resistance (1), Resolute",
  options: [
- May take light armour +1 point/crew
- May take engineering runes up to 50 points
  ],
)

#unit("FLAME CANNON",
  profiles: (
    (name: "Flame Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 100),
    (name: "Crew", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Dwarf)",
  base-size: "50x75 (Flame Cannon), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, flame cannon",
  equipment-body: [
- *Flame Cannon:* Flame Cannons are fire throwers that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "5", "Flaming Attacks, Multiple Wounds (D3)"))
  ],
  special-rules: "Ancestral Grudge, Magic Resistance (1), Resolute",
  options: [
- May take light armour +1 point/crew
- May take engineering runes up to 50 points
  ],
)

#unit("GYROBOMBER",
  profiles: (
    (name: "Gyrocopter", m: "-", ws: "-", bs: "-", s: 4, t: 5, w: 3, i: "-", a: "-", ld: "-", points: 140),
    (name: "Pilot", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "Chariot (Armour Save 4+)",
  crew: "1 Pilot (Dwarf)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon, steam gun (see Gyrocopters)",
  special-rules: "Ancestral Grudge, Fly (9), Magic Resistance (1), Relentless, Resolute",
  special-rules-body: [
- *Bombing Run:* During the Remaining Moves sub-phase, models with this special rule may drop a bomb unless they are fleeing or have declared a charge that turn. To make a Bombing Run, select one unengaged enemy unit that the Gyrobomber moved over in that turn and place the large 5" template anywhere over the target unit (but note that it cannot cover friendly models) and roll for scatter and damage as for a stone thrower from the Warhammer rulebook. If a misfire is rolled, use the Bomb Misfire chart below. Grudgebuster bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "3(6)", "Armour Piercing (1), Multiple Wounds (D3)"))

After resolving the damage caused by a Grudgebuster bomb, roll a D6. On a 4+, the bomb scatters D6" from where it first landed (a Hit! result remains in place). Place the small round (3") template on the new location and resolve damage using the profile above. It cannot bounce a third time.

#chartlabel("BOMB MISFIRE TABLE")
#chart((("D6", "Result"), ("1", "Premature Detonation: The Gyrobomber suffers a Strength 6 hit with the Multiple Wounds (D3)
special rule."), ("2-3", "Jammed Release: Centre the 3\" template over the Gyrobomber before scattering it and resolving
damage as normal. This bomb does not bounce."), ("4-6", "Dud: Only the model under the template's central hole is hit, suffering a single Strength 4 hit.")))

- *Quick Turn:* A model with this special rule may pivot on the spot like a Lone Model despite being a chariot.
  ],
  options: [
- May replace steam gun with one of the following:
  - Brimstone gun (see Gyrocopters) free
  - Clattergun (see Gyrocopters) free
  ],
)

#unit("THUNDERBARGE",
  profiles: (
    (name: "Thunderbarge", m: "-", ws: "-", bs: "-", s: 6, t: 6, w: 8, i: "-", a: "-", ld: "-", points: 275),
    (name: "Crew", m: "-", ws: 4, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "Chariot (Armour Save 4+)",
  crew: "6 Crew (Dwarf)",
  base-size: "50x100, 60x100 or 100x150",
  equipment: "Hand weapon, Dwarfen handgun",
  special-rules: "Ancestral Grudge, Bombing Run (see Gyrobombers), Fly (6), Magic Resistance (1), Unbreakable",
  special-rules-body: [
- *Disaster!* If the Thunderbarge is destroyed it scatters 3D6" in a random direction and then crashes to the ground. Place the large template with the hole under its final position. Any model touched by the template suffers a Strength 6 hit.
- *Thunderbarge Cannon:* The Thunderbarge is armed with a cannon, which cannot fire grapeshot. The cannon can be fired even if the Thunderbarge marches. If the cannon misfires and rolls a "Destroyed!" result, then the Thunderbarge suffers D3 Wounds with no saves allowed, and the weapon may no longer be used for the remainder of the game. Other misfires are resolved as normal.
  ],
  notes: [
- A Thunderbarge has a Line of Sight value of 5.
  ],
)

#unit("GRUDGEBREAKER",
  profiles: (
    (name: "Grudgebreaker", m: "*", ws: 3, bs: 0, s: 6, t: 7, w: 8, i: 1, a: "*", ld: 10, points: 200),
  ),
  troop-type: "Chariot (Armour Save 2+)",
  base-size: "50x50, 50x75 or 50x100",
  special-rules: "Animated Construct, Immunity (Poisoned Attacks), Magic Resistance (1), Terror",
  special-rules-body: [
- *Steam-pressured Engine:* The Grudgebreaker follows the rules for Random Movement and Random Attacks. In order to determine the Movement and Attacks value of the Grudgebreaker, roll an Artillery dice rather than a set of D6's (roll separately for Movement and Attacks). Whenever you attempt to move or attack with the Grudgebreaker you may re-roll the Artillery dice if it didn't score a Misfire. If a Misfire is rolled, roll a D6 and consult the Grudgebreaker Incident Table. If a Misfire results on the re-roll it automatically causes a Clunk result.

#chartlabel("GRUDGEBREAKER INCIDENT TABLE")
#chart((("D6", "Result"), ("1", "Catastrophe! The Grudgebreaker does not Move or Attack this turn, and suffers D6 Wounds with no
saves allowed."), ("2-3", "Malfunction: The Grudgebreaker does not Move or Attack this turn."), ("4-5", "Clunk: The Grudgebreaker counts as having rolled a 1 for its Movement or Attacks value this turn."), ("6", "Overdrive: The Grudgebreaker counts as having rolled a 10 for its Movement or Attack value this
turn. However, the Grudgebreaker also suffers D3 Wounds with no saves allowed after it has
performed its Movement or Attacks.")))
  ],
  notes: [
- A Grudgebreaker has a Line of Sight value of 5.
  ],
)

= SPECIAL CHARACTERS

#unit("THORGRIM GRUDGEBEARER",
  solo: true,
  first: true,
  subtitle: "High King of Karaz-a-Karak",
  profiles: (
    (name: "Thorgrim", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 7, i: 4, a: 4, ld: 10, points: 500),
    (name: "Thronebearers", m: 3, ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 3, a: 4, ld: "-", points: ""),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  mount: "Thronebearers",
  base-size: "40x60 or 50x75",
  magic-items: (
    rule("The Axe of Grimnir")[Magic Weapon. The Axe of Grimnir is inscribed with the Master Rune of Skalf Blackhammer and the Master Rune of Alaric the Mad. In addition, Wounds caused by the Axe of Grimnir have the Multiple Wounds (D6) special rule against Monsters.],
    rule("The Armour of Skaldour")[Magic Armour. Heavy armour. The Armour of Skaldour is inscribed with the Master Rune of Skaldour which gives Thorgrim the Magical Ward (4+) special rule, a Rune of Preservation and a Rune of Stone.],
    rule("The Dragon Crown of Karaz")[Talisman. The Dragon Crown of Karaz is inscribed with the Master Rune of Kingship.],
    rule("The Great Book of Grudges")[Enchanted Item. Thorgrim and any unit he joins gain the Hatred special rule.],
  ),
  special-rules: "Ancestral Grudge, Gromril Armour, Magic Resistance (1), Relentless, Resolute, Royal",
  special-rules-body: [
*Clansmen* (see Kings)

- *High King:* Thorgrim must be the Army General. If he is slain, all friendly Dwarf models immediately gain the Frenzy special rule. In addition, one unit of Hammerers may be taken as a Special Unit instead of a Rare Unit.
- *The Throne of Power:* The Throne of Power adds +4 to Thorgrim's Wounds (included in his profile), gives him Unit Strength 5 and Line of Sight 2. In addition, the Throne gives Thorgrim the Inspiring Presence (6) special rule. However, if Thorgrim joins a unit, he does not benefit from the "Look Out Sir!" rule.
  ],
)

#unit("ALRIK RANULFSSON",
  solo: true,
  subtitle: "King of Karak Hirn",
  profiles: (
    (name: "Alrik Ranulfsson", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 345),
    (name: "Shieldbearers", m: 3, ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 2, ld: 9, points: ""),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  mount: "Shieldbearers",
  base-size: "20x40 or 25x50",
  magic-items: (
    rule("Axe of Retribution")[Magic Weapon. Great weapon. The Axe of Retribution is inscribed with a Master Rune of Breaking and a Grudge Rune.],
    rule("Hrappi-klad")[Magic Armour. Heavy armour. Hrappi-klad is inscribed with a Rune of Shielding.],
    rule("Kurgaz's Shield")[Talisman. Kurgaz's Shield is inscribed with two Runes of Warding.],
    rule("Helm of Eagles")[Enchanted Item. At the start of each of your turns, Alrik may gaze at one enemy unit within his Line of Sight. Your opponent must reveal any hidden troops within the unit (such as Assassins or Night Goblin Fanatics) as well as all magic items carried by models within the unit.],
    rule("Karak-Hirn's Book of Grudges")[Enchanted Item. This book gives Alrik the Hold Your Ground (12) special rule.],
  ),
  special-rules: "Ancestral Grudge, Gromril Armour, Inspiring Presence (6), Magic Resistance (1), Resolute, Relentless, Royal Clansmen (see Kings)",
  special-rules-body: (
    rule("Lord of the Hold")[If Alrik is included in your army, he must be your Army General.],
    rule("Traditional army")[If Alrik is in your army, then Thunderers counts as Special Units, Firethrowers and Gyrocopters counts as Rare Units, and Irondrakes, Flame Cannons, Organ Guns, Thunderbarges and Grudgebreakers counts as 2 units for the purpose of duplicate choices that are allowed.],
  ),
)

#unit("KAZADOR THUNDERHORN",
  solo: true,
  subtitle: "King of Karak Azul",
  profiles: (
    (name: "Kazador", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 280),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("The Hammer of Karak Azul")[Magic Weapon. The Hammer of Karak Azul is inscribed with the Master Rune of Death and two Runes of Cleaving.],
    rule("The Armour of the King of Karak Azul")[Magic Armour. Medium armour. The Armour of the King of Karak Azul is inscribed with one Rune of Fortitude and a Rune of Resistance.],
    rule("The Thunderhorn")[Enchanted Item. One use only. The Horn may be blown at the start of any enemy turn. All enemy units within 24" of Kazador must pass a Leadership test to able to declare charges this turn.],
  ),
  special-rules: "Ancestral Grudge, Gromril Armour, Magic Resistance (1), Resolute, Relentless, Royal",
  special-rules-body: [
*Clansmen* (see Kings)
  ],
)

#unit("BELEGAR IRONHAMMER",
  solo: true,
  subtitle: "True King of the Eight Peaks",
  profiles: (
    (name: "Belegar Ironhammer", m: 3, ws: 8, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 290),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic-items: (
    rule("The Hammer of Angrund")[Magic Weapon. The Hammer of Angrund is inscribed with the Master Rune of Swiftness, and Attacks made with it receive a +1 bonus To Wound.],
    rule("Shield of Defiance")[Magic Armour. Shield. The Shield of Defiance is inscribed with three Runes of Warding and a Rune of Preservation.],
  ),
  special-rules: "Ancestral Grudge, Gromril Armour, Magic Resistance (1), Relentless, Royal Clansmen (see",
  special-rules-body: [
Kings)*, Stubborn*

- *Revenge Incarnate:* Once per game, at the start of any Close Combat phase, Belegar can double his Attacks characteristic for the remainder of the turn.
  ],
)

#unit("THOREK IRONBROW",
  solo: true,
  subtitle: "Master Runelord of Karak Azul",
  profiles: (
    (name: "Thorek Ironbrow", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 10, points: 310),
    (name: "Anvil of Doom", m: "-", ws: "-", bs: "-", s: "-", t: 10, w: "-", i: "-", a: "-", ld: "-", points: ""),
    (name: "Anvil Guard", m: 3, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
    (name: "Kraggi", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: ""),
  ),
  troop-type: "War Machine (Special Character)",
  mount: "Anvil of Doom",
  crew: "Thorek Ironbrow, 2 Anvil Guards, Kraggi (Dwarf)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Klad Brakak")[Magic Weapon. Attacks made with this weapon have the Ignores Armour saves special rule. Additionally, if the victim suffers one or more unsaved Wounds, any Magic Armour they were equipped with are destroyed and cannot be used for the remainder of the game.],
    rule("Thorek's Rune Armour")[Magic Armour. Heavy armour. Thorek’s Rune Armour is inscribed with the Master Rune of Gromril.],
  ),
  special-rules: "Ancestral Grudge, Anvil of Doom (see Anvil of Doom), Forgefire (see Runelords), Locus of Power (see Anvil of Doom), Magic Resistance (2), Rune Lore (see Runelords), Strike the Runes (see Anvil of Doom)",
  special-rules-body: [
- *Kraggi, Assistant at the Forge:* Kraggi's forge is represented on the tabletop by a separate miniature that always remains as close as possible to Thorek’s Anvil of Doom. The forge itself plays no part in the game; if it gets in the way, simply move it to one side.

Thorek can re-roll a single dice on a failed attempt to Strike the Runes. If this re-rolled dice rolls a 1, Kraggi has done something wrong and Thorek takes a Strength 10 hit. Kraggi is then removed from play and the Kraggi, Assistant at the Forge special rule cannot be used again for the rest of the game.

- *Master of Ancient Lore:* Thorek may roll an additional dice for his Leadership tests when attempting to Strike the Runes and discard the highest result. In addition, he knows the following Rune:
  - *Rune of Doom:* Until the start of the next friendly Magic phase, all friendly Dwarf units within 18" gain the Fear special rule.
  ],
)

#unit("GROMBRINDAL",
  solo: true,
  subtitle: "The White Dwarf",
  profiles: (
    (name: "Grombrindal", m: 3, ws: 7, bs: 4, s: 4, t: 5, w: 3, i: 4, a: 4, ld: 10, points: 450),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Rune Axe of Grimnir")[Magic Weapon. This weapon gives Grombrindal +2 Strength and allows him to re-roll any failed rolls To Hit and any failed rolls To Wound. In addition, models wounded by the Rune Axe of Grimnir must re-roll any successful armour saves.],
    rule("Armour of Glimril Scales")[Magic Armour. The Armour of Glimril Scales gives the White Dwarf a 2+ armour save and the Magical Ward (4+) special rule.],
    rule("Rune Cloak of Valaya")[Talisman. The Rune Cloak gives the White Dwarf the Magic Resistance (3) special rule.],
    rule("Rune Helm of Zhufbar")[Enchanted Item. Any friendly fleeing unit of Dwarfs will pass Rally tests automatically if they are attempting to rally within 12" of Grombrindal.],
  ),
  special-rules: "Ancestral Grudge, Magic Resistance (1), Relentless",
  special-rules-body: (
    rule("Disguised")[The White Dwarf has the Hidden special rule. However, if the unit he is Hidden in is wiped out or flees then the White Dwarf will be revealed, and will stand his ground even though the rest of the unit may be fleeing or slain. Place the model in the middle of the front rank of the unit, then move/remove the rest of the unit as normal. The White Dwarf will then operate as a lone character as normal. The White Dwarf may never be the army's General, but units he joins may still use his Leadership once he is no longer Hidden.],
    rule("Grombrindal has no Fear!")[Grombrindal is Unbreakable. If his unit flees for any reason he will always stand his ground. If the unit was engaged in combat, he will continue to fight while his unit flees, denying the foe the chance to pursue. Grombrindal can even join a unit that does not have the Unbreakable special rule – this is an exception to the normal Unbreakable rules.],
  ),
)

#unit("UNGRIM IRONFIST",
  solo: true,
  subtitle: "Last Slayer King of Karak Kadrin",
  profiles: (
    (name: "Ungrim Ironfist", m: 3, ws: 8, bs: 4, s: 4, t: 5, w: 3, i: 5, a: 4, ld: 10, points: 325),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Medium armour",
  magic-items: (
    rule("Axe of Dargo")[Magic Weapon. Great weapon. The Axe of Dargo is inscribed with the Master Rune of Smiting.],
    rule("The Slayer Crown")[Magic Armour. The Slayer Crown is inscribed with a Rune of Fortitude and a Rune of Stone.],
    rule("Dragon Cloak of Fyrskar")[Talisman. The Dragon Cloak of Fyrskar is inscribed with three Runes of Warding and a Rune of the Furnace.],
  ),
  special-rules: "Ancestral Grudge, Daemon Slayer, Deathblow, Gromril Armour, Magic Resistance (1), Relentless, Unbreakable",
  special-rules-body: (
    rule("Slayer King")[If Ungrim is the Army General, Troll Slayers are taken as Core units rather than Special units, and Giant Slayers are taken as Special units rather than Rare units.],
    rule("Brotherhood of Grimnir")[If Ungrim is included in your army, one unit of Troll Slayers or Giant Slayers may be upgraded to the Brotherhood of Grimnir for +1 point per model. These Slayers have the Wards of Grimnir special rule.],
  ),
)

#unit("GARAGRIM IRONFIST",
  solo: true,
  subtitle: "War-mourner of Karak Kadrin",
  profiles: (
    (name: "Garagrim Ironfist", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 10, points: 185),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Axes of Kadrin")[Magic Weapon. Two hand weapons. The Axes of Kadrin are inscribed with the Master Rune of Skalf Blackhammer and a Grudge Rune. In addition, when Garagrim charges, he causes an Impact Hit on every model in base contact with him. These Impact Hits follow all the rules for his normal attacks.],
  ),
  special-rules: "Ancestral Grudge, Deathblow, Dragon Slayer, Magic Resistance (1), Relentless, Unbreakable",
  special-rules-body: (
    rule("The War-mourner")[Each Wound inflicted by Garagrim counts double towards that round's Combat Resolution. Against enemies with Toughness 5 or higher, Garagrim has the Multiple Wounds (D6) special rule. However, Garagrim may never be the Army General.],
  ),
)

#unit("JOSEF BUGMAN",
  solo: true,
  subtitle: "Mysterious Master Brewer",
  profiles: (
    (name: "Josef Bugman", m: 3, ws: 6, bs: 5, s: 4, t: 5, w: 2, i: 4, a: 3, ld: 9, points: 185),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Medium armour",
  magic-items: (
    rule("Ol' Trustworthy")[Magic Weapon. Ol' Trustworthy is inscribed with two Runes of Cleaving and a Rune of Fury.],
    rule("Bugman's Tankard")[Enchanted Item. Josef Bugman, or a single model in the same unit, can drink from Bugman’s Tankard at the start of any friendly turn. The imbiber immediately recovers 1 Wound lost previously during the battle.],
  ),
  special-rules: "Ancestral Grudge, Gromril Armour, Magic Resistance (1), Relentless, Resolute, Scouts",
  special-rules-body: [
- *Bugman's Rangers:* Josef Bugman must be accompanied by a unit of Rangers chosen from the army list at a cost of 17 points per model. This unit has Strength 4 and are equipped with great weapons, Dwarfen crossbows, medium armour and shields. Josef Bugman may never choose to leave this unit.
- *Liquid Fortification:* As long as Bugman is alive, roll a D6 at the start of each of your turns and consult the following chart to see what effects his draughts have upon himself and any unit he has currently joined:

#chart((("D6", "Result"), ("1", "Bad Brew: The unit gains the Flammable special rule until the start of the next friendly turn."), ("2-4", "Belligerent: The unit gains the Stubborn special rule until the start of the next friendly turn."), ("5-6", "Leathered: Each member of the unit gains +1 Toughness until the start of the next friendly turn.")))

- *Stout Courage:* Bugman and any unit he joins have the Immunity (Fear/Terror) special rule as long as he remains with the unit.
  ],
  options: [
- May take a Dwarfen crossbow +7 points
  ],
)

#unit("BURLOK DAMMINSON",
  solo: true,
  subtitle: "Engineer Guildmaster",
  profiles: (
    (name: "Burlok Damminson", m: 3, ws: 5, bs: 4, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 120),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Furnace Hammer")[Magic weapon. Burlok's Hammer is inscribed with the Master Rune of Swiftness and a Rune of Fire.],
    rule("Burlok's Armour")[Magic Armour. Medium armour. Burlok’s armour is inscribed with a Rune of Warding.],
  ),
  upgrades: [
- *Burlok's Ingenious Offensive New-matic Integrated Constrictor Arm*: Burlok's artificial arm gives him +1 Attack with Strength 6 in close combat.
- *Range Finding Optics:* Burlok gains the Sniper special rule.
- *Rivet Gun:* The rivet gun has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("9/12\"", "5", "Dwarf-crafted, Quick Shot, Multiple Shots (3), Rapid Fire"))
  ],
  special-rules: "Ancestral Grudge, Artillery Master (see Master Engineers), Entrenchment (see Master",
  special-rules-body: [
Engineers)*, Magic Resistance (1), Relentless, Resolute, "Stand Back Sir!"* (see Master Engineers)
  ],
  options: [
- Must take one of the following:
  - Burlok's Ingenious Offensive New-matic Integrated Constrictor Arm free
  - Range Finding Optics & Rivet Gun +5 points
  ],
  order: ("troop-type", "base-size", "magic-items", "upgrades", "special-rules", "options"),
)

#unit("GRIMM BURLOKSSON",
  solo: true,
  subtitle: "Upstart Master Engineer",
  profiles: (
    (name: "Grimm Burloksson", m: 3, ws: 4, bs: 5, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 9, points: 95),
  ),
  troop-type: "Infantry (Special Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: [
- *Grudge-raker:* The Grudge-raker has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("15/30\"", "5", "Armour Piercing (1), Dwarf-crafted, Multiple Shots (2D3)"))

- *Cog Axe:* Hand weapon. This weapon has the Armour Piercing (1) special rule. If Grimm scores one or more hits in close combat against a model using a magic weapon, roll a D6; on a 5+, that weapon is immediately destroyed and cannot be used further in this game.
  ],
  special-rules: "Ancestral Grudge, Entrenchment (see Master Engineers), Magic Resistance (1), Relentless, Resolute, \"Stand Back Sir!\" (see Master Engineers)",
  special-rules-body: [
- *Master of Accuracy:* At the start of each friendly Shooting phase, Grimm can bestow one of the following rules on a single friendly unit within 3" for the duration of that Shooting phase, though he does not gain any bonuses for it himself.
  - *Artillery Adjustment:* A war machine can use Grimm’s Ballistic Skill or re-roll one artillery dice. This can be the dice that determines the distance a cannonball bounces or a Flame Cannon’s burst of flame moves.
  - *Increased Range:* The unit’s crossbows and handguns increase their maximum range by 6".
  - *Superior Volley:* Models in the unit get +1 to Hit.
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
