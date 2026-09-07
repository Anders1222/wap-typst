// Bretonnia 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "bretonnia",
  army: "Bretonnia",
  version: "3.0",
  layout: "army",
  cover: "covers/bretonnia.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Bretonnia 3.0",
  side: 2.0cm, size: 11.5pt)

#cover(
  title: "Bretonnia",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/bretonnia.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Bretonnia*, version 3.0 — written and freely distributed by Mathias
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
This section of the book describes all the different units used in a Bretonnian army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Bretonnian units, and these are detailed here.

#namecost("THE LANCE FORMATION", "")

Any Cavalry unit with this special rule may deploy in the Lance Formation and/or reform into it during the game. A unit in Lance Formation follow the rules for Ranks that apply to Monstrous Cavalry. In effect, if by any means a unit of Bretonnian Knights is formed into a unit three models wide, it is treated as being in Lance Formation. Note that if a unit is ever wider than three models, it no longer counts as being in Lance Formation. In addition to this, the unit may form a unit up to 5 ranks deep.

A Wizard may be placed in the centre of the second rank of the Lance Formation rather than the front rank. Note that she remains fully in play even if she is not in the front rank (so the unit may use her Leadership, she may cast magic, etc.). If a second Wizard joins the unit, she may be placed in the centre of the third rank. If the rank in front of the Wizard ever falls below three models, she will move forward to take up the empty space. A Wizard in the second rank still counts as having line of sight for the purpose of casting spells. When casting a direct damage or magical vortex spell that originates from the Wizard's base, draw this spell from the base of the model in front of the Wizard instead.

On a turn that a unit in Lance Formation makes a successful charge, all models with this special rule gain the Fight in Extra Ranks (1) special rule, and every rider that gets to fight can make up to 2 Supporting Attacks rather than 1. In addition, they count each of their ranks as double for the purpose of determining whether they are Steadfast in turns that they charge.

#namecost("THE BLESSING OF THE LADY", "")

Models with this special rule have the Magical Ward (6+) special rule. This is increased to Magical Ward (5+) against missile attacks. Models with the Grail Vow always have a Magical Ward (5+). Models with the Blessing of the Lady will lose it if they flee for any reason or refuse a challenge.

#namecost("CHIVALROUS VOWS", "")

Many units in the Bretonnian army have one of the following Vows:

#namecost("The Knight's Vow", "")

Models with the Knight's Vow have Immunity (Panic) caused by friendly models without a Chivalrous Vow. In addition, they may only join units with the Knight's Vow.

#namecost("The Crusader's Vow", "")

Models with the Crusader's Vow have Immunity (Panic) caused by friendly models without a Chivalrous Vow and may re-roll failed Panic tests. In addition, they may only join units with the Knight's Vow or the Crusader's Vow. Furthermore, a character with the Crusader Vow allows any unit they join to roll an additional D6 for their charge distance roll and discard the lowest result.

#namecost("The Questing Vow", "")

Models with the Questing's Vow have Immunity (Panic) caused by friendly models without a Chivalrous Vow and may re-roll failed Psychology tests. In addition, they may only join units with the Knight's Vow, the Crusader's Vow or the Questing Vow. Furthermore, they ignore Initiative penalties from using great weapons in any turn that they charge, but they may not use a heavy lance (unless specified).

#namecost("The Grail Vow", "")

Models with the Grail Vow gain +1 Weapon Skill and Attacks (if taken as an upgrade), as well as the Immunity (Psychology) and Magical Attacks special rules. In addition, they may only join units with the Knight's Vow, the Crusader's Vow, the Questing Vow or the Grail Vow. Furthermore, characters with the Grail Vow add +1 to their Leadership.

#namecost("THE PEASANT'S DUTY", "")

Models with the Peasant's Duty treat all friendly models with a Chivalrous Vow as having the Inspiring Presence (6) special rule. In addition, unit standards in units with the Peasant’s Duty do not confer any additional victory points if captured. Characters with the Peasant's Duty may not join units that have a Chivalrous Vow.

#namecost("PUREBRED WARHORSE", "")

Models with this special rule do not suffer any movement penalties for being barded.
]

#lore("THE LORE OF THE LADY")[

#spell("FAVOUR OF THE LADY", "Lore Attribute")[If a spell from the Lore of the Lady is successfully cast on a friendly unit that has the Blessing of the Lady, it may re-roll Magical Ward rolls of 1 until the start of the next Bretonnian Magic phase.]

#spell("THE LADY'S GIFT", "Signature Spell", cast: "6+")[Remains in Play. _The Lady's Gift_ is an *augment* spell with a range of 18" that targets a unit with a Chivalrous Vow. While this spell is in effect, the target unit has the Regeneration (6+) special rule.]

#spell("MIST OF CHALONS", 1, cast: "5+")[_Mist of Châlons_ is an *augment* spell with a range of 18". All missile attacks targeting the unit suffer a \-1 To Hit penalty until the start of the caster's next Magic phase.]

#spell("BEGUILEMENT OF BLONDEL", 1, cast: "6+")[Remains in Play. _Beguilement of Blondel_ is a *hex* spell with a range of 24". While the spell is in effect, the target is subject to the Stupidity special rule.]

#spell("DOOM OF DOL", 2, cast: "7+")[Remains in play. _Doom of Dol_ is a *hex* spell with a range of 24" that targets a single enemy Character (even a character in a unit) or Lone Model. Choose one friendly character with any Chivalrous Vow in your army. While the spell is active, the chosen Knight will Hit and Wound that enemy model on a 2+ with the Ignores Armour Saves special rule.]

#spell("STEED OF THE LADY", 2, cast: "7+")[_Steed of the Lady_ is a *conveyance* spell with a range of 18" that targets Cavalry or Monstrous Cavalry with a Chivalrous Vow. The target may immediately make a normal move as if it were the Remaining Moves sub- phase.]

#spell("THE LADY'S WRATH", 3, cast: "9+")[_The Lady's Wrath_ is an *augment* spell with a range of 18" that targets a unit with a Chivalrous Vow. The target unit gains +1 Strength (excluding mounts) and the Armour Piercing (1) special rule until the start of your next Magic phase.]

#spell("SHIELD OF THE LADY", 3, cast: "10+")[_Shield of the Lady_ is an *augment* spell with a range of 18" that targets a unit with a Chivalrous Vow. The target unit may re-roll failed armour saves until the start of your next Magic phase.]

#spell("THE CURSE OF THE LADY", 4, cast: "11+")[_The Curse of the Lady_ is a *hex* spell with a range of 12" that targets a single model (even a character in a unit). If the spell is successfully cast, the enemy is turned into a frog. Replace the model with a frog familiar or similar marker. This marker cannot be damaged and does not interfere with other units, simply move it so it is 1" away from all units and impassable terrain in a random direction if needed.

At the start of each enemy turn, the transformed model must take a Leadership test; if successful it is transformed back into its original shape, facing in a random direction. If the test is failed, move the marker D6" in a random direction, stopping within 1" of other units or impassable terrain. If the model is still in its frog form at the end of the game, it is treated as a casualty.]

#spell("CHIVALRIC ONSLAUGHT", 4, cast: "12+")[_Chivalric Onslaught_ is an *augment* spell with a range of 18" that targets a unit with a Chivalrous Vow. Until the start of the caster's next Magic phase, all models in the unit (excluding mounts) gain +1 To Hit and the Devastating Charge special rule.]

]

= VIRTUES OF THE CHIVALRIC KNIGHT

#columns(2)[
*This section contains the rules for different Virtues used by the Bretonnians. More than one character can have the same Virtue, but to represent the rarity of this, any character that takes a Virtue another character already has must pay double the points listed below. If a third character takes the same Virtue they must pay triple, and so on.*

#namecost("VIRTUE OF HEROISM", "35 points")

The Knight has the Heroic Killing Blow special rule.

#namecost("VIRTUE OF STOICISM", "35 points")

The Knight (and any unit he has joined) gains the Cold-Blooded special rule.

#namecost("VIRTUE OF THE IDEAL", "30 points")

The Knight gains the following bonuses to his profile: +2 Weapon Skill, +1 Initiative, +1 Attack. He may not be the army's General and any friendly unit (including other Knightly characters, or units using a Knight's Leadership) taking any form of Leadership test within 6" of this model suffers a \-1 penalty to their Leadership.

#namecost("VIRTUE OF THE IMPETUOUS KNIGHT", "30 points")

The Knight, and any mounted unit he is with, adds +D3" to their charge distance.

#namecost("VIRTUE OF AUDACITY", "30 points")

Against enemies with a higher Strength than himself (before modifications from weapons etc), the Knight may re-roll any failed rolls to hit and to wound.

#namecost("VIRTUE OF CONFIDENCE", "25 points")

The Knight must always issue challenges, and will always accept them if possible. In challenges, the Knight may re-roll all failed rolls to hit and to wound.

#namecost("VIRTUE OF KNIGHTLY TEMPER", "25 points")

For each attack that the Knight hits and wounds with on the charge (after Saves), he may make an additional attack. Extra attacks are not generated if these additional attacks also hit and wound.

#namecost("VIRTUE OF DEVOTION", "20 points")

The Knight is completely immune to the effects of all enemy spells.

#namecost("VIRTUE OF DUTY", "20 points")

For as long as the General is alive, the model with this Virtue adds +1 to the combat resolution of any fight of which he is a part. May not be taken by the General.

#namecost("VIRTUE OF THE PENITENT", "20 points")

The Knight has the Stubborn special rule, though he may never join any friendly units.

#namecost("VIRTUE OF THE JOUST", "20 points")

The Knight may re-roll failed rolls to hit when charging and/or using a lance (including magical lances).

#namecost("VIRTUE OF DISCIPLINE", "15 points")

Enemies can never claim the Outnumber bonus against the Knight and any unit he is with.

#namecost("VIRTUE OF KNIGHTLY ARDOUR", "15 points")

The Knight and unit he is with may choose to Counter- charge as long they distance between them and the enemy is less than the Movement value of the enemy unit, and even if they failed their charge the previous turn.

#namecost("VIRTUE OF NOBLE DISDAIN", "15 points")

The Knight Hates all enemies using missile weapons including war machine crews. In addition, any unit the Knight has joined never takes Panic tests caused by suffering 25% casualties from Shooting or Magic.

#namecost("VIRTUE OF PURITY", "15 points")

The Knight gains a +1 bonus to their Magical Ward save from the Blessing of the Lady.

#namecost("VIRTUE OF EMPATHY", "10 points")

If the Knight is not the army's General, models with the Peasant's Duty within 12" of him treat him as having the Inspiring Presence rule. If he is the army’s General, his Inspiring Presence rule is instead increased to 18" for models with the Peasant's Duty. In addition, he may join units with the Peasant's Duty.

#namecost("VIRTUE OF UTTER SERENTIY", "15 points")

All enemy Wizards within 12" of this Knight suffer \-1 casting penalty.
]

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Bretonnians. These may be used in addition to the magic items found in the Warhammer rulebook. Bretonnian characters equipped with a normal lance and a magic weapon may use their lance when charging and then use the magic weapon in the second and subsequent turns of a close combat.])

#magic-item-section("weapon", first: true)[
#magic-weapon("SILVER LANCE OF THE BLESSED", 70, type: "Heavy lance")[If the model has the Blessing of the Lady, then all attacks with the Silver Lance of the Blessed automatically hit. In addition, all successful enemy armour saves and Magical Wards must be re-rolled. However, if the model wielding the lance flees for any reason, he suffers D6 Flaming Strength 4 hits with the Ignores Armour Saves special rule.]

#magic-weapon("DRAGON SLAYING SWORD", 45, type: "Great weapon")[The wielder gains the Multiple Wounds (D6) special rule against Draconids.]

#magic-weapon("CRUSADER'S LANCE", 30, type: "Heavy lance")[This weapon gives the wielder the Devastating Charge and Hatred special rules.]

#magic-weapon("SWORD OF HEROES", 30)[Against enemies that have Toughness 5 or greater, the bearer gets +2 Strength and the Multiple Wounds (D3) special rule.]

#magic-weapon("WYRMLANCE", 30, type: "Heavy lance")[The wielder of the Wyrmlance gains a Strength 3 Breath Weapon with the Flaming Attacks special rule. In addition, all attacks made with the Wyrmlance have the Flaming Attacks special rule.]

#magic-weapon("BIRTH-SWORD OF CARCASSONNE", 25)[The Birth-sword of Carcassonne gives +1 Strength to the wielder. Enemies wounded by the sword must re- roll successful armour saves.]

#magic-weapon("SWORD OF THE QUEST", 25, only: "Questing Vow")[The Sword of the Quest may be used as either a hand weapon or a great weapon, decided at the start of each round combat. All attacks made by the Sword of the Quest have the Ignores Armour Saves special rule.]

#magic-weapon("HEARTWOOD LANCE", 25, type: "Heavy lance")[The Heartwood Lance allows the bearer to re-roll all failed rolls to wound.]

#magic-weapon("FRONTIER AXE", 25, type: "Great weapon")[All attacks made with this weapon have the Multiple Wounds (2) special rule.]

#magic-weapon("THE VIRTUOUS LANCE", 25, type: "Heavy lance")[This lance gives the wielder the Mighty Blow (1) and Multiple Wounds (D3) special rules when charging. When fighting Monstrous Creatures and Monsters, once you have established how many wounds have been inflicted, roll a D6 and add the number of wounds caused to the score. If the total is equal to 6 or more, remove the model as a casualty. Note that the wielder must cause at least one unsaved Wound for this rule to take effect.]

#magic-weapon("FOEBREAKER", 20)[This weapon gives the wielder +1 Strength. Any enemy Character or Lone Model that suffers one or more unsaved wounds from the Foebreaker suffer a \-1 penalty Weapon Skill and Attacks (to a minimum of 1) until the end of the next round of Close Combat.]

#magic-weapon("LANCE OF ARTOIS", 15, type: "Heavy lance")[The Lance of Artois gives the wielder the Killing Blow special rule on turns in which the character charges.]

#magic-weapon("SWORD OF THE LADY'S CHAMPION", 15, only: "Character with the Grail Vow")[The character always counts their Strength as one higher than their target's Toughness, unless their Strength would normally be more than this.]

#magic-weapon("SWORD OF THE STOUT HEARTED", 10, type: "Great weapon")[This weapon gives the wielder the Immunity (Psychology) special rule.]
]

#magic-item-section("armour")[
#magic-armour("ARMOUR OF THE MIDSUMMER SUN", 50, type: "Heavy armour")[Opponents suffer a \-1 penalty To Hit the wearer of the Armour of the Midsummer Sun with both missile and close combat attacks.]

#magic-armour("ARMOUR OF AGILULF", 40, type: ("Heavy armour", "Shield"))[The wearer of the Armour of Agilulf gains Weapon Skill 10, but may not use a weapon that Requires Two Hands.]

#magic-armour("CUIRASS OF FORTUNE", 40, type: "Heavy armour")[The Knight may re-roll 1's when rolling To Hit, To Wound and when making armour saves.]

#magic-armour("ANOINTED ARMOUR", 35, only: "Infantry or Cavalry", type: "Heavy armour")[The wearer of this armour may re-roll failed Magical Ward saves as long as they have the Blessing of the Lady.]

#magic-armour("GROMRIL GREAT HELM", 35, only: "Infantry or Cavalry")[The Gromril Great Helm gives the wearer a 6+ armour save and allows them to re-roll failed armour saves.]

#magic-armour("GILDED CUIRASS", 30, only: "Grail Vow", type: "Heavy armour")[The wearer of the Gilded Cuirass gains the Regeneration (6+) special rule.]

#magic-armour("HELM OF THE DRAGON SLAYER", 20)[This armour gives the wearer a 6+ armour save. In addition, the Ward Save from the Blessing of the Lady is increased to 5+ against close combat attacks and the wearer gains the Immunity (Flaming Attacks) special rule.]

#magic-armour("THE GRAIL SHIELD", 15, only: "Grail Vow", type: "Shield")[The wearer gains +1 to the Magical Ward save gained from the Blessing of the Lady.]

#magic-armour("ORCBANE SHIELD", 15, type: "Shield")[Any Orc or Goblin unit within 12" of the model with the Orcbane Shield that must take an Animosity test fails it on a 1\-2 instead of a 1.]

#magic-armour("IRONSPIKE SHIELD", 10, type: "Shield")[Whenever an enemy model rolls a natural 1 To Hit against the bearer of this shield, they immediately suffer a Strength 3 Hit with the Armour Piercing (1) special rule.]
]

#magic-item-section("talisman")[
#talisman("SIRIENNE'S LOCKET", 65, only: "Baron")[A model with Sirienne's Locket has Immunity (Killing Blow, Multiple Wounds) and can never suffer more than one wound in any one phase. After the first wound in that phase is suffered, all subsequent wounds suffered during that phase are ignored. The bearer can still be run down by pursuing enemies as normal, and may still be affected as normal by other "instant kill" attacks.]

#talisman("HOLY ICON", 50)[The Holy Icon gives the bearer and any unit they are with the Immunity (Psychology) and Magic Resistance (3) special rules.]

#talisman("INSIGNIA OF THE QUEST", 25, only: "Questing Vow")[If the bearer of the Insignia of the Quest is ever reduced to 1 Wound, then the Knight instantly gains a Magical Ward Save (3+) as long as they remain at 1 Wound. If the character suffers an attack that would kill him before he has gained this Ward save (such as Killing Blow or Multiple Wounds), he will be reduced to 1 Wound, then may attempt his Magical Ward (3+) save to stay alive and nullify any further wounds caused by the same hit.]

#talisman("TOKEN OF THE DAMSEL", 20, only: "Baron or Paladin", one-use: true, common: true)[The wearer of the Token of the Damsel ignores the first wounding Hit (after saves) suffered during the game.]

#talisman("LUCKY HEIRLOOM", 15, common: true)[Once per Close Combat phase, the bearer of the Lucky Heirloom can re-roll a single failed roll To Hit or To Wound, or re-roll a failed armour save or Magical Ward save roll.]

#talisman("MANTLE OF THE DAMSEL ELENA", 10)[The wearer of the Mantle of the Damsel Elena gains the Immunity (Killing Blow, Poisoned Attacks) special rule.]

#talisman("GRAIL PENDANT", 10, only: "Models with the Grail Vow", one-use: true, common: true)[When the wearer of the Grail Pendant loses their last Wound, roll a D6. On a roll of 2+, the Wound is not lost.]
]

#magic-item-section("arcane")[
#arcane-item("SACRAMENT OF THE LADY", 50, type: "Relic")[The bearer may use the Sacrament of the Lady at the start of any Bretonnian Magic phase. The model adds 2D3 Power Dice to your power pool, but may not cast any spells that turn.]

#arcane-item("THE SILVER MIRROR", 45, type: "Charm", one-use: true)[When used, the bearer of the Silver Mirror deflects a spell cast at them or the unit they are with back at the enemy caster. The enemy can try to dispel their own spell as normal using any remaining Power dice or Dispel dice. This item has no effect on spells that do not specifically target the bearer or the unit they are with.]

#arcane-item("PRAYER ICON OF QUENELLES", 45, type: "Relic")[The bearer of Prayer Icon of Quenelles and the unit they are with gain a +1 bonus to the Magical Ward save from the Blessing of the Lady.]

#arcane-item("THE VERDANT HEART", 40, type: "Relic")[The Verdant Heart gives the bearer a +D3 casting bonus when using the Lore of Life. Roll for each spell casting attempt.]

#arcane-item("FLAMESTRIKE WAND", 35, type: "Relic", bound: true)[This item contains the _Fires of U'Zhul_ spell from the Lore of Fire.]

#arcane-item("HEART OF THE WILDS", 20, type: "Relic")[The bearer of this item gains a +2 casting bonus if they are wholly within a forest or water terrain feature.]

#arcane-item("CHALICE OF MALFLEUR", 15, type: "Relic")[At the start of the opponent's Magic phase, the bearer may drink from the Chalice. If they do so, on the roll of a 1 she suffers a wound with no saves allowed, including invulnerable saves. On a roll of 2\-6, an extra Dispel dice is added to the player's pool.]

#arcane-item("POTION SACRE", 10, type: "Charm", one-use: true, common: true)[The Potion Sacre can be used before rolling the dice to cast or dispel a spell. After the dice are rolled, the player may add +1 to the result of one dice. This may cause Ultimate Power or prevent a Miscast.]

#arcane-item("DIADEM OF POWER", 10, type: "Relic")[The bearer of this item gains a +1 casting bonus when casting magical missiles, direct damage or magical vortex spells.]
]

#magic-item-section("enchanted")[
#enchanted-item("THE MANE OF THE PUREBREED", 30, only: "Model on Warhorse")[The Mane of the Purebreed gives +1 Strength to all Warhorses in the unit the model is with.]

#enchanted-item("THE RUBY GOBLET", 25)[This magic item will start to take effect at the end of the first phase during which the bearer or their unit suffers an unsaved wound. From that moment on, the bearer and any unit they are with cannot be wounded on better than a 3+ from any non-magical source.]

#enchanted-item("FALCON-HORN OF FREDEMUND", 20, one-use: true)[The Horn may be sounded at the start of any Bretonnian turn. Until the start of your next turn, no enemy unit may use the Fly special rule.]

#enchanted-item("THE SEAL OF PARRAVON", 20)[The bearer of the Seal of Parravon will always Hit on a 2+ in close combat.]

#enchanted-item("WYRMBREATH VIAL", 20, one-use: true)[The bearer gains a Breath Weapon attack with Strength 4 and Flaming Attacks and Magical Attacks special rules.]

#enchanted-item("BATTLE STONE OF THE MARQUIS", 15, one-use: true)[The Battle Stone may be used at the start of any close combat phase. The bearer (but not any mount) gains +3 Attacks for this round of close combat.]

#enchanted-item("CRUSADER'S CLARION", 15, only: "Cavalry with the Crusader's Vow")[On a turn in which the bearer of the Crusader's Clarion charge, their mount and all mounts in the unit they have joined may re-roll failed rolls To Wound (including Impact Hits)]

#enchanted-item("ANTLERS OF THE GREAT HUNT", 10, only: "Baron or Paladin", common: true)[The model wearing the Antlers of the Great Hunt and any unit they are with roll an additional dice when pursuing and discard the lowest result.]

#enchanted-item("CLAW OF MALGRIMACE", 10)[When fighting Monstrous Creatures and Monsters, the bearer may deduct D3 Attacks from his opponent (not including any rider), to a minimum of 1.]

#enchanted-item("GAUNTLET OF THE DUEL", 10, only: "Baron or Paladin")[Any challenge issued by the bearer of the Gauntlet of the Duel cannot be refused.]

#enchanted-item("TRESS OF ISOULDE", 10, one-use: true)[Nominate one enemy Character, Monstrous Creature or Monster in base contact at the beginning of any Close Combat phase (after challenges). The bearer automatically hits that model that Close Combat round, regardless of other modifiers.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF THE LADY'S GRACE", 50)[The unit carrying the Banner of the Lady’s Grace ignores all negative modifiers to its Leadership characteristic.]

#magic-standard("THE GRAIL BANNER", 50)[All friendly units within 12" of this standard gain +1 Leadership.]

#magic-standard("BANNER OF THE LADY", 40)[All enemy units in base contact with the bearer of the Banner of the Lady get no combat resolution bonus for ranks.]

#magic-standard("CRUSADER'S TAPESTRY", 40, only: "Crusader's Vow")[The unit carrying the Crusader’s Tapestry gains the Frenzy special rule.]

#magic-standard("BANNER OF DEFENCE", 25)[The unit carrying this standard may re-roll failed Magical Ward saves from the Blessing of the Lady against missile attacks.]

#magic-standard("CONQUEROR'S TAPESTRY", 25)[The unit carrying the Conqueror's Tapestry gains +1 Combat Resolution Bonus for the remainder of the game for every enemy unit destroyed in close combat or through pursuit.]

#magic-standard("ERRANTRY BANNER", 25, only: "Knights Errant")[All Knights Errant in the unit get a +1 Strength bonus on any turn they charge. However, a unit with this banner suffers \-2 to its Ld for any Impetuous tests.]

#magic-standard("TWILIGHT BANNER", 25, one-use: true)[The Twilight Banner can be used at the start of any of your Movement phases. For the remainder of the Movement phase, the unit gains the Ethereal special rule.]

#magic-standard("VALOROUS STANDARD", 25)[A unit carrying the Valorous Standard gains the Cold- Blooded special rule.]

#magic-standard("BANNER OF HONOURABLE WARFARE", 15)[A unit carrying the Banner of Honourable Warfare may re-roll any failed rolls To Hit during the first round of close combat when engaged with an enemy equipped with any missile weapons.]

#magic-standard("BANNER OF THE ZEALOUS KNIGHT", 15)[The unit carrying the Banner of the Zealous Knight gains the Vanguard special rule.]

#magic-standard("BANNERS OF CHALONS", 10)[Enemy units cannot choose Stand & Shoot as a charge reaction against the unit carrying the Banner of Chalons.]
]

= CHARACTERS

#unit("LORDS",
  first: true,
  profiles: (
    (name: "Baron", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 100),
    (name: "Paladin", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 60),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Blessing of the Lady, The Knight's Vow, Lance Formation",
  options: (
    optgroup("May choose one of the following:",
    opt("Heavy lance", "+10 points"),
    opt("Polearm (on foot only)", "+10 points"),
    opt("Great weapon", "+15 points"),
  ),
    opt("May take heavy armour", "+18 points"),
    opt("May take a shield", "+5 points"),
    optgroup("May be mounted on one of the following:",
    opt("Warhorse", "+15 points"),
    opt("Pegasus", "+25 points"),
    opt("Royal Pegasus", "+40 points"),
    opt("Royal Hippogryph (Baron only)", "+150 points"),
  ),
    optgroup("May replace the Knights Vow with one of the following:",
    opt("The Crusader's Vow", "+15 points"),
    opt("The Questing Vow", "+15 points"),
    opt("The Grail Vow", "+45 points"),
  ),
    opt("One Paladin may carry the Battle Standard", "+25 points"),
    opt("A Paladin may take one Virtue and/or Magic Items up to a total of", "50 points"),
    opt("A Baron may take one Virtue and/or Magic Items up to a total of", "100 points"),
  ),
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("HANDMAIDENS OF THE LADY",
  profiles: (
    (name: "Prophetess", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 170),
    (name: "Grail Damsel", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 75),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Grail Damsel is a Level 1 Wizard. A Prophetess is a Level 3 Wizard. They use one of the following Lores",
  magic-body: [
of Magic:

- Beasts
- Heavens
- Lady
- Light
- Life
  ],
  special-rules: "Blessing of the Lady, Magic Resistance (1)",
  options: (
    opt("May take an additional Wizard Level", "+35 points"),
    optgroup("May be mounted on one of the following:",
    opt("Warhorse", "+15 points"),
    opt("Pegasus", "+25 points"),
    opt("Unicorn (Prophetess only)", "+25 points"),
  ),
    opt("A Grail Damsel may take Magic Items up to a total of", "50 points"),
    opt("A Prophetess may take Magic Items up to a total of", "100 points"),
  ),
)

#unit("SERGEANTS-AT-ARMS",
  profiles: (
    (name: "Sergeant-at-Arms", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: 40),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "The Peasant's Duty",
  special-rules-body: (
    rule("Yeomen Guard")[You may upgrade one unit of Men-at-Arms with medium armour for +1 point/model for each Sergeant-At-Arms in your army.],
  ),
  options: (
    optgroup("May choose one of the following:",
    opt("Light lance", "+5 points"),
    opt("Polearm (on foot only)", "+5 points"),
    opt("Great weapon", "+10 points"),
  ),
    optgroup("May choose one of the following:",
    opt("Shortbow", "+3 points"),
    opt("Longbow", "+5 points"),
    opt("Crossbow", "+6 points"),
  ),
    optgroup("May choose one of the following:",
    opt("Light armour", "+5 points"),
    opt("Medium armour", "+10 points"),
  ),
    opt("May take a shield", "+5 points"),
    opt("May be mounted on a Horse", "+15 points"),
  ),
  notes: [
- A Sergeant-at-Arms may never be the Army General.
  ],
)

#unit("FACELESS",
  profiles: (
    (name: "Faceless", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: 40),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, longbow",
  special-rules: "Independent, Scouts, Sniper",
  options: (
    opt("May take an additional hand weapon", "+5 points"),
    opt("May take light armour", "+5 points"),
  ),
  notes: [
- A Faceless may never be the Army General.
  ],
)

#unit("PRIESTESSES OF SHALLYA",
  profiles: (
    (name: "Priestess of Shallya", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 2, i: 3, a: 0, ld: 7, points: 70),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  special-rules: "Magic Resistance (1)",
  special-rules-body: [
- *Healing Hands:* A Priestess of Shallya may only join units with the Peasant's Duty special rule. She may be placed in the second rank of any Infantry unit she joins, rather than the first. In addition, any unit the Priestess is with (but not herself) gains the Regeneration (6+) special rule.
- *Prayers of Shallya:* A Priestess of Shallya knows the three Prayers listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and take immediate effect. Each prayer lasts until the start of your next turn. A friendly unit can only be under the effect of one Prayer at a time.
  - *Shallya's Endurance:* The Priestess' unit (but not herself) gains +1 to its Toughness.
  - *Compassionate Mind:* The Priestess' unit (but not herself) gains the Immunity (Psychology) special rule.
  - *Purify:* All Hex spells effecting friendly units within 12" are automatically dispelled. In addition, any units with the Daemonic, Vampiric or Undead special rules in base contact with the Priestess or the unit she is with suffer D6 Strength 4 hits.
  ],
  options: (
    opt("May take Magic Items up to a total of", "50 points"),
  ),
  notes: [
- A Priestess of Shallya may never be the Army General.
  ],
)

= CHARACTER MOUNTS

#unit("HORSE",
  compact: true,
  profiles: (
    (name: "Horse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50",
)

#unit("WARHORSE",
  profiles: (
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
  special-rules: "Purebred Warhorse",
  options: (
    opt("May take barding", "+5 points"),
  ),
)

#unit("UNICORN",
  profiles: (
    (name: "Unicorn", m: 10, ws: 5, bs: 0, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 8, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 50x50",
  special-rules: "Impale, Magical Attacks, Magic Resistance (2)",
  special-rules-body: (
    rule("Impale")[A Unicorn gains the Mighty Blow (1) special rule in any turn that it charges.],
  ),
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
  options: (
    opt("May take Iron-hard Hooves", "+5 points"),
    opt("May take Swift as the Wind", "+5 points"),
    opt("May take barding", "+5 points"),
  ),
)

#unit("ROYAL PEGASUS",
  profiles: (
    (name: "Royal Pegasus", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 7, points: "-"),
  ),
  troop-type: "Monstrous Beast (Equine)",
  base-size: "50x50 or 50x75",
  special-rules: "Fly (9)",
  upgrades: (
    rule("Iron-hard Hooves")[A Pegasus with this upgrade re-roils failed To Wound rolls.],
    rule("Swift as the Wind")[A Pegasus with this upgrade re-rolls any dice results of a 1 when determining its charge range.],
  ),
  options: (
    opt("May take Iron-hard Hooves", "+5 points"),
    opt("May take Swift as the Wind", "+5 points"),
    opt("May take barding", "+5 points"),
  ),
)

#unit("ROYAL HIPPOGRYPH",
  profiles: (
    (name: "Royal Hippogryph", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 8, points: "-"),
  ),
  troop-type: "Monstrous Creature (Avian-Equine)",
  base-size: "50x50 or 50x75",
  special-rules: "Fly (8)",
  upgrades: (
    rule("Bloodrage")[The Hippogryph is subject to Frenzy and Hatred.],
    rule("Serrated Maw")[The Hippogryph gains the Multiple Wounds (2) special rule.],
    rule("Shredding Talons")[The Hippogryph gains the Armour Piercing (1) rule.],
    rule("Swooping Strike")[The Hippogryph gains the Devastating Charge and Mighty Blow (1) special rules when charging.],
  ),
  options: (
    opt("May take Shredding Talons", "+5 points"),
    opt("May take Serrated Maw", "+15 points"),
    opt("May take Swooping Strike", "+15 points"),
    opt("May take Bloodrage", "+30 points"),
    opt("May take barding", "+5 points"),
  ),
)

= CORE UNITS

#unit("KNIGHTS ERRANT",
  first: true,
  profiles: (
    (name: "Knight Errant", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 21),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, shield, barding",
  special-rules: "Blessing of the Lady, The Knight's Vow, Lance Formation, Purebred Warhorse",
  special-rules-body: (
    rule("Impetuous")[A unit containing one or more models with this special rule follow the rules for Berserk Rage from Frenzy. If the test is passed, it may move normally. In addition, whenever a unit of Knights Errant charge, they have Immunity (Psychology) and may re-roll one of their charge distance dice.],
  ),
  options: (
    opt("May replace the Knight's Vow with the Crusader's Vow", "+1 point/model"),
    opt("May upgrade one Knight Errant to a Leader", "+5 points"),
    opt("May upgrade one Knight Errant to a Musician", "+5 points"),
    optgroup("May upgrade one Knight Errant to a Standard Bearer", cost: "+10 points",
    opt("May take a Magic Standard worth up to", "25 points"),
  ),
  ),
)

#unit("KNIGHT OF THE REALM",
  profiles: (
    (name: "Knight of the Realm", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 25),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, shield, barding",
  special-rules: "Blessing of the Lady, The Knight's Vow, Lance Formation, Purebred Warhorse",
  options: (
    opt("May replace the Knight's Vow with the Crusader's Vow", "+1 point/model"),
    opt("May upgrade one Knight of the Realm to a Leader", "+5 points"),
    opt("May upgrade one Knight of the Realm to a Musician", "+5 points"),
    optgroup("May upgrade one Knight of the Realm to a Standard Bearer", cost: "+10 points",
    opt("May take a Magic Standard worth up to", "50 points"),
  ),
  ),
)

#unit("MEN-AT-ARMS",
  profiles: (
    (name: "Man-at-Arms", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 3),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, light armour",
  special-rules: "The Peasant's Duty",
  upgrades: (
    rule("Grail Monk")[A Grail Monk counts as being part of the unit's Command Group. A unit with a Grail Monk counts as having one more rank than they actually do for the purpose of determining if the unit is Steadfast.],
  ),
  options: (
    optgroup("May choose one of the following:",
    opt("Spears", "+0.5 point/model"),
    opt("Polearms", "+2 points/model"),
  ),
    opt("May take shields", "+1 point/model"),
    opt("May upgrade one Man-at-Arms to a Grail Monk", "+5 points"),
    opt("May upgrade one Man-at-Arms to a Leader", "+5 points"),
    opt("May upgrade one Man-at-Arms to a Musician", "+5 points"),
    opt("May upgrade one Man-at-Arms to a Standard Bearer", "+10 points"),
  ),
)

#unit("LONGBOWMEN",
  profiles: (
    (name: "Longbowman", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 6),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, longbow",
  special-rules: "The Peasant's Duty",
  upgrades: [
- *Braziers:* A unit with this upgrade gains the Flaming Attack special rule for their longbows.
- *Defensive Stakes:* Set up the stakes at the start of the game when the unit is deployed. Every model in the front rank has a stake base placed in front of it (these stakes must also be set up within the army's deployment zone).

Defensive Stakes are treated as Defended Obstacles and remain on the table during the game. All Troop Types apart from Infantry and Swarms suffer D6 Strength 4 hits on the turn that they charge a unit behind Defensive stakes. In addition, enemy models in base contact with the Defensive Stakes suffer \-1 to Hit in the first round of close combat. These rules only apply when fighting the unit’s front.
  ],
  options: (
    opt("May take light armour", "+0.5 point/model"),
    opt("May take bucklers", "+0.5 point/model"),
    opt("May take braziers", "+0.5 point/model"),
    opt("May take defensive stakes", "+1 point/model"),
    opt("May upgrade one Longbowman to a Leader", "+5 points"),
    opt("May upgrade one Longbowman to a Musician", "+5 points"),
    opt("May upgrade one Longbowman to a Standard Bearer", "+10 points"),
  ),
)

#unit("PEASANT MOB",
  profiles: (
    (name: "Peasant", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 4, points: 2),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "The Peasant's Duty",
  options: (
    optgroup("May choose one of the following:",
    opt("Spears", "+0.5 point/model"),
    opt("Flails", "+2 points/model"),
    opt("Polearms", "+2 points/model"),
  ),
    opt("May take shields (if armed with spears)", "+1 point/model"),
    opt("May upgrade one Peasant to a Leader", "+5 points"),
    opt("May upgrade one Peasant to a Musician", "+5 points"),
    opt("May upgrade one Peasant to a Standard Bearer", "+10 points"),
  ),
)

#unit("BIDOWERS",
  profiles: (
    (name: "Bidower", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, javelin",
  special-rules: "The Peasant's Duty, Skirmishers",
  options: (
    opt("May replace javelins with slings", "free"),
    opt("May take bucklers", "+0.5 point/model"),
    opt("May upgrade one Bidower to a Leader", "+5 points"),
    opt("May upgrade one Bidower to a Musician", "+5 points"),
  ),
)

= SPECIAL UNITS

#unit("QUESTING KNIGHTS",
  first: true,
  profiles: (
    (name: "Questing Knight", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 26),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Great weapon, heavy armour, shield, barding",
  special-rules: "Blessing of the Lady, The Questing Vow, Lance Formation, Purebred Warhorse",
  options: (
    opt("May upgrade one Questing Knight to a Leader", "+5 points"),
    opt("May upgrade one Questing Knight to a Musician", "+5 points"),
    optgroup("May upgrade one Questing Knight to a Standard Bearer", cost: "+10 points",
    opt("May take a Magic Standard worth up to", "50 points"),
  ),
  ),
)

#unit("PEGASUS KNIGHTS",
  profiles: (
    (name: "Pegasus Knight", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 50),
    (name: "Pegasus", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 6, points: ""),
  ),
  unit-size: "3-9",
  troop-type: "Cavalry (Human)",
  mount: "Pegasus (Equine)",
  base-size: "40x40 or 40x60",
  equipment: "Heavy lance, heavy armour, shield, barding",
  special-rules: "Blessing of the Lady, Fly (9), The Knight's Vow",
  options: (
    opt("May replace the Knight's Vow with the Crusader's Vow", "+2 points/model"),
    opt("May upgrade one Pegasus Knight to a Leader", "+5 points"),
    opt("May upgrade one Pegasus Knight to a Musician", "+5 points"),
    optgroup("May upgrade one Pegasus Knight to a Standard Bearer", cost: "+10 points",
    opt("May take a Magic Standard worth up to", "50 points"),
  ),
  ),
)

#unit("FOOT KNIGHTS",
  profiles: (
    (name: "Foot Knight", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 9),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour",
  special-rules: "Blessing of the Lady, The Knight's Vow",
  options: (
    opt("May replace the Knight's Vow with the Crusader's Vow", "+1 point/model"),
    optgroup("May choose one of the following:",
    opt("Spears", "+0.5 point/model"),
    opt("Polearms", "+2 points/model"),
    opt("Great weapons", "+3 points/model"),
  ),
    opt("May take shields", "+1 point/model"),
    opt("May upgrade one Foot Knight to a Leader", "+5 points"),
    opt("May upgrade one Foot Knight to a Musician", "+5 points"),
    optgroup("May upgrade one Foot Knight to a Standard Bearer", cost: "+10 points",
    opt("May take a Magic Standard worth up to", "50 points"),
  ),
  ),
)

#unit("SQUIRES",
  profiles: (
    (name: "Squire", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 7),
    (name: "Hunting Hound", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 7),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25 (Squire), 20x20, 25x25 (Hunting Hound)",
  equipment: "Hand weapon, longbow",
  special-rules: "The Peasant's Duty, Skirmishers",
  special-rules-body: (
    rule("Hunting Hounds")[Hunting Hounds are War Beasts (Canine). A unit of Squires with Hunting Hounds follows the rules for Mixed Units, with the Squires being the handlers. You may include up to two Hunting Hounds per Squire in the unit.],
  ),
  options: (
    opt("May take light armour", "+0.5 point/model"),
    opt("May take bucklers", "+0.5 point/model"),
    opt("May upgrade one Squire to a Leader", "+5 points"),
    opt("May upgrade one Squire to a Musician", "+5 points"),
    opt("May upgrade one Squire to a Standard Bearer", "+10 points"),
  ),
)

#unit("YEOMEN",
  profiles: (
    (name: "Yeoman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 10),
    (name: "Horse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Horse (Equine)",
  base-size: "25x50",
  equipment: "Hand weapon",
  special-rules: "Fast Cavalry, The Peasant's Duty",
  options: (
    opt("May take light lances", "+1 point/model"),
    optgroup("May choose one of the following:",
    opt("Shortbows", "+1 point/model"),
    opt("Crossbows", "+2 points/model"),
  ),
    optgroup("May choose one of the following:",
    opt("Light armour", "+0.5 points/model"),
    opt("Medium armour", "+1.5 points/model"),
  ),
    opt("May take shields", "+1 point/model"),
    opt("May upgrade one Yeoman to a Leader", "+5 points"),
    opt("May upgrade one Yeoman to a Musician", "+5 points"),
    opt("May upgrade one Yeoman to a Standard Bearer", "+10 points"),
  ),
)

#unit("BATTLE PILGRIMS",
  profiles: (
    (name: "Battle Pilgrim", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 7),
    (name: "Grail Reliquae", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 6, i: 3, a: 4, ld: 8, points: ""),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shield",
  special-rules: "Hatred, Loner, The Peasant's Duty, Stubborn",
  upgrades: (
    rule("Grail Reliquae")[Grail Reliquae follow all the rules for Shrines. Only once all the Grail Pilgrims in the unit (except the Command Group) are removed does the Reliquae itself start taking wounds. In addition, the presence of the Grail Reliquae means that the entire unit will be affected by the Blessing of the Lady.],
  ),
  options: (
    opt("May take light armour", "+0.5 point/model"),
    opt("May upgrade one Battle Pilgrim to a Leader", "+5 points"),
    opt("May upgrade one Battle Pilgrim to a Musician", "+5 points"),
    opt("May upgrade one Battle Pilgrim to a Standard Bearer", "+10 points"),
    opt("May upgrade six Battle Pilgrim to a Grail Reliquae", "+30 points"),
  ),
)

#unit("HERRIMAULTS",
  profiles: (
    (name: "Herrimault", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 7),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, longbow",
  special-rules: "Independent, Scouts, Skirmishers",
  options: (
    opt("May take light armour", "+0.5 point/model"),
    opt("May upgrade one Herrimault to a Leader", "+5 points"),
    opt("May upgrade one Herrimault to a Musician", "+5 points"),
  ),
)

#unit("BRIGANDS",
  profiles: (
    (name: "Brigand", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, light armour",
  special-rules: "Independent",
  options: (
    opt("May be upgraded to Ambushers (unless armed with missile weapons)", "+1 point/model"),
    optgroup("May replace great weapons with one of the following:",
    opt("Crossbows", "+2 points/model"),
    opt("Handguns", "+2 points/model"),
  ),
    opt("May take medium armour", "+1 point/model"),
    opt("May upgrade one Brigand to a Leader", "+5 points"),
    opt("May upgrade one Brigand to a Musician", "+5 points"),
    opt("May upgrade one Brigand to a Standard Bearer", "+10 points"),
  ),
)

= RARE UNITS

#unit("GRAIL KNIGHTS",
  first: true,
  profiles: (
    (name: "Grail Knight", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 9, points: 38),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, shield, barding",
  special-rules: "Blessing of the Lady, The Grail Vow, Lance Formation, Purebred Warhorse",
  options: (
    opt("May upgrade one Grail Knight to a Leader", "+5 points"),
    opt("May upgrade one Grail Knight to a Musician", "+5 points"),
    optgroup("May upgrade one Grail Knight to a Standard Bearer", cost: "+10 points",
    opt("May take a Magic Standard worth up to", "75 points"),
  ),
  ),
)

#unit("HIPPOGRYPH KNIGHTS",
  profiles: (
    (name: "Hippogryph Knight", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 75),
    (name: "Hippogryph", m: 8, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 7, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Human)",
  mount: "Hippogryph (Avian-Equine)",
  base-size: "50x50 or 50x75",
  equipment: "Heavy lance, heavy armour, shield",
  special-rules: "Blessing of the Lady, Fly (8), The Knight's Vow",
  options: (
    opt("May replace the Knight's Vow with the Crusader's Vow", "+3 points/model"),
    opt("May take barding", "+3 points/model"),
    opt("May upgrade one Hippogryph Knight to a Leader", "+5 points"),
    opt("May upgrade one Hippogryph Knight to a Musician", "+5 points"),
    optgroup("May upgrade one Hippogryph Knight to a Standard Bearer", cost: "+10 points",
    opt("May take a Magic Standard worth up to", "50 points"),
  ),
  ),
)

#unit("BALLISTA",
  profiles: (
    (name: "Ballista", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 30),
    (name: "Peasant Crew", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
    (name: "Wall Warden", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Peasant Crew (Human)",
  base-size: "50x50 (Ballista), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, bolt thrower",
  special-rules: "The Peasant's Duty",
  upgrades: (
    rule("Wall Warden")[A Ballista with a Wall Warden may re-roll one failed To Hit roll once per game.],
  ),
  options: (
    opt("May take an additional Peasant Crew", "+5 points"),
    opt("May upgrade one Peasant Crew to a Wall Warden", "+10 points"),
  ),
  notes: [
- You may take 1\-2 Ballistas as a single Rare choice.
  ],
)

#unit("FIELD TREBUCHET",
  profiles: (
    (name: "Field Trebuchet", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 100),
    (name: "Peasant Crew", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
    (name: "Wall Warden", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Peasant Crew (Human)",
  base-size: "50x100 (Field Trebuchet), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, field trebuchet",
  equipment-body: [
- *Field Trebuchet:* A field trebuchet is a stone thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-60\"", "5(10)", "Multiple Wounds (D6)"))
  ],
  special-rules: "The Peasant's Duty",
  upgrades: (
    rule("Wall Warden")[A Field Trebuchet with a Wall Warden may re-roll one Artillery dice once per game.],
  ),
  options: (
    opt("May take an additional Peasant Crew", "+5 points"),
    opt("May upgrade one Peasant Crew to a Wall Warden", "+10 points"),
  ),
)

#unit("BOMBARD",
  profiles: (
    (name: "Bombard", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 90),
    (name: "Peasant Crew", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
    (name: "Wall Warden", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Peasant Crew (Human)",
  base-size: "50x75 (Bombard), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon",
  equipment-body: [
- *Bombard:* A Bombard is a cannon with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "10", "Multiple Wounds (D6)"))

If a misfire is rolled, roll on the Black Powder Misfire Chart as normal, but subtract 1 from the result.
  ],
  special-rules: "The Peasant's Duty",
  upgrades: (
    rule("Wall Warden")[A Bombard with a Wall Warden may re-roll one Artillery dice once per game.],
  ),
  options: (
    opt("May take an additional Peasant Crew", "+5 points"),
    opt("May upgrade one Peasant Crew to a Wall Warden", "+10 points"),
  ),
)

= SPECIAL CHARACTERS

#unit("LOUEN LEONCOEUR",
  solo: true,
  first: true,
  subtitle: "King of Bretonnia",
  profiles: (
    (name: "Louen Leoncoeur", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 7, a: 5, ld: 10, points: 385),
    (name: "Beaquis (Royal Hippogryph)", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 6, a: 4, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Sword of Couronne")[Magic Weapon. The sword allows Louen to re-roll failed rolls to Hit. In addition, any enemy models in base contact with Louen at the beginning of any Close Combat phase must take an Initiative test. If this is failed, that model may make no attacks this round and will be hit automatically.],
    rule("The Lion Lance")[Magic Weapon. Lance. Each successful Hit with the Lion Lance is multiplied into 2 Hits. The lance can only be used when charging; in other rounds of combat, Louen will use the Sword of Couronne.],
    rule("Armour of Brilliance")[Magic Armour. Heavy armour. Opponents suffer a \-1 penalty to all rolls To Hit the wearer with missile weapons and in close combat.],
    rule("The Lion's Shield")[Magic Armour. Shield. The Lion’s Shield gives Louen a Magic Resistance equal to the total number of dice used in the casting of the enemy spell, to a maximum of 3.],
    rule("The Tabard of Kings")[Talisman. Any enemy spell that targets Louen or the unit he is with and is successfully cast inflicts D3 Strength 4 Hits on the Wizard that cast the spell.],
    rule("The Crown of Bretonnia")[Enchanted Item. This item gives Louen the Inspiring Presence (6) special rule. In addition, all friendly units that may use Louen’s Leadership have Immunity (Panic).],
  ),
  special-rules: "Blessing of the Lady, The Grail Vow, Lance Formation",
  special-rules-body: (
    rule("The Virtue of the Lionheart")[Roll a D3 in the beginning of each close combat phase and add the score to Louen's Strength for the duration of that phase.],
    rule("The Lady’s Champion")[Louen gains a Magical Ward (4+) from the Blessing of the Lady. However, if he loses the Blessing, he will immediately lose a Wound with no saves allowed.],
  ),
  options: (
    optgroup("May be mounted on one of the following:",
    opt("Warhorse", "+18 points"),
    opt("Pegasus", "+30 points"),
    opt("Royal Pegasus", "+45 points"),
    opt("Beaquis", "+155 points"),
  ),
  ),
  notes: [
- Louen Leoncoeur must be the Army General.
  ],
)

#unit("BOHEMUND THE BEASTSLAYER",
  solo: true,
  subtitle: "Duke of Bastonne",
  profiles: (
    (name: "Bohemond the Beastslayer", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 10, points: 300),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, barding",
  magic-items: (
    rule("The Beast Mace of Bastonne")[Magic Weapon. The Beast Mace adds +2 to Bohemond’s Strength and has the Multiple Wounds (2) special rule.],
    rule("Bohemond's Shield")[Magic Armour. Shield. Should an enemy strike Bohemond with a Magic Weapon, roll a D6 for each hit. On a roll of 6, the enemy weapon is destroyed. Resolve enemy hits that are not destroyed by the shield in the normal way but once the weapon is broken all further hits from that weapon are ignored.],
  ),
  special-rules: "Blessing of the Lady, The Grail Vow, Hatred (Beastmen, Goblins, Orcs, Skaven), Lance",
  special-rules-body: [
*Formation, Purebred Warhorse, Virtue of Heroism*

- *The Beastslayers of Bastonne:* If Bohemond the Beastslayer is included in your army, you may upgrade one unit of Foot Knights to the Beastslayers of Bastonne for a cost of +1 point per model. This unit gains the Multiple Wounds (2) special rule. The unit must be equipped with polearms.
  ],
)

#unit("TANCRED II",
  solo: true,
  subtitle: "Duke of Quenelles",
  profiles: (
    (name: "Tancred II", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 10, points: 250),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, barding",
  magic-items: (
    rule("The Blade of Banishment")[Magic Weapon. This Sword automatically Wounds models with the Undead special rule, with the Ignores Armour Saves special rule. In addition, the bearer and any unit he is leading have Immunity (Terror) caused by Undead.],
    rule("The Grail Shield")[Magic Armour. Shield. Models from the Forces of Destruction in base contact with Tancred suffer a \-1 To Hit penalty in close combat.],
    rule("Blessed Draught")[Enchanted Item. One use only. Tancred may drink the potion at the beginning of any player's turn. For the duration of that turn, the potion increases Tancred's Strength by D6.],
  ),
  special-rules: "Blessing of the Lady, The Grail Vow, Lance Formation, Purebred Warhorse, Virtue of Purity",
  special-rules-body: (
    rule("The Companions of Quenelles")[If Tancred II is included in your army, you may upgrade one unit of Knights of the Realm to the Companions of Quenelles for a cost of +1 point per model. This unit gains the Immunity (Psychology) special rule and a Magical Ward (6+) against Flaming Attacks.],
  ),
)

#unit("ALBERIC OF BORDELEAUX",
  solo: true,
  subtitle: "Duke of Bordeleaux",
  profiles: (
    (name: "Alberic of Bordeleaux", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 175),
    (name: "Tempete (Royal Hippogryph)", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour, shield",
  magic-items: (
    rule("Trident of Manann")[Magic Weapon. Polearm. The Trident of Manann contains a Bound Spell (Level 1, cast on 5+). This is a *magic missile* with a range of 24" that causes 2D6 Strength 3 hits.],
    rule("Braid of Bordeleaux")[Enchanted Item. The bearer of the Braid of Bordeleaux and any unit they are with gain the Aquatic special rule.],
  ),
  special-rules: "Blessing of the Lady, The Knight's Vow, Lance Formation, Purebred Warhorse, Virtue of Discipline",
  special-rules-body: (
    rule("Spirit of the Tempest")[Alberic, and any models in the same unit, may re-roll 1's to Hit in close combat.],
  ),
  options: (
    optgroup("May be mounted on one of the following:",
    opt("Warhorse", "+18 points"),
    opt("Tempete", "+150 points"),
  ),
    opt("May take Magic Items up to a total of", "25 points"),
  ),
)

#unit("CECIL GASTONNE",
  solo: true,
  subtitle: "The Wyrm Slayer",
  profiles: (
    (name: "Cecil Gastonne", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 9, points: 190),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour, shield",
  magic-items: (
    rule("Sorrow's End")[Magic Weapon. This weapon gives the wielder the +1 Strength and the Multiple Wounds (2) special rule.],
    rule("Dragonhide Cloak")[This item gives the wearer the Immunity (Flaming Attacks, Killing Blow/Multiple Wounds) and Natural Armour (5+) special rules.],
  ),
  special-rules: "Blessing of the Lady, The Knight's Vow",
  special-rules-body: (
    rule("The Wyrm Slayer")[If Cecil Gastonne kills an enemy Monstrous Infantry, Monstrous Cavalry, Monstrous Beast, Monstrous Creature or Monster model in close combat, he gains the Terror special rule for the remainder of the game.],
  ),
)

#unit("REPANSE OF LYONESSE",
  solo: true,
  subtitle: "Damsel of War",
  profiles: (
    (name: "Repanse of Lyonesse", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 8, points: 185),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic-items: (
    rule("Sword of Lyonesse")[Magic Weapon. All magic items belonging to enemy models in base contact with Repanse lose their magical properties and will count as mundane items of their type.],
    rule("The Fleur de Lys Banner")[Magic Standard. This is the army's Battle Standard. In the magic phase, the Bretonnian player may remove one Power Dice from the enemy and add it to their Dispel Pool.],
  ),
  options: (
    opt("May take a heavy lance", "+4 points"),
    opt("May take a shield", "+2 points"),
    opt("May be mounted on a Warhorse", "+12 points"),
  ),
  special-rules: "Blessing of the Lady, Lance Formation, Magic Resistance (3), The Knight’s Vow, Purebred",
  special-rules-body: [
*Warhorse, Terror*
  ],
  order: ("troop-type", "base-size", "equipment", "magic-items", "options", "special-rules"),
)

#unit("TRISTAN THE TROBADOUR",
  solo: true,
  profiles: (
    (name: "Tristan the Trobadour", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 145),
    (name: "Jules the Jester", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 6, points: 30),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60 (Tristan), 20x20 or 25x25 (Jules)",
  equipment: "Heavy lance, heavy armour, shield, barding (Tristan)",
  special-rules: "Blessing of the Lady, Lance Formation, The Questing Vow, Purebred Warhorse, Virtue of Noble Disdain",
  special-rules-body: [
- *Jules the Jester:* Jules is an Infantry model armed with a hand weapon. Jules must deploy within 6" of Tristan at the start of the game but may move freely after this. He has the Dodge (2+) and The Peasant’s Duty special rule. In addition, all enemy units within 6" of Jules suffer a \-1 penalty to Hit rolls in close combat.
- *Valorous Ballads:* Tristan knows the three songs listed below. He may choose to use one of them at the start of each round of close combat.
  - *The Anthem of the Uniter:* Tristan and any unit he has joined have the Stubborn special rule this turn.
  - *The Battle-hymn of Quenelles:* Tristan gains +D3 Combat Resolution bonus this turn.
  - *The Grail Chorale:* The Magical Ward save from the Blessing of the Lady is increased by +1 for Tristan and any unit he has joined this turn.
  ],
  options: (
    opt("May take Magic Items up to a total of", "25 points"),
  ),
  notes: [
- Tristan the Trobadour may use a heavy lance despite having the Questing Vow.
  ],
)

#unit("ODO OF OUTREMER",
  solo: true,
  subtitle: "Hero of the Crusades",
  profiles: (
    (name: "Odo of Outremer", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 130),
    (name: "Suliman the Saracen", m: 5, ws: 5, bs: 3, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 85),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy armour, shield, barding",
  magic-items: (
    rule("Morning Star of Fracasse")[Magic Weapon. This morning star gives the bearer the Mighty Blow (2) special rule. For each Hit he scores on an enemy model with a Magic Weapon, roll a D6. On a 4+, the enemy's weapon is destroyed.],
  ),
  special-rules: "Blessing of the Lady, Lance Formation, The Crusader's Vow, Purebred Warhorse, Virtue of Confidence",
  special-rules-body: (
    rule("Warrior of the Sands")[Odo of Outremer is included in your army then Suliman the Saracen may also be included. Suliman is a Cavalry model and is armed with a great weapon, light armour and shield. Suliman causes Fear in any turn in which he charges. Odo and Suliman always move and fight together as a unit and may join a unit if you wish. Suliman may never be the Army General.],
  ),
  options: (
    opt("May take Magic Items up to a total of", "25 points"),
  ),
)

#unit("THE HERMIT KNIGHT OF MALMONT",
  solo: true,
  profiles: (
    (name: "The Hermit Knight", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 4, ld: 9, points: 170),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic-items: (
    rule("Sword of Virtue")[Magic Weapon. Great weapon. The Sword of Virtue allows the Hermit Knight to re-roll failed rolls of 1 To Hit and to Wound. In addition, it has the Multiple Wounds (D3) special rule.],
    rule("Flask of Sangdragon")[Enchanted Item. One use only. The Hermit Knight may use this item at the beginning of any round of Close Combat. When used, his Strength is then increased by D3 for the duration of this turn.],
  ),
  special-rules: "Blessing of the Lady, The Grail Vow (included in profile), Virtue of the Penitent",
)

#unit("MORGIANA THE FAY",
  solo: true,
  subtitle: "The Fay Enchantress",
  profiles: (
    (name: "Morgiana the Fay", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 3, i: 5, a: 2, ld: 9, points: 420),
    (name: "Silvaron (Unicorn)", m: 10, ws: 5, bs: 0, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 8, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic: "Morgiana le Fay is a Level 4 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Heavens
- Lady
- Light
- Life
  ],
  equipment: "Hand weapon",
  magic-items: (
    rule("The Girdle of Gold")[Talisman. The Girdle gives Morgiana the Fay the Magical Ward (6+) special rule.],
    rule("The Chalice of Potions")[Arcane Item. Relic. At the start of your Magic phase, you may roll a D3 (using a D6). The number refers to the number of Power dice you may add to your army pool. However, if a natural 6 is rolled, the Chalice cannot be used again for the remainder of the game.],
    rule("Morgiana's Mirror")[Arcane Item. Relic. At the start of the enemy Magic phase, Morgiana the Fay may choose one enemy Wizard on the battlefield; against this Wizard, she will get a +2 dispel bonus for the remainder of this turn.],
    rule("Toad Familiar")[Arcane Item. Relic. The Toad Familiar gives Morgiana the Fay a +1 casting bonus.],
  ),
  special-rules: "Fear, Magic Resistance (1)",
  special-rules-body: (
    rule("Supreme Aura of the Lady")[Any unit joined by Morgiana the Fay gains the Magical Attacks special rule. In addition, she causes Terror against Beastmen, Skaven, Goblins and Orcs.],
    rule("Favour of the Fay")[One friendly character with Chivalrous Vow may be given the Favour of the Fay before the game starts but after deployment is finished. This model receives +1 To Hit in close combat. However, if the model loses the Blessing of the Lady, then both the Favoured model and Morgiana the Fay suffer a Wound with no saves allowed.],
    rule("Supreme Blessing of the Lady")[Morgiana the Fay has the Blessing of the Lady. In addition, the Magical Ward save gained from the Blessing of the Lady is increased by +1 for any unit that is joined by her.],
  ),
  options: (
    opt("May be mounted on Silvaron (Unicorn)", "+25 points"),
  ),
  order: ("troop-type", "base-size", "magic", "equipment", "magic-items", "special-rules", "options"),
)

#unit("LADY ELISE DUCHARD",
  solo: true,
  subtitle: "Prophetess of the Duke of Brionne",
  profiles: (
    (name: "Élise Duchard", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 295),
    (name: "Ariandir (Unicorn)", m: 10, ws: 5, bs: 0, s: 4, t: 4, w: 1, i: 5, a: 2, ld: 8, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Ariandir (Equine)",
  base-size: "40x60 or 50x50",
  magic: "Élise Duchard is a Level 3 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Heavens
- Life
  ],
  equipment: "Hand weapon",
  magic-items: (
    rule("The Staff of the Elements")[Arcane Item. Staff. This item allows Élise Duchard to use the Signature Spell from either the Lore of Life or Heavens in addition to her other chosen spells.],
    rule("Chalice Of Brionne")[Enchanted Item. All enemy units within 12" suffer a \-2 Leadership penalty when attempting to use Inspiring Presence, Hold Your Ground, Rally, March, Redirecting a Charge, Reforming from Defeat, Restraining from Pursuit or Swift Reform.],
  ),
  special-rules: "Aura of the Lady, Impale (Ariandir only, see Unicorns), Magical Attacks (Ariandir only), Magic Resistance (1)",
  special-rules-body: (
    rule("Arcane Backlash")[Élise Duchard has a +1 dispel bonus. In addition, if she rolls any natural double when dispelling, treat this has having rolled Ultimate Power. If a spell is dispelled by her rolling two or more natural 6's, the casting Wizard also suffer a Wound which Ignores Armour saves.],
  ),
  order: ("troop-type", "mount", "base-size", "magic", "equipment", "magic-items", "special-rules"),
)

#unit("THE GREEN KNIGHT",
  solo: true,
  subtitle: "Guardian of the Sacred Sites",
  profiles: (
    (name: "The Green Knight", m: 4, ws: 7, bs: 3, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 10, points: 240),
    (name: "The Shadow Steed", m: 9, ws: 4, bs: 0, s: 4, t: 3, w: 1, i: 4, a: 2, ld: 6, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Spirit)",
  mount: "The Shadow Steed (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy armour, shield",
  magic-items: (
    rule("The Dolorous Blade")[Magic Weapon. The Dolorous Blade may be used in one of two ways. Either the Green Knight can use the Blade to gain +D6 Attacks, or it can be used to add +2 to his Strength. The Green Knight may change which method he is using to attack with in each Close Combat phase if he wishes to.],
  ),
  special-rules: "Ethereal, Terror, Unstable",
  special-rules-body: [
- *Aura of the Fey:* If the Green Knight's Wounds value is ever reduced to zero, remove him from play as normal. However, in the Remaining Moves part of the following Bretonnian Movement phase, the Bretonnian player may attempt to reawaken the Green Knight as described in Guardian of the Sacred Sites below, following all the same rules. However, each time the Green Knight is slain, a \-1 is suffered on the next dice roll made to awaken him (e.g., after he is slain for the first time, he will awaken the following turn on a 4+ rather than a 3+. After the second time, he awakens on a 5+, etc). If he does not appear, a test may be taken during each following Bretonnian Remaining Moves phase to see if he returns. For calculating Victory Points, the enemy only gets full Victory Points for the Green Knight if he is not on the table at the end of the game.
- *Guardian of the Sacred Sites:* The Green Knight is not deployed with the rest of the army, but follows the entry rules for Ambushers instead, with the following exception that he may appear in the first turn instead of the second.

When the Green Knight is awoken, he must be placed in either a forest or a water terrain piece anywhere on the table, but otherwise follows the rules for Ambushers as normal. If no forest of water feature is present, he may enter from any table edge using the normal rules.

During the game, the Green Knight may disappear at will and reappear in another location completely. If the Green Knight is within (or moves into) a forest or water terrain piece during the Remaining Moves phase, then he may instantly be removed from the table and replaced anywhere on the table within another forest or water terrain piece, facing in any direction. He may not move any further that turn. Note that he still may not end his move within impassable terrain.
  ],
  notes: [
- The Green Knight may never be the Army General.
  ],
)

#unit("BERTRAND THE BRIGAND",
  solo: true,
  subtitle: "Leader of the Bowmen of Bergerac",
  profiles: (
    (name: "Bertrand", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 90),
    (name: "Little Hugo", m: 4, ws: 4, bs: 4, s: 5, t: 4, w: 1, i: 4, a: 2, ld: 7, points: ""),
    (name: "Gui the Great", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 6, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, longbow",
  magic-items: [
- *The Black Arrow:* Enchanted Item. One use only. The Black Arrow has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("36\"", "10", "Killing Blow"))
  ],
  special-rules: "Loner, Scouts, Skirmisher, Sniper",
  special-rules-body: (
    rule("The Bowmen of Bergerac")[Bertrand must be accompanied by a unit of Herrimaults chosen from the army list at a cost of 9 points per model. This unit has +1 Ballistic Skill. Little Hugo and Gui the Great are part of the unit's Command Group and must be upgraded at no additional cost. Bertrand is the unit's Leader and may never choose to leave this unit.],
    rule("Marksman")[Bertrand may re-roll failed to Hit rolls with missile weapons.],
    rule("Hugo le Petit")[Little Hugo is armed with a warbow instead of a longbow.],
    rule("Gui le Gros")[As long as Gui the Great is alive, the unit he is with may re-roll failed Leadership tests.],
  ),
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
