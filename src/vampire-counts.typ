// Vampire Counts 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "vampire-counts",
  army: "Vampire Counts",
  version: "3.0",
  layout: "army",
  cover: "covers/vampire-counts.png",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Vampire Counts 3.0")

#cover(
  title: "Vampire Counts",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/vampire-counts.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Vampire Counts*, version 3.0 — written and freely distributed by Mathias
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
This section of the book describes all the different units used in a Vampire Counts army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Vampire Counts units, and these are detailed here.

#namecost("BLOODLINES", "")

Most Vampires belong to a certain Bloodline, such as von Carstein, Necrach, Lahmian, Blood Dragon or Strigoi. Characters belonging to one Bloodline may not join units belonging to another Bloodline, nor may two characters from different Bloodlines join the same unit.

#namecost("THE GENERALS OF UNDEATH", "")

If your army contains any Undead units, you must include at least one character that is a Wizard that uses the Lore of Necromancy.

#namecost("Slain General", "")

At the end of the phase in which the General is removed as a casualty, and at the start of every friendly turn thereafter, all friendly Undead units (excluding mounts) on the battlefield must take a Leadership test. If the test is failed, the unit immediately suffers a number of Wounds equal to the amount by which it failed the Leadership test, with no saves of any kind allowed. These Wounds are distributed as if from a shooting attack.

If, at the start of any of your turns following the death of the General, there is one or more friendly Wizard Characters on the table who know spells from the Lore of Necromancy, no unit in the army needs to take this Leadership test while at least one of them remain.

#namecost("Battle Standards", "")

In addition to the normal rules for the army battle standard, units of Undead within 12" of their battle standard suffer D3 Wounds less than they normally would due to the Unstable special rule, or following the death of the army's General.

#namecost("Characters and Units", "")

Characters who are not Undead may join Undead units despite not being Unstable themselves. Mounted Characters ignore the Undead special rule of the mount. If an Undead unit would get destroyed as a result of Unstable, any remaining character(s) will need to take a Break test as normal the same phase, using the Leadership modifier that they lost the combat by.

#namecost("DEATH SHRIEK", "")

A Death Shriek is a special attack that can be used against a single unit in the Shooting phase, even if the model has marched, charged, or the target is engaged in close combat. This attack has a range of 8" and needs line of sight to its target. If the model is engaged in combat, its Death Shriek may target a unit in base contact.

To resolve a Death Shriek, roll 2D6+3. For each point by which the result exceeds the target unit's Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Death Shriek is a non-physical Magical Attack and Wounds suffered from it are distributed as if from shooting.

#namecost("MASTER OF THE DEAD", "")

A model with this special rule can use the _Invocation of Nehek_ spell from the Lore of Necromancy to increase units of Skeleton Warriors and Skeleton Archers beyond their starting size.

#namecost("SPECTRAL STEEDS", "")

Mounted models with this special rule gain the Ethereal special rule for the purposes of movement only. They do not suffer the movement penalty for being barded. Whilst a unit with this special rule is joined by a character without the Spectral Steeds or Ethereal special rules, it loses this special rule.

#namecost("UNDEAD", "")

All models with the Undead special rule have the Animated Construct, Fear, and Unstable special rules. However, they may make march moves if they are within the Army General's Inspiring Presence range or are joined by a character with the Lore of Necromancy.

#namecost("VAMPIRIC", "")

Models with the Vampiric special rule have the Fear and Immunity (Psychology) special rules. In addition, models suffer \-1 To Wound rolls against them, unless they are using Magical Attacks or Flaming Attacks. However, Vampiric models treat all rivers as Deadly Terrain unless they are mounted.

#namecost("THE RED THIRST", "")

Roll a D6 at the end of each Close Combat phase in which one or more models was slain by a Vampire with this special rule. On a 5+, the Vampire recovers a single Wound, up to their starting value (excluding additional Wounds from mounts). This does not work against Animated Constructs, Daemons, Forest Spirits or Vampires.
]

#lore("THE LORE OF NECROMANCY")[

#spell("THE CURSE OF UNDEATH", "Lore Attribute")[When a spell from the Lore of Necromancy is successfully cast, all Undead units (excluding mounts) within 6" of the caster regain 1 Wound (Core Units regain D3 Wounds) following the rules for _Invocation of Nehek._]

#spell("INVOCATION OF NEHEK", "Signature Spell", cast: "6+")[_Invocation of Nehek_ is a *summoning* spell with a range of 18" that targets Undead (excluding mounts). The target immediately regains a number of Wounds as follows: Core Units gain 2D6 Wounds; Special Units (except Cavalry) gain D6 Wounds. Characters, Special Units that are Cavalry and Rare Units regain D3 Wounds per successful casting. Models gained are distributed as a summoning spell. Any characters in a unit can only be healed if targeted separately from the rest of the unit, in which case only they are healed.]

#spell("HAND OF DUST", 1, cast: "5+")[Remains in play. _Hand of Dust_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the caster gains an additional special attack in close combat that does not benefit from any other magic items or special rule. If this Attack Hits, the target suffers an automatic Wound with the Ignores Armour Saves and Multiple Wounds (D6) special rules.]

#spell("VANHEL'S DANSE MACABRE", 1, cast: "5+")[_Vanhel's Danse Macabre_ is a *conveyance* spell with a range of 24" that targets Undead (including mounts). The target can immediately make a normal move as if it were the Remaining Moves sub-phase (including any Characters in the unit).]

#spell("HELLISH VIGOUR", 1, cast: "7+")[_Hellish Vigour_ is an *augment* spell with a range of 18". All Undead models (including mounts) in the unit gain the Always Strikes First special rule and may re-roll failed To Hit rolls in Close Combat until the start of the caster's next Magic phase.]

#spell("FOUNTAINS OF BLOOD", 2, cast: "7+")[_Fountains of Blood_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all failed To Wound rolls made against this unit may be re-rolled. In addition, Vampires gain a +1 to bonus to any The Red Thirst rolls for Wounds caused against this unit.]

#spell("DEATHLY CABAL", 2, cast: "8+")[_Deathly Cabal_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, the target gains the Fear and Magical Ward (6+) special rules.]

#spell("GAZE OF NAGASH", 2, cast: "9+")[_Gaze of Nagash_ is a *magic missile* with a range of 24" that causes 2D6 Strength 4 hits.]

#spell("RAISE DEAD", 3, cast: "9+")[_Raise Dead_ is a *summoning* spell with a range of 18" that brings a unit of Zombies into play. Roll 2D6+3. This is how many models comprise the new unit. The caster can choose to summon 2D6+3 Skeleton Warriors with shields instead. If they do so, the casting value is increased to 12+.]

#spell("UNQUIET SPIRITS", 3, cast: "10+")[_Unquiet Spirits_ is a *direct damage* spell with a range of 24". The target suffers 3D6 Strength 2 hits with the Ignores Armour Saves special rule.]

#spell("MALEDICTION OF NAGASH", 3, cast: "11+")[_Malediction of Nagash_ is a *hex* spell with a range of 24". The target halves their Strength (rounding down) until the start of the caster's next Magic phase.]

#spell("SPIRITUAL VORTEX", 4, cast: "11+")[Remains in play. _Spiritual Vortex_ is a *summoning* spell with a range of 24" that summons the 5" template. While the spell is in effect, the template counts as Dangerous Terrain, and enemy units within 6" of it suffer \-1 to their Leadership.]

#spell("CURSE OF YEARS", 4, cast: "12+")[Remains in Play. _Curse of Years_ is a *hex* spell with a range of 18". When cast, roll a D6 for every model in the target unit – on a score of 6 the model suffers a Wound which Ignores Armour Saves. At the end of the next Magic phase, roll again for each model in the unit, they will suffer a Wound on a 5+, and so on, to a maximum of 2+.]

#spell("WIND OF UNDEATH", 4, cast: "13+")[_Wind of Undeath_ is a *direct damage aura* spell with a range of 12". Each unit within range suffer 2D6 Strength 3 Hits which Ignores Armour Saves.]
]
= VAMPIRIC POWERS

*In this section you will find powers that can be bought for your Vampires. You cannot buy multiples of the same power for a single Vampire, but different Vampires in the same army can have the same powers if you wish. Each Vampire may only take powers from their own Bloodline (unless specified).*

#namecost("RED FURY", "30 points")

Blood Dragon or Strigoi only. For each unsaved Wound caused by the model in close combat, it can immediately make an additional Attack (to a maximum of +3 Attacks). These additional Attacks do not benefit from Red Fury.

#namecost("UNHOLY REGENERATION", "30 points")

Necrarch or Strigoi only. The model gains the Regeneration (4+) special rule.

#namecost("CURSE OF THE REVENANT", "20 points")

Necrarch or Strigoi only. The model has a 3+ invulnerable save when they have a single Wound remaining (if the model suffers multiple Wounds in a single turn, it is reduced to 1 Wound and may then attempt to take this invulnerable save).

#namecost("FEAR INCARNATE", "20 points")

All enemy units in base contact with the model must pass a Leadership test at the start of each round of close combat or suffer \-1 To Hit this round.

#namecost("FLYING HORROR", "20 points")

Model on foot only. Thе model gains the Fly (10) special rule and may join units of Fell Bats.

#namecost("SUPERNATURAL HORROR", "15 points")

Von Carstein, Necrarch or Strigoi only. The model gains the Terror special rule.

#namecost("TRANSFIX", "15 points")

Von Carstein or Lahmian only. At the beginning of the Close Combat phase, select one model in base contact with the Vampire. The victim must pass a Leadership test or get reduced to Weapon Skill 1 for the duration of this round of Close Combat phase and all attacks directed against the victim will hit automatically.

#namecost("HUNTER IN THE DARK", "10 points")

Lahmian or Strigoi on foot only. The model has the Scouts special rule.

#namecost("UNBENDING WILLPOWER", "10 points")

Von Carstein or Necrarch only. Units of Undead within 6" of one or more models with this power suffer one less Wound than they normally would due to the Unstable special rule or following the death of the army's General. Note that this is not cumulative with the Battle Standard.

#namecost("HONOUR OR DEATH", "5 points")

Von Carstein or Blood Dragon only. After issuing or accepting a challenge with a model with this power, the enemy character must take a Leadership test. If failed, the enemy model will automatically refuse the challenge following the normal rules.

#entry("VON CARSTEIN")
#namecost("AURA OF DARK MAJESTY", "30 points")

All enemy units within 6" of one or more models with the Aura of Dark Majesty suffer a \-1 penalty to their Leadership. This penalty is cumulative with any other modifiers.

#namecost("SPECTRAL ATTENDANTS", "25 points")

All enemy Wizards within 18" of the model must re- roll successful channelling results.

#namecost("WALKING DEATH", "20 points")

Any unit in base contact with the model must re-roll successful Break tests.

#namecost("CALL WINDS", "10 points")

Bound Spell (Level 3, cast on 9+). _Call Winds_ is a *hex aura* spell with a range of 24". Until the start of caster's next Magic phase, all enemy missile attacks fired from within or at a target within range suffer \-1 To Hit.

#namecost("EARTH BIND", "10 points")

The model and any unit they join gain the Magic Resistance (1) special rule.

#namecost("SUMMON CREATURES", "")
#namecost("OF THE NIGHT", "10 points")

This Vampire can use the _Invocation of Nehek_ spell to heal and increase units of Dire Wolves, Bat Swarms and Fell Bats beyond their starting size, even though they are not all Undead.

#namecost("WOLF FORM", "10 points")

Model on foot only. The model gains Movement 9 and the Swiftstride special rule. In addition, they may join units of Dire Wolves.

#namecost("WOLF LORD", "10 points")

The model allows all friendly units of Dire Wolves within 24" of it to March.

#entry("NECRARCH")
#namecost("WELLSPRING OF DARK MAGIC", "50 points")

The model and all friendly Wizards within 12" gain +1 to cast spells from the Lore of Necromancy.

#namecost("SPECTRAL FORM", "40 points")

Model on foot only. The model gains the Ethereal special rule. However, it may not join non-Ethereal units or take any magic items.

#namecost("MASTERY OVER FLESH", "25 points")

When casting the _Invocation of Nehek, Vanhel's Danse Macabre_, _Hellish Vigour_ or _Raise Dead_ spells from the Lore of Necromancy, the model may re-roll all the initial casting dice (unless they have rolled a Miscast).

#namecost("UNHOLY CYNOSURE", "25 points")

Once per Magic phase, the model can re-roll one of the dice rolled to cast a spell. This can be used to negate a Miscast result or could cause an Ultimate Power result.

#namecost("FORBIDDEN LORE", "20 points")

The model has the Loremaster special rule.

#namecost("DARK ACOLYTE", "20 points")

The model adds +1 to the number of Wounds healed (Core Units regain +D3 Wounds) whenever it successfully casts _Invocation of Nehek_.

#namecost("NEHEKHARA'S NOBLE BLOOD", "20 points")

The model adds +6" to the range of all their spells (excluding auras).

#namecost("MASTER OF THE BLACK ARTS", "15 points")

A player using a model with the Master of the Black Arts power can re-roll the result when it is determining the strength of the Winds of Magic in each of your Magic phases.

#entry("BLOOD DRAGON")
#namecost("DOOMRIDER", "20 points")

Cavalry only. The model and any Cavalry unit it is with can re-roll failed charge distances.

#namecost("DREAD KNIGHT", "20 points")

While fighting in a challenge, the model will gain +1 To Hit and To Wound.

#namecost("WARRIOR PRIDE", "20 points")

Infantry or Cavalry only. The model can re-roll failed armour save results of 1.

#namecost("HEART PIERCING", "15 points")

The model can re-roll To Wound rolls of 1 in close combat.

#namecost("MASTER STRIKE", "15 points")

The model has the Killing Blow special rule.

#namecost("MIGHT OF ARMS", "15 points")

The model can re-roll To Hit rolls of 1 in close combat.

#namecost("STRENGTH OF STEEL", "10 points")

The model has the Devastating Charge and Mighty Blow (1) special rules.

#namecost("BLADEMASTER", "10 points")

The model gains the Parry (6+) special rule, even while mounted.

#namecost("FURIOUS CHARGE", "10 points")

In any turn in which the model makes a successful charge, they have the Ignores Armour saves special rule.

#entry("STRIGOI")
#namecost("MASSIVE MONSTROSITY", "35 points")

Model on foot only. The model gains +2 Wounds and becomes Monstrous Infantry. It should be placed on a 40x40mm base.

#namecost("LOATHSOME STENCH", "20 points")

All enemy units in base contact with the model suffer \-1 to their Weapon Skill.

#namecost("IRON SINEWS", "15 points")

The model may re-roll failed To Wound roll.

#namecost("TERRIBLE BLOWS", "15 points")

The model gains the Multiple Wounds (D3) special rule.

#namecost("GHOULKIN", "10 points")

One unit of Crypt Ghouls may be deployed as Scouts.

#namecost("INFINITE HATRED", "10 points")

The model's Hatred special rule applies in every close combat round, not just the first.

#namecost("MONSTROUS MASS", "10 points")

The model gains the Immunity (Killing Blow, Multiple Wounds) special rule.

#namecost("RAVENOUS", "10 points")

The model gains the Frenzy special rule.

#namecost("SUMMON GHOULS", "10 points")

The model allows one unit of Crypt Ghouls to deploy as Ambushers.

#entry("LAHMIAN")
#namecost("SEDUCTION", "25 points")

At the beginning of the Close Combat round, after challenges have been issued and/or accepted, select a model in base contact with the Vampire. The selected model must take a Leadership test with a \-1 modifier. If the test is failed, the victim is controlled by the Vampire player in that Close Combat phase.

The model will direct its attacks against his own side. The model cannot be attacked by either side in that Close Combat phase but, after combat resolution has been worked out, it reverts immediately to the original player's control and can therefore use his Leadership for any Break tests and can be broken and pursued as normal.

If the model has no friendly models in base contact, it is unable to attack in that Close Combat phase and all attacks directed against the victim will hit automatically.

If the Vampire was in a challenge with a model that it takes control of, the challenge ends and both models may attack other targets as normal.

#namecost("LIGHTNING REFLEXES", "25 points")

Enemies must re-roll successful rolls To Hit in close combat against this model.

#namecost("NIGHT CREATURE", "20 points")

Model on foot only. If this model is a lone character, it cannot be targeted by enemy missile attacks or spells unless it is within 12".

#namecost("INNOCENCE LOST", "20 points")

The model has the Always Strikes First special rule.

#namecost("DOMINATION", "15 points")

All enemy units in base contact with this model must re-roll successful Leadership tests (except Break tests).

#namecost("QUICKBLOOD", "15 points")

The model gains the Dodge (5+) special rule.

#namecost("BEGUILE", "10 points")

At the beginning of the Close Combat round, all units in base contact with the model must take a Leadership test with a \-3 modifier. If the test is failed, the Vampire can only be Hit on 6's this turn.

#namecost("SWIFTNESS", "10 points")

Model on foot only. The model gains Movement 10 and the Swiftstride special rule.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Vampire Counts. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("FROSTBLADE", 60)[The wielder gains the Ice Attacks and Multiple Wounds (D6) special rules.]

#magic-weapon("SKABSCRATH", 40)[The bearer has the Devastating Charge and Frenzy special rules, and all close combat attacks made by the bearer have the Flaming Attacks special rule. In addition, the bearer of Skabscrath gains the Death Shriek special rule.]

#magic-weapon("SLAKING BLADE", 40)[The wielder of this weapon gains +1 Strength and Attacks at the end of each close combat phase in which they have inflicted at least 1 unsaved Wound (up to a maximum of +3). This bonus lasts for the remainder of the game.]

#magic-weapon("DREADLANCE", 35, type: "Heavy lance")[All attacks with this weapon automatically Hit.]

#magic-weapon("ASP BOW", 25, type: "Bow")[All shots from this item are resolved at Strength 4 with the Poisoned Attacks and Sniper special rules.]

#magic-weapon("SLITTER", 25, type: "Additional hand weapon")[This adds one special attack after the wielder has made their normal attacks. Roll a D3; if the result is higher than the remaining number of Wounds of the target, the target is instantly slain with no saves allowed.]

#magic-weapon("KEENING BONE", 20, only: "Strigoi")[Throwing weapon. All shots with this weapon automatically Hit. Characters may take this item despite not normally being allowed to take throwing weapons.]

#magic-weapon("REAPER OF SORROWS", 15, only: "Cairn Wraith", type: "Great weapon")[All attacks with this weapon automatically Wound with no saves allowed.]

#magic-weapon("SWORD OF KINGS", 15, only: "Wight Kings")[This item makes the model's Killing Blow special rule take effect on a 5+.]

#magic-weapon("THE BALEFIRE SPIKE", 15, type: "Heavy lance")[This item gives the wielder the Devastating Charge and Flaming Attacks special rules.]

#magic-weapon("SHADOW'S EDGE", 10)[For every natural 6 rolled To Hit with this weapon, that Attack has the Ignores Armour Saves and Multiple Wounds (D3) special rules.]
]

#magic-item-section("armour")[
#magic-armour("ARMOUR OF NIGHT", 50, only: "Von Carstein model on foot", type: "Heavy armour")[This item causes any missile attacks targeted at the wearer or any unit they are with to suffer \-1 To Hit.]

#magic-armour("THE FLAYED HAUBERK", 45, only: "Model on foot", type: "Heavy armour")[This item gives the wearer a 2+ armour save that cannot be improved by any means.]

#magic-armour("HELM OF COMMANDMENT", 25)[This item gives the wearer a 6+ armour save. If the wearer is not engaged in close combat at the start of the Close Combat phase, one friendly Undead unit (including mounts) within 12" may use the wearer's unmodified Weapon Skill instead of their own that round.]

#magic-armour("THE SCABBING PLATE", 35, type: "Heavy armour")[The wearer of this armour automatically restores 1 Wound lost during the battle at the end of each round of close combat in which it has inflicted one or more unsaved Wounds.]

#magic-armour("THE ACCURSED ARMOUR", 30, type: "Heavy armour")[This item gives the wearer +1 Toughness, but makes them suffer \-1 Weapon Skill and Initiative.]

#magic-armour("THE ARMOUR OF BLOOD", 30, only: "Blood Dragon", type: "Heavy armour")[This item allows the wielder to automatically regain Wounds through the Red Thirst.]

#magic-armour("THE RED CASKET", 30, only: "Blood Dragon", type: "Heavy armour")[The wearer of this armour gains the Frenzy special rule.]

#magic-armour("WAILING HELM", 25)[This item gives the wearer a 6+ armour save and the Terror special rule.]

#magic-armour("THE CADAVEROUS CUIRASS", 25, only: "Vampires", type: "Heavy armour")[This item gives the wearer the Immunity (Killing Blow) special rule.]

#magic-armour("ARMOUR OF BONE", 15, type: "Medium armour")[When the wearer fails their first armour save (or if they are wounded by an attack which ignores armour saves), the Armour of Bone crumbles to dust and is destroyed, but the Wound is ignored. This armour may be taken by Necromancers despite them normally not being allowed to take armour.]

#magic-armour("THE CURSED SHIELD OF MOUSILLON", 10, type: "Shield")[This item causes one enemy model in base contact of your choice to lose 1 Attack. In addition, the bearer gains the Hatred (Bretonnia) special rule, and all models in _Warhammer: Bretonnia_ have the Hatred special rule against the bearer.]
]

#magic-item-section("talisman")[
#talisman("NIGHTSHROUD", 50, only: "Infantry or Cavalry")[Enemy models in base contact with the wearer lose all Strength bonuses conferred from normal and magical weapons, and are subject to the Always Strikes Last special rule.]

#talisman("TALISMAN OF THE NADIR", 30)[All friendly units within 12" of the bearer of this item gain the Magic Resistance (1) special rule.]

#talisman("THE GEM OF BLOOD", 25, only: "Vampires", one-use: true)[The Gem of Blood activates when the bearer suffers their first Wound in close combat (before saves). Roll a D6; on a roll of a 1 the wearer suffers the Wound as normal, and an additional Wound with no saves allowed. On a 2+ the Wound is saved, and is rebounded onto the model that caused it with no saves allowed.]

#talisman("SPLINTERVANE BROACH", 25, only: "Strigoi")[All enemy Wizards within 18" of the bearer of this item suffer \-1 to casting penalty.]

#talisman("WRISTBANDS OF BLACK GOLD", 25)[The Wristbands of Black Gold gives the wearer a Magical Ward (3+) against all missile attacks.]

#talisman("CHIROPTERAN CLOAK", 15, only: "Von Carstein")[If a model attacking the wearer of this item rolls a natural 1 To Hit in close combat, they suffer a Strength 4 Hit.]

#talisman("CLOAK OF THE WAXING MOON", 15, only: "Cairn Wraith")[The wearer of this item can only be Hit on To Hit rolls of natural 6's.]
]

#magic-item-section("arcane", columns: 2)[
#arcane-item("THE DERMAL ROBE", 70, type: "Relic")[The wearer gains a +1 casting and dispel bonus. In addition, they gain +1 to their channelling rolls.]

#arcane-item("STAFF OF RAUKHAMON", 45, only: "Necrarch", type: "Staff", bound: true)[This staff contains the _Hellish Vigour_ spell from the Lore of Necromancy. Roll a D6 each time the Staff is used. On a roll of 1, the Staff is temporarily exhausted and cannot cast this bound spell for the rest of the battle. In addition, all enemy units within 6" of the Staff\`s bearer suffer a \-1 penalty on their rolls To Hit in close combat.]

#arcane-item("SCEPTRE DE NOIROT", 40, type: "Staff")[The bearer of this item may re-roll one dice of their choice when determining the number of Zombies or Skeletons raised with the _Invocation of Nehek_ and _Raise Dead_ spells from the Lore of Necromancy.]

#arcane-item("BOOK OF ARKHAN", 35, type: "Relic", bound: true)[This item casts the _Vanhel's Danse Macabre_ spell from the Lore of Necromancy.]

#arcane-item("CARRION WAND", 35, only: "Strigoi", type: "Staff")[The wielder counts their Wizard level as being 1 higher than normal.]

#arcane-item("THE CURSED BOOK", 35, type: "Relic")[At the beginning of the bearer's Magic phase, the bearer may choose to sacrifice one power dice from the pool. If they do so, roll a D6 on the following chart. Assuming there is a viable target for the indicated spell, that spell is automatically cast at its minimum casting value, requiring no power dice. A dispel attempt can be made as normal.

#chart((("D6", "Spell Cast"), ("1", "Melkoth's Mystifying Miasma (Lore of
Shadow)"), ("2", "The Enfeebling Foe (Lore of Shadow)"), ("3", "The Withering (Lore of Shadow)"), ("4", "Portent of Doom (Lore of Heavens)"), ("5", "Doom and Darkness (Lore of Death)"), ("6", "Soulblight (Lore of Death)")))
]

#arcane-item("ROD OF FLAMING DEATH", 35, bound: true)[Staff. This item casts the _Fulminating Flame Cage_ spell from the Lore of Fire.]

#arcane-item("STAFF OF DAMNATION", 35, type: "Staff", bound: (level: 2, cast: "8+"))[If cast successfully, this item casts an *augment* spell. All Undead models (including mounts) in friendly units within 6" of the bearer gain +1 Attack until the start of the bearer's next Magic phase.]

#arcane-item("BLACK PERIAPT", 30, type: "Relic")[The Black Periapt allows the bearer to save up to two of his army's unused power dice or dispel dice at the end of any Magic phase, and then add them to his side's power or dispel dice pool at the start of the next Magic phase.]

#arcane-item("BLASPHEMOUS TOME", 30, type: "Relic")[The bearer of this item gains a +2 casting bonus when using the Lore of Necromancy. However, if they Miscast, they must roll on additional D6 on the Miscast table and discard the lowest result.]

#arcane-item("WYCHLIGHT LANTERN", 30, type: "Charm", one-use: true)[This item can be used during any of your Magic phases. Once used, it allows the bearer to cast one of their spells automatically without using any power dice, at its minimum casting value.]

#arcane-item("AMULET OF SCREAMS", 20, only: "Lahmian", type: "Relic")[Roll a D6 every time an enemy Wizard within 18" successfully casts a spell. On a 1, that Wizard suffer 1 Wound which Ignores Armour saves.]

#arcane-item("CRIMSON GEM OF LAHMIA", 20, only: "Lahmian")[Once per magic phase, while casting spells, the bearer of the Crimson Gem of Lahmia can choose to take a Toughness test. If passed, they may re- roll a single power dice of their choice. If failed, they suffer a Wound with no saves allowed.]

#arcane-item("MIDNIGHT TOME", 20, type: "Charm", one-use: true)[This item can be used when the wearer successfully casts a spell with a casting value of 10 or less. When used, the opponent cannot attempt to dispel it.]

#arcane-item("MORBHEG'S CLAW", 20, only: "Von Carstein", type: "Relic")[The wearer of this item gains +2 to cast spells if they have not moved that turn or are not engaged in close combat.]

#arcane-item("STAVE OF SUFFERING", 15, type: "Staff")[The bearer of this item gains a +1 casting bonus for each spell that has successfully inflicted one or more unsaved Wounds the same Magic Phase. This bonus is cumulative.]
]

#magic-item-section("enchanted", columns: 2)[
#enchanted-item("MIDNIGHT AMULET", 40, one-use: true)[This item can be used in any of your Magic phases. Pick one enemy unit within 12"; that unit suffers D6 Strength 4 Hits multiplied by the number of the current game turn.]

#enchanted-item("THE CASKET OF AGES", 35, bound: (level: 1, cast: "6+"))[The Casket of Ages contains a *direct damage* spell that targets one enemy model in base contact. The target model suffers one Wound which Ignores Armour Saves. If the Wound is not saved, the victim must pass a Toughness test or suffer an additional Wound with no saves allowed.]

#enchanted-item("TALON OF DEATH", 35)[All enemy models in base contact with the bearer must pass a Toughness test or suffer a Wound which Ignores Armour saves at the start of each round of combat.]

#enchanted-item("DREADBOLT RING", 30)[For each unsaved Wound the bearer of this item inflicts in close combat, one enemy unit in base contact suffer D3 Strength 3 Attacks with the Flaming Attacks special rule after they have resolved their normal attacks.]

#enchanted-item("BREATH OF THE VOID MAW", 25, only: "Necrarch", one-use: true)[This item can be used at the start of any Magic phase. Once used, pick one enemy unit within 6" that is not engaged in close combat. Roll a D6; on a 2+ the target unit suffer a number of Strength 5 Hits equal to the roll.]

#enchanted-item("FRAGMENT OF THE KEEP", 25, only: "Blood Dragon")[The bearer gains the Always Strikes First special rule.]

#enchanted-item("THE GRIM GARLAND", 25, only: "Strigoi")[Enemy units in base contact with the bearer must roll 3D6 for their Leadership tests and discard the lowest result.]

#enchanted-item("LIGHTSHARD OF THE HARVEST MOON", 25, one-use: true)[This item can be used at the start of any close combat phase. The bearer and any unit they are with may re-roll failed rolls To Hit for the duration of the turn.]

#enchanted-item("PENDANT OF THE FELL WIND", 25)[The character and any unit they are with gain +1 Movement.]

#enchanted-item("THE SACCHARINE GOBLET", 25, only: "Vampire")[This item can be used at the start of any round of close combat. When used, the bearer gains +1 To Hit and To Wound. However, for each of their Attacks that does not inflict an unsaved Wound, they must pass a Toughness test or suffer one Wound with no saves allowed at the end of the combat (before Break tests are taken).]

#enchanted-item("SIGIL OF THE SANGUINE THRONE", 25, only: "Von Carstein")[The bearer and any friendly Vampire unit within 12" may re-roll one of their charge distance dice.]

#enchanted-item("THE FURIOUS CROWN", 20)[In any turn in which the bearer of this item makes a successful charge, they gain +1 Attack for every enemy model in base contact, up to a maximum of +3.]

#enchanted-item("GRAVE-SAND SHARD", 20, only: "Blood Dragon", one-use: true)[This item can be used in any of your Magic phases. Once used, it automatically restores Wounds to any unit they are with following the rules for _Invocation of Nehek_ from the Lore of Necromancy.]

#enchanted-item("MEDAL OF MADNESS", 20, only: "Strigoi")[The bearer gains the Inspiring Presence (6) special rule.]

#enchanted-item("SOULFIRE RING", 20, only: "Cairn Wraith")[For every unsaved Wound caused in close combat by the bearer, they and/or their unit regain 1 Wound, just like a summoning spell.]

#enchanted-item("BLOOD RIVER CHALICE", 15, only: "Vampire", one-use: true)[This item can be used at the start of the controlling player's turn. The model immediately recovers all lost Wounds (ignoring any additional Wounds from mounts) up to their starting value.]

#enchanted-item("BRAZIER OF NAGASHIZZAR", 15, only: "Cairn Wraith")[The bearer and any unit they join may re-roll failed charge and pursuit distances.]

#enchanted-item("MIRROR OF ECHOING FAILURES", 15)[Any Wizard within 18" of the bearer that fails a spellcasting attempt (not including dispels) suffers one Wound which Ignores Armour Saves.]

#enchanted-item("NATHMAR'S SKULL", 15, only: "Master Necromancer or Necromancer")[All friendly units of Skeletons and Zombies within 12" of the bearer may March despite being Undead.]

#enchanted-item("RUBY VIAL", 15, only: "Vampire", one-use: true)[This item can be used at the start of any of your turns. Until the start of your next turn, all enemy units within 18" of the bearer suffer \-1 to their Movement.]

#enchanted-item("SIGNET OF THE FIRST COURT", 15, only: "Strigoi")[The bearer of this item gains the Killing Blow special rule.]

#enchanted-item("THE BILIOUS DECANTER", 10, only: "Ghoul or Strigoi", one-use: true)[This item can be used at the start of any close combat phase. The bearer gains the Frenzy special rule and +1 Attack for the remainder of the game. However, they will automatically fail any Berserk Rage tests and must always Pursue.]

#enchanted-item("ORB OF ENCHANTMENT", 10, only: "Lahmian")[One enemy model in base contact (chosen by the bearer) must take a Leadership test at the start of each round of close combat. If failed, they may not attack this turn.]

#enchanted-item("TALISMAN OF THE LYCNI", 10, only: "Vampire")[Model on foot only. The bearer of this item gains +4 to their Movement value and the Swiftstride special rule. In addition, they may join units of Dire Wolves.]

#enchanted-item("HEART OF THE GIANT FEAST", 10, only: "Vampire", one-use: true)[This item can be used at the start of any close combat phase. The bearer can re- roll failed To Wound rolls for the duration of the turn.]

#enchanted-item("SHARD OF NIGHT", 5, only: "Vampire", one-use: true)[This item may be used at the start of any round of Close Combat. When it is, the bearer suffers 1 Wound with no saves allowed. In exchange, they gain +2 Strength for the duration of this round of close combat.]
]

#magic-item-section("standard")[
#magic-standard("THE DRAKENHOF BANNER", 75, only: "Von Carstein or Wight")[May only be taken if your army includes a von Carstein Vampire Character. All Undead models (excluding mounts) in the unit carrying this standard gain the Regeneration (4+) special rule.]

#magic-standard("THE FLAG OF BLOOD KEEP", 45, only: "Blood Knights")[May only be taken if your army includes a Blood Dragon Vampire Character. The unit carrying this standard gains a Magical Ward (4+) against missile attacks.]

#magic-standard("BANNER OF THE BARROWS", 40)[All Wights in the same unit as this standard receive +1 To Hit in close combat. This does not apply to mounts.]

#magic-standard("HELL BANNER", 40)[All enemy units with Line of Sight to this standard suffer a \-1 penalty to their Leadership. This standard has no effect on models with Immunity (Psychology).]

#magic-standard("CURSED PENNANT OF MOUSILLON", 35, only: "Blood Dragon, Skeletons, Wights or Blood Knights")[May only be taken if your army includes a Blood Dragon Vampire Character. Any enemy unit that is in base contact with the unit carrying this standard must re-roll 6's when rolling To Hit, To Wound and when taking armour saves.]

#magic-standard("BANNER OF DOOM", 25)[All Undead models (excluding mounts) in the unit carrying this standard gains the Regeneration (5+) special rule against missile attacks.]

#magic-standard("BANNER OF THE DEAD LEGION", 25)[All Undead models (including mounts) in the unit carrying this standard counts as having twice their actual Unit Strength in close combat.]

#magic-standard("BANNER OF HELLFIRE", 25, bound: true)[This banner contains the _Flaming Sword of Rhuin_ spell from the Lore of Fire. It can only be cast on the unit carrying this standard.]

#magic-standard("THE FLAYED PENNANT", 25, only: "Strigoi or Ghoul")[The unit carrying this standard gains the Frenzy special rule.]

#magic-standard("INFERNAL STANDARD", 25, only: "Wight King with Battle Standard")[The model carrying this standard gains the Hold Your Ground (6) special rule.]

#magic-standard("ROYAL STANDARD OF STRIGOS", 25)[May only be taken if your army includes a Strigoi Vampire Character. Strigoi or Ghoul only. The unit carrying this standard gains the Hatred special rule.]

#magic-standard("THE SCREAMING BANNER", 25)[Enemy units on base contact with the unit carrying this standard must pass a Leadership test at the start of each close combat phase. If failed, they require 6’s To Hit for the duration of the phase.]

#magic-standard("ICON OF VENGEANCE", 20)[Any Undead model (including mounts) in the unit carrying this standard that is slain in close combat may immediately make an additional Attack, even if they have already attacked this turn.]

#magic-standard("STANDARD OF HELLISH VIGOUR", 15, only: "Undead")[May only be taken if your army includes a Necrarch Vampire Character. The unit carrying this standard may March despite being Animated Constructs.]

#magic-standard("BANNER OF THE ENDLESS NIGHTMARE", 10)[The unit carrying this standard counts as having one more rank than normal for the purpose of combat resolution.]

#magic-standard("STANDARD OF EVERLASTING DEATH", 10)[The unit carrying this standard suffers one fewer Wound than they normally would due to the Unstable special rule.]
]

= CHARACTERS

#unit("VON CARSTEINS",
  first: true,
  profiles: (
    (name: "Count", m: 6, ws: 7, bs: 5, s: 6, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 190),
    (name: "Scion", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 9, points: 80),
  ),
  troop-type: "Infantry (Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A von Carstein who is a Wizard uses one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadow
  ],
  special-rules: "The Red Thirst, Vampiric",
  options: [
- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
  - Level 3 Wizard (Count only) +105 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +10 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May be mounted on one of the following:
  - Nightmare +15 points
  - Hellsteed +25 points
  - Abyssal Terror (Count only) +125 points
  - Zombie Dragon (Count only) +245 points
- One Scion may carry the Battle Standard +25 points
- A Scion may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Count may take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("NECRARCHS",
  profiles: (
    (name: "Master", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 245),
    (name: "Acolyte", m: 6, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 5, a: 2, ld: 8, points: 70),
  ),
  troop-type: "Infantry (Character, Vampire, Necrarch)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "An Acolyte is a Level 1 Wizard. A Master is a Level 3 Wizard. They use one of the following Lores of Magic:",
  magic-body: [
- Death
- Heavens
- Metal
- Necromancy
- Shadow
  ],
  special-rules: "The Red Thirst, Vampiric",
  options: [
- May take an additional Wizard Level +35 points
- May be upgraded to a Master of the Dead +20 points
- May be mounted on one of the following:
  - Nightmare +15 points
  - Hellsteed +25 points
  - Abyssal Terror (Master only) +125 points
  - Zombie Dragon (Master only) +245 points
- One Acolyte may carry the Battle Standard +25 points
- An Acolyte may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Master may take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("LAHMIANS",
  profiles: (
    (name: "Lady", m: 6, ws: 6, bs: 5, s: 5, t: 5, w: 3, i: 8, a: 4, ld: 10, points: 175),
    (name: "Courtesan", m: 6, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 70),
  ),
  troop-type: "Infantry (Character, Vampire, Lahmian)",
  base-size: "20x20 or 25x25",
  magic: "A Lahmian who is a Wizard uses one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadow
  ],
  special-rules: "Dodge (6+), The Red Thirst, Vampiric",
  options: [
- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
  - Level 3 Wizard (Lady only) +105 points
- May take an additional hand weapon +5 points
- May take throwing weapons +6 points
- May take a shortbow +4 points
- May take light armour +3 points
- May have Poisoned Attacks +10 points
- May be mounted on one of the following:
  - Nightmare +15 points
  - Hellsteed +25 points
  - Coven Throne (Lady only, replacing one of the crew) +200 points
- May take Vampiric Powers and/or Magic Items up to a total of 100 points
- One Courtesan may carry the Battle Standard +25 points
- A Courtesan may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Lady may take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("BLOOD DRAGONS",
  profiles: (
    (name: "Lord", m: 6, ws: 8, bs: 3, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 215),
    (name: "Kastellan", m: 6, ws: 7, bs: 3, s: 5, t: 4, w: 2, i: 6, a: 4, ld: 9, points: 100),
  ),
  troop-type: "Infantry (Character, Vampire, Blood Dragon)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour",
  magic: "A Blood Dragon who is a Wizard uses one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadow
  ],
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Martial Honour")[The Vampire must always issue and accept challenges when possible.],
  ),
  options: [
- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard (Lord only) +70 points
- May choose one of the following:
  - Additional hand weapon +5 points
  - Heavy lance +10 points
  - Great weapon +10 points
- May take heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Nightmare +20 points
  - Hellsteed +25 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points
- One Kastellan may carry the Battle Standard +25 points
- A Kastellan may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Lord may take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("STRIGOI",
  profiles: (
    (name: "Ghoul King", m: 6, ws: 6, bs: 3, s: 6, t: 6, w: 3, i: 7, a: 5, ld: 9, points: 220),
    (name: "Ghoul Prince", m: 6, ws: 5, bs: 3, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 120),
  ),
  troop-type: "Infantry (Character, Vampire, Strigoi)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Strigoi who is a Wizard uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Necromancy
  ],
  special-rules: "Hatred, Natural Armour (6+), The Red Thirst, Vampiric",
  options: [
- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard (Ghoul King only) +70 points
- May be mounted on a Terrorgheist (Ghoul King only) +225 points
- One Ghoul Prince may carry the Battle Standard +25 points
- A Ghoul Prince may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Ghoul King may take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("NECROMANCERS",
  profiles: (
    (name: "Master Necromancer", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
    (name: "Necromancer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Necromancer is a Level 1 Wizard. A Master Necromancer is a Level 3 Wizard. They use one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
  ],
  options: [
- May take an additional Wizard Level +35 points
- May be upgraded to a Master of the Dead +20 points
- May be mounted on one of the following:
  - Nightmare +20 points
  - Hellsteed +25 points
  - Corpse Cart (replacing the Corpsemaster) +100 points
  - Abyssal Terror (Master Necromancer only) +125 points
- A Necromancer may take Magic Items up to a total of 50 points
- A Master Necromancer may take Magic Items up to a total of 100 points
  ],
)

#unit("LICHE LORD",
  profiles: (
    (name: "Liche Lord", m: 4, ws: 4, bs: 3, s: 5, t: 5, w: 4, i: 2, a: 2, ld: 9, points: 290),
  ),
  troop-type: "Infantry (Character, Undead, Liche)",
  base-size: "20x20 or 25x25",
  magic: "A Liche Lord is a Level 4 Wizard who chooses spells from one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
  ],
  equipment: "Hand weapon",
  special-rules: "Master of the Dead, Terror, Undead",
  options: [
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May be mounted on a Mortis Engine replacing the (Corpsemaster) +200 points
- May take Magic Items up to a total of 100 points
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "special-rules", "options"),
)

#unit("WIGHT LORDS",
  profiles: (
    (name: "Wight King", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 4, i: 4, a: 4, ld: 9, points: 140),
    (name: "Wight Lord", m: 4, ws: 5, bs: 3, s: 5, t: 5, w: 3, i: 4, a: 3, ld: 8, points: 100),
  ),
  troop-type: "Infantry (Character, Undead, Wight)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Killing Blow, Magical Attacks, Spectral Steeds, Undead",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Heavy lance +10 points
  - Great weapon +10 points
- May choose one of the following:
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Skeletal Steed +12 points
  - Barrow Chariot +50 points
- One Wight Lord may carry the Battle Standard +25 points
- A Wight Lord may take Magic Items up to a total of 50 points
- A Wight King may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("CAIRN WRAITH",
  profiles: (
    (name: "Cairn Wraith", m: 6, ws: 4, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 3, ld: 7, points: 60),
  ),
  troop-type: "Infantry (Character, Undead, Spirit).",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ethereal, Ignores Armour Saves, Terror, Undead",
  special-rules-body: (
    rule("Chill Grasp")[A Cairn Wraith can substitute all of its Attacks in close combat for a single Chill Grasp Attack. The Cairn Wraith makes a single Attack; if this Attack hits, then it will automatically Wound with the Ignores Armour Saves and Multiple Wounds (D3) special rules.],
    rule("Soulstriders")[Cavalry models with this special rule can move through any unengaged units during the Remaining Moves sub-phase, but cannot end their movement within 1" of another unit.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +2 points
  - Great weapon +4 points
- May be mounted on a Skeletal Steed +12 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("TOMB BANSHEE",
  compact: true,
  profiles: (
    (name: "Tomb Banshee", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 5, points: 80),
  ),
  troop-type: "Infantry (Character, Undead, Spirit)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Death Shriek, Ethereal, Fly (6), Terror, Undead",
)

#unit("SWAIN",
  profiles: (
    (name: "Swain", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Immunity (Psychology)",
  special-rules-body: (
    rule("Til Death Do Us Part")[Pick one Lahmian Vampire Character in your army to be this model's mistress. If both models are in base contact, the Lahmian gains a 3+ 'Look Out, Sir!' save in close combat with any Hits being allocated against the Swain instead. If the Lahmian is slain, the Swain will be subject to the Hatred and Frenzy special rules for the remainder of the game.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May take a pistol +5 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +2 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- You may only include a Swain if your army contains at least one Lahmian Vampire Character.
  ],
)

#unit("CRYPT GHAST",
  profiles: (
    (name: "Crypt Ghast", m: 4, ws: 4, bs: 3, s: 4, t: 5, w: 2, i: 5, a: 3, ld: 7, points: 60),
  ),
  troop-type: "Infantry (Character, Ghoul)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Fear, Poisoned Attacks",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Polearm +10 points
  - Great weapon +15 points
- One Crypt Ghast may carry the Battle Standard +25 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
  ],
)

#unit("STRIGANY MYSTIC",
  profiles: (
    (name: "Strigany Mystic", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Strigany Mystic is a Level 1 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Heavens
- Necromancy
  ],
  special-rules: "Expendable",
  options: [
- May take an additional Wizard Level +35 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- You may only include a Strigany Mystic if your army contains at least one Strigoi Vampire Character.
- A Strigany Mystic may only join units of Strigany or Ghouls.
  ],
)

= CHARACTER MOUNTS

#unit("SKELETAL STEED",
  first: true,
  profiles: (
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Undead, Skeleton)",
  base-size: "25x50 or 30x60",
  special-rules: "Undead",
  options: [
- May take barding +5 points
  ],
)

#unit("NIGHTMARE",
  profiles: (
    (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Undead, Equine)",
  base-size: "25x50 or 30x60",
  special-rules: "Undead",
  options: [
- May take barding +5 points
  ],
)

#unit("HELLSTEED",
  compact: true,
  profiles: (
    (name: "Hellsteed", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Undead, Equine)",
  base-size: "25x50 or 30x60",
  special-rules: "Fly (9), Undead",
)

#unit("BARROW CHARIOT",
  profiles: (
    (name: "Barrow Chariot", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: "-"),
    (name: "Crew", m: "-", ws: 2, bs: 2, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
    (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "1 Crew (Undead, Skeleton)",
  drawn-by: "2 Skeletal Steeds (Undead, Skeleton)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Undead",
  options: [
- May take scythes +5 points
- May take barding +5 points
  ],
)

#unit("ABYSSAL TERROR",
  profiles: (
    (name: "Abyssal Terror", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 4, points: "-"),
  ),
  troop-type: "Monstrous Creature (Undead, Chimeric)",
  base-size: "50x50",
  special-rules: "Fly (8), Undead",
  upgrades: (
    rule("Poisonous Tail")[The Abyssal Terror gains the Poisoned Attacks special rule.],
    rule("Sword-claws")[The Abyssal Terror gains the Armour Piercing (1) special rule.],
  ),
  options: [
- May take Poisonous Tail +10 points
- May take Sword-claws +5 points
  ],
)

= CORE UNITS

#unit("SKELETON WARRIORS",
  first: true,
  profiles: (
    (name: "Skeleton Warrior", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 3),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Undead, Skeleton)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Undead",
  options: [
- May choose one of the following:
  - Spears +0.5 point/model
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take shields (unless they are armed with great weapons) +1 point/model
- May upgrade one Skeleton Warrior to a Leader +5 points
- May upgrade one Skeleton Warrior to a Musician +5 points
- May upgrade one Skeleton Warrior to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("SKELETON ARCHERS",
  profiles: (
    (name: "Skeleton Archer", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 4),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Undead, Skeleton)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shortbow",
  special-rules: "Undead",
  options: [
- May replace shortbows with one of the following:
  - Longbows +1 point/model
  - Crossbows +2 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May upgrade one Skeleton Archer to a Leader +5 points
- May upgrade one Skeleton Archer to a Musician +5 points
- May upgrade one Skeleton Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  notes: [
- You may not have more units of Skeleton Archers than Skeleton Warriors.
  ],
)

#unit("SKELETON HORSEMEN",
  profiles: (
    (name: "Skeleton Horseman", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 9),
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Undead, Skeleton)",
  mount: "Skeletal Steed (Undead, Skeleton)",
  base-size: "25x50",
  equipment: "Hand weapon, shield",
  special-rules: "Fast Cavalry, Undead",
  options: [
- May choose one of the following:
  - Replace shields with bows free
  - Light lances +1 point/model
- May take light armour +1 point/model
- May upgrade one Skeleton Horseman to a Leader +5 points
- May upgrade one Skeleton Horseman to a Musician +5 points
- May upgrade one Skeleton Horseman to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
  notes: [
- You may not have more units of Skeleton Horsemen than Skeleton Warriors.
  ],
)

#unit("ZOMBIES",
  profiles: (
    (name: "Zombie", m: 4, ws: 1, bs: 0, s: 3, t: 3, w: 1, i: 1, a: 1, ld: 2, points: 2.5),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Undead, Zombie)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Undead",
  special-rules-body: (
    rule("The Newly Dead")[Zombie units can be increased beyond their starting size by spells and effects that add models to an existing unit. In addition, when Zombie units are successfully targeted by the _Invocation of Nehek_ spell from the Lore of Necromancy, they regain an extra D6 Wounds. However, they also suffer D3 more casualties than normal due to being Unstable.],
  ),
  options: [
- May upgrade one Zombie to a Musician +5 points
- May upgrade one Zombie to a Standard Bearer +10 points
  ],
)

#unit("CRYPT GHOULS",
  profiles: (
    (name: "Crypt Ghoul", m: 4, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 6, points: 7),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Ghoul)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Fear, Poisoned Attacks",
  options: [
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Crypt Ghoul to a Leader +5 points
  ],
)

#unit("SYLVANIAN LEVY",
  profiles: (
    (name: "Peasant", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 2),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Expendable",
  options: [
- May choose one of the following:
  - Spears +0.5 point/model
  - Longbows +4 points/model
  - Crossbows +5 points/model
- May upgrade one Peasant to a Leader +5 points
- May upgrade one Peasant to a Musician +5 points
- May upgrade one Peasant to a Standard Bearer +10 points
  ],
  notes: [
- You may only include Sylvanian Peasant Levy if your army includes a von Carstein Vampire Character.
  ],
)

#unit("STRIGANY",
  profiles: (
    (name: "Strigany", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 4),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  special-rules: "Expendable",
  options: [
- May take throwing weapons +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Strigany to a Leader +5 points
- May upgrade one Strigany to a Musician +5 points
- May upgrade one Strigany to a Standard Bearer +10 points
  ],
  notes: [
- You may only include Strigany if your army includes a Strigoi Vampire Character.
  ],
)

#unit("DIRE WOLVES",
  profiles: (
    (name: "Dire Wolf", m: 9, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "War Beast (Undead, Canine)",
  base-size: "25x50",
  special-rules: "Undead",
  options: [
- May upgrade one Dire Wolf to a Leader +5 points
  ],
)

#unit("FELL BATS",
  compact: true,
  profiles: (
    (name: "Fell Bat", m: 1, ws: 3, bs: 0, s: 3, t: 3, w: 2, i: 3, a: 2, ld: 5, points: 12),
  ),
  unit-size: "3-9",
  troop-type: "War Beast (Chiropter)",
  base-size: "40x40",
  special-rules: "Fly (9)",
)

#unit("BAT SWARMS",
  profiles: (
    (name: "Bat Swarm", m: 1, ws: 3, bs: 0, s: 2, t: 2, w: 6, i: 4, a: 6, ld: 3, points: 30),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Chiropter)",
  base-size: "40x40",
  special-rules: "Fly (6)",
  special-rules-body: (
    rule("Cloud of Horror")[An enemy unit that is attacked in the flank or rear by one or more Bat Swarms is automatically Disrupted.],
  ),
  notes: [
- Bat Swarms have a Line of Sight value of 1.
  ],
)

#unit("SPIRIT HOSTS",
  profiles: (
    (name: "Spirit Host", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 4, i: 1, a: 4, ld: 4, points: 40),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Undead, Spirit)",
  base-size: "40x40",
  special-rules: "Ethereal, Undead",
  notes: [
- Spirit Hosts have a Line of Sight value of 1.
  ],
)

= SPECIAL UNITS

#unit("GRAVE GUARD",
  first: true,
  profiles: (
    (name: "Grave Guard", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 6, points: 10),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Undead, Wight)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  special-rules: "Killing Blow, Magical Attacks, Undead",
  options: [
- May choose one of the following:
  - Polearms +2 points/model
  - Great weapons +3 points/model
- May take heavy armour +1.5 points/model
- May take shields (unless armed with great weapons) +1 point/model
- May upgrade one Grave Guard to a Leader +5 points
- May upgrade one Grave Guard to a Musician +5 points
- May upgrade one Grave Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("BLACK KNIGHTS",
  profiles: (
    (name: "Black Knight", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 6, points: 22),
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Undead, Wight)",
  mount: "Skeletal Steed (Undead, Skeleton)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, medium armour, shield",
  special-rules: "Killing Blow, Magical Attacks, Spectral Steeds, Undead",
  options: [
- May take heavy armour +2 points/model
- May take barding +2 points/model
- May upgrade one Black Knight to a Leader +5 points
- May upgrade one Black Knight to a Musician +5 points
- May upgrade one Black Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("CRYPT GUARD",
  profiles: (
    (name: "Crypt Guard", m: 4, ws: 4, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 7, points: 9),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Ghoul)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Fear, Poisoned Attacks",
  special-rules-body: (
    rule("Royal Bodyguard")[If a unit of Crypt Guard is joined by a Strigoi Vampire Character, the unit becomes Stubborn.],
  ),
  options: [
- May take polearms +2 points/model
- May upgrade one Crypt Guard to a Leader +5 points
- May upgrade one Crypt Guard to a Musician +5 points
- May upgrade one Crypt Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("CRYPT HORRORS",
  profiles: (
    (name: "Crypt Horror", m: 6, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 7, points: 35),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Ghoul)",
  base-size: "40x40",
  special-rules: "Poisoned Attacks, Regeneration (5+)",
  options: [
- May upgrade one Crypt Horror to a Leader +5 points
  ],
)

#unit("VARGHEISTS",
  profiles: (
    (name: "Vargheist", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 7, points: 50),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Vampire)",
  base-size: "40x40",
  special-rules: "Fly (8), Frenzy, The Red Thirst, Vampiric",
  options: [
- May upgrade one Vargheist to a Leader +5 points
  ],
)

#unit("FLESH GOLEMS",
  compact: true,
  profiles: (
    (name: "Flesh Golem", m: "*", ws: 2, bs: 0, s: 4, t: 4, w: 3, i: 1, a: "*", ld: 2, points: 20),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Undead)",
  base-size: "40x40",
  equipment: "Hand weapon",
  special-rules: "Random Attacks (D3+1), Random Movement (2D6), Undead",
)

#unit("SKELETON CHARIOT",
  profiles: (
    (name: "Skeleton Chariot", m: 7, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 45),
    (name: "Crew", m: "-", ws: 2, bs: 2, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 5, points: ""),
    (name: "Skeletal Steed", m: "-", ws: 2, bs: 0, s: 3, t: "-", w: "-", i: 1, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 6+)",
  crew: "2 Crew (Undead, Skeleton)",
  drawn-by: "2 Skeletal Steeds (Undead, Skeleton)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Undead",
  options: [
- May take light lances +2 points
- May take bows +2 points
- May take shields +8 points
- May take barding +4 points
- May take scythes +5 points
  ],
)

#unit("CORPSE CART",
  profiles: (
    (name: "Corpse Cart", m: 4, ws: "-", bs: "-", s: 4, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 100),
    (name: "Corpsemaster", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 5, points: ""),
    (name: "The Restless Dead", m: "-", ws: 1, bs: 0, s: 3, t: "-", w: "-", i: 1, a: "*", ld: "-", points: ""),
  ),
  troop-type: "Shrine (Armour save 6+, Undead)",
  crew: "1 Corpsemaster (Human)",
  drawn-by: "The Restless Dead (Undead, Zombie)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Random Attacks (2D6) (The Restless Dead only), Regeneration (4+), Undead",
  special-rules-body: (
    rule("Vigour Mortis")[All friendly Skeleton and Zombie units (but not any characters) within 6" of the Corpse Cart may re-roll all failed rolls To Wound in close combat and gain the Regeneration (6+) special rule.],
  ),
  upgrades: (
    rule("Balefire")[Enemy Wizards suffer a \-1 casting penalty if there is one or more Corpse Carts with a Balefire within 18".],
    rule("Unholy Lodestone")[When a friendly Wizard within 12" of an Unholy Lodestone successfully casts Invocation of Nehek, they may re-roll a single dice to determine how many Wounds are restored.],
  ),
  options: [
- May choose one of the following:
  - Balefire +20 points
  - Unholy Lodestone +20 points
  ],
)

#unit("WRAITHWISPS",
  profiles: (
    (name: "Wraithwisp", m: 6, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 13),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Undead, Spirit)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Ethereal, Terror, Skirmishers, Undead",
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Polearms +2 points/model
  - Crossbows +3 points/model
  - Great weapons +3 points/model
- May upgrade one Wraithwisp to a Leader +5 points
- May upgrade one Wraithwisp to a Musician +5 points
- May upgrade one Wraithwisp to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("HEXWRAITHS",
  profiles: (
    (name: "Hexwraith", m: 6, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 5, points: 27),
    (name: "Skeletal Steed", m: 8, ws: 2, bs: 0, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Undead, Spirit)",
  mount: "Skeletal Steed (Undead, Skeleton)",
  base-size: "25x50",
  equipment: "Great weapon",
  special-rules: "Ethereal, Fast Cavalry, Flaming Attacks, Ignores Armour Saves, Terror, Undead",
  special-rules-body: (
    rule("Soulstriders")[Cavalry models with this special rule can move through any unengaged units during the Remaining Moves sub-phase, but cannot end their movement within 1" of another unit.],
  ),
  options: [
- May upgrade one Hexwraith to a Leader +5 points
  ],
)

#unit("VARGHULF",
  profiles: (
    (name: "Varghulf", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 5, ld: 7, points: 135),
  ),
  troop-type: "Monstrous Creature (Vampire)",
  base-size: "50x50 or 50x100",
  special-rules: "Hatred, The Red Thirst, Regeneration (4+), Vampiric",
  special-rules-body: (
    rule("Bestial Fury")[For the purposes of calculating combat result bonuses, a Varghulf counts as having no flanks or rear.],
  ),
)

#unit("MOURNGUL",
  profiles: (
    (name: "Mourngul", m: 6, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 4, ld: 5, points: 130),
  ),
  troop-type: "Monstrous Creature (Undead, Spirit)",
  base-size: "50x50",
  special-rules: "Ice Attacks, Killing Blow, Magical Ward (4+), Undead",
  special-rules-body: (
    rule("Carnophage")[For every unsaved Wound the Mourngul inflicts in close combat, it regains one Wound it has previously lost during the battle.],
  ),
)

= RARE UNITS

#unit("BLOOD KNIGHTS",
  first: true,
  profiles: (
    (name: "Blood Knight", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 36),
    (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Vampire)",
  mount: "Nightmare (Undead, Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, shield, barding",
  special-rules: "Vampiric",
  options: [
- May upgrade one Blood Knight to a Leader +5 points
- May upgrade one Blood Knight to a Musician +5 points
- May upgrade one Blood Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points
  ],
)

#unit("LAHMIAN HANDMAIDENS",
  profiles: (
    (name: "Handmaiden", m: 6, ws: 5, bs: 4, s: 4, t: 4, w: 1, i: 6, a: 2, ld: 8, points: 18),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Vampire, Lahmian)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, light armour",
  special-rules: "Dodge (6+), Scouts, Skirmishers, Vampiric",
  options: [
- May take throwing weapons +3 points/model
- May have Poisoned Attacks +2 points/model
- May upgrade one Handmaiden to a Leader +5 points
  ],
)

#unit("MORBHEG KNIGHTS",
  profiles: (
    (name: "Morbheg Knight", m: 6, ws: 4, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 2, ld: 7, points: 35),
    (name: "Nightshrieker", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 3, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Ghoul)",
  mount: "Nightshrieker (Chiropter)",
  base-size: "50x75",
  equipment: "Light lance, shield",
  special-rules: "Fly (5), Poisoned Attacks",
  special-rules-body: (
    rule("Shrieking Charge")[In any turn that a unit of Morbheg Knights successfully charge an enemy unit, roll 2D6 and add 1 for each Nightshrieker in the unit. For each point by which the result exceeds the target unit's Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Shrieking Charge is a non-physical attack and Wounds suffered from it are distributed as if from shooting. This has no effect on Animated Constructs.],
  ),
  options: [
- May upgrade one Morbheg Knight to a Leader +5 points
- May upgrade one Morbheg Knight to a Musician +5 points
- May upgrade one Morbheg Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("TERRORGHEIST",
  profiles: (
    (name: "Terrorgheist", m: 6, ws: 3, bs: 0, s: 5, t: 6, w: 6, i: 3, a: 4, ld: 4, points: 225),
  ),
  troop-type: "Monster (Undead, Chiropter)",
  base-size: "100x150",
  special-rules: "Death Shriek, Fly (7), Regeneration (6+), Undead",
  upgrades: (
    rule("Infested")[When a Terrorgheist with this upgrade is removed as a casualty, all units that were in base contact (friend or foe) take 3D6 Strength 2 hits.],
    rule("Rancid Maw")[Attacks made by a Terrorgheist with this upgrade have the Poisoned Attacks special rule.],
  ),
  options: [
- May take Infested +10 points
- May take Rancid Maw +10 points
  ],
)

#unit("ZOMBIE DRAGON",
  profiles: (
    (name: "Zombie Dragon", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: 245),
  ),
  troop-type: "Monster (Undead, Draconid)",
  base-size: "50x50 or 100x150",
  special-rules: "Fly (7), Natural Armour (5+), Undead",
  special-rules-body: (
    rule("Pestilential Breath")[A Zombie Dragon has a Breath Weapon. Any model hit suffers a Strength 2 Hit with the Ignores Armour saves special rule.],
    rule("Swarm of Flies")[Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.],
  ),
)

#unit("NECROFEX COLOSSUS",
  profiles: (
    (name: "Necrofex Colossus", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 6, i: 1, a: "*", ld: 8, points: 240),
  ),
  troop-type: "Monster (Undead, Animated Construct)",
  base-size: "50x100 or 100x150",
  special-rules: "Regeneration (4+), Undead",
  special-rules-body: [
- *Vortex of Death:* Any Wizard attempting to cast spells from the Lore of Death or Lore of Necromancy within 12" of the Necrofex Colossus gains +1 to their Casting roll.
- *Necrofex Colossus Special Attacks:* A creature of nightmarish power and massive stature, a Necrofex Colossus can make one of a number of attacks in close combat. When it is the Necrofex Colossus' turn to strike in close combat, roll a D6 and consult the table below to determine what kind of attack it will make:

#chart((("D6", "Result"), ("1-2", "Batter and Slash: The Necrofex Colossus fights using the Random Attacks (D6+1) special rule."), ("3-4", "Impale: Select one model in base contact; that model, and all models in the same file, must pass an
Initiative test or suffer a Strength 7 Hit with the Multiple Wounds (D6) special rule."), ("5-6", "Screams of the Damned: The Necrofex Colossus may make a Death Shriek into close combat. To
resolve a Death Shriek, roll 2D6+3. For each point by which the result exceeds the target unit's
Leadership, the target unit suffers 1 Wound which Ignores Armour Saves. Death Shriek is a non-
physical Magical Attack and Wounds suffered from it are distributed as if from shooting.")))
  ],
  upgrades: (
    rule("Corpse Killers")[After resolving its regular attacks, all enemy units in base contact with the Necrofex Colossus suffer D6 Strength 2 hits.],
    rule("Dark Soul")[The Necrofex Colossus becomes a Level 1 Wizard who uses spells from the Lore of Death or Lore of Necromancy. However, should the Necrofex Colossus suffer a miscast, in addition to any other effect, the Necrofex Colossus permanently has its Toughness value reduced by 1, as the backlash of the miscast damages the very fabric that holds the horror together.],
    rule("Scythes and Barbs")[The Necrofex Colossus' number of Random Attacks and Stomp hits may be re-rolled.],
    rule("Vampire Blood")[The Necrofex Colossus gains the Regeneration (3+) special rule, but is also subject to the Berserk Rage part of Frenzy.],
  ),
  options: [
- May take Scythes and Barbs +10 points
- May take Vampire Blood +10 points
- May take Corpse Killers +20 points
- May take Dark Soul +45 points
  ],
)

#unit("SKELETON CATAPULT",
  profiles: (
    (name: "Skeleton Catapult", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 80),
    (name: "Crew", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Undead, Skeleton)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, stone thrower",
  special-rules: "Undead",
  options: [
- May take light armour +3 points
  ],
)

#unit("BLACK COACH",
  profiles: (
    (name: "Black Coach", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 140),
    (name: "Wraith", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 2, ld: 5, points: ""),
    (name: "Spectres", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 1, a: 3, ld: "-", points: ""),
    (name: "Nightmare", m: "-", ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "1 Wraith (Undead, Spirit)",
  drawn-by: "2 Nightmares (Undead, Equine)",
  base-size: "50x100",
  equipment: "Great weapon (Wraith only)",
  special-rules: "Magical Attacks, Magical Ward (4+), Terror, Undead",
  special-rules-body: [
- *Evocation of Death:* When rolling for the Winds of Magic each turn, each natural 6 rolled increases the Black Coach's abilities for the rest of the game, as detailed on the chart below. All of the increases listed are cumulative.

#chart((("Dice", "Effect:"), ("1", "The Black Coach adds +1 to the number of Impact Hits it inflicts when it charges."), ("2", "The Wraith, Spectres and Nightmares gain +1 Strength."), ("3", "The Black Coach's Impact Hits, Nightmares', Wraith's and Spectres Attacks gain the Killing Blow
and Flaming Attacks special rules."), ("4", "The Black Coach gains the Magic Resistance (2) and Strider special rules."), ("5", "The Black Coach gains the Fly (8) special rule."), ("6", "The Black Coach gains the Ethereal special rule.")))
  ],
  options: [
- May take two additional Nightmares +6 points
- May take Spectres +5 points
  ],
)

#unit("COVEN THRONE",
  profiles: (
    (name: "Coven Throne", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 200),
    (name: "Pallid Handmaiden", m: "-", ws: 5, bs: 3, s: 5, t: "-", w: "-", i: 6, a: 2, ld: 8, points: ""),
    (name: "Spirit Horde", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 1, a: "*", ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "3 Pallid Handmaidens (Vampire, Lahmian)",
  drawn-by: "1 Spirit Horde (Undead, Spirit)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Fly (7), Magical Attacks (Spirit Horde only), Magical Ward (4+), Random Attacks (2D6)",
  special-rules-body: [
(Spirit Horde only)*, Spectral Steeds, Terror, Vampiric*

- *Battle of Wills:* Immediately before the first model in an enemy unit rolls To Hit against the Coven Throne (either in close combat or shooting), the opponent must roll a D6 and add it to their unit's Leadership. Next, roll a D6 and add it to the Coven Throne's Leadership. To find the result of the Battle of Wills, subtract the enemy's total from the Coven Throne's total, and apply the result to the table below – the results last until the end of the turn.

#chart((("Result:", "Effect:"), ("0 or less", "Back off, Devils!: No effect."), ("1-2", "Must... Resist...: The enemy is at -1 Weapon Skill and -l Ballistic Skill. Artillery weapons that
do not roll to Hit may be forced to re-roll the scatter dice."), ("3-5", "Bewitched: The enemy must re-roll successful To Hit rolls. Artillery weapons that do not roll to
Hit must roll a 4+ to be able to fire."), ("6+", "Completely Enthralled: Every model in the enemy unit makes a single close combat attack,
resolved against its own unit. Roll To Hit, To Wound and take saves as normal. The caster may
choose which of the unit's weapons is used for these attacks. Parry or Dodge save does not
apply, and neither do any special rules that only applies in the first round of close combat.
Affected units may not otherwise shoot or attack this turn.")))

- *Insubstantial Form:* A model with this special rule has a.
- *Scrying Pool:* Enchanted Item. Bound Spell (Level 1, cast on 5+). This is an *augment* spell that targets the Coven Throne. All crew (including any characters mounted on it) may re-roll all failed To Hit and To Wound rolls for the remainder of the turn.
  ],
  notes: [
- A Coven Throne has a Line of Sight value of 5.
  ],
)

#unit("MORTIS ENGINE",
  profiles: (
    (name: "Mortis Engine", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 220),
    (name: "Corpsemaster", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 5, points: ""),
    (name: "Banshee", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 2, a: 1, ld: "-", points: ""),
    (name: "Spirit Horde", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 2, a: "*", ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour save 5+)",
  crew: "1 Corpsemaster (Human), 3 Banshees (Undead, Spirit)",
  drawn-by: "1 Spirit Horde (Undead, Spirit)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Death Shriek, Fly (7), Magical Attacks (Spirit Horde only), Random Attacks (2D6) (Spirit",
  special-rules-body: [
Horde only)*, Regeneration (4+), Spectral Steeds, Terror, Undead*

- *The Reliquary:* At the start of each of your turns, roll 2D6 and add the current turn number. This is range of the reliquary's dark aura this turn in inches. All enemy units within range of the dark aura immediately take D6 hits, with a Strength equal to the current turn number, distributed as from shooting. Also, place a marker next to all friendly Undead units that were within range of the dark aura at the start of the turn. These units improve their Regeneration saves by one point until the start of their next turn, to a maximum of 4+. If they have no Regeneration save, they are treated as having the Regeneration (6+) special rule instead. Finally, if the 2D6 result was a double, then the fell energies prove too powerful; in addition to the usual effects, the Mortis Engine takes 1 Wound with no saves of any kind allowed. When the Mortis Engine suffers its last unsaved Wound, every unit within 12 plus the turn number in inches, friend or foe, must take 2D6 hits with a Strength equal to the current turn number. These hits are distributed as shooting.
  ],
  notes: [
- A Mortis Engine has a Line of Sight value of 5.
  ],
)

= SPECIAL CHARACTERS

#unit("VLAD VON CARSTEIN",
  solo: true,
  first: true,
  subtitle: "First Count of Sylvania",
  profiles: (
    (name: "Vlad von Carstein", m: 6, ws: 7, bs: 5, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 450),
  ),
  troop-type: "Infantry (Special Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic: "Vlad von Carstein is a Level 3 Wizard who uses the Lore of Necromancy.",
  magic-items: (
    rule("Blood Drinker")[Magic Weapon. Close combat attacks made with Blood Drinker are resolved at +1 Strength. In addition, whilst Vlad wields Blood Drinker, he restores lost Wounds on a score of 3+ rather than 5+ for the purposes of the Red Thirst special rule.],
    rule("The Carstein Ring")[Talisman. The Carstein Ring grants Vlad a Magical Ward (4+). Furthermore, the first time Vlad is removed from play, roll a D6 at the end of the phase. On a roll of 2+, he is immediately returned to 'life' with a single Wound. Vlad must then be placed in the front rank of a friendly unit anywhere within 12" of the point where he fell (even one in close combat). If there is no such unit for Vlad to join, he is removed as a casualty.],
  ),
  vampiric-powers: "Aura of Dark Majesty, Supernatural Horror, Transfix",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Beloved in Death")[If Vlad and Isabella von Carstein are in the same unit, they are inspired to fight all the harder, and gain +1 Combat Resolution. Furthermore, Vlad becomes subject to Frenzy and Hatred should Isabella be slain, and vice versa.],
  ),
)

#unit("ISABELLA VON CARSTEIN",
  solo: true,
  subtitle: "Beloved of Vlad",
  profiles: (
    (name: "Isabella von Carstein", m: 6, ws: 6, bs: 4, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 110),
  ),
  troop-type: "Infantry (Special Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour",
  magic-items: (
    rule("Blood Chalice of Bathori")[Enchanted Item. The bearer, or another Vampiric character in the same unit, may drink from the Blood Chalice of Bathori at the start of each friendly Magic phase. The chosen model regains a single Wound lost earlier in the battle.],
  ),
  vampiric-powers: "Beguile",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Beloved in Death")[If Vlad and Isabella von Carstein are in the same unit, they are inspired to fight all the harder, and gain +1 Combat Resolution. Furthermore, Vlad becomes subject to Frenzy and Hatred should Isabella be slain, and vice versa.],
  ),
)

#unit("KONRAD VON CARSTEIN",
  solo: true,
  subtitle: "The Mad Blood Count",
  profiles: (
    (name: "Konrad von Carstein", m: 6, ws: 7, bs: 4, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 6, points: 215),
  ),
  troop-type: "Infantry (Special Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic-items: (
    rule("Sword of Waldenhof")[Magic Weapon. Two hand weapons. The wielder gains the Multiple Wounds (2) special rule.],
    rule("Ring of the Night")[Talisman. The bearer gains a Magical Ward (5+)*.* In addition, all missile attacks targeted at the bearer of the Ring of the Night or the unit they are with suffer \-1 To Hit.],
  ),
  vampiric-powers: "Red Fury",
  special-rules: "The Red Thirst, Vampiric",
  special-rules-body: (
    rule("One Bat Short of a Belfry")[At the start of each of Konrad's turns, roll a D6. On a roll of a 1\-3, Konrad is subject to the rules for Stupidity until the start of his next turn. On a roll of a 4\-6, Konrad is subject to Frenzy until the start of his next turn],
  ),
)

#unit("MANNFRED VON CARSTEIN",
  solo: true,
  subtitle: "Last of the Von Carsteins",
  profiles: (
    (name: "Mannfred von Carstein", m: 6, ws: 7, bs: 5, s: 6, t: 5, w: 3, i: 7, a: 4, ld: 10, points: 565),
  ),
  troop-type: "Infantry (Special Character, Vampire, von Carstein)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour",
  magic: "Mannfred von Carstein is a Level 4 Wizard who uses both of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
  ],
  magic-items: (
    rule("Timor Noctis, the Sword of Unholy Power")[Magic Weapon. For each unsaved Wound caused by the sword, the wielder gains an extra dice at the start of the ensuing Magic phase (this will be a power dice in his own Magic phase, and a dispel dice in the enemy's Magic phase).],
    rule("Armour of Templehof")[Magic Armour. Heavy armour. This item gives the wearer +2 Wounds (in addition to any Wounds he would get from being mounted on a Monster).],
    rule("Cloak of Darkness")[Talisman. This item gives the wearer the Magic Resistance (3) special rule.],
    rule("Ebony Staff")[Arcane Item. Staff. This item allows the bearer to cast _Invocation of Nehek_ from the Lore of Necromancy without using any Power dice in each of his Magic phases. The spell is cast with a Power Level equal to its basic casting value and can be dispelled normally.],
  ),
  vampiric-powers: "Dark Acolyte, Master of the Black Arts, Summon Creatures of the Night",
  special-rules: "Loremaster (Lore of Death, Necromancy), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Drakenhof Guard")[If Mannfred von Carstein is included in your army, you may upgrade one unit of Grave Guard to the Drakenhof Guard for +1 point per model. This unit ignores casualties caused by being Unstable.],
  ),
  options: [
- May be mounted on one of the following:
  - Nightmare +20 points
  - Hellsteed +25 points
  - Abyssal Terror +125 points
  - Zombie Dragon +245 points
  ],
)

#unit("ZACHARIAS THE EVERLIVING",
  solo: true,
  profiles: (
    (name: "Zacharias the Everliving", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 720),
    (name: "Zombie Dragon", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: ""),
  ),
  troop-type: "Monster (Special Character, Vampire, Necrarch)",
  mount: "Zombie Dragon (Undead, Dragon)",
  base-size: "50x50",
  equipment: "Hand weapon.",
  magic: "Zacharias is a Level 4 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Fire
- Death
- Heavens
- Light
- Metal
- Necromancy
- Shadow
  ],
  magic-items: (
    rule("Circlet of Rathek")[Talisman. The circlet gives Zacharias a Magical Ward (4+).],
    rule("Scrolls of Semhtep")[Arcane Item. Charm. The Scrolls of Semhtep follow all the rules for Dispel Scrolls, except that you may attempt to use one in each of the opposing player's Magic phases. After the first time you have used one, roll a D6; on a 2+ you can use a scroll the next turn as well. The second time you use one, you need to roll a 3+, the third time a 4+ and so on. A roll of 6 always succeeds.],
    rule("Book of Nagash")[Arcane Item. Relic. When casting the spell _Invocation of Nehek_ from the Lore of Necromancy, Zacharias restores 3D6 Wounds instead of 2D6 for Core Units and 2D6 Wounds for Special Units (except Cavalry) instead of D6. Characters, Special Units that are Cavalry and Rare Units regain D6 Wounds per successful casting.],
    rule("Staff of Kaphamon")[Enchanted Item. Bound Spell. This staff contains the _Gaze of Nagash_ spell from the Lore of Necromancy.],
  ),
  vampiric-powers: "Dark Acolyte, Forbidden Lore, Master of the Black Arts",
  special-rules: "Fly (7), Natural Armour (5+), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Pestilential Breath")[A Zombie Dragon has a Breath Weapon. Any model hit suffers a Strength 2 Hit with the Ignores Armour saves special rule.],
    rule("Swarm of Flies")[Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.],
  ),
)

#unit("MELKHIOR THE ANCIENT",
  solo: true,
  profiles: (
    (name: "Melkhior", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 6, a: 3, ld: 9, points: 455),
    (name: "Abyssal Terror", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 4, points: ""),
  ),
  troop-type: "Monstrous Creature (Special Character, Vampire, Necrarch)",
  mount: "Abyssal Terror (Undead)",
  base-size: "50x50",
  magic: "Melkhior is a Level 4 Wizard who uses the Lore of Necromancy.",
  magic-items: (
    rule("Painbringer")[Magic Weapon. If the wielder of this item rolls a 6 when rolling To Wound, that attack has the Multiple Wounds (D3) special rule.],
    rule("Black Cloak of Lahmia")[Talisman. This item makes the wearer unable to be targeted by non-magical shooting attacks.],
    rule("Grimoire Necronium")[Arcane Item. Relic. This item allows the bearer to cast _Invocation of Nehek_ at its basic value without using any Power dice. Each time you use the book roll a D6: on a roll of 1 it runs out of power and cannot be used for the remainder of the battle.],
  ),
  vampiric-powers: "Dark Acolyte, Forbidden Lore, Nehekhara's Noble Blood",
  special-rules: "Fly (8), Frenzy, Stupidity, The Red Thirst, Vampiric",
)

#unit("NEFERATA",
  solo: true,
  subtitle: "The Queen of Mysteries and Shadows",
  profiles: (
    (name: "Neferata", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 3, i: 9, a: 5, ld: 10, points: 510),
  ),
  troop-type: "Infantry (Special Character, Vampire, Lahmian).",
  base-size: "20x20 or 25x25",
  magic: "Neferata is a Level 3 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadows

In addition, she knows the following spell:

- *Shadowblood:* Level 3, cast on 10+. _Shadowblood_ is a *magic missile* with a range of 24". When cast, Neferata must declare how many Wounds she is using to boost the effects of the spell. The spell causes D6 Strength 5 hits with the Flaming Attacks special rule plus an extra D6 hits for each Wound Neferata expends. In addition, a unit suffering one or more wounds from this spell must immediately take a Panic test.
  ],
  magic-items: (
    rule("Dagger of Jet")[Magic Weapon. The wielder gains +1 Strength and the Poisoned Attacks special rule.],
    rule("Ruby of Lahmia")[Talisman. At the end of each turn of the game that the bearer is still alive, the Ruby of Lahmia automatically lets them regain one Wound that they has lost during the battle.],
    rule("The Staff of Pain")[Arcane Item. Staff. When the bearer successfully casts a *magic missile*, *direct damage* or *hex* spell, each target suffer D3 additional Strength 5 hits after the spell effect has been resolved.],
    rule("Bastet")[Enchanted Item. At the beginning of each of her turns, Neferata can send Bastet to any enemy unit on the battlefield within 12". Place a marker of Bastet next to the affected unit. Bastet looks just like an ordinary black cat and therefore will be ignored by the enemy (the model can be moved through, it doesn't stop the enemy from marching, etc.). The target unit will be afflicted by miserable bad luck and everything that can go wrong will. The unit must re-roll any successful armour save it takes while under Bastet's influence. This lasts for the duration of the Vampire player's turn.],
  ),
  options: [
- May take medium armour +9 points
- May be mounted on one of the following:
  - Nightmare +21 points
  - Hellsteed +30 points
  - Abyssal Terror +125 points
  - Coven Throne (replacing one of the crew) +200 points
  ],
  vampiric-powers: "Lightning Reflexes, Quickblood, Seduction",
  special-rules: "Dodge (6+), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Heavenly Creature")[Enemy units in base contact with Neferata suffer a \-2 penalty to their Leadership.],
    rule("Queen of Lahmia")[Neferata must be the Army General. In addition, units of Lahmian Handmaidens may be included as Special Units rather than Rare Units.],
  ),
  order: ("troop-type", "base-size", "magic", "magic-items", "options", "vampiric-powers", "special-rules"),
)

#unit("SEKHAR",
  solo: true,
  subtitle: "The Fang of Lahmia",
  profiles: (
    (name: "Sekhar", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 190),
    (name: "Ouboroth", m: "-", ws: 4, bs: 0, s: 4, t: "-", w: "-", i: 4, a: 2, ld: "-", points: ""),
  ),
  troop-type: "Infantry (Special Character, Vampire, Lahmian)",
  base-size: "40x60 or 50x75",
  equipment: "Polearm, medium armour",
  magic: "Sekhar is a Level 2 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Death
- Necromancy
- Shadows
  ],
  vampiric-powers: "Seduction, Lightning Reflexes",
  special-rules: "Dodge (6+), Poisoned Attacks (Ouboroth only), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("The Time-Swallower’s Maw")[This ability can be used once per game, at the start of any close combat phase. All enemy models in base contact with Sekhar must pass an Initiative test or suffer 1 Wound for every point they failed the Initiative test by.],
  ),
  notes: [
- Sekhar has a Unit Strength of 2.
  ],
)

#unit("WALACH HARKON",
  solo: true,
  subtitle: "Grand Master of the Blood Knights",
  profiles: (
    (name: "Walach Harkon", m: 6, ws: 9, bs: 3, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 490),
    (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Vampire, Blood Dragon)",
  mount: "Nightmare (Undead, Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Barding",
  magic: "Walach Harkon is a Level 2 Wizard who uses the Lore of Necromancy.",
  magic-items: [
- *Crimson Blade:* Magic Weapon. The Crimson Blade automatically Wounds on a 2+. In addition, to see what additional effect the attack has, compare the result of each To Wound dice rolled with the table below:

#chart((("D6", "Result"), ("2-3", "Arm wound: The model (or rider if mounted) loses 1 Attack for the remainder of the game."), ("3-5", "Chest wound: The attack is resolved with the Multiple Wounds (D3) special rule."), ("6", "Beheaded: The attack is resolved as a Heroic Killing Blow.")))

- *Walach's Bloody Hauberk:* Magic Armour. Heavy armour. This item gives the wielder a Magical Ward (5+).
- *Blood Chalice:* Enchanted Item. At the beginning of each Vampire Counts turn, the bearer can drink from the Blood Chalice allowing them to do one of the following:
  - Heal 1 Wound suffered earlier in the battle.
  - Gain +D3 Attack until the start of your next turn.
  - Re-roll 1's To Hit and To Wound and gain the Flaming Attacks special rule until the start of your next turn.
- *Blood Dragon Standard:* Magic Standard. This is the army's Battle Standard, though Walach may still be the Army General. All Blood Dragon Vampires within 12" gain the Hatred special rule.
  ],
  vampiric-powers: "Dread Knight, Doom Rider, Warrior Pride",
  special-rules: "Hatred (The Empire), Martial Honour (see Blood Dragons), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Grand Master of the Blood Knights")[If Walach is included in your army, units of Blood Knights are taken as Special Units instead of Rare Units.],
  ),
)

#unit("PRINCE VHORDRAI",
  solo: true,
  subtitle: "Lord of Crimson Keep",
  profiles: (
    (name: "Prince Vhordrai", m: 6, ws: 8, bs: 3, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 615),
    (name: "Shordemaire (Zombie Dragon)", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 5, ld: 4, points: ""),
  ),
  troop-type: "Monster (Special Character, Vampire, Blood Dragon)",
  mount: "Zombie Dragon (Undead, Draconid)",
  base-size: "100x150",
  equipment: "Heavy armour, shield",
  magic: "Prince Vhordrai is a Level 1 Wizard who uses the Lore of Necromancy.",
  magic-items: (
    rule("Bloodlance")[Magic Items. Heavy lance. In any turn in which Prince Vhordrai charges, he gains the Multiple Wounds (D3) special rule.],
  ),
  vampiric-powers: "Heart Piercing, Honour or Death, Red Fury",
  special-rules: "Fly (7), Martial Honour (see Blood Dragons), Natural Armour (5+), The Red Thirst, Swarm",
  special-rules-body: [
*of Flies* (see Zombie Dragon)*, Vampiric*

- *Breath of Shyish:* Shordemaire has a Strength 3 Breath Weapon with the Ignores Armour Saves special rule.
- *Fist of Abhorash:* All units of Blood Knights within 12" of Prince Vhordrai may re-roll failed charge distance rolls.
- *Swarm of Flies:* Enemy units in base contact with a Zombie Dragon suffer \-1 to their Weapon Skill.
  ],
)

#unit("USHORAN",
  solo: true,
  subtitle: "The Carrion King",
  profiles: (
    (name: "Ushoran", m: 6, ws: 7, bs: 3, s: 7, t: 7, w: 4, i: 7, a: 5, ld: 10, points: 590),
  ),
  troop-type: "Monstrous Creature (Special Character, Vampire, Strigoi)",
  base-size: "100x100",
  magic: "Ushoran is a Level 2 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Death
- Necromancy
  ],
  magic-items: (
    rule("Sceptre of the Carrion King")[Magic weapon. This item gives the wielder the Multiple Wounds (D6) special rule.],
    rule("The King's Chalice")[Talisman. This item gives the bearer a Magical Ward (5+). In addition, at the start of each of your turns, it can restore one Wound lost earlier during the game.],
    rule("Shroudcage Fragment")[Enchanted Item. All enemy units in base contact with Ushoran are subject to the Always Strikes Last special rule.],
  ),
  vampiric-powers: "Monstrous Mass, Summon Ghouls",
  special-rules: "Hatred, Natural Armour (6+), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("The Carrion King")[Ushoran must be the Army General. In addition, all friendly Ghouls within 12" of Ushoran are subject to the Frenzy special rule.],
  ),
)

#unit("GORMAYNE",
  solo: true,
  subtitle: "Grand Justice",
  profiles: (
    (name: "Gormayne", m: 6, ws: 6, bs: 3, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 170),
  ),
  troop-type: "Infantry (Special Character, Vampire, Strigoi)",
  base-size: "20x20 or 25x25",
  vampiric-powers: "Unholy Regeneration",
  special-rules: "Hatred, Natural Armour (6+), The Red Thirst, Vampiric",
  special-rules-body: [
- *Pronounce Judgement:* At the start of each of your turns, choose one enemy unit within Line of Sight. Then roll a D6 and consult the table below:

#chart((("D6", "Result"), ("1-2", "Petty Transgression: Until the start of your next turn, all friendly Ghouls may re-roll 1's on their
charge and pursuit distance against that unit."), ("3-4", "Dishonourable Conduct in Battle: Until the start of your next turn, all friendly Ghouls may re-roll
failed To Wound rolls of 1 against that unit."), ("5", "Grievous Insult to the Court: Until the start of your next turn, all friendly Ghouls may re-roll failed
To Hit rolls of 1 against that unit."), ("6", "Regicide: Until the start of your next turn, all friendly Ghouls gain the Killing Blow special rule
against that unit.")))
  ],
)

#unit("HEINRICH KEMMLER",
  solo: true,
  subtitle: "The Lichemaster",
  profiles: (
    (name: "Heinrich Kemmler", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 325),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic: "Heinrich Kemmler is a Level 4 Wizard who uses the Lore of Necromancy.",
  magic-items: (
    rule("Chaos Tomb Blade")[Magic Weapon. The Chaos Tomb Blade confers +1 Strength and +2 Attacks. Furthermore, if the wielder is in a unit of Skeleton Warriors or Grave Guard, for each model he slays in close combat, an extra model is added to his unit following the rules for Resurrecting Fallen Warriors. Newly created models have the same equipment as the rest of the unit.],
    rule("Skull Staff")[Arcane Item. Staff. At the beginning of the friendly Magic phase, your opponent must declare all of his magic items that are within 12" of the bearer, and the models/units that are carrying them. In addition, the bearer receives a +1 to their dice rolls when they attempt to dispel.],
    rule("Cloak of Mists and Shadows")[Enchanted Item. At the beginning of each of your turns, choose either the Fly (10) or Ethereal special rule. The wearer has that rule until the beginning of his next turn.],
  ),
  special-rules: "Loremaster (Lore of Necromancy), Master of the Dead",
)

#unit("HELMAN GHORST",
  solo: true,
  profiles: (
    (name: "Helman Ghorst", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 165),
  ),
  troop-type: "Infantry (Special Character, Human).",
  base-size: "20x20 or 25x25",
  magic: "Helman Ghorst is a Level 2 Wizard who uses the Lore of Necromancy.",
  equipment: "Hand weapon",
  magic-items: (
    rule("The Liber Noctis")[Arcane Item. Relic. This tome gives Helman Ghorst +1 Power dice in each of their Magic phases. Only he may use this dice.],
  ),
  special-rules: "Loremaster (Lore of Necromancy), Master of the Dead",
  special-rules-body: (
    rule("Awaken from the Grave")[When Helman Ghorst successfully casts the _Invocation of Nehek_ or _Raise Dead_ spells, he can add +D3 to the total number of Skeletons or Zombies created.],
    rule("The Brothers Ghorst")[If Helman Ghorst is mounted on a Corpse Cart, all attacks from the Restless Dead pulling it are resolved at Strength 4.],
    rule("The Konigstein Stalkers")[If Helman Ghorst is included in your army, you may upgrade one unit of Skeleton Warriors to the Konigstein Stalkers for +1 point per model. This unit has the Poisoned Attacks special rule.],
  ),
  options: [
- May be mounted on a Corpse Cart (replacing the Corpsemaster) +100 points
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "magic-items", "special-rules", "options"),
)

#unit("KRELL",
  solo: true,
  subtitle: "Lord of Undeath",
  profiles: (
    (name: "Krell", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 4, i: 5, a: 4, ld: 9, points: 235),
  ),
  troop-type: "Infantry (Special Character, Undead, Wight)",
  base-size: "20x20, 25x25 or 30x30",
  magic-items: (
    rule("The Black Axe of Krell")[Magic Weapon. Great weapon. This item confers the Multiple Wounds (D3) special rule. Furthermore, any model taking an unsaved Wound from the Black Axe must roll a D6 at the start of each of its subsequent turns. If the result is higher than the number of Wounds it has remaining, that model suffers an additional Wound which Ignores Armour saves.],
    rule("Armour of the Barrows")[Magic Armour. Heavy armour. If an enemy with a magic weapon Wounds the wearer in close combat and the wearer passes their armour save, that magic weapon's abilities are nullified; it is treated as a normal, non-magical weapon of the same type for the remainder of the game.],
    rule("Crown of the Damned")[Talisman. This item grants the wearer a Magical Ward (4+) and the Stupidity special rule.],
  ),
  special-rules: "Killing Blow, Terror, Undead",
  special-rules-body: (
    rule("Champion of the Dead")[Krell must always issue and accepts challenges whenever possible. If Krell is fighting a challenge whilst in the same unit as Heinrich Kemmler, he has the Heroic Killing Blow special rule.],
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
