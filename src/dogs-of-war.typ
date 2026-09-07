// Dogs of War 3.1 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "dogs-of-war",
  army: "Dogs of War",
  version: "3.1",
  layout: "army",
  cover: "covers/dogs-of-war.png",
  align: "neutral",
)

#show: book.with(title: "Warhammer Armies Project — Dogs of War 3.1")

#cover(
  title: "Dogs of War",
  subtitle: "Warhammer Armies Project · 3.1",
  art: "/assets/covers/dogs-of-war.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Dogs of War*, version 3.1 — written and freely distributed by Mathias
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
This section of the book describes all the different units used in a Dogs of War army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Dogs of War units, and these are detailed here.

#namecost("BACKSTABBERS", "")

A unit with this special rule that successfully restrains from pursuing after breaking an enemy unit in close combat causes D6 Strength 3 hits on the fleeing unit for every complete rank the Hobgoblin unit has (up to a maximum of 3). Resolve any casualties before moving the fleeing unit.

#namecost("COWARDLY DESPOILERS", "")

Models with this special rule gain +1 To Hit in the first round of combat if they successfully charge an enemy in the rear or flank.

#namecost("CUNNING RETREAT", "")

When an enemy unit declares to fire at a unit with this special rule in their Shooting phase, it may choose to make a Feigned Flight move directly away from the enemy unit shooting at it. Once the unit has completed its move, the enemy unit may continue with its shooting as declared (provided they are still in range).

#namecost("DED SHOOTY", "")

Mounted models with this special rule do not suffer penalties To Hit for Moving and Shooting and may Volley Fire even while moving.

#namecost("DUCK & WEAVE", "")

Enemies attacking Infantry models with this special rule suffer \-1 To Hit in close combat.

#namecost("ELVEN GRACE", "")

Models with this special rule have the Dodge (6+) special rule in close combat. However, this cannot be used against enemies that attack before the model with Elven Grace.

#namecost("MERCENARIES", "")

Every time a unit with this special rule fails a Break test, roll on the Mercenary Loyalty table below and apply the results. This rule has no effect on a unit that is joined by the Army General or Paymaster.

#chart((("D6", "Result"), ("1-3", "Wavering Loyalty: The unit flees as normal,
and all models in the unit suffer a -1 modifier
to their Leadership for the rest of the battle."), ("4-5", "Soldier On: The unit flees as normal."), ("6", "Stand Fast! The unit has the Disciplined
special rule on their next Rally test.")))
#chartlabel("OGRE CHARGE")

The model has the Impact Hits (1) special rule. In addition, they add their current Rank Bonus to the Strength of the Impact Hits they inflict. In addition, they count as having one more rank than their actual number for the purpose of determining Steadfast in any turn that they charge.

#namecost("RACIAL DISTRUST", "")

Most models belong to a certain race as detailed in their Troop Type. This includes Human, Dwarf, Elf, Halfling, Ogre, Orc and Hobgoblin. Characters may only join units belonging to the same race. Only a Human character may be the Army General.

#namecost("RELENTLESS", "")

Units entirely composed of models with this special rule do not need to pass a Leadership test in order to march, regardless of the proximity of enemy units.

#namecost("RESOLUTE", "")

When taking Break tests, models with this special rule count as having lost the combat with 1 point fewer than they actually have.

#namecost("DWARFEN CROSSBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("30/36\"", "4", "Ponderous"))
#namecost("DWARFEN PISTOL", "")
#minitable(("Range", "Strength", "Special Rules"), ("9/12\"", "5", "Quick Shot"))
#namecost("ELVEN SHORTBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "3", "Armour Piercing (1), March & Shoot Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not marched. Cannot be used as a charge reaction._

#namecost("ELVEN LONGBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "3", "Armour Piercing (1), Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not moved. Cannot be used as a charge reaction._

#namecost("GUT-PLATE", "")

A model with a gut-plate gains a 6+ armour save against attacks to the front.

#namecost("IRONFIST", "")

Buckler. If a model with an ironfist rolls a natural 6 when making a Parry save, it automatically inflicts an extra Hit back onto the model or unit that struck the blow.

#namecost("OGRE PISTOLS", "")
#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Multiple Shots (2)*, Quick Shot"))

#note[_\*Requires a brace of Ogre pistols._]

#namecost("ORIENTAL LONGSWORD", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Parry (6+), Requires Two Hands"))

#note[_An Oriental Longsword gives the wielder +1 To Wound._]

#namecost("PAVISE", "")

A Pavise has the following armour profile:

#minitable(("Combat", "Missile", "Special Rules"), ("-", "+3/4+*", "-"))

#note[_\*Only applies to missile attacks in the front arc._]
]

#lore("LORE OF BATTLE MAGIC")[

#spell("VOLATILE WIZARDRY", "Lore Attribute")[Whenever a Wizard successfully casts a spell from this lore, they gain a +1 casting bonus for the remainder of the Magic phase. This bonus is cumulative. However, if they Miscast, they must add this casting bonus to the result rolled on the Miscast table.]

#spell("HAMMERHAND", "Signature Spell", cast: "5+")[_Hammerhand_ is a *direct damage* spell that causes 2D6 Strength 4 hits on one enemy unit in base contact with the caster.]

#spell("FLIGHT OF ZIMMERAN", 1, cast: "5+")[_Flight of Zimmeran_ is a *conveyance* spell with a range of 18". One friendly Character may immediately make a move using the Fly (10) special rule as if it were the Remaining Moves sub-phase.]

#spell("MAGICAL MIGHT", 1, cast: "5+")[_Magical Might_ is an *augment* spell with a range of 18". The target gains the Mighty Blow (1) special rule until the start of the caster's next Magic phase.]

#spell("CURSE OF COWARDLY FLIGHT", 1, cast: "6+")[_Curse of Cowardly Flight_ is a *hex* spell with a range of 18". The target must immediately take a Panic test with a \-1 Leadership modifier.]

#spell("DREAD OF ARAMAR", 1, cast: "6+")[_Dread of Aramar_ is a *hex aura* spell with a range of 12". The target units treat all enemy units in base contact as causing Fear until the start of the caster's next Magic phase.]

#spell("ARCANE URGENCY", 2, cast: "7+")[_Arcane Urgency_ is a *conveyance* spell with a range of 18". The target may immediately make a move as if it were the Remaining Moves sub-phase.]

#spell("DEATHLY SHARDS", 2, cast: "7+")[_Deathly Shards_ is a *magic missile* with a range of 24" that causes D6 Strength 4 Hits with the Armour Piercing (1) special rule.]

#spell("HANDS OF KARKORA", 2, cast: "7+")[_Hands of Karkora_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all close combat attacks targeting the unit will always Hit on a 3+ or better, and all models in the unit can only Hit on a 4+ or worse themselves.]

#spell("SWORD OF REZHEBEL", 2, cast: "7+")[Remains in Play. _Sword of Rezhebel_ is an *augment* spell with a range of 18" that can be cast on a friendly Character. While the spell is in effect, the model gains +1 To Hit, +2 Strength, +1 Attack as well as the Flaming Attacks and Magical Attacks special rules to their close combat attacks.]

#spell("ARROW STORM", 3, cast: "8+")[_Arrow Storm_ is an *augment* spell with a range of 18". The target gains the Multiple Shot (2) special rule until the start of the caster's next Magic phase. Weapons that already fire Multiple Shots instead fire an additional shot. This has no effect on Magic Items or artillery weapons.]

#spell("CRIMSON BANDS", 3, cast: "8+")[_Crimson Bands_ is a *hex* spell with a range of 24". All models in the target unit suffer a \-1 penalty to their Attacks until the start of the caster's next Magic phase.]

#spell("GLEAMING ARROW", 3, cast: "8+")[_Gleaming Arrow_ is a *magical missile* with a range of 24" that targets a single enemy model (even a character in a unit). The target suffers D3 Strength 4 Hits.]

#spell("MANACLE OF CALOE", 3, cast: "8+")[_Manacle of Caloe_ is a *hex* spell with a range of 24". The target unit has all its movement halved until the start of the caster's next Magic phase.]
]
= QUIRKS OF CHARACTER

#columns(2)[
*Models can spend points on Quirks of Character, as detailed in the army list. The points cost below refer to the cost for characters. Characters and units may take up to two Quirks of Characters each. Core Units with two Quirks count as Special Units, and Special Units with two Quirks count as Rare Units. One character and one unit may take the same Quirk of Character, but each Quirk may otherwise only be taken once unless specified.*

#namecost("GRIZZLED WARRIOR", "")
#namecost("Characters", "25 points")

Infantry or Cavalry only. All successful To Wound rolls against this model must be re-rolled.

#namecost("CHARISMATIC LEADER", "")
#namecost("Characters", "25 points")

Army General only. The model gains the Inspiring Presence (6) special rule.

#namecost("GREEDY", "")
#namecost("Characters", "20 points")

Army General only. All friendly models using the Paymaster's Hold Your Ground ability may choose to re-roll just one of the dice when taking Break or Panic tests.

#namecost("EAGLE EYE", "")
#namecost("Characters", "20 points")

Character only. The model gains the Sniper special rule.

#namecost("BEASTSLAYER", "")
#namecost("Characters", "15 points")
#namecost("Infantry/Cavalry 1 point per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Multiple Wounds (2) special rule.

#namecost("BLOOD FEUD", "")
#namecost("Characters", "15 points")
#namecost("Infantry/Cavalry 1 point per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model has the Hatred special rule.

#namecost("DEFIANT", "")
#namecost("Characters", "15 points")
#namecost("Infantry/Cavalry 1 point per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Stubborn special rule.

#namecost("EXECUTIONER", "")
#namecost("Characters", "15 points")
#namecost("Infantry/Cavalry 1 point per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Killing Blow special rule.

#namecost("FEARSOME REPUTATION", "")
#namecost("Characters", "15 points")
#namecost("Infantry 1 point per model", "")
#namecost("Cavalry 2 points per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Fear special rule.

#namecost("RANGER", "")
#namecost("Characters", "15 points")
#namecost("Infantry 1 point per model", "")

Character on foot and Skirmishers only. The model gains the Scouts special rule.

#namecost("TACTICIAN", "")
#namecost("Characters", "15 points")

One per army. You may add +1 to the result when determining who chooses which side of the table to deploy on.

#namecost("BERSERKER", "")
#namecost("Characters", "10 points")
#namecost("Infantry 1 point per model", "")
#namecost("Cavalry 2 points per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Frenzy special rule.

#namecost("BLADEMASTER", "")
#namecost("Characters", "10 points")
#namecost("Infantry/Cavalry 1 point per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Parry (6+) special rule.

#namecost("DIPLOMAT", "")
#namecost("Characters", "10 points")

Army General only. One unit of Dwarfs, Norse, Elves, Halflings, Ogres, Orcs or Hobgoblins may be taken as a Core Unit instead of a Special Unit, or as a Special Unit instead of a Rare Unit.

#namecost("HARD HITTER", "")
#namecost("Characters", "10 points")
#namecost("Infantry/Cavalry 1 point per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Mighty Blow (1) special rule.

#namecost("POISONER", "")
#namecost("Characters", "10 points")
#namecost("Infantry/Cavalry 1 point per model", "")

Character, Duellists, Hobgoblins or Elves only. The model gains the Poisoned Attacks special rule.

#namecost("BATTLE-EAGER", "")
#namecost("Characters", "5 points")
#namecost("Infantry 0.5 point per model", "")
#namecost("Cavalry 1 points per model", "")
#namecost("Monstrous Infantry 1.5 points per model", "")

The model gains the Vanguard special rule.

#namecost("DRILLED", "")
#namecost("Characters", "5 points")
#namecost("Infantry 0.5 point per model", "")
#namecost("Cavalry 1 points per model", "")
#namecost("Monstrous Infantry 1.5 points per model", "")

The model gains the Disciplined special rule.

#namecost("FEARLESS", "")
#namecost("Characters", "5 points")
#namecost("Infantry 1 point per model", "")
#namecost("Cavalry 2 points per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Immunity (Fear, Panic) special rule.

#namecost("FLEET-FOOTED", "")
#namecost("Characters", "5 points")
#namecost("Infantry/Cavalry 1 point per model", "")

The model gains the Swiftstride special rule.

#namecost("FURIOUS CHARGER", "")
#namecost("Characters", "5 points")
#namecost("Infantry 0.5 point per model", "")
#namecost("Cavalry 1 points per model", "")
#namecost("Monstrous Infantry 1.5 points per model", "")

The model gains the Devastating Charge special rule.

#namecost("MARKSMAN", "")
#namecost("Characters", "5 points")
#namecost("Infantry/Cavalry 0.5 point per model", "")
#namecost("Monstrous Infantry 1.5 points per model", "")

The model does not suffer penalties for shooting at long range.

#namecost("PRECISION STRIKER", "")
#namecost("Characters", "5 points")
#namecost("Infantry/Cavalry 1 point per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Armour Piercing (1) special rule.

#namecost("QUICK DRAW", "")
#namecost("Characters", "5 points")
#namecost("Infantry/Cavalry 1 point per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

The model gains the Rapid Fire special rule.

#namecost("RAIDER", "")
#namecost("Characters", "5 points")
#namecost("Infantry 1 point per model", "")

Skirmishers and Fast Cavalry only. The model gains the Ambushers special rule.

#namecost("STEADY AIM", "")
#namecost("Characters", "5 points")
#namecost("Infantry 0.5 point per model", "")
#namecost("Cavalry 1 point per model", "")

The model does not suffer the normal To Hit penalty for moving & shooting.

#namecost("VETERAN", "")
#namecost("Infantry/Cavalry 1 point per model", "")

Pikemen, Sellswords and Stradiots only. The model gains +1 Weapon Skill. This Quirk may be taken once per full 1000 points in your army.

#namecost("WEALTHY", "")
#namecost("Infantry 1 point per model", "")
#namecost("Cavalry 2 points per model", "")
#namecost("Monstrous Infantry 3 points per model", "")

Model with light or medium armour only. The model counts its armour save as being 1 point higher than it actually is. This Quirk may be taken once per full 1000 points in your army.
]

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Dogs of War. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("HURCIO'S CLUB", 60)[Requires two hands. The wielder of this club adds +1 to his Strength and Attacks at the start of each close combat phase (up to a maximum of +3), for as long as he remains in combat.]

#magic-weapon("CATHAYAN DRAGONSWORD", 45, type: "Oriental longsword")[The Dragonsword gives the wielder +1 Weapon Skill, +1 Initiative as well as the Killing Blow, Armour Piercing (1) and Flaming Attacks special rules.

#runin[DOMINGO]'#runin[S ARBALEST 45 points] Mercenary General or Mercenary Captain only. This is a bolt thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "5", "Armour Piercing (1), Multiple Wounds (D3), Ponderous"))
]

#magic-weapon("DAWNSTAR SWORD", 35)[The wielder of this weapon doubles their Attacks characteristic.]

#magic-weapon("GRUDGEBRINGER SWORD", 30)[All attacks made with the Grudgebringer Sword gain +1 To Hit and have the Flaming Attacks special rule. In addition, it contains the _Fireball_ spell from the Lore of Fire as a Bound Spell.]

#magic-weapon("PIKE OF REMAS", 30, only: "Mercenary Captain on foot", type: "Pike")[This weapon inflicts D3 Strength 5 Impact Hits when the wielder is charged to their front. In addition, it has the Heroic Killing Blow special rule against Cavalry and Monstrous Cavalry. This item can be taken despite Mercenary Captains not normally being allowed to take pikes.]

#magic-weapon("SWORD OF ANTI-HEROES", 30)[The wielder gains +1 Strength and +1 Attack for every enemy character in base contact with them or their unit. These bonuses are calculated at the start of each round of close combat and last until its end.]

#magic-weapon("SILVERSTONE AXE", 30, type: "Great weapon")[The wielder always treats their Strength as at least 1 point higher than their opponent's Toughness and has the Multiple Wounds (D3) special rule. In addition, any Wizard that suffers one or more Wounds from this weapon must immediately roll on the Miscast table.]

#magic-weapon("CACKLING BLADE", 25)[This weapon gives the wielder +D6 Attacks at the start of each round of close combat. However, if they roll a natural 6 when determining the number of Attacks they get, they suffer a Hit at their own Strength value as well.]

#magic-weapon("COLD IRON BLADE", 20)[The Cold Iron Blade gives +1 Strength to the wielder. Against models with the Ethereal special rule, it automatically Wounds.]

#magic-weapon("BLADE OF PRESCIENT PERFECTION", 20)[All attacks with this weapon automatically Hit.]

#magic-weapon("SWORD OF SORROW", 20)[This weapon has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("30\"", "5", "Multiple Wounds (2)"))

No saves are allowed against Wounds caused by this weapon.
]

#magic-weapon("METEOR HAMMER", 15, type: "Great weapon")[This weapon automatically Wounds on the roll of a 2+.]

#magic-weapon("BLADE OF LAST RESORT", 10)[The wielder must always accept challenges if possible. While they are fighting in a challenge, they gain +D3 to their Weapon Skill, Strength, Toughness, Initiative and Attacks (roll once and apply the result to all characteristics for the duration of the challenge). If the wielder slays their opponent in the challenge, they suffer D3 Wounds themselves with no saves allowed.]

#magic-weapon("TORMENTOR SWORD", 5)[A monster or character that suffers an unsaved wound from the Tormentor sword has the Stupidity special rule for the rest of the game.]

#magic-weapon("WARRIOR BANE", 5)[A monster or character that suffers unsaved wounds from Warrior Bane permanently loses one Attack for each unsaved wound (to a minimum of 1 Attack).]
]

#magic-item-section("armour")[
#magic-armour("GIANTKIN HELM", 50, only: "Mercenary General or Mercenary Captain on foot", one-use: true)[This item gives the wearer a 6+ armour save. In addition, it can be used at the start of any of your turns. When used, the model turns into a Giant (see Rare Units). If they are in a unit, they must be placed 1" to the side, facing the same direction. While transformed, the model cannot cast spells, nor use any equipment or other magic items. If you do not have a suitable model to place, this item has no effect. At the start of each subsequent turn, roll a D6. On a 1, the model is turned back into their normal profile. Any Wounds suffered while in Giant form are retaining, even if this kills the wearer.]

#magic-armour("HELM OF MYRMIDIA", 45)[This item gives the wearer a 6+ armour save. Enemies attacking the wearer in Close Combat suffer \-1 to Hit and lose 1 Attack, down to a minimum of 1. In addition, the wearer gains the Hatred (Undead) special rule.]

#magic-armour("MAMBRINIO'S GOLDEN ARMOUR", 45, type: "Heavy armour")[The wearer gains +2 to their armour save and the Immunity (Multiple Wounds) special rule. However, they suffer \-2 Initiative and a \-1 penalty to Dangerous Terrain tests.]

#magic-armour("HELM OF DISCORD", 20)[This item gives the wearer a 6+ armour save. In addition, at the start of each Close Combat phase, choose an enemy character in base contact with the bearer or his unit. That character must immediately take a Leadership test. If the test is failed, the victim cannot make attacks and is hit automatically in this Close Combat round.]

#magic-armour("SHIELD OF PTOLOS", 15, type: "Shield")[The bearer has a 2+ armour save against shooting attacks.]

#magic-armour("SHIELD OF STUBBORN REFUSAL", 15, type: "Shield")[The bearer is always Steadfast in the first round of combat. In addition, if they are with a unit that would otherwise flee as a result of a failed break test that the bearer would normally pass, the bearer will remain in combat while the rest of the unit flees.]

#magic-armour("HELM OF THE HEADLESS HORSEMAN", 10)[This item gives the wearer a 6+ armour save. In addition, the wearer gains the Flaming Attacks and Killing Blow special rules. However, they must roll a D6 at the start of each of your turns. On the roll of a 1, the model suffers a Wound with no saves allowed.]

#magic-armour("LEVITATING SHIELD", 10, only: "Model on foot", type: "Shield")[The wielder may use this shield and a weapon that Requires Two Hands at the same time.]
]

#magic-item-section("talisman")[
#talisman("GUARDIAN AMULET", 40)[The bearer gains a Magical Ward (2+). Roll separately for every wound suffered. For every successful save you make, the Magical Ward will weaken for the rest of the game, so after one save it will be a 3+, after two saves a 4+ etc. until a minimum of a 6+ save.]

#talisman("WARDS OF BATTLE", 30)[The bearer has a Magical Ward (4+) against close combat attacks.]

#talisman("DASHING CLOAK OF HEROIC RENOWN", 20)[The bearer gains the Regeneration (5+) special rule.]

#talisman("ICON OF FORTITUDE", 20)[The bearer of this item gains +1 Toughness.]

#talisman("MASTER DUELLIST'S MARK", 20, only: "Mercenary Captain")[The bearer gains the Dodge (6+) and Parry (6+) special rules.]

#talisman("HOURGLASS OF MORR", 10)[At the beginning of the game, write down a number in secret. This is the turn number when the bearer of this item cannot be reduced below 1 Wound or removed as a casualty, unless they are caught when fleeing.]

#talisman("IRONCURSE ICON", 10)[The bearer and any unit they are with gain a Magical Ward (6+) against artillery weapons.]

#talisman("IRONHIDE TALISMAN", 10)[All missile attacks targeting the bearer of this item must re-roll 6's To Wound with missile attacks.]

#talisman("SHARD OF MORRSLIEB", 5, common: true)[The model gains the Immunity (Killing Blow/Poisoned Attacks/Lore of Death) special rule.]
]

#magic-item-section("arcane", columns: 2)[
#arcane-item("WINDCATCHER PRISM", 55, type: "Relic", bound: true)[This item contains the Signature Spells from all the eight Winds of Magic. Note that you may only attempt to cast one each Magic phase.]

#arcane-item("THE WHITE SISTRUM", 50, type: "Relic")[The bearer gains +1 Power Dice at the start of your Magic phase. In addition, all enemy units within 6" suffer \-1 to their Leadership.]

#arcane-item("THE CRUCIBLE OF HORRORS", 35, type: "Relic", bound: (level: 3, cast: "9+"))[This item contains a *direct damage* spell. The caster makes a Breath Weapon attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit suffer a hit with a Strength value of 2D6 (roll once per cast) minus the target's Toughness and the Ignores Armour Saves special rule. However, every time this spell is successfully cast, the bearer must pass a Leadership test on their own unmodified Leadership or suffer a Wound with no saves allowed.]

#arcane-item("ROCKCHARMER'S FLUTE", 35, type: "Relic", bound: (level: 3, cast: "8+"))[This is special type of spell. Choose a hill within 18". Any unit on it suffers 2D6 Strength 4 Hits. The hill is then moved 2D6" in a direction of your choice, stopping within 1" of any impassable terrain.]

#arcane-item("SIVEJIR'S HEX SCROLL", 35, type: "Charm", one-use: true)[When an enemy spell has been cast, a Wizard who has a Hex Scroll can read it instead of attempting to dispel the spell. The spell is cast as normal, but a portion of the spell's energy is transformed and redirected at the caster. The enemy wizard can resist the spell's effects by rolling equal to or under his wizard level on a D6. If failed, the wizard cannot channel or cast spells, all of his magic items and mundane equipment (armour, weapons, etc.) temporarily stop working and all of their characteristics are reduced to 1 (except for his wounds, which are unaffected). Their controlling player can roll a D6 at the start of each of his subsequent magic phases; the spell dissipates on a roll of 4+ and the wizard returns to their normal form.]

#arcane-item("STAFF OF FICKLE FORTUNE", 35, type: "Staff")[At the beginning of each of your magic phases, roll a D6; on a roll of 1 the bearer suffers -D3 to his casting rolls (roll for each spell) for the remainder of the turn; on a roll of 2 nothing happens; on a 3+ however, the wizard gains +D3 to all his casting attempts (roll for each spell) for the remainder of the turn.]

#arcane-item("STAFF OF QUIETUDE", 35, type: "Staff")[Bound Spell (Level 2, cast on 7 +). This is a special *aura* spell with a range of 24". If successfully cast, all Remains in Play spells and spells that last more than one turn within range are immediately dispelled and cease to have any effect.]

#arcane-item("BOOK OF ASHUR", 30, type: "Relic")[The Wizard gains the Loremaster special rule. This has no effect on models that can choose spells from more than one Lore of Magic at the same time.]

#arcane-item("THE MYSTIC SHIELD OF BRAG", 25, type: "Charm", one-use: true)[The Mystic Shield of Brag may be used against any enemy spell that directly targets any friendly unit within dispel range. The enemy spell has no effect.]

#arcane-item("BECALMING ORB", 20, type: "Relic")[All enemy Wizards within 18" of the bearer of this item suffer a \-2 casting penalty.]

#arcane-item("MYSTIC MAZE", 20, type: "Charm", one-use: true)[The Mystic Maze may be used against any enemy spell that directly targets any friendly unit within dispel range. Roll 3D6 measured from the centre of the unit; this is the distance the spell scatters in a random direction. Should the spell end up on another unit, this unit will become the target of the spell; otherwise the spell has no effect.]

#arcane-item("TOME OF SPELLCRAFT", 20, type: "Relic")[This item allows the bearer to re-roll one failed casting attempt each Magic phase.]

#arcane-item("HYPNOTIC EYE SCROLL", 15, type: "Charm", one-use: true, common: true)[The Hypnotic Eye Scroll can be used whenever an enemy wizard successfully casts a spell instead of attempting to dispel. The casting wizard must pass a Leadership test; if failed, you may choose the target of the spell just as if you had cast the spell yourself. If no target can be chosen, the spell has no effect. Note that the spell is still cast from the original Wizard as normal.]

#arcane-item("SCROLL OF LYKOS", 15, type: "Charm", one-use: true, common: true)[Bound Spell. This item contains the _Arcane Urgency_ spell from the Lore of Battle Magic_._]

#arcane-item("SCROLL OF DISRUPTION", 10, type: "Charm", one-use: true, common: true)[This item allows the bearer to re- roll failed dispel attempts for the remainder of the Magic phase.]

#arcane-item("TRICKSTER'S SHARD", 10, type: "Charm", one-use: true)[Declare you are using this item at the start of one of your magic phases. For the duration of the phase, when one of the bearer's spells is dispelled by an enemy Wizard, roll a D6. On a 4+, that Wizard suffers a Wound which Ignores Armour Saves.]
]

#magic-item-section("enchanted")[
#enchanted-item("JUSTINTINE'S PAYCHEST", 35, only: "Paymaster with Pay Chest or Pay Cart")[The Paymaster and any unit they are with gain the Cold- blooded special rule.]

#enchanted-item("LIFESTONE OF ASHRAAZ", 30, one-use: true)[The Lifestone of Ashraaz can be used at the start of any close combat phase. The bearer can swap his current number Wounds with the current number of Wounds of any one enemy model in base contact. The effect lasts the remainder of the game.]

#enchanted-item("THE OTHER TRICKSTER'S SHARD", 25)[The bearer, and all units in base contact with them (friend and foe) must re-roll successful invulnerable saves.]

#enchanted-item("ARCH-LIGHTNING ROD", 20, one-use: true)[This item may be used at the start of any enemy Movement phase. Once used, no units within 24" of the bearer may use the Fly special rule this turn.]

#enchanted-item("RING OF LIFE", 20, bound: (level: 1, cast: "5+"))[Choose a friendly model within 12" and roll a D6. On a roll of a 1 that model loses one Wound with no saves allowed, on a roll of a 2 nothing happens, on a roll of a 3\-5 that model regains one Wound up to the models starting value, and on a roll of a 6 that model regains all lost wounds.]

#enchanted-item("SINISTER CONTRACT", 20, one-use: true)[When the bearer and any unit they join fail the first Break test during the game, instead treat them as having the Unstable special rule until the end of the turn.]

#enchanted-item("WYSSAN'S WEIGHTED DICE", 20, one-use: true)[This item may be used at the start of any close combat phase in which they are involved in. When used, choose two numbers from 1 to 6. For the remainder of this round, all dice rolls of the first number are treated as the second number. This applies to both you and your opponent's dice.]

#enchanted-item("THE TERRIFYING MASK OF EEE!", 15)[The wearer of this mask causes Terror. However, other models can never use their Leadership.]

#enchanted-item("EYE OF THE TILEAN MUR", 10)[The bearer has the Always Strikes First and Armour Piercing (1) special rules in any turn they successfully charge an enemy in the flank or rear.]

#enchanted-item("THE LAST CHANCE", 10, one-use: true, common: true)[This item can be used in the shooting phase with the model's missile weapon. If the shot hits, it will automatically Wound with the Ignores Armour Saves special rule.]

#enchanted-item("PAYMASTER'S COIN", 10, common: true)[The model may re-roll one dice when rolling To Hit or To Wound each round of close combat.

#runin[MASTRO VIVETTI]’#runin[S MAGNIFICENT]
]

#enchanted-item("MACROSCOPE", 5)[No enemy units may deploy using the Scouts special rule within Line of Sight of the bearer of this item. In addition, you opponent must reveal any Hidden models in units within Line of Sight at the start of the game.]

#enchanted-item("SCALED BOOTS OF DELAYED ALACRITY", 5, only: "Model on foot")[The bearer gains the Random Movement (2D6) Special Rule.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF MIGHT", 25)[A unit with this standard gains +1 To Hit in the first round of close combat.]

#magic-standard("BANNER OF SWIRLING WIND", 25)[All enemy missile fire targeting the unit carrying this standard suffer \-1 To Hit.]

#magic-standard("BANNER OF MONTE CASTELLO", 25, only: "Humans")[The unit carrying this standard gains the Cold-blooded special rule.]

#magic-standard("EAGLE BANNER", 15, only: "Humans")[Enemies can never get the Outnumber, Flank or Rear combat resolution bonus against the unit carrying this standard.]

#magic-standard("ENSIGN OF THE REMAN LEGION", 15, only: "Human Infantry")[A unit carrying this magic standard has the Fight in Extra Ranks (1) special rule.]

#magic-standard("MONSTER HUNTER'S TAPESTRY", 5)[The unit carrying this standard gains the Immunity (Stomps) special rule.]

#magic-standard("PENNANT OF LOYALTY", 5)[The unit carrying this standard can re-roll the result on the Mercenaries table.]
]

= CHARACTERS

#unit("MERCENARY COMMANDERS",
  first: true,
  profiles: (
    (name: "Mercenary General", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 90),
    (name: "Mercenary Captain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Mercenaries",
  options: [
- May choose one of the following:
  - Spear free
  - Additional hand weapon +5 points
  - Oriental longsword +5 points
  - Light lance +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Shortbow +4 points
  - Pistol +5 points
  - Crossbow +7 points
  - Handgun +7 points
  - Brace of pistols +8 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May choose one of the following:
  - Buckler +3 points
  - Shield +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Pegasus +25 points
  - Griffon (Mercenary General only) +125 points
- A Mercenary Captain may take Quirks of Character and/or Magic Items up to a total of 50 points
- A Mercenary General may take Quirks of Character and/or Magic Items up to a total of 100 points
  ],
)

#unit("HIRELING WIZARDS",
  profiles: (
    (name: "Hireling Wizard Lord", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
    (name: "Hireling Wizard", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Hireling Wizard is a Level 1 Wizard. A Hireling Wizard Lord is a Level 3 Wizard. They use one of the following Lores of Magic:",
  magic-body: [
- Battle Magic
- Beasts
- Death
- Heavens
- Fire
- Light
- Life
- Metal
- Shadow
  ],
  special-rules: "Mercenaries",
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Pegasus +25 points
  - Griffon (Hireling Wizard Lord only) +125 points
- A Hireling Wizard may take Quirks of Character and/or Magic Items up to a total of 50 points
- A Hireling Wizard Lord may take Quirks of Character and/or Magic Items up to a total of 100 points
  ],
)

#unit("PAYMASTER",
  profiles: (
    (name: "Paymaster", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 45),
    (name: "Money Lender", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: ""),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Mercenaries",
  special-rules-body: (
    rule("Money Lender")[The Money Lender must be placed in base contact with the Paymaster, but may not otherwise be targeted separately from the unit. They are only armed with a hand weapon. If a Paymaster is accompanied by a Money Lender, any unit using their Hold Your Ground special rule adds +1 to their Leadership.],
    rule("Paymaster")[You must include one (and only one) Paymaster in the army. The Paymaster follows all the rules for Battle Standard Bearers. A Paymaster with a Paychest or Paycart can have a magic banner with no points limit. If the Paymaster is slain, all friendly units suffer \-1 to their Leadership for the remainder of the game and gain the Hatred special rule against the enemy unit or model that killed the Paymaster.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Polearm +5 points
  - Great weapon +5 points
- May choose one of the following:
  - Shortbow +3 points
  - Pistol +4 points
  - Crossbow +6 points
  - Handgun +6 points
  - Brace of pistols +7 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +15 points
- May choose one of the following:
  - Buckler +3 points
  - Shield +5 points
- May take a Money Lender +10 points
- May take one of the following:
  - Paychest +30 points
  - Paycart +60 points
- May take Quirks of Character and/or Magic Items up to a total of 50 points
  ],
)

#unit("ASSASSINS",
  profiles: (
    (name: "Assassin", m: 5, ws: 6, bs: 6, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 85),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Dodge (5+), Hidden, Mercenaries, Scouts",
  options: [
- May choose any of the following:
  - Additional hand weapon +5 points
  - Throwing weapons +5 points
  - Pistol +6 points
  - Crossbow +8 points
- May take light armour +3 points
- May take Quirks of Character and/or Magic Items up to a total of 50 points
  ],
)

#unit("DWARF CAPTAINS",
  profiles: (
    (name: "Dwarf Captain", m: 3, ws: 6, bs: 4, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 10, points: 65),
  ),
  troop-type: "Infantry (Character, Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Hatred (Goblins, Orcs, Skaven), Magic Resistance (1), Mercenaries, Relentless, Resolute",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Dwarfen pistol +5 points
  - Dwarfen crossbow +7 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May take Quirks of Character and/or Magic Items up to a total of 50 points
  ],
)

#unit("ELF CAPTAINS",
  profiles: (
    (name: "Elf Captain", m: 5, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 55),
  ),
  troop-type: "Infantry (Character, Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Elven Grace, Mercenaries",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Elven shortbow +6 points
  - Elven longbow +8 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May take Quirks of Character and/or Magic Items up to a total of 50 points
  ],
)

#unit("HALFLING CAPTAINS",
  profiles: (
    (name: "Halfling Captain", m: 4, ws: 4, bs: 6, s: 3, t: 3, w: 2, i: 7, a: 3, ld: 9, points: 35),
  ),
  troop-type: "Infantry (Character, Halfling)",
  base-size: "20x25 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Duck & Weave, Mercenaries",
  special-rules-body: (
    rule("Trinkets")[Models with this special rule may take up two Talismans and/or Enchanted Items rather than just one of each.],
  ),
  options: [
- May choose one of the following:
  - Spear free
  - Additional hand weapon +5 points
  - Flail +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Throwing weapons +4 points
  - Shortbow +5 points
  - Sling +6 points
- May take light armour +2 points
- May choose one of the following:
  - Buckler +3 points
  - Shield +5 points
- May take Quirks of Character and/or Magic Items up to a total of 50 points
  ],
)

#unit("OGRE CAPTAINS",
  profiles: (
    (name: "Ogre Captain", m: 6, ws: 5, bs: 4, s: 5, t: 5, w: 4, i: 3, a: 4, ld: 8, points: 135),
  ),
  troop-type: "Monstrous Infantry (Character, Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, gut-plate",
  special-rules: "Natural Armour (6+), Mercenaries, Ogre Charge",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Ironfist +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Ogre pistol +6 points
  - Brace of Ogre pistols +9 points
- May take light armour +12 points
- May take Quirks of Character and/or Magic Items up to a total of 50 points
  ],
)

#unit("ORC CAPTAINS",
  profiles: (
    (name: "Orc Captain", m: 4, ws: 5, bs: 3, s: 5, t: 5, w: 2, i: 3, a: 3, ld: 8, points: 70),
  ),
  troop-type: "Infantry (Character, Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Mercenaries",
  options: [
- May choose any of the following:
  - Additional hand weapon +5 points
  - Great weapon +15 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May take Quirks of Character and/or Magic Items up to a total of 50 points
  ],
)

#unit("HOBGOBLIN CAPTAINS",
  profiles: (
    (name: "Hobgoblin Captain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: 50),
    (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  troop-type: "Cavalry (Character, Hobgoblin)",
  mount: "Giant Wolf (Canine)",
  base-size: "25x50",
  equipment: "Hand weapon",
  special-rules: "Backstabbers, Cowardly Despoilers, Cunning Retreat, Ded Shooty, Mercenaries",
  special-rules-body: (
    rule("Quell Treachery")[Any friendly unit joined by a model with this special rule may re-roll failed Treachery tests.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Light lance +5 points
- May take a shortbow +5 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +5 points
- May take Quirks of Character and/or Magic Items up to a total of 50 points
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
    rule("Swift as the Wind")[A Pegasus with this upgrade gains the Swiftstride special rule.],
  ),
  options: [
- May take Iron-hard Hooves +5 points
- May take Swift as the Wind +5 points
  ],
)

#unit("GRIFFON",
  profiles: (
    (name: "Griffon", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 7, points: "-"),
  ),
  troop-type: "Monstrous Creature (Chimeric)",
  base-size: "50x50",
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

#unit("PAYCHEST",
  profiles: (
    (name: "Paychest Bodyguards", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 2, i: 4, a: 2, ld: 8, points: "-"),
  ),
  troop-type: "Infantry (Human)",
  base-size: "40x40 or 50x50",
  equipment: "Polearm",
  special-rules: "Hold Your Ground (6)",
  notes: [
- A Paymaster with a Paychest may either be modelled on top of it, or placed next to it on the table. It must remain in base contact with the Paymaster at all times.
  ],
)

#unit("PAYCART",
  profiles: (
    (name: "Paycart", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 3, i: "-", a: "-", ld: "-", points: "-"),
    (name: "Mule", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Shrine (Armour save 6+)",
  drawn-by: "1 Mule (Animal)",
  base-size: "40x80, 50x100 or 60x100",
  equipment: "Hand weapon",
  special-rules: "Hold Your Ground (12)",
  notes: [
- A Paymaster with a Paycart may either be modelled on top of it, or placed next to it on the table. It must remain in base contact with the Paymaster at all times.
- A Paycart has a Line of Sight value of 2.
  ],
)

= CORE UNITS

#unit("PIKEMEN",
  first: true,
  profiles: (
    (name: "Pikeman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Pike",
  special-rules: "Mercenaries",
  options: [
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take bucklers +0.5 point/model
- May take Quirks of Character no points limit
- May upgrade one Pikeman to a Leader +5 points
- May upgrade one Pikeman to a Musician +5 points
- May upgrade one Pikeman to a Standard Bearer +10 points
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
  special-rules: "Mercenaries",
  options: [
- May replace crossbows with handguns free
- May take light armour +0.5 point/model
- May take pavises +1 point/model
- May take Quirks of Character no points limit
- May upgrade one Crossbowman to a Leader +5 points
- May upgrade one Crossbowman to a Musician +5 points
- May upgrade one Crossbowman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  notes: [
- Your army may not contain more units armed with handguns than crossbows.
  ],
)

#unit("SELLSWORDS",
  profiles: (
    (name: "Sellsword", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 3),
  ),
  unit-size: "10-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Mercenaries",
  options: [
- May choose one of the following:
  - Spears free
  - Additional hand weapons +1 point/model
  - Flails +2 points/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May choose one of the following:
  - Javelins +2 points/model
  - Shortbows +2 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take shields (unless armed with two hand weapons, flails, great weapons or shortbows) +1 point/model
- May take Quirks of Character no points limit
- May upgrade one Sellsword to a Leader +5 points
- May upgrade one Sellsword to a Musician +5 points
- May upgrade one Sellsword to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  notes: [
- Each unit of Sellswords must pick at least one weapon option and/or shields.
  ],
)

#unit("DUELLISTS",
  profiles: (
    (name: "Duellist", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 4),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Mercenaries, Skirmishers",
  options: [
- May choose one of the following:
  - Bucklers +0.5 point/model
  - Additional hand weapons +1 point/model
  - Oriental longswords +1 point/model
  - Pistols +3 points/model
- May take throwing weapons +1 point/model
- May take Quirks of Character no points limit
- May upgrade one Duellist to a Leader +5 points
  ],
)

#unit("STRADIOTS",
  profiles: (
    (name: "Stradiot", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon",
  special-rules: "Fast Cavalry, Mercenaries",
  options: [
- May take light lances +1 point/model
- May choose one of the following:
  - Shortbows +1 point/model
  - Crossbows +2 points/model
  - Handguns +2 points/model
  - Javelins +2 points/model
- May take light armour +0.5 point/model
- May take shields +1 point/model
- May take Quirks of Character no points limit
- May upgrade one Stradiot to a Leader +5 points
- May upgrade one Stradiot to a Musician +5 points
- May upgrade one Stradiot to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

= SPECIAL UNITS

#unit("PAYMASTER'S BODYGUARD",
  first: true,
  profiles: (
    (name: "Paymaster's Bodyguard", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm, medium armour",
  special-rules: "Mercenaries",
  special-rules-body: (
    rule("Bodyguard")[When a Paymaster (including any Money Lender, Paychest and/or Paycart it might have) joins a unit whose front rank contains five or more models with the Bodyguard special rule, they may be placed in the second rank, rather than the first. If the unit's front rank is ever reduced to four or fewer models with the Bodyguard special rule, the Paymaster must immediately move to the front rank (displacing rank and file models if necessary). As long as the Paymaster is alive, the unit is Stubborn.],
  ),
  options: [
- May take heavy armour +1.5 points/model
- May take shields +1 point/model
- May take Quirks of Character no points limit
- May upgrade one Paymaster's Bodyguard to a Leader +5 points
- May upgrade one Paymaster's Bodyguard to a Musician +5 points
- May upgrade one Paymaster's Bodyguard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  notes: [
- You may not include more than one unit of Paymaster's Bodyguard in your army.
  ],
)

#unit("FREELANCERS",
  profiles: (
    (name: "Freelancer", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 17),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, medium armour, shield",
  special-rules: "Mercenaries",
  options: [
- May take heavy armour +2 points/model
- May take barding +1.5 points/model
- May take Quirks of Character no points limit
- May upgrade one Freelancer to a Leader +5 points
- May upgrade one Freelancer to a Musician +5 points
- May upgrade one Freelancer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("GLADIATORS",
  profiles: (
    (name: "Gladiator", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 2, ld: 8, points: 9),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, buckler",
  special-rules: "Immunity (Fear), Mercenaries, Skirmishers",
  special-rules-body: (
    rule("Net Fighters")[At the start of each round of close combat, a unit containing nets must attempt to entangle one of the units they are fighting in their front arc. Roll a D6 for each model with nets in your unit; for every 4+, an enemy model has become entangled (distributed as hits from shooting, but only affecting models that are allowed to strike). A model that has been entangled suffers a \-1 penalty to their Attacks (this does not apply to mounts) until the end of the close combat round.],
  ),
  options: [
- May replace bucklers with one of the following:
  - Shields +0.5 point/model
  - Additional hand weapons +0.5 point/model
  - Nets & spears +4 points/model
- May take Quirks of Character no points limit
- May take light armour +0.5 point/model
- May upgrade one Gladiator to a Leader +5 points
  ],
)

#unit("NORSEMEN",
  profiles: (
    (name: "Norseman", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 5),
  ),
  unit-size: "10-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shield",
  special-rules: "Mercenaries",
  special-rules-body: (
    rule("Blood Rage")[Whenever a model with this special rule makes a successful charge (including Counter-Charge, Pursuit and Overrun), they are subject to Frenzy in the following round of close combat and count each of their ranks as double for the purpose of Steadfast.],
  ),
  upgrades: (
    rule("Fur Cloak")[A fur cloak gives the wearer the Natural Armour (6+) special rule against missile attacks.],
  ),
  options: [
- May choose one of the following:
  - Replace shields with additional hand weapons free
  - Spears +0.5 point/model
  - Flails +1 point/model
  - Replace shields with great weapons +2 points/model
- May take throwing axes +2 points/model
- May take light armour +0.5 point/model
- May take fur cloaks +0.5 point/model
- May take Quirks of Character no points limit
- May upgrade one Norseman to a Leader +5 points
- May upgrade one Norseman to a Musician +5 points
- May upgrade one Norseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("DWARFS",
  profiles: (
    (name: "Dwarf", m: 3, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 9, points: 6),
  ),
  unit-size: "10-45",
  troop-type: "Infantry (Dwarf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  special-rules: "Hatred (Goblins, Orcs, Skaven), Magic Resistance (1), Mercenaries, Relentless, Resolute",
  options: [
- May choose one of the following:
  - Spears +1 point/model
  - Great weapons +3 points/model
- May take Dwarfen crossbows +6 points/model
- May choose one of the following:
  - Medium armour +1 point/model
  - Heavy armour +2.5 points/model
- May take shields +1 point/model
- May take Quirks of Character no points limit
- May upgrade one Dwarf to a Leader +5 points
- May upgrade one Dwarf to a Musician +5 points
- May upgrade one Dwarf to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ELVES",
  profiles: (
    (name: "Elves", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 6),
  ),
  unit-size: "10-45",
  troop-type: "Infantry (Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Elven Grace, Mercenaries",
  options: [
- May choose one of the following:
  - Spears +0.5 point/model
  - Additional hand weapons +1 point/model
- May choose one of the following:
  - Elven shortbow +4 points/model
  - Elven longbow +6 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take shields (unless armed with additional hand weapons) +1 point/model
- May be upgraded to Skirmishers (if armed with missile weapons) +1 point/model
- May take Quirks of Character no points limit
- May upgrade one Elf to a Leader +5 points
- May upgrade one Elf to a Musician +5 points
- May upgrade one Elf to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("HALFLINGS",
  profiles: (
    (name: "Halfling", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: 3),
  ),
  unit-size: "10-45",
  troop-type: "Infantry (Halfling)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Duck & Weave, Mercenaries",
  options: [
- May choose one of the following:
  - Spears free
  - Shortbows +3 points/model
  - Slings +3 points/model
- May take shields (unless armed with missile weapons) +1 point/model
- May be upgraded to Skirmishers (if armed with missile weapons) +1 point/model
- May take Quirks of Character no points limit
- May upgrade one Halfling to a Leader +5 points
- May upgrade one Halfling to a Musician +5 points
- May upgrade one Halfling to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("OGRES",
  profiles: (
    (name: "Ogre", m: 6, ws: 3, bs: 3, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 27),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40",
  equipment: "Hand weapons",
  special-rules: "Natural Armour (6+), Mercenaries, Ogre Charge",
  options: [
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Ironfists +3 points/model
  - Great weapons +9 points/model
- May choose one of the following:
  - Gut-plates +2 points/model
  - Light armour +3 points/model
  - Light armour & gut plates +6 points/model
- May take Quirks of Character no points limit
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ORCS",
  profiles: (
    (name: "Orc", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 6),
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
  - Additional hand weapons +1 point/model
  - Spears +1 point/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May take shields (unless armed with great weapons) +1 point/model
- May take light armour +0.5 point/model
- May take Quirks of Character no points limit
- May upgrade one Orc to a Leader +5 points
- May upgrade one Orc to a Musician +5 points
- May upgrade one Orc to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("HOBGOBLINS",
  profiles: (
    (name: "Hobgoblin", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 9),
    (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Hobgoblin)",
  mount: "Giant Wolf (Canine)",
  base-size: "25x50",
  equipment: "Hand weapon",
  special-rules: "Backstabbers, Cowardly Despoilers, Cunning Retreat, Ded Shooty, Fast Cavalry, Mercenaries",
  special-rules-body: [
- *Treacherous Gits:* Units with this special rule must test for Treachery in the Charge sub-phase after all normal charges have been declared during each of your turns, by every unit that is subject to Treachery, unless any of the following applies:

*\-* The unit has less than 5 models. *\-* The unit has declared a charge this turn. *\-* The unit is engaged in close combat. *\-* The unit is garrisoning a building. *\-* The unit is fleeing or currently off the battlefield.

Roll a D6 for each eligible unit. If the dice roll is a 2 or more, the unit behaves normally this turn. If the roll is a 1, however, the unit has failed its Treachery test and must roll on the Treachery table below:

#chart((("D6", "Result"), ("1", "Traitor! If the unit is armed with missile weapons, they will immediately resolve a round of shooting
against the nearest friendly unit within Line of Sight. If the unit does not have any missile weapons
or if there are no friendly units within Line of Sight, they will inflict D3 Strength 3 Hits for every
complete rank the unit has on themselves instead (any Wounds suffered will not cause a Panic test).
The unit may not move, shoot or cast spells this turn."), ("2", "We'll get a better view from further back!
The unit must immediately take a Panic test. If it's passed, the unit may not voluntarily move this
turn."), ("3-4", "We Stayz 'Ere! The unit may not voluntarily move this turn."), ("5", "Bloody Murder! The unit suffers D3 Strength 3 Hits for every complete rank the unit has (any
Wounds suffered will not cause a Panic test). The unit may move as normal afterwards."), ("6", "Cut 'em good! Pivot the unit on the spot to face the nearest visible enemy unit, and then make a full
normal move in a straight line towards it. If there is no visible enemy, the unit must move straight
ahead instead. If it is impossible for the unit to pivot to face the closest enemy, it will pivot towards it
as far as it can, and will then move as far forward as it can while still keeping the enemy within its
forward arc. After the move is complete the unit must declare a charge against the closest visible
enemy unit, if it is possible to do so. If the unit cannot declare a charge it may carry on with the rest
of its turn normally, as if it had not yet moved this turn.")))
  ],
  options: [
- May take light lances +1 point/model
- May take shortbows +1 point/model
- May take light armour +0.5 point/model
- May take shields +1 point/model
- May take Quirks of Character no points limit
- May upgrade one Hobgoblin to a Leader +5 points
- May upgrade one Hobgoblin to a Musician +5 points
- May upgrade one Hobgoblin to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("BALLISTA",
  profiles: (
    (name: "Ballista", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 40),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "40x40 or 50x50 (Ballista), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, bolt thrower",
  options: [
- May take light armour +0.5 point/crew
- May take an additional crew +5 points
  ],
)

#unit("SCORPION",
  profiles: (
    (name: "Scorpion", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 25),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "2 Crew (Human)",
  base-size: "25x25 or 30x30 (Scorpion), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, scorpion",
  equipment-body: [
- *Scorpion:* A scorpion is a bolt thrower that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("28/42\"", "5", "-"))
  ],
  options: [
- May take light armour +0.5 point/crew
  ],
  notes: [
- You may take 1\-2 Scorpions as a single Special choice.
  ],
)

= RARE UNITS

#unit("MANEATERS",
  first: true,
  profiles: (
    (name: "Maneater", m: 6, ws: 4, bs: 4, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 8, points: 43),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40",
  equipment: "Hand weapon, gut-plate",
  special-rules: "Immunity (Psychology), Natural Armour (6+), Ogre Charge, Stubborn",
  special-rules-body: (
    rule("Motley Crew")[The models in a unit of Maneaters can have a variety of different weapons and special rules. If they do, your opponent must make it clear which model they want to allocate their attacks to. Any excess wounds are carried over to the rest of the unit as normal in an order chosen by your opponent.],
  ),
  options: [
- Any model may be armed with one of the following (different models may have different weapons):
  - Additional hand weapons +3 points/model
  - Ironfists +3 points/model
  - Oriental longsword +3 points/model
  - Ogre pistol +6 points/model
  - Great weapon +6 points/model
  - Polearm +6 points/model
  - Brace of Ogre pistols +9 points/model
- May take light armour +3 points/model
- May take Quirks of Character no points limit
- May upgrade one Maneater to a Leader +5 points
- May upgrade one Maneater to a Musician +5 points
- May upgrade one Maneater to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  notes: [
- Each Maneater can choose a separate Quirk of Character.
  ],
)

#unit("SERPENTINE",
  profiles: (
    (name: "Serpentine", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Serpentine), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, cannon",
  options: [
- May take light armour +0.5 point/crew
- May take an additional crew +5 points
  ],
)

#unit("ONAGER",
  profiles: (
    (name: "Onager", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Onager), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, stone thrower",
  options: [
- May take light armour +0.5 point/crew
- May take an additional crew +5 points
  ],
)

#unit("RIBAULT",
  profiles: (
    (name: "Ribault", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Ribault), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, organ gun",
  options: [
- May take light armour +0.5 point/crew
- May take an additional crew +5 points
  ],
)

#unit("HOT POT",
  profiles: (
    (name: "Hot Pot", m: "-", ws: "-", bs: "-", s: "-", t: 5, w: "-", i: "-", a: "-", ld: "-", points: 70),
    (name: "Crew", m: 4, ws: 2, bs: 4, s: 2, t: 2, w: 1, i: 5, a: 1, ld: 8, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Halfling)",
  base-size: "20x20, 25x25 or 50x50 (Hot Pot), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, hot pot",
  equipment-body: [
- *Hot Pot:* A hot pot is a stone thrower that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-36\"", "3(6)", "Cumbersome, Ignores Armour Saves, Multiple Wounds (D3)"))
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

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Cavalry, War Beasts or Swarms. _*D6 Result* 1 Yell and Bawl 2 Jump Up and Down 3 Pick Up and\.\.\. 4\-6 Swing with Club

*BIG THINGS CHART *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2-4", "Thump with Club"), ("5-6", "'Eadbutt")))

*\- 'Eadbutt:* The Giant automatically inflicts D3 Wounds which Ignores Armour Saves. If the victim suffers one or more unsaved Wounds, then it loses all of its following attacks. If the target has not yet attacked in that combat round, it loses those attacks; if it has already attacked, then it loses the next round's attacks. *\- Jump Up and Down:* The Giant must test to determine if it falls over (see previous page). If it falls over, work out where it falls and calculate damage as already described. Otherwise, it will attack using the Stomp (2D6) special rule this turn instead of its normal Stomp. A Giant that starts to Jump Up and Down will continue to do so on the same target until it falls over, the target is destroyed, or the combat ends. *\- Swing with Club:* The Giant fights using the Random Attacks (2D6) special rule this round. *\- Thump with Club:* The Giant chooses a single model from the target unit that is in base contact. The target may attempt to avoid the blow by passing an Initiative test (use the lowest if the model has several different values). If the test is failed, the model takes 2D3 Wounds which Ignores Armour Saves. If a double is rolled the Giant cannot attack at all in the following round of the same combat. *\- Yell and Bawl:* Neither the Giant nor models in contact with it fight if they have not already done so this round. The Giant automatically wins the combat by 2 points. *\- Pick Up and\.\.\.:* The Giant stoops down and grabs a single Character in base contact from the target unit (Giant player's choice). The Giant grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Bag: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Giant should be slain, any enemy trapped in its bag are freed at the end of the
battle, and no longer counts as casualties."), ("2", "Throw Back into Combat: The victim suffers D3 Strength 6 Hits which Ignores Armour saves,
and D6 Strength 3 hits are inflicted on their unit (save as normal)."), ("3", "Hurl: The victim is hurled into an enemy unit within 12\" of the Giant – randomly determine
which. The victim is removed as a casualty, and the unit takes D6 Strength 3 hits. Unsaved
Wounds from these hits count towards the Giant's combat result."), ("4-5", "Squash or Eat: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Giant had rolled the Stuff into Bag result, above, and
then choose another victim. Roll again on this table to see what the Giant does with it.")))
  ],
)

#unit("MARIENBURG LAND SHIP",
  profiles: (
    (name: "Land Ship", m: "*", ws: "-", bs: "-", s: 6, t: 6, w: 10, i: "-", a: "-", ld: "-", points: 250),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Chariot (Armour save 3+)",
  crew: "6 Crew (Human)",
  base-size: "50x100 or 60x100",
  equipment: "Hand weapon, handgun, chase gun",
  equipment-body: [
- *Chase Gun:* A chase gun is a cannon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "7", "Cumbersome, Multiple Wounds (D3)"))

It can fire grape shot which is resolved at Strength 4. If the weapon is destroyed by a Misfire result, the Land Ship also immediately suffers D3 Wounds which Ignores Armour Saves.
  ],
  special-rules: "Terror, Unbreakable",
  special-rules-body: [
- *Grind Attack:* In any turn in which the Land Ship does not charge, it inflicts D6 Stomps like a Monster.
- *Stable Platform:* The crew ignores the rules for Ponderous when moving and shooting.
- *The Wonder of the Age:* The Land Ship, has two modes of movement: slow and full power. The player must declare which they are using before the Land Ship is moved each turn. Note that the Land Ship cannot pursue.
  - *Slow:* The Land Ship may move up to 6" forward without penalty or risk, but may not charge.
  - *Full Power:* The Land Ship follow the rules for Random Movement (3D6) forward. However, if you roll two or more 1's when determining the Land Ships Random Movement, something has gone disastrously wrong. Roll immediately on the Land Ship Calamity Chart and apply the result.

#chartlabel("THE LAND SHIP CALAMITY CHART")
#chart((("D6", "Result"), ("1", "Abandon Ship! The Land Ship is destroyed but left on the table as an area of impassable
terrain. Any unit in base contact when this happens suffers D6 Strength 6 hits."), ("2-3", "Arrrrgh! The ship moves the rolled distance and an additional D6\", as well as suffering
D3 Wounds which Ignores Armour Saves."), ("4-5", "All hands to the Wheel! Roll a Scatter dice and move the ship the rolled distance in the
direction shown on the dice. If a ‘Hit’ is rolled, the Land Ship remains stationary."), ("6", "Boom! All units within D6\" of the Land Ship’s hull suffers D6 Strength 6 Hits and the
Land Ship is destroyed and removed from play.")))

When the Land Ship loses its last wound roll a D6. On a roll of a 1, it suffers the effects of the Abandon Ship! result on the Land Ship Calamity table and on a 6 the Boom! result. On any other roll, the Land Ship is removed as normal.
  ],
  notes: [
- A Land Ship has a Line of Sight value of 5.
- You may not have more than 3 Marienburg Land Ships in your army.
  ],
)

= SPECIAL CHARACTERS

#unit("BORGIO THE BESIEGER",
  solo: true,
  first: true,
  subtitle: "Merchant Prince of Miragliano",
  profiles: (
    (name: "Borgio the Besieger", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 9, points: 200),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Shield, barding",
  magic-items: [
- *Mace of Might:* Magic Weapon. If Borgio rolls a 6 To Hit with this weapon, this hit will be resolved at Strength 10.
- *Armour of Brazen Bronze:* Magic Armour. Heavy armour. The Armour of Brazen Bronze gives Borgio a Magical Ward (5+).
- *Monstrous Mask Helm*: Magic Armour. 6+ armour save. The wearer of the Monstrous Mask gains the Fear special rule.
  ],
  special-rules: "Hold the Line, Immunity (Psychology)",
  special-rules-body: [
- *Difficult to Slay:* If Borgio is reduced to zero wounds, roll a D6. On a 1\-3, he is removed as a casualty as normal. On a 4+, he stands back up again with a single wound remaining. Note that this ability cannot be used against attacks that kill the model outright.
- *Master of Siegecraft*: If Borgio is your General, you may take one more duplicate War Machine unit than normal at the points value played.
  ],
)

#unit("LUCREZZIA BELLADONNA",
  solo: true,
  subtitle: "Merchant Princess of Pavona",
  profiles: (
    (name: "Lucrezzia Belladonna", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 300),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Two hand weapons, phial of poison",
  equipment-body: (
    rule("Phial of Poison")[Nominate D3 enemy characters at the beginning of the battle. Roll a D6 for each; a roll of 4+ means that the character has been poisoned and starts the battle with one Wound less than normal, with no saves allowed. This has no effect against models with the Immunity (Poisoned Attacks) or Daemonic special rules.],
  ),
  magic: "Lucrezzia Belladonna is a Level 4 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Death
- Shadow
  ],
  magic-items: (
    rule("Potion of Pavona")[Enchanted Item. At the beginning of the battle, Lucrezzia may give the potion to any friendly character or take it herself. Roll a D6; on roll 2+, choose that number of the chosen model's characteristics to improve by +1. For example, if you roll a 4 you could choose to improve the model's WS, T, W, and I by +1. You cannot apply this bonus to a model's Leadership and cannot increase a characteristic by more than one. If you roll a 1, the model suffers a Wound with no saves allowed.],
  ),
  special-rules: "Poisoned Attacks",
  options: [
- May take Magic Items up to a total of 50 points
  ],
)

#unit("LORENZO LUPO",
  solo: true,
  subtitle: "Merchant Prince of Luccini",
  profiles: (
    (name: "Lorenzo Lupo", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 210),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic-items: (
    rule("Sword of Lucan")[Magic Weapon. Attacks made with the Sword of Lucan have the Ignores Armour Saves special rule.],
    rule("Shield of Myrmidia")[Magic Armour. Shield. All enemy models in base contact with Lorenzo lose one Attack each.],
    rule("Ring of Luccina")[Enchanted Item. Bound Spell (Level 1, cast on 3+). The Ring of Luccina contains an *augment aura* spell with a range of 12". If successfully cast, all fleeing troops within range will Rally automatically.],
  ),
  special-rules: [
- *Fights on Foot*: Any Infantry unit joined by Lorenzo Lupo add +1 to their combat resolution bonus.
- *Mighty Athlete*: Roll a D6 at the start of the battle to determine which pursuit he has been following prior to joining the army.

#chart((("D6", "Pursuit", "Effect"), ("1-2", "Running", "+1 Toughness"), ("3-4", "Wrestling", "+1 Attack"), ("5-6", "Rowing", "+1 Strength")))
  ],
  options: [
- May take Magic Items up to a total of 25 points
  ],
)

#unit("MARCO COLOMBO",
  solo: true,
  subtitle: "Merchant Prince of Trantio",
  profiles: (
    (name: "Marco Colombo", m: 4, ws: 6, bs: 6, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 160),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20, 25x25, 40x40 or 50x50",
  equipment: "Light armour",
  magic-items: (
    rule("Gem of Lustria")[Talisman. The Gem of Lustria gives Marco a Magical Ward (4+).],
    rule("Gourd of Lustrian Wine")[Enchanted Item. One use only. Marco may drink the wine at start of any close combat phase and it lasts until the start of the next player’s turn. While in effect, the Gourd of Lustrian Wine grants +D3 Strength.],
    rule("Scroll of Araby")[Arcane Item. Charm. One use only. The Scroll of Araby can be used at the start of any player's turn. Until the start your next turn, Marco and any unit he is with gain the Magic Resistance (3) special rule. Marco may use this item despite not being a Wizard.],
  ),
  special-rules: (
    rule("Crossbow Hunter")[Marco ignores the Ponderous special rule when using crossbows.],
    rule("Navigator's Telescope")[All enemy units within Line of Sight and 24" to Marco must reveal any Hidden models they might contain at the start of unit of your turns.],
  ),
  options: [
- May take a crossbow +7 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("LIETPOLD THE BLACK",
  solo: true,
  subtitle: "The Thrice-Cursed, the Coin-bought Prince",
  profiles: (
    (name: "Lietpold the Black", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 9, points: 215),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy armour, barding",
  magic-items: (
    rule("Gore Prow")[Magic Weapon. Great weapon. All attacks made with Gore Prow have the Multiple Wounds (D3) and Always Strikes First special rules.],
  ),
  special-rules: "Mercenaries",
  special-rules-body: (
    rule("Blessings of Lethe")[Lietpold has a Magical Ward (3+), but should he fail this save, then from Lietpold's next turn onward the save no longer applies and Lietpold suffers a \-1 penalty to his Toughness and Leadership characteristics.],
    rule("Murderous Charge")[Lietpold and any unit he has joined gain the Devastating Charge special rule.],
  ),
)

#unit("GHAZAK KHAN",
  solo: true,
  subtitle: "Terror of the East",
  profiles: (
    (name: "Ghazak Khan", m: 4, ws: 7, bs: 6, s: 5, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 205),
    (name: "Warghan (Giant Wolf)", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Hobgoblin)",
  mount: "Warghan (Canine)",
  base-size: "25x50 or 30x60",
  equipment: "Shortbow, medium armour, shield",
  magic-items: (
    rule("The Red Scimitar")[Magic Weapon. All Attacks made with this weapon have the Armour Piercing (3) and Multiple Wounds (D3) special rules.],
    rule("Daemonhead Helmet")[Magic Armour. 6+ armour save. As soon as Ghazak suffers his first wound in battle, the Daemon of the helmet awakens and gives Ghazak a Magical Ward (4+) the and Magic Resistance (1) special rule for the remainder of the battle. In addition, his Strength is doubled when fighting against the model or unit which caused the Wound.],
  ),
  special-rules: "Backstabbers, Cowardly Despoilers, Ded Shooty, Fear, Mercenaries, Quell Treachery",
  special-rules-body: [
- *Commander of the Black Wolves:* Ghazak Khan may be the Army General despite not being Human. If Ghazak Khan is your Army General, you may take units of Hobgoblins and Orcs as Core Units instead of Special Units.
- *Hiiyaaarrghh!* If Ghazak Khan is your Army General, then once per game he may call a Hiiyaaarrghh! The Hiiyaaarrghh! may only be called if the model first declares a charge, and must be announced immediately after making the charge declaration, before any charge reaction takes place. In the turn a Hiiyaaarrghh! is called, every friendly Hobgoblin unit within 12" adds +D3" to their charge move this turn. Ghazak Khan himself, and any unit he joins, adds +D6 to their charge move instead. In addition, every friendly unit within 12" of Ghazak Khan add their rank bonus to the result rolled on the Treacherous Gits table.
- *War Cry of the Steppes:* Any unit that Ghazak Khan charges will not be able to Stand and Shoot or Flee as a Charge Reaction. This does not affect units that have Immunity (Psychology).
  ],
)

#unit("MYDAS THE MEAN",
  solo: true,
  subtitle: "Notorious Paymaster",
  profiles: (
    (name: "Mydas the Mean", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 210),
    (name: "Sheikh Yadosh", m: "-", ws: 2, bs: 2, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25 (Mydas), 50x100 (Paycart)",
  mount: "Paycart (Sheikh Yadosh only)",
  equipment: "Hand weapon, heavy armour, shield",
  magic-items: [
- *The Crest of Mydas:* Talisman. Mydas and all models in the same unit gains the Magical Attacks special rule.
- *Treasure Map:* Enchanted Item. At the start of each of your turns, roll a D6 and consult the table below to see what effect the promises of Mydas' Treasure Map have:

#chart((("D6", "Result:"), ("1-2", "A bonus for all my loyal and trusty henchmen! Until the start of your next turn, Mydas'
Bodyguards gain +1 to hit in close combat."), ("3-4", "The paychest is safe with me lads! Until the start of your next turn, all friendly units within 12\" of
Mydas are Stubborn."), ("5-6", "If we win the battle, all mercenaries will receive a bonus! Until the start of your next turn, all
friendly units within 12\" of Mydas add +1 to their combat resolution.")))
  ],
  special-rules: "Mercenaries, Paymaster",
  special-rules-body: (
    rule("Sheikh Yadosh the Money Lender")[Sheikh Yadosh rides alone on the Paycart. He otherwise follows the rules for regular Money Lenders, except that the Leadership modifier is increased to +D3 rather than +1.],
  ),
  order: ("troop-type", "base-size", "mount", "equipment", "magic-items", "special-rules"),
)

#unit("LEONARDO DA MIRAGLIANO",
  solo: true,
  subtitle: "Scientific Genius",
  profiles: (
    (name: "Leonardo da Miragliano", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 2, i: 2, a: 1, ld: 7, points: 75),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, Sphere of Alchemy, Prism of Power, Compass of Meteoric Silver",
  equipment-body: [
- *Sphere of Alchemy:* One use only. The Sphere has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "3", "Armour Piercing (2), Quick Shot"))

If the attacks hits, it inflicts 2D6 Hits.

- *Prism of Power:* The Prism of Power may be used in any of your opponent's Magic phases after determining the Winds of Magic and channelling rolls for that turn. Roll a D6; on a 4+, Leonardo may remove 1 Power dice from the opponent's pool.
- *Compass of Meteoric Silver:* At the start of the battle, your opponent must tell which of their units contains the highest number of magic items.
  ],
  special-rules: (
    rule("Artillery Accuracy")[One war machine that is within 3" of Leonardo can use his Ballistic Skill or re-roll one artillery dice or scatter dice during each Shooting phase. This cannot be the artillery dice that determines the distance a cannonball bounces. You must nominate which weapon, if any, will be using this special rule at the start of each Shooting phase, before any such weapons within 3" of Leonardo are fired.],
    rule("Battle Strategy")[If Leonardo is included in your army, you may add +1 to the result when determining which side to deploy on.],
    rule("Crossbow Accuracy")[As long as Leonardo is with a unit armed with crossbows, the unit may re-roll all failed rolls of 1 To Hit in the Shooting phase.],
  ),
)

#unit("ULLI & MARQUAND",
  solo: true,
  subtitle: "A Pair of Rogues",
  profiles: (
    (name: "Marquand", m: 4, ws: 6, bs: 4, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 70),
    (name: "Ulli", m: 4, ws: 5, bs: 4, s: 5, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 60),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, great weapon (Ulli only), light armour",
  special-rules: "Devastating Charge (Ulli only), Dodge (6+) (Marquand only), Mercenaries, Parry (6+)",
  special-rules-body: [
(Marquand only)

- *A Fistful of Crowns:* Whenever Ulli and Marquand roll a natural 1 on the Mercenary Loyalty table, they have decided to switch sides, and will be under the control of your opponent from then on. If they are inside a unit, they will immediately leave it and should be placed 1" away from their former unit, in any direction of your opponent's choice.
- *Inseparable:* Ulli and Marquand must remain with each other at all times, forming their own unit, though they may still join other units as normal.
  ],
  options: [
- Marquand may take Magic Items up to a total of 50 points
- Ulli may take Magic Items up to a total of 50 points
  ],
)

#unit("NICODEMUS",
  solo: true,
  subtitle: "The Cursed Pilgrim",
  profiles: (
    (name: "Nicodemus", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 1, ld: 8, points: 155),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "Nicodemus is a Level 2 Wizard who uses the Lore of Battle Magic.",
  special-rules: "Fear, Loremaster (Lore of Battle Magic), Mercenaries",
  options: [
- May take Magic Items up to a total of 50 points
  ],
)

#unit("SIMIUS GANTT",
  solo: true,
  subtitle: "The Crow Master",
  profiles: (
    (name: "Simius Gantt", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 135),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "Simius Gantt is a Level 2 Wizard who uses the Lore of Death.",
  magic-items: (
    rule("Mantle of Crows")[Enchanted Item. Any enemy model in base contact with Simius at the start of the close combat phase suffers a single Impact Hit at Strength 2.],
  ),
  special-rules: (
    rule("Decay of Ages")[Bound Spell (Level 2, cast on 7+). Remains in play. _Decay of Ages_ is a *hex* spell with a range of 12". The target unit must pass an immediate Toughness test or lose \-1 to their Movement, Weapon Skill, Ballistic Skill, Strength, Toughness and Initiative. They must keep testing at the start of each subsequent Magic Phase until they pass the Toughness test, the spell is dispelled or the unit is removed as a casualty. If the spell is dispelled or the unit passes the Toughness test, the unit is restored to their original characteristics.],
    rule("Needle and Thread")[If Simius rolls a 6 when rolling To Wound against a Character in close combat, he sews up the mouth of his enemy. The model cannot then lend their Leadership to any friendly units and Wizards are unable to cast spells for the remainder of the battle.],
  ),
  options: [
- May take Magic Items up to a total of 25 points
  ],
)

#unit("JOHANN THE KNIFE",
  solo: true,
  subtitle: "Knife Fighter Extraordinaire",
  profiles: (
    (name: "Johann the Knife", m: 5, ws: 6, bs: 6, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 135),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  special-rules: "Dodge (5+), Hidden, Mercenaries, Poisoned Attacks, Scouts",
  special-rules-body: (
    rule("Black Lotus")[If Johann rolls a natural 6 on his To Hit rolls, that attack will automatically Wound. Armour saves are taken as normal.],
    rule("Crimson Shade")[One use only. Johan may use the Crimson Shade at the start of any of your turns. If he does so, he will gain +1 Movement, Strength, Initiative and Attacks for the duration of the turn.],
    rule("Knife Fighter Extraordinaire")[Johann has the Multiple Shots (3) special rule, which is increased to Multiple Shots (6) if he has not moved earlier this turn.],
  ),
)

#unit("AENUR",
  solo: true,
  subtitle: "The Sword of Twilight",
  profiles: (
    (name: "Aenur", m: 5, ws: 8, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 3, ld: 8, points: 120),
  ),
  troop-type: "Infantry (Special Character, Elf)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic-items: (
    rule("Ienh-Khain")[Magic Weapon. This sword gives Aenur +1 Strength as well as the Killing Blow and Parry (6+) special rules.],
  ),
  special-rules: "Elven Grace, Mercenaries",
  special-rules-body: (
    rule("Invincible Swordsman")[Aenur always hits his opponents on a roll of 2+ in close combat.],
  ),
)

#unit("MARIANNA CHEVAUX",
  solo: true,
  subtitle: "Vampire Hunter",
  profiles: (
    (name: "Marianna Chevaux", m: 6, ws: 6, bs: 6, s: 5, t: 4, w: 2, i: 9, a: 3, ld: 9, points: 180),
  ),
  troop-type: "Infantry (Special Character, Vampire)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, throwing weapon, crossbow",
  magic-items: (
    rule("The Noctu")[Talisman. All shooting attacks directed against Marianna or any unit she is with suffer \-1 To Hit.],
  ),
  special-rules: "Dodge (5+), Hidden, Mercenaries, Poisoned Attacks, Scouts",
  special-rules-body: (
    rule("The Red Thirst")[Whenever Marianna kills one or more enemy models in close combat, roll a D6 at the end of the Close Combat phase. On the roll of a 5+, the model recovers a single Wound lost earlier in the battle. This does not work against Animated Constructs, Daemons, Spirits or Vampires.],
    rule("Vampire Hunter")[All enemy Vampires have the Hatred special rule again Marianna. In addition, Marianna counts as having the Poisoned Attacks special rule against Vampires.],
    rule("Vampiric")[Marianna Chevaux has the Fear and Immunity (Psychology) special rules. In addition, models suffer a \-1 penalty To Wound rolls against her, unless they are using Magical Attacks or Flaming Attacks. However, she treats all rivers as Deadly Terrain.],
  ),
  notes: [
- Marianna Chevaux may join units of Humans despite being a Vampire.
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
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
  ],
)
