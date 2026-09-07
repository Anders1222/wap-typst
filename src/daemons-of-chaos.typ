// Daemons of Chaos 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "daemons-of-chaos",
  army: "Daemons of Chaos",
  version: "3.0",
  layout: "army",
  cover: "covers/daemons-of-chaos.png",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Daemons of Chaos 3.0")

#cover(
  title: "Daemons of Chaos",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/daemons-of-chaos.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Daemons of Chaos*, version 3.0 — written and freely distributed by Mathias
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
This section of the book describes the different units in a Daemons of Chaos army, along with their rules. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring 'army special rules' that apply to several Daemons of Chaos units, and these are detailed below.

#namecost("DAEMONIC", "")

Models with this rule have the Fear, Magical Attacks, Magical Ward (5+) and Unbreakable special rules (including mounts).

#namecost("Daemonic Alignment", "")

In addition to the rules above, a Daemon (including any mount they have) can have any of the following Daemonic Alignments:

- *Daemon of Khorne:* A Daemon of Khorne has the Hatred (Daemons of Slaanesh), Magic Resistance (1) and Mighty Blow (1) special rules.

- *Daemon of Nurgle:* A Daemon of Nurgle has the Hatred (Daemons of Tzeentch) and Poisoned Attacks special rules. Enemy models in base contact suffer \-1 to their Weapon Skill.

- *Daemon of Slaanesh:* A Daemon of Slaanesh has the Hatred (Daemons of Khorne) and Armour Piercing (1) special rules. For every close combat Attack that causes an unsaved Wound, the model may may an additional Attack. These additional Attacks cannot generate further attacks.

- *Daemon of Tzeentch:* A Daemon of Tzeentch has the Hatred (Daemons of Nurgle) and Magical Ward (6+) special rules. Wizards with the Daemon of Tzeentch upgrade can also re-roll channelling results of 1.

#namecost("Daemonic Animosity", "")

Daemons with a different Daemonic Alignment treat each other as Suspicious Allies. However, Daemons of Khorne and Slaanesh, or Tzeentch and Nurgle, treat each other as Desperate Allies, respectively.

If there is a Daemonic unit within 6" of another Daemonic unit belonging to a different God those units suffer a \-1 Leadership penalty. However, Daemons of Khorne and Slaanesh, or Tzeentch and Nurgle, respectively, suffer a \-2 penalty to their Leadership if within 6" of each other instead.

Daemons that do not have a Daemonic Alignment are not subject to Daemonic Animosity, but they may only join units that also do not have a Daemonic Alignment.

#namecost("Daemonic Instability", "")

If a unit of Daemons loses a round of close combat it must take a Daemonic Instability test. This works like a normal Break test, except that for every point they fail the test by, the unit suffers one additional Wound with no saves allowed. Daemonic Instability replaces Unstable where applicable.

If characters are present in the unit, the controlling player first allocates Wounds to the unit (up to their current Wounds), then divides remaining Wounds as equally as possible amongst any characters.

The Daemonic Instability test can use Inspiring Presence, Hold Your Ground and/or be tested on unmodified Leadership if the unit is Stubborn or Steadfast as normal.

#namecost("REIGN OF CHAOS", "")

If your Army General has a Daemonic Alignment, then one of the following bonuses apply:

- *Khorne's Wrath:* Khorne only. At the start of each of your turns, roll a D6 for each enemy unit, and each unit that contains one or more Daemons of Slaanesh, or models with the Mark of Slaanesh, within 12" of your Army General. Do not roll for units that are engaged in close combat. On the roll of a 6, place a small round template centred directly over the centre of the unit. This then scatters 2D6". Resolve damage as you would from a stone thrower shot, with the model under the centre of the template suffering a Strength 8 hit with the Magical Attacks and Multiple Wounds (D6) special rule, and all other models wholly or partially under the template suffering a Strength 4 hit with the Magical Attacks special rule.

- *Rot, Glorious Rot:* Nurgle only. At the start of each of your turns, roll a D6 for each enemy unit, and each unit that contains one or more Daemons of Tzeentch, or models with the Mark of Tzeentch, within 12" of your Army General. Do not roll for units engaged in close combat. On the roll of a 6, that unit suffers D6+3 Strength 3 hits with the Ignores Armour saves and Magical Attacks special rules.

- *The Dark Prince Thirsts:* Slaanesh only. At the start of each of your turns, roll a D6 for each enemy unit, and each unit that contains one or more Daemons of Khorne, or models with the Mark of Khorne, within 12" of your Army General. Do not roll for units that are engaged in close combat. On the roll of a 6, that unit must take a Leadership test on 3D6, adding the results together. If the test is passed, nothing happens. Otherwise, for each point by which the unit failed the test, it suffers a Wound, with the Ignores Armour saves and Magical Attacks special rules.

- *Storm of Fire:* Tzeentch only. At the start of each of your turns, roll a D6 for each enemy unit, and each unit that contains one or more Daemons of Nurgle, or models with the Mark of Nurgle, within 12" of your Army General. Do not roll for units that are engaged in close combat. On the roll of a 6, place a small round template centred directly over the centre of the unit – this then scatters D3". Any models wholly or partially beneath the template's final position suffer a single Strength 4 hit with the Flaming Attacks and Magical Attacks special rules.

#namecost("SUMMONED FROM BEYOND", "")

A unit with the Summoned from Beyond special rule gives them the Ambushers special rule. However, instead of deploying like normal Ambushers, the unit can arrive anywhere on the battlefield.

When the unit emerges, place a marker anywhere on the battlefield and roll 2D6 and the scatter dice. If you roll a hit on the scatter dice, the marker stays in place; if you roll an arrow, move the marker the number of inches indicated by the 2D6 in the direction shown by the arrow. If the marker is moved off the tabletop, the unit is considered lost; treat them as casualties.

Once the final position is established, place the unit so it can touch the marker. If the marker is under a unit or impassable terrain, place it next to the closest edge of the unit/terrain. They may face in any direction.
]

#lore("THE LORE OF CHAOS")[

#spell("SCIONS OF THE DARK GODS", "Lore Attribute")[Roll a D6 for each unsaved Wound caused by a spell from this lore; on a 5+, add 1 Wound's worth of models to one friendly Daemonic unit within 12" of the caster, just like a summoning spell.]

#spell("THE SUMMONING", "Signature Spell", cast: "6+")[_The Summoning_ is a *magic missile* with a range of 18" that causes 2D6 Strength 3 hits with the Armour Piercing (1) special rule.]

#spell("DAEMONIC FAMILIARS", 1, cast: "5+")[_Daemonic Familiars_ is a *hex* spell that targets one unit in base contact with the Wizard. The target suffer 2D6 Strength 2 hits with the Ignores Armour saves special rule.]

#spell("GIFT OF CHAOS", 1, cast: "6+")[_Gift of Chaos_ is a *direct damage aura* spell with a range of 12". Each target suffers D6 Strength 3 Hits.]

#spell("VEIL OF GLOOM", 1, cast: "6+")[_Veil of Gloom_ is an *augment* spell with a range of 18". The target unit gains a Magical Ward (5+) against missile attacks until the start of your next Magic phase.]

#spell("VISION OF TORMENT", 2, cast: "7+")[_Vision of Torment_ is a *hex* spell with a range of 24". The target must pass a Psychology test or be unable to voluntarily move or shoot until the start of the caster's next turn.]

#spell("WINDS OF CHAOS", 2, cast: "7+")[_Winds of Chaos_ is a *hex* spell with a range of 24". The target suffers \-2 to their Movement until the start of the caster's next turn.]

#spell("BINDING DAMNATION", 2, cast: "9+")[_Binding Damnation_ is a *hex* spell with a range of 24". The target suffers \-3 to their Weapon Skill and Ballistic Skill (to a minimum of 1) until the start of the caster's next turn.]

#spell("MASK OF DARKNESS", 3, cast: "9+")[_Mask of Darkness_ is a *conveyance* spell with a range of 12". The target is immediately picked up and may be moved to any point on the battlefield within 12" of its original position, just like a summoning spell.]

#spell("VEIL OF CORRUPTION", 3, cast: "9+")[_Veil of Corruption_ is a *direct damage* spell. Place the large round template anywhere within 24" – it then scatters D6". All models hit by the template suffer a Strength 3 hit.]

#spell("RUINOUS VIGOUR", 3, cast: "10+")[_Ruinous Vigour_ is an *augment* spell with a range of 18". The target gains +1 Movement, Toughness and Initiative until the start of the caster’s next Magic phase.]

#spell("CHAOTIC CONDUIT", 4, cast: "10+")[_Chaotic Conduit_ is an *augment* spell with a range of 18". The target gains +1 To Hit and To Wound in close combat until the start of the caster’s next Magic phase.]

#spell("SPITE-TONGUE CURSE", 4, cast: "12+")[_Spite-tongue Curse_ is a *direct damage* spell with a range of 12" that causes 3D6 Strength 5 hits. However, if the spell fails to reach its casting value, the caster suffers 1 Wound which Ignores Armour Saves.]

#spell("VORTEX OF CHAOS", 4, cast: "15+")[Remains in play. _Vortex Of Chaos_ is a *magical vortex* that uses the large round template. Any model touched by the template at any point during its move suffer a Strength 4 hit.]
]
#lore("THE LORE OF NURGLE")[

#spell("CHILDREN OF NURGLE", "Lore Attribute")[Roll a D6 for each unsaved Wound caused by a spell from this lore; on a 5+, add 1 Wound's worth of models to one friendly Daemons of Nurgle unit within 12" of the caster, just like a summoning spell.]

#spell("STREAM OF CORRUPTION", "Signature Spell", cast: "7+")[_Stream of Corruption_ is a *direct damage* spell. The caster makes a Breath Weapon Attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit must pass a Toughness test or suffer a Wound with the Ignores Armour saves special rule.]

#spell("MIASMA OF PESTILENCE", 1, cast: "5+")[_Miasma of Pestilence_ is an *augment* spell with a range of 18". Until the start of the caster’s next Magic phase, all enemy units in base contact with the target unit reduce their Weapon Skill and Initiative by 1 (to a minimum of 1).]

#spell("BLADES OF PUTREFACTION", 1, cast: "5+")[_Blades of Putrefaction_ is an *augment* spell with a range of 18". The target unit’s close combat attacks gain the Poisoned Attacks special rule until the start of the caster’s next Magic phase.]

#spell("MAGNIFICIENT BUBOUES", 1, cast: "6+")[_Magnificent Buboes_ is a *magic missile* with a range of 18" that targets a single enemy model (even a character in a unit). The target suffers one Wound which Ignores Armour saves.]

#spell("CURSE OF THE LEPER", 2, cast: "7+")[_Curse of the Leper_ is an *augment/hex* spell with a range of 24". If cast on a friendly unit, it increases the target unit’s Toughness by 1 until the start of the caster's next Magic phase. If cast on an enemy unit, it reduces the target unit’s Toughness by 1 (to a minimum of 1) until the start of the caster’s next Magic phase.]

#spell("PLAGUE SQUALL", 2, cast: "8+")[_Plague Squall_ is a *direct damage* spell with a range of 24". Place the large round template with the centre anywhere within this range; it scatters like a stone thrower. If a misfire is rolled, the caster suffers 1 Wound which Ignores Armour Saves. Any model hit suffers a Strength 1 Hit with the Ignores Armour Saves special rule.]

#spell("RANCID VISITATIONS", 2, cast: "10+")[_Rancid Visitations_ is a *magic missile* with a range of 18" that inflicts D6 Strength 5 hits. The target unit must then immediately pass a Toughness test or suffer a further D6 hits. The target must keep taking Toughness tests until it passes, or is removed as a casualty.]

#spell("ROTBOMB", 3, cast: "10+")[_Rotbomb_ is a *hex* spell with a range of 24". The target's armour save is lowered by two points for the rest of the game. Rotbomb can be repeatedly cast on the same target, reducing its armour save by a further \-2 each time.]

#spell("CLOYING QUAGMIRE", 3, cast: "11+")[_Cloying Quagmire_ is a *direct damage* spell with a range of 24". All models in the unit must take an Initiative test. Those that fail must then take an armour save. If passed, they are removed as casualties, with no saves allowed. Models without armour count as passing on a 6. This spell has no effect on models with the Fly, Ethereal or Strider special rules.]

#spell("FLESHY ABUNDANCE", 3, cast: "11+")[_Fleshy Abundance_ is an *augment* spell with a range of 18". Until the start of the caster’s next Magic phase, the target has the Regeneration (5+) special rule (to a maximum of a 3+ save for Daemons of Nurgle).]

#spell("GRANDFATHER NURGLE'S CIRCLE OF LIFE", 4, cast: "11+")[_Grandfather Nurgle's Circle of Life_ is a *direct damage* spell with a range of 24" that causes D6 hits that wound on a 4+ with the Ignores Armour Saves special rule. For each unsaved Wound caused, one friendly unit within 6" of the caster instantly recovers 1 Wounds' worth of models slain earlier in the battle, just like a summoning spell.]

#spell("PLAGUE WIND", 4, cast: "12+")[Remains in play. _Plague Wind_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must pass a Toughness test or suffer a single Wound with the Ignores Armour Saves special rule.]

#spell("ROT, GLORIOUS ROT", 4, cast: "13+")[_Rot, Glorious Rot_ is a *direct damage aura* spell with a range of 18". Each target suffers D6 Strength 3 Hits with the Ignores Armour Saves special rule..]
]
#lore("THE LORE OF SLAANESH")[

#spell("BORN OF DAMNATION", "Lore Attribute")[Roll a D6 for each unsaved Wound caused by a spell from this lore; on a 5+, add 1 Wound's worth of models to one friendly Daemons of Slaanesh unit within 12" of the caster, just like a summoning spell.]

#spell("LASH OF SLAANESH", "Signature Spell", cast: "6+")[_Lash of Slaanesh_ is a *direct damage* spell. Extend a straight line, 24" in length, within the caster’s forward arc and directly from their base. Each model in the way (determined using the line template) suffers a Strength 4 hit with the Armour Piercing (1) special rule. Any unit that suffers a casualty from this spell may not march in its next Movement phase.]

#spell("HYSTERICAL FRENZY", 1, cast: "6+")[Remains in play. _Hysterical Frenzy_ is an *augment/hex* spell with a range of 24". While the spell is in effect, the target gains the Frenzy special rule (which is not lost if the unit is defeated in close combat) and suffers D6 Strength 3 hits at the end of each of the caster’s Magic phases.]

#spell("PAVANE OF SLAANESH", 1, cast: "6+")[_Pavane of Slaanesh_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). If successfully cast, the target must pass a Leadership test on their own unmodified Leadership or suffer 1 Wound which Ignores Armour Saves for every point they failed the test by.]

#spell("SUCCOUR OF CHAOS", 1, cast: "6+")[_Succour of Chaos_ is an *augment* spell with a range of 18". The target gains the Always Strikes First special rule until the start of the caster's next Magic phase.]

#spell("TITILLATING DELUSIONS", 2, cast: "7+")[Remains in Play. Titillating Delusions is a *hex* spell with a range of 24". Place a marker (this has a Line of Sight value of 1) within 24". While the spell is in effect, the target must pass a Leadership test at the start of each of their Movement phases or be forced to move towards the target as quickly as possible. The spell is automatically dispelled as soon as the unit reaches the marker or loses Line of Sight to it.]

#spell("SLOTHFUL STUPOR", 2, cast: "8+")[_Slothful Stupor_ is a *hex* spell with a range of 24". The target suffers \-2 Leadership and gains the Stupidity special rule until the start of the caster’s next Magic phase.]

#spell("ACQUIESCENCE", 2, cast: "9+")[_Acquiescence_ is a *hex* spell with a range of 24". The target unit is subject to the Always Strikes Last and Random Movement (D6) special rules until the start of the caster’s next Magic phase.]

#spell("DELICIOUS EXCRUCIATION", 3, cast: "9+")[_Delicious Excruciation_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all models in the target are automatically Hit in close combat and gain the Unbreakable special rule.]

#spell("SLICING SHARDS", 3, cast: "10+")[_Slicing Shards_ is a *magic missile* with a range of 24" that inflicts D6 Strength 4 hits with the Armour Piercing (1) special rule. The target must then immediately pass a Leadership test or suffer a further D6 hits. The target must keep taking Leadership tests until it passes, or is removed as a casualty.]

#spell("PHANTASMAGORIA", 3, cast: "10+")[_Phantasmagoria_ is a *hex* spell with a range of 24". Until the start of the caster’s next Magic phase, the target unit must roll an additional D6 whenever it takes a Leadership test, discarding the lowest result rolled.]

#spell("CACOPHONIC CHOIR", 4, cast: "15+")[_Cacophonic Choir_ is a *hex* spell with a range of 12". The target takes 3D6 hits that wound on a 4+ which Ignores Armour saves. If at least one unsaved Wound is caused, the target is subject to the Always Strikes Last and Random Movement (D6) special rules until the start of the caster’s next Magic phase.]

#spell("ECSTATIC SEIZURES", 4, cast: "15+")[_Ecstatic Seizures_ is a *direct damage* spell with a range of 12". All models in the target unit must pass a Strength test or suffer 1 Wound which Ignores Armour Saves.]

#spell("SONG OF SEDUCTION", 4, cast: "15+")[Remains in play. _Song of Seduction_ is a *hex* spell with a range of 24". While the spell is in effect, this unit is wholly under the caster's control. It may move and shoot (but not charge, cast spells or channel dice) during the enemy's turn as if it were your own unit. At the end of each subsequent Magic phase, the unit must take a Leadership test. If passed, the spell is dispelled. The spell is immediately dispelled if the unit becomes engaged in close combat.]
]
#lore("THE LORE OF TZEENTCH")[

#spell("FIRES OF CHANGE", "Lore Attribute")[Roll a D6 for each unsaved Wound caused by a spell from this lore; on a 5+, add 1 Wound's worth of models to one friendly Daemons of Tzeentch unit within 12" of the caster, just like a summoning spell.]

#spell("BLUE FIRE OF TZEENTCH", "Signature Spell", cast: "6+")[_Blue Fire of Tzeentch_ is a *magic missile* with a range of 24" that causes D6 Strength D6+1 hits with the Flaming Attacks special rule.]

#spell("BALEFUL TRANSMOGRIFICATION", 1, cast: "6+")[_Baleful Transmogrification_ is a *direct damage* spell with a range of 24". The target suffers D3 Strength D6 Hits which Ignores Armour Saves. If a 3 is rolled for the number of Hits, it suffers an additional D3 hits.]

#spell("BOON OF TZEENTCH", 1, cast: "6+")[_Boon of Tzeentch_ is an *augment* spell that is cast on the Wizard itself. The Wizard immediately gains D3+1 Power dice, that only they may use.]

#spell("PANDEMONIUM", 1, cast: "7+")[_Pandemonium_ is a *hex* spell with a range of 24". Until the start of the caster’s next Magic phase, the target unit must use the lowest Leadership value in the unit (including that of mounts) and cannot benefit from the Inspiring Presence or Hold Your Ground! abilities.]

#spell("PINK FIRE OF TZEENTCH", 2, cast: "8+")[_Pink Fire of Tzeentch_ is a *direct damage* spell. Place the teardrop-shaped template with its narrow end touching the front of the Wizard’s base and the large end aimed at the target. Roll 2D6 and move the template directly forwards the number of inches indicated. All models underneath the template suffer a Strength D6+1 hit (roll once and apply the result to all models) with the Flaming Attacks special rule.]

#spell("BOLT OF CHANGE", 2, cast: "8+")[_Bolt of Change_ is a *magic missile* with a range of 24". It inflicts a single Strength D6+4 hit with the Multiple Wounds (D3), Ignores Armour Saves and Flaming Attacks special rules, and then penetrates ranks in the same manner as a shot from a bolt thrower.]

#spell("SHIELD OF FATE", 2, cast: "8+")[_Shield of Fate_ is an *augment* spell with a range of 18". The target may re-roll armour and Ward save rolls of 1 until the start of the caster’s next Magic phase.]

#spell("FOLD REALITY", 3, cast: "8+")[_Fold Reality_ is an *augment* spell with a range of 18". The target unit instantly recovers D3+1 Wounds' worth of models slain earlier in the battle, just like a summoning spell. However, if a 1 is rolled, the target suffers D3+1 Wounds with no saves allowed instead.]

#spell("GLEAN MAGIC", 3, cast: "8+")[_Glean Magic_ is a *hex* spell that targets a single enemy Wizard within 18". The caster and the target both roll a D6 and add their Wizard level to the score. If the caster rolls higher, the target suffers a Strength 4 hit with the Flaming Attacks special rule and loses one Wizard level (along with one spell). The caster gains access to this spell (unless it is a *summoning* spell) and can cast it themselves for the remainder of the game (using Boon of Magic as the Lore Attribute).]

#spell("TZEENTCH'S FIRESTORM", 3, cast: "11+")[_Tzeentch's Firestorm_ is a *direct damage* spell. Place the small round template anywhere within 30" – it then scatters D3". All models hit by the template suffer a Strength D6+1 hit (roll once and apply the result to all models) with the Flaming Attacks special rule.]

#spell("DAEMONFIRE VORTEX", 4, cast: "12+")[Remains in play. _Daemonfire Vortex_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move suffers a Strength D6+1 hit (roll once for each unit and apply the result to all models in that unit) with the Flaming Attacks special rule.]

#spell("TREASON OF TZEENTCH", 4, cast: "14+")[_Treason of Tzeentch_ is a *hex* spell with a range of 24". All models in the unit immediately make a number of close combat attacks equal to the models' Attack characteristic (in addition to any extra Attacks from weapons) against the unit itself. Roll To Hit, To Wound and take saves as normal. The caster may choose which of the unit's weapons is used for these attacks. Parry or Dodge save does not apply, and neither do any special rules that only applies in the first round of close combat.]

#spell("INFERNAL GATEWAY", 4, cast: "15+")[_Infernal Gateway_ is a *direct damage* spell with a range of 24". The target suffers 2D6 Strength 2D6 hits with the Flaming Attacks special rule. Roll for the Strength first. If an 11 or 12 is rolled when determining the spell’s Strength value, the hits are resolved at Strength 10, and the unit suffers 3D6 hits rather than 2D6.]
]
= DAEMONIC GIFTS

Characters may select one or more Gifts from the list below as described in the army list. Each Gift may only be taken once per character, but more than one character may take the same Gift.

#namecost("BRINGER OF THE SWARM", "70 points")

At the end of every Close Combat phase in which the Daemon causes one or more unsaved Wounds, a unit of Chaos Furies with the same Daemonic Alignment as the Daemon is created. The unit consists of one Chaos Fury for every unsaved Wound caused. The unit must be placed wholly within 12" of the Daemon and cannot be placed with 1" of another unit or impassable terrain. If any model cannot be placed because there isn’t enough room, or you do not have sufficient models, it is lost. Units created in this way do not award victory points.

#namecost("AURA OF DISRUPTION", "60 points")

Any dispel attempt you make while this model is on the table receives one extra ‘free’ dispel dice.

#namecost("SORCEROUS LODESTONE", "55 points")

Whenever a spell is successfully cast by any Wizard, roll a D6 – this Daemon regains a Wound lost earlier in the battle on a roll of 5+. Whenever a spell is miscast by any Wizard, the Daemon instead suffers a Wound on a roll of 4+.

#namecost("DAEMONIC ARROGANCE", "30 points")

The Daemon gains the Stubborn special rule.

#namecost("CHAOS DISRUPTION", "30 points")

Any missile attack targeting the Daemon or the unit it is with suffers an additional \-1 to Hit penalty.

#namecost("NOXIOUS BREATH", "30 points")

The Daemon has a Strength 2 Breath Weapon with the Ignores Armour saves special rule.

#namecost("SOULEATER", "30 points")

At the end of any phase in which the Daemon causes one or more unsaved Wounds in close combat, it regains a single lost Wound.

#namecost("SOUL HUNGER", "30 points")

The Daemon may re-roll failed rolls To Hit and To Wound in the first round of any combat.

#namecost("UNHOLY SACRIFICE", "30 points")

This Daemon can choose to lose D3 Wounds (with no saves allowed) at the start of any of your Magic phases. If it does so, add D3+1 dice to your power pool.

#namecost("WARD OF CHAOS", "30 points")

The Daemon has the Magical Ward (3+) special rule against missile attacks.

#namecost("RADIANCE OF DARK GLORY", "25 points")

The Daemon and all friendly units within 12" suffer one less wound than normal when taking Daemonic Instability tests.

#namecost("CLEAVING BLOW", "20 points")

The Daemon's close combat attacks have the Multiple Wounds (2) special rule.

#namecost("CRUSHING MASS", "20 points")

The Daemon gains the Impact Hits (D3) special rule.

#namecost("IMPENETRABLE HIDE", "20 points")

The Daemon gains +1 Toughness.

#namecost("WITHERING GAZE", "20 points")

This is a missile attack with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "6", "Quick Shot"))
#namecost("AWESOME STRENGTH", "15 points")

The Daemon gains +1 Strength.

#namecost("CORPULENCE", "15 points")

The Daemon gains +1 Wound.

#namecost("DIABOLIC SPLENDOUR", "15 points")

The Daemon may re-roll 1's when taking Ward saves.

#namecost("INCORPOREAL STRIKE", "15 points")

Enemies Wounded by this Daemon in close combat must re-roll successful armour saves.

#namecost("SKILL SWALLOWER", "15 points")

Whenever the Daemon slays an enemy character, it immediately increases one characteristic, of your choice, by one point.

#namecost("UNBREAKABLE SKIN", "15 points")

The Daemon gains the Natural Armour (5+) special rule.

#namecost("UNHOLY FLURRY", "15 points")

The Daemon has +1 Attacks.

#namecost("DARK BLESSING", "10 points")

The Daemon gains a Magical Ward (2+) against the first Wound it suffers in the battle.

#entry("GIFTS OF KHORNE")
#note[_The following powers may only be taken by Daemons of Khorne._]

#namecost("AURA OF FURY", "50 points")

Bloodthirster only. All friendly Daemons of Khorne units within 12" of the Daemon may re-roll 1's To Wound and gain the Fight in Extra Ranks (1) special rule.

#namecost("HELLFIRE", "35 points")

Bloodthirster only. The Daemon gains a Strength 5 Breath Weapon with the Flaming Attacks special rule.

#namecost("DARK INSANITY", "30 points")

Bloodthirster only. The Daemon replaces its normal Attacks with the Random Attacks (2D6+2) special rule.

#namecost("SLAUGHTERBORN", "30 points")

The Daemon gains +D3 Attacks in close combat.

#namecost("SPELL DESTROYER", "25 points")

If an enemy spell is successfully cast on a model with this Gift, or the unit it is in, roll a D6. On a 4+, the spell is destroyed after it has been resolved, and the enemy must discard the spell for the rest of the game.

#namecost("SPELL BREAKER", "25 points")

One use only. When an enemy spell has been cast, a Daemon with this Gift can use it instead of attempting to dispel the spell by using dispel dice. This gives them 6 free dice to attempt to dispel the spell, which cannot be combined with any other dispel dice. This may also be used to dispel spells that Remains in Play.

#namecost("IMMORTAL FURY", "25 points")

The Daemon gains the Hatred special rule, which applies in all rounds of close combat. However, it must always pursue fleeing enemies.

#namecost("MASSIVE MIGHT", "20 points")

The Daemon may re-roll failed rolls To Wound in close combat.

#namecost("BATTLEMASTER", "20 points")

The Daemon receives +1 To Hit in close combat.

#namecost("MIGHT OF KHORNE", "20 points")

The Daemon gains the Heroic Killing Blow special rule.

#namecost("ASPECT OF DEATH", "15 points")

Enemy units in base contact with the Daemon suffer an additional -D3 to their Leadership when taking Break tests.

#namecost("RELENTLESS HUNTER", "15 points")

Bloodthirster only. The Daemon gains the Hatred (Characters) special rule and gains 3" to its charge range when charging a unit containing any characters.

#namecost("UNRIVALLED BATTLE-LUST", "15 points")

The Daemon may re-roll failed charge distances.

#namecost("ARCH-SLAUGHTERER", "10 points")

The Daemon doubles the amount of combat resolution it receives for Wounds caused in a challenge.

#namecost("RAGE UNCHAINED", "10 points")

The Daemon gains the Frenzy special rule.

#namecost("DEVASTATING BLOW", "10 points")

The Daemon may replace its normal Attacks for a special attack. If this special attack Hits, it automatically Wounds with the Multiple Wounds (D6) special rule.

#entry("GIFTS OF NURGLE")
#note[_The following powers may only be taken by Daemons of Nurgle._]

#namecost("EXTREME CONTAGION", "30 points")

Great Unclean One only. All enemy units within 6" of the Daemon at the start of any close combat phase suffer D6 Hits that Wound on a 5+ with the Ignores Armour Saves special rule. This has no effect on Daemons of Nurgle.

#namecost("THE BOUNTIFUL SWARM", "30 points")

At the start of each close combat phase, all enemy units in base contact with the Daemon suffer D6 Hits. Models Hit must pass a Toughness test or suffer a Wound which Ignores Armour saves. This has no effect on Daemons of Nurgle.

#namecost("STREAM OF BILE", "30 points")

This is a Strength 4 Breath Weapon. It has no effect on Daemons of Nurgle.

#namecost("NOXIOUS VAPOURS", "25 points")

All enemy models in base contact with this Daemon are subject to the Always Strikes Last special rule in close combat. This has no effect on Daemons of Nurgle.

#namecost("NURGLE'S ROT", "25 points")

Enemy models in base contact with the Daemon at the start of any close combat phase suffer a Strength 2 Hit with the Ignores Armour Saves special rule. This has no effect on Daemons of Nurgle.

#namecost("NURGLING INFESTATION", "25 points")

Great Unclean One only. At the start of each of your turns, one unit of Nurglings within 6" of the Daemon automatically regains D6 Wounds lost earlier in the battle.

#namecost("PESTILENT BREATH", "25 points")

This is a Breath Weapon. Each model hit suffers a Wound on a 5+ which Ignores Armour saves. It has no effect on Daemons of Nurgle.

#namecost("PESTILENT MUCUS", "25 points")

When this Daemon suffers a wound, all enemy models in base contact must pass a Toughness test for each Wound inflicted on the Daemon or themselves suffer a Wound with the Ignores Armour Saves special rule. This has no effect on Daemons of Nurgle.

#namecost("GIFT OF FEBRILE FRENZY", "20 points")

Once per battle, at the start of any close combat phase, the Daemon can make the unit they are with subject to the Frenzy special rule for the remainder of this turn.

#namecost("TRAPPINGS OF NURGLE", "15 points")

The Daemon gains the Natural Armour (5+) special rule.

#namecost("THE ENDLESS GIFT", "10 points")

The Daemon gains the Regeneration (6+) special rule.

#namecost("SLIME TRAIL", "10 points")

Enemy units do not receive combat resolution bonuses for attacking the flank or rear of a Daemon with this ability, or any unit he has joined.

#entry("GIFTS OF SLAANESH")
#note[_The following powers may only be taken by Daemons of Slaanesh._]

#namecost("SENSUAL BARRAGE", "50 points")

Keeper of Secrets only. All enemy units within 6" of the Daemon are subject to the Always Strikes Last special rule. This has no effect on Daemons of Slaanesh.

#namecost("SPIRIT SWALLOWER", "50 points")

Roll a D6 for each unsaved wound the Daemon causes in close combat. On a 4+, the Daemon regains one wound lost earlier in the battle.

#namecost("TEMPTATOR", "30 points")

At the beginning of a combat, one enemy character in base contact with the Daemon must take a Psychology test. If the test is failed, the character will direct his attacks against friendly models or units chosen by the Daemon's controlling player. These wounds count towards the Daemon's combat resolution. If there are no suitable targets in base contact with the character, he or she does not attack at all this turn.

#namecost("SYMPHONIAC", "30 points")

At the beginning of each round of close combat, all enemy models in base contact with the Daemon must pass a Toughness test or suffer 1 Wound which Ignores Armour saves.

#namecost("INVIGORATED BY PAIN", "25 points")

Keeper of Secrets only. The Daemon gains +1 Attack for each unsaved Wound they have lost on their starting profile.

#namecost("SIREN SONG", "25 points")

This gift is used during the enemy turn, before charges are declared. Nominate one enemy unit within their maximum charging distance and with Line of Sight to the Daemon – this unit must be able to charge according to the normal Warhammer rules. The target unit must pass a Psychology test or declare a charge against the Daemon (or the unit it is with).

#namecost("SOPORIFIC MUSK", "25 points")

Models in base contact with one or more models with this Gift suffer a \-1 penalty to both Weapon Skill and Initiative. This has no effect on Daemons of Slaanesh.

#namecost("UNNATURAL SWIFTNESS", "25 points")

The Daemon has the Always Strikes First special rule.

#namecost("ALLURE OF SLAANESH", "20 points")

Enemy models in base contact with the Daemon must pass a Psychology test. If the test is failed, the affected model may not strike blows in that round of combat.

#namecost("ENRAPTURING GAZE", "20 points")

Units in base contact with the Daemon must use their own Leadership value. This has no effect on models with Immunity (Psychology).

#namecost("TORMENTOR", "20 points")

Each unsaved Wound inflicted in close combat from the Daemon counts as two Wounds for the purposes of combat resolution. This has no effect on models with Immunity (Psychology).

#entry("GIFTS OF TZEENTCH")
#note[_The following powers may only be taken by Daemons of Tzeentch._]

#namecost("TZEENTCH'S WILL", "60 points")

The Daemon may re-roll a single D6 once per player turn that directly affects it.

#namecost("ASPECT OF TZEENTCH", "40 points")

Every time this Daemon uses a Power or Dispel dice, roll a D6. On a 6, they may use this dice again this phase. These additional dice cannot not generate new dice.

#namecost("TWIN HEADS", "40 points")

The Daemon gains a +2 casting bonus.

#namecost("LORD OF FLUX", "35 points")

At the beginning of each round of close combat, all enemy models in base contact with the Daemon must roll a D6, on a 4+ they suffer 1 Wound which Ignores Armour Saves.

#namecost("MASTER OF SORCERY", "30 points")

The Daemon gains the Loremaster special rule. In addition, it can use any of the Winds of Magic from the Warhammer Rulebook instead of its normal Lore.

#namecost("POWER VORTEX", "30 points")

Once per Magic phase, the Daemon may add an additional 'free' Power dice to the casting attempt. This can cause Ultimate Power as normal, and can cause the Daemon to roll more dice than normally allowed.

#namecost("BARRAGE OF KNOWLEDGE", "25 points")

Lord of Change only. All enemy Wizards within 18" of the Daemon suffer a \-1 casting penalty.

#namecost("DARK MAGISTER", "25 points")

The Daemon ignores the result of his first Miscast.

#namecost("WELLSPRING OF ARCANE MIGHT", "25 points")

The Daemon gains a +1 bonus when channelling Power dice.

#namecost("CURSED ICHOR", "20 points")

Roll a D6 every time the Daemon suffers an unsaved Wound; on a 5+, the model that struck the blow suffers a Wound which Ignores Armour Saves.

#namecost("FLAMES OF TZEENTCH", "20 points")

The Daemon gains the Flames of Tzeentch special rule.

#namecost("IRIDESCENT CORONA", "20 points")

Enemy models in base contact with the Daemon at the start of any close combat phase suffer a Strength 3 Hit with the Flaming Attacks special rule. Any wounds caused count towards combat resolution.

#namecost("ALL-SEEING EYE", "10 points")

At the start of each of your Magic Phases, you may pick one enemy unit within 24" of the Daemon. That unit must reveal all Magic Items and Hidden units in it.

#namecost("MARK OF THE CONJURER", "10 points")

The Daemon gain a +1 bonus to all Fires of Change rolls (see Lore of Tzeentch).

#magic-item-chapter(title: "UNDIVIDED MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Daemons of Chaos. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("THE ETERNAL BLADE", 40, only: "Daemon Prince")[Roll a D3 at the start of each round of combat – the bearer’s Weapon Skill, Strength, Initiative and Attacks are increased by this amount until the end of the phase.]
]

#magic-item-section("arcane")[
#arcane-item("ABHORRENT LODESTONE", 50)[Any enemy Wizard within 12" of the bearer of this item that rolls any double counts as having rolled a Miscast.]
]

#magic-item-section("enchanted")[
#enchanted-item("THE PORTALGLYPH", 25)[All friendly units attempting to deploy using the Summoned from Beyond special rule within 12" of the bearer of this item may re-roll the dice to determine if they arrive this turn.]

#enchanted-item("THE ROCK OF INEVITABILITY", 25, one-use: true)[The bearer of the Rock of Inevitability can use it at the end of any Movement phase. Place a cursed bulwark (an obstacle that provides hard cover up to 8" long) anywhere within 6" of the bearer. It cannot be placed on top of (or within 1" of) a unit, or placed on a terrain feature other than a hill. At the end of each of your turns, roll a D6. On a score of 1\-3 nothing happens. On a score of 4\-5 place a further cursed bulwark (this does not require the character to be within 6"). On a score of 6 place a cursed tower (a two story-building up to 6" in diameter).

Cursed terrain features placed in this way must be positioned touching an existing cursed terrain feature, and cannot be placed on top of a unit, or a terrain feature other than a hill or forest. If the terrain feature cannot be placed, or you don’t have the relevant terrain feature, then nothing is placed. Any unit from the Forces of Order within 6" of a cursed tower or cursed bulwark suffers a \-2 penalty to their Initiative.
]
]

#magic-item-section("standard")[
#magic-standard("STANDARD OF CHAOS GLORY", 60)[The Standard of Chaos Glory allows all friendly units of Daemons within 12" to roll an additional dice for their Daemonic Instability tests and discard the highest result.]

#magic-standard("GREAT STANDARD OF SUNDERING", 50)[All enemy Wizards targeting friendly units within 12" of this standard suffer a \-1 casting penalty, and will miscast on the roll of both double 1's and 2's.]

#magic-standard("GREAT ICON OF DESPAIR", 40)[All enemy units with Line of Sight to the Great Icon of Despair suffer a \-1 penalty to their Leadership. This standard has no effect on models with Immunity (Psychology).]

#magic-standard("BANNER OF UNHOLY VICTORY", 40)[The unit carrying the Banner of Unholy Victory gains a +D3 combat resolution bonus.]

#magic-standard("BANNER OF INFERNAL FIRE", 25, bound: (power: 5))[The Banner of Infernal Fire contains a *direct damage* spell that targets all enemy units within 6" (including units in close combat). The target units suffer D6 Strength 5 Hits with the Flaming Attacks special rule.]
]

#magic-item-chapter(title: "KHORNE MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Daemons of Khorne. These may be used in addition to the magic weapons found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("AXE OF KHORNE", 30)[The wielder receives +1 Attack for each enemy model he is in base contact with, to a maximum of +3 Attacks.]

#magic-weapon("BLADE OF BLOOD", 25)[Attacks made with the Blade of Blood are resolved at +1 Strength and may re-roll failed rolls To Wound.]

#magic-weapon("FIRESTORM BLADE", 25)[The Firestorm Blade gives the wielder the Flaming Attacks special rule and allows them to re-roll failed rolls To Wound.]

#magic-weapon("HARVESTER OF SKULLS", 20, only: "Bloodthirster or Bloodmaster")[This weapon makes the model's Killing Blow special rule take effect on a 4+.]

#magic-weapon("AR'GATH, THE KING OF BLADES", 15)[The wielder of this weapon always automatically Hits enemy characters.]

#magic-weapon("BEHEMOTH'S BANE", 15)[The wielder of this weapon may re-roll failed rolls To Wound and get the Multiple Wounds (D3) special rule against Monsters.]

#magic-weapon("DEATHDEALER", 10)[Every time a model with this weapon causes an unsaved Wound, the enemy model must pass a Toughness test or suffer an additional Wound with no saves allowed.]

#magic-weapon("KHARTOTH THE BLOODHUNGER", 10)[If a model suffers an unsaved Wound against this weapon, that model is subject to the Always Strikes Last special rule for the remainder of the close combat phase.]
]

#magic-item-section("armour")[
#magic-armour("ARMOUR OF KHORNE", 25, type: "Medium armour")[Magic weapons carried by enemy models lose all their magical abilities whilst the bearer remains in contact with the Daemon.]

#magic-armour("ARMOUR OF SCORN", 10, type: "Light armour")[The wearer gains a Magical Ward (6+).]
]

#magic-item-section("talisman")[
#talisman("THE BLOODY SHACKLE", 15, one-use: true)[The Bloody Shackle may be used at the start of any phase. Until the end of that turn, the wearer gains the Regeneration (4+) special rule.]

#talisman("CRIMSON SOULSTONE", 5)[The bearer regains 1 Wound lost earlier during the game each time they slay an enemy character in close combat.]
]

#magic-item-section("enchanted")[
#enchanted-item("BLOODSTONE", 50, one-use: true)[Keep a tally of the number of models slain by the bearer in close combat during the game. At the start of any of your Magic phases, you may choose to use the Bloodstone. When you do so, you may summon a unit of Bloodletters equal in size to the number of models slain by the bearer anywhere within 12", facing in a direction of your choice. This unit does not have any upgrades, and do not award any Victory Points.]

#enchanted-item("MARK OF THE SLAYER", 30)[The bearer and any unit they join may re-roll 1's To Hit in close combat. In addition, they may re-roll 1's To Wound in close combat during turns that they charge.]

#enchanted-item("MARK OF THE BLOODREAPER", 15)[Each close combat phase that the bearer inflicts 3 or more unsaved Wounds, they gain +D3 to their close combat resolution.]

#enchanted-item("THE CRIMSON CROWN", 10)[For each To Hit roll of 6 they make in close combat, the wearer gets to make an additional Attack. These additional attacks do not generate further attacks.]
]

#magic-item-section("standard")[
#magic-standard("ICON OF ENDLESS WAR", 25)[The unit carrying this standard adds D3" to its charge move.]

#magic-standard("STANDARD OF ETERNAL WRATH", 25)[The unit carrying this standard gains the Hatred special rule.]

#magic-standard("SKULL TOTEM", 15)[The unit carrying this standard gain +1 to its Movement when they make March moves and do not need to test to be able to March due to nearby enemies.]
]

#magic-item-chapter(title: "NURGLE MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Daemons of Nurgle. These may be used in addition to the magic weapons found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("BALESWORD", 25)[Attacks made with the Balesword have the Poisoned Attacks and Multiple Wounds (D3) special rules.]

#magic-weapon("NURGLE'S NAIL", 20)[The wielder of this weapon will automatically Wound on the to Hit roll of a 5+. In addition, at the end of each round of close combat, roll 2D6 for each enemy model that has suffered one or more unsaved Wounds from this weapon. If the result is exactly 7, that model is slain with no saves of any kind allowed.]

#magic-weapon("THE VIRULENT BLADE", 15)[If the wielder of this weapon rolls a natural 5 or 6 on their To Wound roll, that Attack has the Multiple Wounds (D6) special rule.]

#magic-weapon("PLAGUE FLAIL", 10)[This weapon gives the wielder the Mighty Blow (1) special rule. Any model that suffers one or more unsaved Wounds from the Plague Flail must immediately pass a Toughness test or suffer another Wound with the Ignores Armour Saves special rule.]

#magic-weapon("BILEBLADE", 5, only: "Great Unclean One")[At the start of each of your Magic phases, the bearer can choose to suffer one Wound with no saves allowed. If they do so, they gain +1 Power Dice for the remainder of this Magic phase.]
]

#magic-item-section("arcane")[
#arcane-item("DOOMSDAY BELL", 35, type: "Relic", bound: (level: 3, cast: "8+"))[The Doomsday Bell contains a *summoning* spell with a range of 18" that can target units of Plague Bearers, Nurglings or Plague Toads. The target unit immediately gains D6 Wounds worth of models.]

#arcane-item("STAFF OF NURGLE", 35, type: "Staff", bound: true)[The Staff of Nurgle contains the _Rancid Visitation_ spell from the Lore of Nurgle.]

#arcane-item("TOME OF A THOUSAND POXES", 30, type: "Relic")[The bearer of this item gains a +1 casting bonus. This bonus increases by +1 for each subsequent spell successfully cast by the bearer on the same target during the current Magic phase.]
]

#magic-item-section("enchanted")[
#enchanted-item("FLESH PEELER", 30)[The Flesh Peeler may be used at the start of your shooting phase as long as the wearer is not in close combat. When used, all enemy units within 12" take D6 Hits. Each Hit automatically Wounds on a 5+ which Ignores Armour saves.]

#enchanted-item("THE WITHERSTAVE", 25)[Enemy units in base contact with the bearer of this item must re-roll 6's To Hit in close combat.]
]

#magic-item-section("standard")[
#magic-standard("STANDARD OF FECUNDITY", 25)[The unit carrying this standard gains the Regeneration (6+) special rule.]

#magic-standard("STANDARD OF SEEPING DECAY", 25)[If any model in the unit carrying this standard rolls a natural 6 To Hit in close combat, the target immediately suffers an additional automatic hit resolved at Strength 4.]

#magic-standard("ICON OF ETERNAL VIRULENCE", 20)[Each unsaved Wound caused by the unit carrying this standard when rolling a natural 6 on the To Wound roll add an extra point of Combat Resolution in the first round of close combat. In the second round of close combat it takes effect on To Wound rolls of 5+, and in the third round of close combat on To Wounds rolls of 4+, and so on. The effect resets if the unit leaves combat.]
]

#magic-item-chapter(title: "SLAANESH MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Daemons of Slaanesh. These may be used in addition to the magic weapons found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("ETHERBLADE", 25)[The Etherblade gives the wielder the Ignores Armour Saves special rule. In addition, enemy models Wounded by it must re-roll successful Magical Ward saves.]

#magic-weapon("LASH OF DESPAIR", 25)[The Lash of Despair uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "As user", "Quick to Fire, Multiple Shots (D6)"))
]

#magic-weapon("TORMENT BLADE", 10)[A model that suffers one or more unsaved wound from the Torment Blade must pass a Leadership test. If failed, they may not attack that close combat phase.]
]

#magic-item-section("enchanted")[
#enchanted-item("ENRAPTURING CIRCLET", 40)[All enemy models in base contact with the bearer of this item suffer \-1 to their Attacks. In addition, any unit in base contact with the bearer suffer \-2 to any Flee rolls they make.]

#enchanted-item("THRENODY VOICEBOX", 35)[Any enemy unit in base contact with the bearer of this item is subject to the Always Strikes Last special rule.]

#enchanted-item("FALLACIOUS GIFT", 20)[At the start of the game, after deployment, nominate one enemy Character on the table. That Character suffers a Strength 4 Hit at the end of each close combat phase in which they have made one or more Attacks.]

#enchanted-item("MASK OF SPITEFUL BEAUTY", 20)[Any enemy unit in base contact with the bearer of this item suffer \-1 to their Leadership.]

#enchanted-item("GIRDLE OF THE REALM-RACER", 15, only: "Mounted model")[The wearer gains the Fly (10) and Strider special rules.]
]

#magic-item-section("standard")[
#magic-standard("STANDARD OF BEGUILEMENT", 35)[Any enemy unit in base contact with the unit carrying this standard gains the Always Strikes Last special rule.]

#magic-standard("BANNER OF ECSTASY", 25)[The unit carrying this standard gains the Stubborn special rule.]

#magic-standard("SIREN STANDARD", 25)[Any enemy unit charged by the unit carrying this standard can only choose Hold as a charge reaction. This standard has no effect on models with the Immunity (Psychology) special rule.]

#magic-standard("STANDARD OF TWISTED GRACE", 25)[The unit carrying this standard gains the Vanguard special rule, and automatically pass Dangerous Terrain tests, "Look Out Sir!" tests and characteristic tests (but not Leadership tests).]
]

#magic-item-chapter(title: "TZEENTCH MAGIC ITEMS", intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Daemons of Tzeentch. These may be used in addition to the magic weapons found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("STAFF OF CHANGE", 25)[Any model that suffers one or more unsaved Wounds from the Staff of Change must immediately pass a Toughness test or suffer an additional D6 Wounds with the Ignores Armour Saves special rule. If a multiple- Wound model loses its last Wound to the Staff of Change, all enemy models within D6" immediately suffer a single Strength 5 hit.]

#magic-weapon("PYROFYRE STAVE", 15)[The wielder of this weapon gains the Flaming Attacks special rule, and may re-roll any To Wound rolls of 1 when casting *magic missiles*. In addition, if a Wizard suffers one or more unsaved Wounds against this weapon, they cannot channel Power or Dispel dice for the rest of the game.]

#magic-weapon("BLADE OF FATE", 10)[For every 6 rolled when rolling To Hit, the wielder may re-roll a failed To Hit, To Wound or invulnerable save roll of their choosing this close combat phase.]

#magic-weapon("WARPFIRE BLADE", 10)[If the wielder of this weapon rolls a 6's To Hit, that Attack automatically Wounds with the Multiple Wounds (2) and Flaming Attacks special rules.]

#magic-weapon("WARPTONGUE BLADE", 10)[If a Warptongue Blade causes an unsaved Wound in close combat, the target must pass a Leadership test or be removed as casualty, with no saves allowed.]

#magic-weapon("WAND OF WHIMSY", 30)[Staff. Whenever the bearer successfully casts or dispels a spell, roll a D6 – the Wand of Whimsy gains a charge token on a roll of 5+. The Wand of Whimsy grants the bearer a bonus to both Strength and Attacks equal to the number of charge tokens for the remainder of the game.]

#magic-weapon("THE CHROMATIC TOME", 10)[Relic. You can choose to re-roll the Winds of Magic dice in your turn. However, if you do so, your opponent can also re-roll the Winds of Magic dice in their next turn if they wish. In either case, all of the Winds of Magic dice must be re-rolled.]
]

#magic-item-section("enchanted")[
#enchanted-item("BEACON OF MUTABILITY", 40)[All friendly Daemon of Tzeentch units within 6" of the bearer gain +1 To Wound in close combat.]

#enchanted-item("THE ETERNAL SHROUD", 15)[The wearer can add or subtract 1 from any dice roll that directly affects it once per turn, including when casting spells or rolling on the miscast table.]
]

#magic-item-section("standard")[
#magic-standard("STANDARD OF CONJURATION", 35)[Any spells cast by the unit carrying this standard are resolved at +1 Strength.]

#magic-standard("BANNER OF CHANGE", 25, bound: (power: 4))[The Banner of Change contains a *hex* spell that targets all enemy units in base contact. The target units suffer 2D6 Strength 3 Hits.]

#magic-standard("ICON OF SORCERY", 25)[The unit carrying this standard gains a +1 casting bonus.]

#magic-standard("STANDARD OF TRANSMOGRIFICATION", 10)[When a model with the Split special rule in the unit carrying this standard is slain, you may re-roll dice results of 1\-3 to see if it turns into two Blue Horrors.]
]

#magic-item-section("talisman")[
#talisman("DAEMONIC ROBES", 25)[The Daemon can never be wounded on better than a 4+.]
]

#magic-item-section("arcane")[
#arcane-item("NINE-EYED TOME", 30, type: "Relic")[The bearer can re-roll one casting or dispel attempt each Magic phase.]
]

= CHARACTERS

#unit("DAEMON PRINCE",
  first: true,
  profiles: (
    (name: "Daemon Prince", m: 8, ws: 8, bs: 5, s: 6, t: 5, w: 5, i: 8, a: 5, ld: 9, points: 250),
  ),
  troop-type: "Monstrous Creature (Character, Daemon)",
  base-size: "50x50",
  equipment: "Hand weapon",
  magic: "A Daemon Prince that is a Wizard uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Chaos
- Death
- Fire
- Heavens
- Metal
- Shadow

A Daemon Prince who is a Daemon of Tzeentch, Nurgle or Slaanesh must use the Lore of Tzeentch, Nurgle, or Slaanesh, respectively.
  ],
  special-rules: "Daemonic",
  special-rules-body: (
    rule("Chaos Armour")[Models with this rule cannot have their armour save reduced below a 6+ save from non- magical Attacks.],
  ),
  options: [
- May be upgraded to one of the following (unless they are a Daemon of Khorne):
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
  - Level 3 Wizard +105 points
  - Level 4 Wizard +140 points
- May choose one of the following:
  - Light armour +5 points
  - Medium armour +15 points
- May have the Fly (8) special rule +25 points
- May be upgraded to one of the following:
  - Daemon of Khorne +15 points
  - Daemon of Nurgle +15 points
  - Daemon of Slaanesh +15 points
  - Daemon of Tzeentch +15 points
- May take Daemonic Gifts and/or Magic Items up to a total of 100 points
  ],
)

#unit("EXALTED DAEMON",
  profiles: (
    (name: "Exalted Daemon", m: 6, ws: 7, bs: 5, s: 5, t: 5, w: 4, i: 7, a: 4, ld: 8, points: 170),
  ),
  troop-type: "Monstrous Infantry (Character, Daemon)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  magic: "An Exalted Daemon that is a Wizard uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Chaos
- Death
- Fire
- Heavens
- Metal
- Shadow

A Daemon Prince who is a Daemon of Tzeentch, Nurgle or Slaanesh must use the Lore of Tzeentch, Nurgle, or Slaanesh, respectively.
  ],
  special-rules: "Daemonic, Terror",
  special-rules-body: (
    rule("Chaos Armour")[Models with this rule cannot have their armour save reduced below a 6+ save from non- magical Attacks.],
  ),
  options: [
- May be upgraded to one of the following (unless they are a Daemon of Khorne):
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
- May choose one of the following:
  - Light armour +5 points
  - Medium armour +15 points
- May have the Fly (8) special rule +25 points
- May be upgraded to one of the following:
  - Daemon of Slaanesh +5 points
  - Daemon of Khorne +15 points
  - Daemon of Nurgle +15 points
  - Daemon of Tzeentch +15 points
- One Exalted Daemon may carry the Battle Standard +25 points
- May take Daemonic Gifts and/or Magic Items up to a total of 50 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("BLOODTHIRSTER",
  profiles: (
    (name: "Bloodthirster", m: 8, ws: 9, bs: 5, s: 6, t: 6, w: 6, i: 8, a: 6, ld: 9, points: 400),
  ),
  troop-type: "Monster (Character, Daemon)",
  base-size: "50x50, 100x100 or 100x150",
  equipment: "Two hand weapons, medium armour",
  special-rules: "Daemon of Khorne, Fly (8), Killing Blow, Magic Resistance (1)",
  options: [
- May replace hand weapons with great weapon free
- May take Daemonic Gifts and/or Magic Items up to a total of 100 points
  ],
)

#unit("BLOODMASTER",
  profiles: (
    (name: "Bloodmaster", m: 5, ws: 7, bs: 5, s: 5, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 110),
  ),
  troop-type: "Infantry (Character, Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Daemon of Khorne, Killing Blow, Natural Armour (6+)",
  options: [
- May take a great weapon +5 points
- May take light armour +3 points
- May be mounted on one of the following:
  - Juggernaut +50 points
  - Blood Throne +150 points
- One Bloodmaster may carry the Battle Standard +25 points
- May take Daemonic Gifts and/or Magic Items up to a total of 50 points
  ],
  notes: [
- A Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.
  ],
)

#unit("GREAT UNCLEAN ONE",
  profiles: (
    (name: "Great Unclean One", m: 6, ws: 6, bs: 3, s: 6, t: 7, w: 7, i: 4, a: 5, ld: 9, points: 400),
  ),
  troop-type: "Monster (Character, Daemon)",
  base-size: "50x50, 100x100 or 100x150",
  equipment: "Hand weapon",
  magic: "A Great Unclean One is a Level 1 Wizard who chooses spells from the Lore of Nurgle.",
  special-rules: "Daemon of Nurgle",
  options: [
- May be upgraded to one of the following:
  - Level 2 Wizard +35 points
  - Level 3 Wizard +70 points
  - Level 4 Wizard +105 points
- May take an additional hand weapon +20 points
- May take Daemonic Gifts and/or Magic Items up to a total of 100 points
  ],
)

#unit("POXBRINGER",
  profiles: (
    (name: "Poxbringer", m: 4, ws: 6, bs: 5, s: 5, t: 5, w: 2, i: 4, a: 3, ld: 8, points: 110),
  ),
  troop-type: "Infantry (Character, Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  magic: "A Poxbringer who is a Wizard who chooses spells from the Lore of Nurgle.",
  special-rules: "Daemon of Nurgle",
  options: [
- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
- May be mounted on one of the following:
  - Palanquin +30 points
  - Plague Toad +35 points
  - Rot Fly +45 points
- One Poxbringer may carry the Battle Standard +25 points
- May take Daemonic Gifts and/or Magic Items up to a total of 50 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("SLOPPITY BILEPIPER",
  profiles: (
    (name: "Sloppity Bilepiper", m: 4, ws: 4, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 2, ld: 8, points: 95),
  ),
  troop-type: "Infantry (Character, Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Daemon of Nurgle",
  special-rules-body: [
- *Jolly Gutpipes:* At the start of each close combat phase the Sloppity Bilepiper can play one of the following tunes which affects the unit they are with. The effect of that tune lasts until the end of that phase. A unit can only benefit from one tune once per phase.
  - *A Stabbing We Will Go!:* All models in the unit may re-roll failed rolls To Wound.
  - *Early One Evening My Pustule Was Seeping:* All models in the unit gain the Multiple Wounds (2) special rule.
  - *My Love Is Like a Ripe, Ripe Fart:* All enemy units in base contact with the Sloppity Bilepiper suffer \-1 To Hit.
  ],
  options: [
- May take Daemonic Gifts and/or Magic Items up to a total of 50 points
  ],
)

#unit("SPOILPOX SCRIVENER",
  profiles: (
    (name: "Spoilpox Scrivener", m: 4, ws: 4, bs: 4, s: 4, t: 5, w: 2, i: 4, a: 2, ld: 8, points: 95),
  ),
  troop-type: "Infantry (Character, Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Daemon of Nurgle",
  special-rules-body: [
- *Keep Counting, I'm Watching You:* At the start of each close combat phase the Spoilpox Scrivener can use one of the following counts which affects the unit they are with. The effect of each counts lasts until the end of that phase. A unit can only benefit from one count once per phase.
  - *Tally of Blows:* All models in the unit gain +1 Attack.
  - *Studied Lacerations:* All models in the unit gain the Armour Piercing (1) special rule.
  - *Recorded Stamina:* Enemies must re-roll To Wound rolls of 6 against all models in the unit.
  ],
  options: [
- May take Daemonic Gifts and/or Magic Items up to a total of 50 points
  ],
)

#unit("KEEPER OF SECRETS",
  profiles: (
    (name: "Keeper of Secrets", m: 10, ws: 8, bs: 5, s: 6, t: 6, w: 6, i: 9, a: 6, ld: 9, points: 400),
  ),
  troop-type: "Monster (Character, Daemon)",
  base-size: "50x50, 100x100 or 100x150",
  equipment: "Hand weapon",
  magic: "A Keeper of Secrets is a Level 1 Wizard who chooses spells from the Lore of Slaanesh.",
  special-rules: "Daemon of Slaanesh",
  options: [
- May be upgraded to one of the following:
  - Level 2 Wizard +35 points
  - Level 3 Wizard +70 points
  - Level 4 Wizard +105 points
- May take a buckler +10 points
- May take Daemonic Gifts and/or Magic Items up to a total of 100 points
  ],
)

#unit("VICELEADER",
  profiles: (
    (name: "Viceleader", m: 6, ws: 7, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 4, ld: 8, points: 95),
  ),
  troop-type: "Infantry (Character, Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  magic: "A Viceleader who is a Wizard who chooses spells from the Lore of Slaanesh.",
  special-rules: "Daemon of Slaanesh",
  options: [
- May be upgraded to one of the following:
  - Level 1 Wizard +35 points
  - Level 2 Wizard +70 points
- May be mounted on one of the following:
  - Steed of Slaanesh +25 points
  - Serpent of Slaanesh +40 points
  - Exalted Chariot (replacing one of the crew) +190 points
- One Viceleader may carry the Battle Standard +25 points
- May take Daemonic Gifts and/or Magic Items up to a total of 50 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("INFERNAL ENRAPTURESS",
  profiles: (
    (name: "Infernal Enrapturess", m: 6, ws: 6, bs: 6, s: 4, t: 3, w: 2, i: 6, a: 3, ld: 8, points: 135),
  ),
  troop-type: "Infantry (Character, Daemon)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon",
  special-rules: "Daemon of Slaanesh",
  special-rules-body: [
- *Discordant Disruption:* All enemy Wizards within 18" of an Infernal Enrapturess whose casting roll contains any double suffers a Strength 4 Hit for each double rolled.
- *Harmonic Alignment:* All friendly Daemons of Slaanesh within 6" of an Infernal Enrapturess may re-roll failed Magical Ward saves.
- *Versatile Instrument:* During the Shooting phase, the Infernal Enrapturess can play either Cacophonous Melody or Euphonic Blast.
  - *Cacophonous Melody:* Cacophonous Melody uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("18\"", "4", "Multiple Shots (2D6)"))

*\- Euphonic Blast:* Euphonic Blast has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "6", "Multiple Wounds (D3)"))
  ],
  options: [
- May take Daemonic Gifts and/or Magic Items up to a total of 50 points
  ],
)

#unit("LORD OF CHANGE",
  profiles: (
    (name: "Lord of Change", m: 8, ws: 6, bs: 5, s: 6, t: 6, w: 6, i: 6, a: 5, ld: 9, points: 400),
  ),
  troop-type: "Monster (Character, Daemon)",
  base-size: "50x50, 100x100 or 100x150",
  equipment: "Hand weapon",
  magic: "A Lord of Change is a Level 2 Wizard who chooses spells from the Lore of Tzeentch.",
  special-rules: "Daemon of Tzeentch, Fly (8)",
  options: [
- May be upgraded to one of the following:
  - Level 3 Wizard +35 points
  - Level 4 Wizard +70 points
- May take Daemonic Gifts and/or Magic Items up to a total of 100 points
  ],
)

#unit("GAUNT SUMMONER",
  profiles: (
    (name: "Gaunt Summoner", m: 4, ws: 3, bs: 4, s: 4, t: 4, w: 3, i: 3, a: 2, ld: 8, points: 240),
  ),
  troop-type: "Infantry (Character, Daemon)",
  base-size: "25x25 or 30x30",
  magic: "A Gaunt Summoner is a Level 3 Wizard who chooses spells from the Lore of Tzeentch. In addition, they",
  magic-body: [
know the following spell:

- *Summon Daemons:* Level 3, cast on 8+. _Summon Daemons_ is a *summoning* spell with a range of 18" that can target units of Pink Horrors, Brimstone Horrors, Screamers or Flamers. The target unit immediately gains D6 Wounds worth of models.
  ],
  equipment: "Hand weapon",
  special-rules: "Daemon of Tzeentch",
  options: [
- May take an additional Wizard Level +35 points May be mounted on a Disc of Tzeentch +25 points
- May take Daemonic Gifts and/or Magic Items up to a total of 100 points
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "special-rules", "options"),
)

#unit("CHANGECASTER",
  profiles: (
    (name: "Changecaster", m: 4, ws: 3, bs: 4, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 8, points: 110),
  ),
  troop-type: "Infantry (Character, Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  magic: "A Changecaster is a Level 1 Wizard who chooses spells from the Lore of Tzeentch.",
  special-rules: "Daemon of Tzeentch",
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Disc of Tzeentch +25 points
  - Burning Chariot (replacing one of the crew) +70 points
- One Changecaster may carry the Battle Standard +25 points
- May take Daemonic Gifts and/or Magic Items up to a total of 50 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

= CHARACTER MOUNTS

#unit("JUGGERNAUT",
  compact: true,
  profiles: (
    (name: "Juggernaut", m: 7, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: ""),
  ),
  troop-type: "Monstrous Beast (Daemon)",
  base-size: "50x50 or 50x75",
  special-rules: "Daemon of Khorne, Natural Armour (6+)",
)

#unit("BLOOD THRONE",
  profiles: (
    (name: "Blood Throne", m: 6, ws: 5, bs: "-", s: 5, t: 5, w: 4, i: 2, a: 3, ld: "-", points: ""),
    (name: "Bloodletter", m: "-", ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 4, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Chariot (Armour Save 4+)",
  crew: "2 Bloodletters (Daemon)",
  base-size: "50x100",
  equipment: "Hand weapon, scythes",
  special-rules: "Daemon of Khorne, Killing Blow (Bloodletter only), Natural Armour (6+)",
  special-rules-body: (
    rule("Gorefeast")[If this chariot's Impact Hits cause unsaved Wounds, immediately roll a D6 for each Wound caused. For each score of 4+, the chariot regains a single Wound lost earlier in the game.],
    rule("Totem of Endless Bloodletting")[Any Daemon of Khorne unit within 6" of a Bloodmaster on a Blood Throne gain the Frenzy special rule.],
  ),
)

#unit("PALANQUIN OF NURGLE",
  profiles: (
    (name: "Palanquin of Nurgle", m: 4, ws: 2, bs: 2, s: 2, t: "-", w: "-", i: 3, a: 8, ld: 7, points: ""),
  ),
  troop-type: "Infantry (Daemon)",
  base-size: "50x50",
  special-rules: "Daemon of Nurgle, Inspiring Presence (6)",
  notes: [
- A Palanquin of Nurgle has a Line of Sight Value of 2 and Unit Strength 3.
  ],
)

#unit("PLAGUE TOAD",
  compact: true,
  profiles: (
    (name: "Plague Toad", m: 6, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 1, a: 3, ld: 7, points: ""),
  ),
  troop-type: "Monstrous Beast (Daemon)",
  base-size: "50x50",
  special-rules: "Daemon of Nurgle",
)

#unit("ROT FLY",
  compact: true,
  profiles: (
    (name: "Rot Fly", m: 1, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 7, points: ""),
  ),
  troop-type: "Monstrous Beast (Daemon)",
  base-size: "50x75",
  special-rules: "Daemon of Nurgle, Fly (6)",
)

#unit("STEED OF SLAANESH",
  compact: true,
  profiles: (
    (name: "Steed of Slaanesh", m: 10, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Beast (Daemon)",
  base-size: "25x50 or 30x60",
  special-rules: "Daemon of Slaanesh, Poisoned Attacks",
)

#unit("SERPENT OF SLAANESH",
  compact: true,
  profiles: (
    (name: "Serpent of Slaanesh", m: 10, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 7, points: ""),
  ),
  troop-type: "Monstrous Beast (Daemon)",
  base-size: "50x50 or 50x75",
  special-rules: "Daemon of Slaanesh, Poisoned Attacks",
)

#unit("DISC OF TZEENTCH",
  compact: true,
  profiles: (
    (name: "Disc of Tzeentch", m: 0, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 7, points: ""),
  ),
  troop-type: "War Beast (Daemon)",
  base-size: "40x40 or 50x50",
  special-rules: "Daemon of Tzeentch, Fly (9)",
)

= CORE UNITS

#unit("CHAOS FURIES",
  first: true,
  profiles: (
    (name: "Chaos Fury", m: 4, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 2, ld: 6, points: 14),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Daemonic, Expendable, Fly (10)",
  options: [
- May be Summoned from Beyond +2 points/model
- May be upgraded to one of the following:
  - Daemon of Slaanesh +1 points/model
  - Daemon of Khorne +2 points/model
  - Daemon of Nurgle +2 points/model
  - Daemon of Tzeentch +2 points/model
  ],
)

#unit("IMP SWARMS",
  profiles: (
    (name: "Imp Swarm", m: 4, ws: 3, bs: 0, s: 2, t: 2, w: 6, i: 3, a: 6, ld: 5, points: 35),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Daemon)",
  base-size: "40x40",
  equipment: "Hand weapon",
  special-rules: "Daemonic, Fly (5)",
  options: [
- May be Summoned from Beyond +5 points/model
- May be upgraded to one of the following:
  - Daemon of Slaanesh +3 points/model
  - Daemon of Khorne +6 points/model
  - Daemon of Nurgle +6 points/model
  - Daemon of Tzeentch +6 points/model
  ],
)

#unit("BLOODLETTERS",
  profiles: (
    (name: "Bloodletter", m: 5, ws: 5, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 13),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Daemon of Khorne, Killing Blow, Natural Armour (6+)",
  options: [
- May take great weapons +2 points/model
- May be Summoned from Beyond +2 points/model
- May upgrade one Bloodletter to a Leader +5 points
- May upgrade one Bloodletter to a Musician +5 points
- May upgrade one Bloodletter to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("FLESH HOUNDS",
  profiles: (
    (name: "Flesh Hound", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 7, points: 21),
  ),
  unit-size: "5-15",
  troop-type: "War Beast (Daemon)",
  base-size: "25x50 or 30x60",
  special-rules: "Daemon of Khorne, Magic Resistance (2), Natural Armour (6+),",
  options: [
- May be Summoned from Beyond +3 points/model
- May upgrade one Flesh Hound to a Leader +5 points
  ],
)

#unit("PLAGUEBEARERS",
  profiles: (
    (name: "Plaguebearer", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 13),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Daemon of Nurgle",
  options: [
- May be Summoned from Beyond +2 points/model
- May upgrade one Plaguebearer to a Leader +5 points
- May upgrade one Plaguebearer to a Musician +5 points
- May upgrade one Plaguebearer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("PLAGUE TOADS",
  profiles: (
    (name: "Plague Toad", m: 6, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 1, a: 3, ld: 7, points: 31),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Beast (Daemon)",
  base-size: "50x50",
  special-rules: "Daemon of Nurgle, Marsh Strider",
  options: [
- May be Summoned from Beyond +4 points/model
  ],
)

#unit("NURGLINGS",
  profiles: (
    (name: "Nurglings", m: 4, ws: 2, bs: 2, s: 2, t: 2, w: 6, i: 3, a: 6, ld: 7, points: 50),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Daemon)",
  base-size: "40x40",
  special-rules: "Daemon of Nurgle",
  options: [
- May be Summoned from Beyond +5 points/model
  ],
  notes: [
- Nurglings have a Line of Sight value of 1.
  ],
)

#unit("DAEMONETTES",
  profiles: (
    (name: "Daemonette", m: 6, ws: 5, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 2, ld: 7, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Daemon)",
  base-size: "25x25 or 30x30",
  special-rules: "Daemon of Slaanesh",
  options: [
- May be Summoned from Beyond +2 points/model
- May upgrade one Daemonette to a Leader +5 points
- May upgrade one Daemonette to a Musician +5 points
- May upgrade one Daemonette to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SEEKERS",
  profiles: (
    (name: "Daemonette", m: 6, ws: 5, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 2, ld: 7, points: 20),
    (name: "Steed of Slaanesh", m: 10, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 7, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Daemon)",
  mount: "Steed of Slaanesh (Daemon)",
  base-size: "25x50 or 30x60",
  special-rules: "Daemon of Slaanesh, Fast Cavalry, Poisoned Attacks (Steed of Slaanesh only)",
  options: [
- May be Summoned from Beyond +3 points/model
- May upgrade one Seeker to a Leader +5 points
- May upgrade one Seeker to a Musician +5 points
- May upgrade one Seeker to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("PINK HORRORS",
  profiles: (
    (name: "Pink Horror", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 13),
    (name: "Blue Horror", m: 4, ws: 3, bs: 3, s: 2, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Lesser Flames of Tzeentch",
  equipment-body: [
- *Lesser Flames of Tzeentch:* Lesser Flames of Tzeentch have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8/12\"", "3", "Flaming Attacks, Multiple Shots (2), Quick Shot"))
  ],
  magic: "A unit of Pink Horror is a Level 1 Wizard that knows the spell Blue Fire of Tzeentch from the Lore of Tzeentch.",
  special-rules: "Daemon of Tzeentch",
  special-rules-body: (
    rule("Split")[When a Pink Horror is slain in close combat (not removed as a result of Daemonic Instability). Roll a D6; on the result of 1\-3, the Pink Horror inflicts an automatic Strength 3 on the unit that inflicted the Wound, distributed as a missile attack. On the roll of a 4\-6, the Pink Horror will split into two Blue Horrors instead; replace the slain Pink Horror with two Blue Horror models at the back of the unit. If you do not have access to enough Blue Horrors, treat the result as having rolled a 1\-3 instead. When resolving attacks against a unit with both Pink and Blue Horrors present, the Blue Horrors are targeted and removed as casualties first.],
    rule("Whirling Destroyers")[The unit receives an additional +1 casting bonus for every 5 five Pink Horrors in the unit, to a maximum of +3. If the unit has 15+ Pink Horrors, it counts as a Level 2 Wizard and gains access to the _Pink Fire of Tzeentch_ spell from the Lore of Tzeentch. Each time the unit casts a spell (or is targeted by a special rule that affects a Wizard), you must nominate one Pink Horror as the caster for the purposes of line of sight, range, etc. In the event of a Pink Horror unit rolling a miscast, do not roll on the Miscast table. Instead, the unit suffers D3 Wounds with no saves of any kind allowed.],
  ),
  options: [
- May be Summoned from Beyond +2 points/model
- May upgrade one Pink Horror to a Leader +5 points
- May upgrade one Pink Horror to a Musician +5 points
- May upgrade one Pink Horror to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SCREAMERS",
  profiles: (
    (name: "Screamer", m: 1, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: 32),
  ),
  unit-size: "3-9",
  base-size: "40x40 or 40x60",
  troop-type: "War Beast (Daemon)",
  special-rules: "Daemon of Tzeentch, Fly (9), Multiple Wounds (2)",
  special-rules-body: (
    rule("Slashing Attack")[If a unit of Screamers moves over one or more unengaged enemy units in the Remaining Moves sub-phase, each of those units suffer one Strength 4 Hit per Screamer, distributed as shooting attacks.],
  ),
  options: [
- May be Summoned from Beyond +4 points/model
  ],
  order: ("unit-size", "base-size", "troop-type", "special-rules", "options"),
)

#unit("BRIMSTONE HORRORS",
  profiles: (
    (name: "Brimstone Horrors", m: 4, ws: 2, bs: 3, s: 2, t: 2, w: 2, i: 3, a: 2, ld: 7, points: 10),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Lesser Flames of Tzeentch",
  equipment-body: [
- *Lesser Flames of Tzeentch:* Lesser Flames of Tzeentch have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8/12\"", "3", "Flaming Attacks, Multiple Shots (2), Quick to Fire"))
  ],
  special-rules: "Daemon of Tzeentch, Flaming Attacks",
  options: [
- May be Summoned from Beyond +2 points/model
  ],
  notes: [
- Brimstone Horrors have a Line of Sight value of 0.
  ],
)

= SPECIAL UNITS

#unit("BRUTES",
  first: true,
  profiles: (
    (name: "Brute", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 5, a: 3, ld: 7, points: 40),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Daemon)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Daemonic",
  options: [
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model
- May be upgraded to one of the following:
  - Daemon of Slaanesh +3 points/model
  - Daemon of Khorne +6 points/model
  - Daemon of Nurgle +6 points/model
  - Daemon of Tzeentch +6 points/model
  ],
)

#unit("BLOODCRUSHERS",
  profiles: (
    (name: "Bloodletter", m: 5, ws: 5, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 55),
    (name: "Juggernaut", m: 7, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Daemon)",
  mount: "Juggernaut (Daemon)",
  base-size: "50x50 or 50x75",
  equipment: "Hand weapon",
  special-rules: "Daemon of Khorne, Killing Blow, Natural Armour (5+)",
  options: [
- May upgrade one Bloodcrusher to a Leader +5 points
- May upgrade one Bloodcrusher to a Musician +5 points
- May upgrade one Bloodcrusher to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("BLOOD CHARIOT",
  profiles: (
    (name: "Blood Chariot", m: 6, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 145),
    (name: "Bloodletter", m: "-", ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 4, a: 1, ld: 7, points: ""),
    (name: "Juggernaut", m: "-", ws: 4, bs: 0, s: 4, t: "-", w: "-", i: 2, a: 3, ld: 7, points: ""),
  ),
  troop-type: "Chariot (Armour Save 4+)",
  crew: "2 Bloodletters (Daemon)",
  drawn-by: "1 Juggernaut (Daemon)",
  base-size: "50x100",
  equipment: "Hand weapon, scythes",
  special-rules: "Daemon of Khorne, Killing Blow (Bloodletter only), Natural Armour (5+)",
  options: [
- May be upgraded to a Standard Bearer +10 points
  ],
)

#unit("BLOODBEASTS",
  compact: true,
  profiles: (
    (name: "Bloodbeast", m: 7, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 4, ld: 7, points: 55),
  ),
  unit-size: "1-3",
  troop-type: "Monstrous Beast (Daemon)",
  base-size: "50x50 or 50x75",
  special-rules: "Daemon of Khorne, Natural Armour (6+)",
)

#unit("POX RIDERS",
  profiles: (
    (name: "Plaguebearer", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 35),
    (name: "Plague Toad", m: 6, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 1, a: 3, ld: 7, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Daemon)",
  mount: "Plague Toad (Daemon)",
  base-size: "50x50 or 50x75",
  equipment: "Hand weapon",
  special-rules: "Daemon of Nurgle, Marsh Strider",
  options: [
- May upgrade one Pox Rider to a Leader +5 points
- May upgrade one Pox Rider to a Musician +5 points
- May upgrade one Pox Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("BEASTS OF NURGLE",
  profiles: (
    (name: "Beast of Nurgle", m: 6, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: "*", ld: 7, points: 55),
  ),
  unit-size: "1-3",
  troop-type: "Monstrous Beast (Daemon)",
  base-size: "50x50 or 50x75",
  special-rules: "Daemon of Nurgle, Random Attacks (D6+1), Regeneration (6+)",
  special-rules-body: (
    rule("Attention Seeker")[Beasts of Nurgle can issue and accept challenges as if they were Characters.],
    rule("Slime Trail")[Enemy units do not receive combat result bonuses for attacking the flank or rear of models with this special rule.],
  ),
)

#unit("PLAGUE CHARIOT",
  profiles: (
    (name: "Plague Chariot", m: 5, ws: "-", bs: "-", s: 5, t: 5, w: 5, i: "-", a: "-", ld: "-", points: 130),
    (name: "Plaguebearer", m: "-", ws: 4, bs: 3, s: 4, t: "-", w: "-", i: 2, a: 1, ld: 7, points: ""),
    (name: "Beast of Nurgle", m: "-", ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 2, a: "*", ld: 7, points: ""),
  ),
  troop-type: "Chariot (Armour Save 4+)",
  crew: "2 Plaguebearer (Daemon)",
  drawn-by: "1 Beast of Nurgle (Daemon)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Daemon of Nurgle, *Random Attacks (D6+1) (Beast of Nurgle only), Regeneration (6+), Slime Trail",
  options: [
- May be upgraded to a Standard Bearer +10 points
  ],
)

#unit("PLEASURESEEKERS",
  profiles: (
    (name: "Daemonette", m: 6, ws: 5, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 2, ld: 7, points: 60),
    (name: "Serpent of Slaanesh", m: 10, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 7, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Daemon)",
  mount: "Serpent of Slaanesh (Daemon)",
  base-size: "50x50 or 50x75",
  equipment: "Hand weapon",
  special-rules: "Daemon of Slaanesh, Poisoned Attacks (Serpent of Slaanesh only)",
  options: [
- May upgrade one Pleasureseeker to a Leader +5 points
- May upgrade one Pleasureseeker to a Musician +5 points
- May upgrade one Pleasureseeker to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SEEKER CHARIOT",
  compact: true,
  profiles: (
    (name: "Seeker Chariot", m: 9, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 80),
    (name: "Daemonette", m: "-", ws: 5, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 2, ld: 7, points: ""),
    (name: "Alluress", m: "-", ws: 5, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 3, ld: 7, points: ""),
    (name: "Steed of Slaanesh", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 5, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "1 Daemonette & 1 Alluress (Daemon)",
  drawn-by: "2 Steeds of Slaanesh (Daemon)",
  base-size: "50x100 or 60x100",
  equipment: "Scythes",
  special-rules: "Daemon of Slaanesh, Poisoned Attacks (Steed of Slaanesh only)",
)

#unit("FIENDS",
  profiles: (
    (name: "Fiend", m: 10, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 6, a: 3, ld: 7, points: 55),
  ),
  unit-size: "1-3",
  troop-type: "Monstrous Beast (Daemon)",
  base-size: "50x50 or 50x75",
  special-rules: "Daemon of Slaanesh",
  special-rules-body: (
    rule("Soporific Musk")[Units in base contact with one or more Fiends of Slaanesh suffer a \-1 penalty to both Weapon Skill and Initiative. This has no effect on Daemons of Slaanesh.],
  ),
  options: [
- May upgrade one Fiend to a Leader +5 points
  ],
)

#unit("FLAMERS",
  profiles: (
    (name: "Flamer", m: 6, ws: 2, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: 32),
  ),
  unit-size: "3-6",
  troop-type: "Infantry (Daemon)",
  base-size: "25x25 or 30x30",
  options: [
- May upgrade one Flamer to a Leader +5 points
  ],
  special-rules: "Daemon of Tzeentch, Flaming Attacks, Skirmishers, Strider",
  special-rules-body: [
- *Flames of Tzeentch:* Flames of Tzeentch have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/18\"", "4", "Flaming Attacks, Multiple Shots (D6), Quick Shot, Rapid Fire"))
  ],
  order: ("unit-size", "troop-type", "base-size", "options", "special-rules"),
)

#unit("EXALTED FLAMER",
  profiles: (
    (name: "Exalted Flamer", m: 6, ws: 4, bs: 4, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 7, points: 70),
  ),
  troop-type: "Monstrous Infantry (Daemon)",
  base-size: "40x40",
  equipment: "Hand weapon",
  special-rules: "Daemon of Tzeentch, Flaming Attacks, Strider",
  special-rules-body: [
- *Exalted Fire of Tzeentch:* During the Shooting phase, the Exalted Flamer can shoot either Pink Fire or Blue Fire below. If a misfire is rolled when resolving Pink Fire or Blue Fire, the Exalted Flamer suffers D6 Strength D6 hits with the Flaming Attacks special rule.
  - *Blue Fire:* Blue Fire is an organ gun with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/18\"", "D3+3", "Cumbersome, Flaming Attacks, Multiple Shots (Artillery Dice + D6), Rapid Fire"))

\- *Pink Fire:* Pink Fire is a fire thrower that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "D6", "Cumbersome , Flaming Attacks"))
  ],
)

#unit("FIREWYRMS",
  profiles: (
    (name: "Firewyrm", m: "*", ws: 3, bs: 4, s: 4, t: 4, w: 3, i: 4, a: "*", ld: 7, points: 55),
  ),
  unit-size: "1-3",
  troop-type: "Monstrous Beast (Daemon)",
  base-size: "50x50 or 50x75",
  equipment: "Exalted Flames of Tzeentch",
  equipment-body: [
- *Exalted Flames of Tzeentch:* Exalted Flames of Tzeentch have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "4", "Flaming Attacks, Multiple Shots (2D6), Quick Shot, Rapid Fire"))
  ],
  special-rules: "Daemon of Tzeentch, Random Movement (3D6), Random Attacks (D6)",
)

= RARE UNITS

#unit("SOUL GRINDER",
  first: true,
  profiles: (
    (name: "Soul Grinder", m: 8, ws: 4, bs: 4, s: 6, t: 7, w: 6, i: 3, a: 5, ld: 7, points: 275),
  ),
  troop-type: "Monster (Daemon)",
  base-size: "150x100",
  equipment: "Hand weapon, harvester cannon",
  special-rules: "Daemonic, Natural Armour (4+)",
  special-rules-body: (
    rule("Caught by the Iron Claw")[Immediately before the Soulgrinder makes its Attacks, nominate one model in base contact with the Soulgrinder. That model must pass an Initiative test. If failed, all other attacks the Soulgrinder makes against that model this turn hit automatically.],
    rule("Harvester Cannon")[This allows the Soulgrinder to fire grapeshot (see Cannons in the _Warhammer Rulebook_). If a misfire is rolled on the artillery dice, the Soulgrinder suffers a Wound with no saves allowed instead of rolling on the chart.],
  ),
  upgrades: [
- *Baleful Torrent:* This follows the rules for fire throwers. If a misfire is rolled on the artillery dice, the Soulgrinder suffers a wound with no saves allowed instead of rolling on the chart.
- *Daemonbone Claw:* If a Soulgrinder has a Daemonbone Claw it can exchange all of its Attacks for a single special Attack – this is declared after the Caught by the Iron Claw rules is resolved. This Attack is resolved at Strength 10 and has the Multiple Wounds (D6) special rule.
- *Phlegm Bombardment:* Phlegm Bombardment is a stone thrower with the profile below. If a misfire is rolled on the artillery dice, the Soulgrinder suffers a Wound with no saves allowed instead of rolling on the chart.

#minitable(("Range", "Strength", "Special Rules"), ("12-36\"", "3", "Cumbersome"))

- *Warp Gaze:* Warp Gaze follows the rules for bolt throwers.
  ],
  options: [
- May be upgraded to one of the following:
  - Daemon of Slaanesh +5 points
  - Daemon of Khorne +15 points
  - Daemon of Nurgle +15 points
  - Daemon of Tzeentch +15 points
- May take a Daemonbone Claw +25 points
- May replace the Harvester Cannon with one of the following:
  - Warp Gaze +15 points
  - Baleful Torrent +25 points
  - Phlegm Bombardment +25 points
  ],
)

#unit("SKULL CANNON",
  profiles: (
    (name: "Skull Cannon", m: 6, ws: 5, bs: "-", s: 5, t: 5, w: 4, i: 2, a: 3, ld: "-", points: 240),
    (name: "Bloodletter", m: "-", ws: 5, bs: 3, s: 4, t: "-", w: "-", i: 4, a: 1, ld: 7, points: ""),
  ),
  troop-type: "Chariot (Armour Save 4+)",
  crew: "2 Bloodletters (Daemon)",
  base-size: "50x100",
  equipment: "Hand weapon, scythes, skull cannon",
  special-rules: "Daemon of Khorne, Killing Blow (Bloodletter only), Natural Armour (6+)",
  special-rules-body: [
- *Gorefeast:* If this chariot's Impact Hits cause unsaved Wounds, immediately roll a D6 for each Wound caused. For each score of 4+, the chariot regains a single Wound lost earlier in the game.
- *Skull Cannon:* Skull cannons are cannons with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "10", "Cumbersome, Flaming Attacks, Multiple Wounds (D6/D3)"))
  ],
)

#unit("PLAGUE DRONES",
  profiles: (
    (name: "Plaguebearer", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 50),
    (name: "Rot Fly", m: 1, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 2, a: 3, ld: 7, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Daemon)",
  mount: "Rot Fly (Daemon)",
  base-size: "50x75",
  equipment: "Hand weapon",
  special-rules: "Daemon of Nurgle, Fly (6)",
  upgrades: [
- *Death Heads:* Death Heads have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "4", "Quick Shot"))

Each Hit from a Death Head is multiplied into D6 Hits.
  ],
  options: [
- May take Death Heads +5 points/model
- May upgrade one Plaguebearer to a Leader +5 points
- May upgrade one Plaguebearer to a Musician +5 points
- May upgrade one Plaguebearer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("EXALTED SEEKER CHARIOT",
  profiles: (
    (name: "Exalted Chariot", m: 9, ws: "-", bs: "-", s: 4, t: 4, w: 8, i: "-", a: "-", ld: "-", points: 210),
    (name: "Daemonette", m: "-", ws: 5, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 2, ld: 7, points: ""),
    (name: "Alluress", m: "-", ws: 5, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 3, ld: 7, points: ""),
    (name: "Steed of Slaanesh", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 5, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "3 Daemonettes & 1 Alluress (Daemon)",
  drawn-by: "4 Steeds of Slaanesh (Daemon)",
  base-size: "100x150",
  equipment: "Scythes",
  special-rules: "Daemon of Slaanesh, Impact Hits (3D6), Poisoned Attacks (Steed of Slaanesh only)",
  special-rules-body: (
    rule("Totem of Endless Pleasure")[Any Daemon of Slaanesh unit within 6" of an Exalted Chariot gains the Always Strikes First special rule.],
  ),
)

#unit("HELLFLAYER",
  profiles: (
    (name: "Exalted Chariot", m: 9, ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 120),
    (name: "Daemonette", m: "-", ws: 5, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 2, ld: 7, points: ""),
    (name: "Alluress", m: "-", ws: 5, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 3, ld: 7, points: ""),
    (name: "Steed of Slaanesh", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 5, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 Daemonettes & 1 Alluress (Daemon)",
  drawn-by: "2 Steeds of Slaanesh (Daemon)",
  base-size: "100x50 or 100x60",
  equipment: "Scythes",
  special-rules: "Daemon of Slaanesh, Impact Hits (2D6), Poisoned Attacks (Steed of Slaanesh only)",
  special-rules-body: (
    rule("Soulscent")[If a Hellflayer causes one or more unsaved Wounds with its Impact Hits, all crew members receive a number of bonus Attacks equal to the number of unsaved Wounds caused. This bonus lasts until the end of the turn.],
  ),
  notes: [
- You may take 1\-2 Hellflayers as a single Rare choice.
  ],
)

#unit("CONTORTED EPITOME",
  profiles: (
    (name: "Contorted Epitome", m: 6, ws: 5, bs: 0, s: 4, t: 4, w: 4, i: 5, a: 4, ld: "-", points: 165),
    (name: "Alluress", m: 6, ws: 5, bs: 4, s: 3, t: "-", w: "-", i: 5, a: 3, ld: 7, points: ""),
  ),
  crew: "2 Alluresses (Daemon)",
  troop-type: "Shrine (Daemon)",
  base-size: "75x50",
  special-rules: "Daemon of Slaanesh",
  special-rules-body: (
    rule("Gift of Power")[For each friendly Contorted Epitome on the battlefield at the start of your Magic phase, add one dice to your power pool.],
    rule("Horrible Fascination")[At the start of the enemy's turn, each enemy unit that is within 12" of one or more Contorted Epitomes and has Line of Sight to it must pass a Psychology test. If failed, that unit may not move in the Movement phase this turn.],
    rule("Swallow Energy")[A Contorted Epitome's Magical Ward save is increased by +1 for every point of Strength above 3 that every attack targeting it has. So, against a Strength 4 Attack it has Magical Ward (4+), against Strength 5 it has a Magical Ward (3+).],
  ),
  order: ("crew", "troop-type", "base-size", "special-rules"),
)

#unit("CHANGEBRINGERS",
  profiles: (
    (name: "Flamer", m: 6, ws: 2, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: 45),
    (name: "Disc of Tzeentch", m: 0, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 7, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Cavalry (Daemon)",
  base-size: "40x40",
  options: [
- May upgrade one Changebringer to a Leader +5 points
  ],
  special-rules: "Daemon of Tzeentch, Flaming Attacks, Fly (9)",
  special-rules-body: [
- *Flames of Tzeentch:* Flames of Tzeentch have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/18\"", "4", "Flaming Attacks, Multiple Shots (D6), Quick Shot, Rapid Fire"))
  ],
  order: ("unit-size", "troop-type", "base-size", "options", "special-rules"),
)

#unit("BURNING CHARIOT",
  profiles: (
    (name: "Burning Chariot", m: "-", ws: "-", bs: "-", s: 4, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 120),
    (name: "Exalted Flamer", m: "-", ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: ""),
    (name: "Blue Horror", m: "-", ws: 3, bs: 3, s: 2, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
    (name: "Screamer", m: 1, ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 4, a: 2, ld: "-", points: ""),
  ),
  troop-type: "Chariot",
  crew: "1 Exalted Flamer (Daemon)",
  drawn-by: "2 Screamers (Daemon)",
  base-size: "50x100",
  equipment: "Exalted Flames of Tzeentch (Exalted Flamer only), scythes",
  special-rules: "Daemon of Tzeentch, Fly (8), Flaming Attacks (Exalted Flamer only), Multiple Wounds (2)",
  special-rules-body: [
(Screamers only)

- *Exalted Fire of Tzeentch:* During the Shooting phase, the Exalted Flamer can shoot either Pink Fire or Blue Fire below. If a misfire is rolled when resolving Pink Fire or Blue Fire, the Exalted Flamer suffers D6 Strength D6 hits with the Flaming Attacks special rule.
  - *Blue Fire:* Blue Fire is an organ gun with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/18\"", "D3+3", "Cumbersome, Flaming Attacks, Multiple Shots (Artillery Dice + D6), Rapid Fire"))

\- *Pink Fire:* Pink Fire is a fire thrower that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("n/a", "D6", "Cumbersome , Flaming Attacks"))

- *Lesser Flames of Tzeentch* (Blue Horrors only)*:* Lesser Flames of Tzeentch have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("8/12\"", "3", "Flaming Attacks, Multiple Shots (2), Quick Shot"))

- *Slashing Attack:* If a Burning Chariot moves over one or more unengaged enemy units in the Remaining Moves sub-phase, each of those units suffer two Strength 4 Hits, distributed as shooting attacks.
  ],
  options: [
- May take 3 Blue Horror crew +12 points
  ],
)

= SPECIAL CHARACTERS

#unit("BE'LAKOR",
  solo: true,
  first: true,
  subtitle: "The Dark Master",
  profiles: (
    (name: "Be'lakor", m: 8, ws: 9, bs: 5, s: 6, t: 5, w: 5, i: 8, a: 5, ld: 10, points: 515),
  ),
  troop-type: "Monstrous Creature (Special Character, Daemon)",
  base-size: "50x50 or 100x100",
  magic: "Belakor is a Level 4 Wizard who uses spells from the Lore of Shadow.",
  magic-items: (
    rule("The Blade of Shadows")[Magic Weapon. The Blade of Shadows has the Ignores Armour Saves special rule.],
  ),
  special-rules: "Daemonic, Fly (8), Terror",
  special-rules-body: (
    rule("The Dark Master")[All enemy units within 12" of Be'lakor suffer \-1 to their Leadership.],
    rule("Lord of Torment")[If one or more enemy units failed a Panic or Break test during the previous turn (after any re-rolls for special rules such as a Battle Standard Bearer's Hold Your Ground! rule), Be'lakor receives D3 additional power dice in the Magic phase, which only he can make use of. Any unused power dice are discarded at the end of the Magic phase as normal.],
    rule("Shadow Form")[Be'lakor has a Magical Ward (6+), and any missile attacks targeting him suffer \-2 To Hit.],
  ),
)

#unit("SKARBRAND",
  solo: true,
  subtitle: "The Exiled One",
  profiles: (
    (name: "Skarbrand", m: 8, ws: 10, bs: 5, s: 6, t: 6, w: 6, i: 9, a: 6, ld: 9, points: 480),
  ),
  troop-type: "Monster (Special Character, Daemon)",
  base-size: "100x100 or 100x150",
  equipment: "Medium armour",
  magic-items: (
    rule("Slaughter and Carnage")[Magic Weapon. Two hand weapons. Attacks made with these weapons have the Ignores Armour Saves special rule.],
  ),
  special-rules: "Daemon of Khorne, Frenzy, Hatred, Killing Blow, Magic Resistance (1)",
  special-rules-body: (
    rule("Bellow of Endless Fury")[This is a Strength 5 Breath Weapon as described in the Warhammer rulebook.],
    rule("The Hellforged Host")[If Skarbrand is included in your army, you may upgrade one unit of Bloodletters to the Hellforged Host for a cost of +1 point per model. This unit has the Armour Piercing (1) special rule and may re-roll To Wound rolls of 1.],
    rule("Rage Embodied")[Skarbrand can never lose his Frenzy. In addition, while Skarbrand is alive, all units within 12" (friendly and enemy) of him are subject to the rules for Hatred.],
  ),
  labels: (equipment: "EQIPMENT"),
)

#unit("MAZARALL THE BUTCHER",
  solo: true,
  subtitle: "Daemon Prince of Khorne",
  profiles: (
    (name: "Mazarall the Butcher", m: 8, ws: 8, bs: 5, s: 7, t: 6, w: 6, i: 8, a: 6, ld: 9, points: 430),
  ),
  troop-type: "Monster (Special Character, Daemon)",
  base-size: "100x100",
  equipment: "Light armour",
  magic-items: (
    rule("Harrow Meat")[Magic Weapon. Roll a D6 for each model slain with Harrow Meat at the end of each round of close combat. For each 6 rolled, Mazarall gains +1 Attack for the remainder of the game.],
    rule("The Ancyte Shield")[Magic Armour. Shield. The Ancyte Shield gives Mazarall the Magic Resistance (3) special rule. In addition, it has a missile attack with range 12", Strength 4 and the Multiple Shots (D6) special rule.],
  ),
  special-rules: "Daemon of Khorne, Impact Hits (D3)",
  special-rules-body: (
    rule("The Butcher's Due")[At the start of each of your close combat phases, choose one friendly Daemon of Khorne unit within 12". The target unit may re-roll failed To Wound rolls of 1's until the start of your next close combat phase.],
  ),
  labels: (equipment: "EQIPMENT"),
)

#unit("U'ZHUL THE SKULLTAKER",
  solo: true,
  subtitle: "Khorne's Champion",
  profiles: (
    (name: "Skulltaker", m: 5, ws: 8, bs: 5, s: 5, t: 4, w: 2, i: 7, a: 4, ld: 8, points: 170),
    (name: "Khul'tayran (Juggernaut)", m: 7, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 2, a: 3, ld: 7, points: ""),
  ),
  troop-type: "Infantry (Special Character, Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Light armour",
  magic-items: (
    rule("The Slayer Sword")[Magic Weapon. Attacks made with the Slayer Sword have the Flaming Attacks and Killing Blow special rules. If Skulltaker is fighting in a challenge, attacks made with the Slayer Sword also gain the Heroic Killing Blow special rule.],
    rule("Cloak of Skulls")[Magic Armour. The Cloak of Skulls grants Skulltaker the Natural Armour (3+) and Magic Resistance (1) special rules.],
  ),
  special-rules: "Daemon of Khorne, Natural Armour (6+)",
  special-rules-body: (
    rule("Skulls for the Skull Throne!")[Skulltaker must always issue and accept challenges.],
  ),
  options: [
- May be mounted on one of the following:
  - Khul'tayran (Juggernaut) +50 points
  - Blood Throne +150 points
  ],
  labels: (equipment: "EQIPMENT"),
)

#unit("KARANAK",
  solo: true,
  subtitle: "Hound of Vengeance",
  profiles: (
    (name: "Karanak", m: 8, ws: 7, bs: 0, s: 5, t: 5, w: 2, i: 6, a: 4, ld: 8, points: 125),
  ),
  troop-type: "War Beast (Special Character, Daemon)",
  base-size: "25x50 or 30x60",
  magic-items: (
    rule("Brass Collar of Bloody Vengeance")[Talisman. Any enemy Wizard that suffers a miscast within 12" of Karanak takes a Strength 10 hit immediately before the miscast is resolved.],
  ),
  special-rules: "Daemon of Khorne, Hatred, Independent, Magic Resistance (2), Natural Armour (6+)",
  special-rules-body: (
    rule("Prey of the Blood God")[At the start of the game, before deployment, nominate one character in the enemy army – this is the quarry of Khorne that Karanak has come to claim. Karanak re-rolls failed To Hit and To Wound rolls against the chosen character.],
    rule("Hounds of the Blood Hunt")[If Karanak is included in your army, you may upgrade one unit of Flesh Hounds to the Hounds of the Blood Hunt Host for a cost of +2 points per model. For every unsaved Wound caused by this unit in close combat, they regain 1 Wound's worth of models up to their starting value, just like a summoning spell.],
  ),
  notes: [
- Karanak may never be the Army General.
  ],
)

#unit("SKAARAC THE BLOODBORN",
  solo: true,
  subtitle: "Great Bloodbeast of Khorne",
  profiles: (
    (name: "Skaarac", m: 7, ws: 5, bs: 0, s: 6, t: 6, w: 6, i: 4, a: 6, ld: 7, points: 325),
  ),
  troop-type: "Monster (Special Character, Daemon)",
  base-size: "100x150",
  equipment: "Light armour",
  special-rules: "Daemon of Khorne, Loner, Natural Armour (6+)",
  special-rules-body: (
    rule("Burning Blood")[Skaarac has a Breath Weapon Attack with Strength 4 and the Ignores Armour Saves special rule.],
    rule("Life Eater")[Roll a D6 for each Wound inflicted by Skaarac in close combat. For each result of a 6, he may restore one Wound previously lost during the battle.],
    rule("Infernal Iron")[All Wizards within 12" of Skaarac suffer a \-1 casting penalty.],
    rule("Undying Hate")[If this model is slain, before removing it, all models in base contact suffers a Strength 5 Hit which Ignores Armour saves.],
    rule("Call of the Skull Throne")[All friendly Daemons of Khorne within 12" of Skaarac may re-roll failed charge distances.],
  ),
  labels: (equipment: "EQIPMENT"),
)

#unit("KU'GATH PLAGUEFATHER",
  solo: true,
  subtitle: "Fetid Brewmaster",
  profiles: (
    (name: "Ku'gath Plaguefather", m: 4, ws: 6, bs: 3, s: 6, t: 7, w: 7, i: 4, a: 6, ld: 9, points: 480),
    (name: "Palanquin of Nurgle", m: 4, ws: 2, bs: 2, s: 2, t: "-", w: "-", i: 3, a: 8, ld: 7, points: ""),
  ),
  troop-type: "Monster (Special Character, Daemon)",
  base-size: "50x50, 100x100 or 100x150",
  magic: "Ku'gath is a Level 1 Wizard who uses spells from the Lore of Nurgle.",
  daemonic-gifts: "Nurgling Infestation, Slime Trail",
  magic-items: [
- *Necrotic Missiles:* Magic Weapon. Necrotic Missiles is a stone thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-36\"", "5", "Ignores Armour Saves, Slow to Fire"))

In the event of a misfire, the shot has no effect.
  ],
  special-rules: "Daemon of Nurgle, Hatred (Dwarfs)",
  special-rules-body: (
    rule("Festering Stooges")[If Ku'gath Plaguefather is included in your army, you may upgrade one unit of Plaguebearers to the Festering Stooges for a cost of +1 point per model. This unit has the Regeneration (6+) special rule.],
  ),
)

#unit("ROTIGUS",
  solo: true,
  subtitle: "The Generous One",
  profiles: (
    (name: "Rotigus", m: 6, ws: 6, bs: 3, s: 6, t: 7, w: 7, i: 4, a: 5, ld: 9, points: 570),
  ),
  troop-type: "Monster (Special Character, Daemon)",
  magic: "Rotigus is a Level 3 Wizard who use spells from the Lore of Nurgle.",
  base-size: "100x100 or 100x150",
  daemonic-gifts: "The Endless Gift",
  magic-items: (
    rule("Gnarlrod of Nurgle")[Arcane Item. Staff. Bound Spell (Level 3, cast on 9+). The Gnarlrod of Nurgle contains a *direct damage* spell with a range of 24". When cast, roll a D6; this is the number of enemy units affected by the spell, chosen by Rotigus. Each affected unit suffers D6 Strength 3 Hits which Ignores Armour Saves.],
  ),
  special-rules: "Daemon of Nurgle",
  special-rules-body: (
    rule("Blubber and Bile")[Each time Rotigus successfully makes a Regeneration save in close combat, he inflicts a Strength 4 Hit on the model which caused the Wound.],
    rule("Streams of Brackish Filth")[At the start of each of your Shooting phases, all enemy units within 6" of Rotigus suffer D3 Strength 4 Hits.],
  ),
  order: ("troop-type", "magic", "base-size", "daemonic-gifts", "magic-items", "special-rules"),
)

#unit("EPIDEMUS",
  solo: true,
  subtitle: "Nurgle's Tallyman",
  profiles: (
    (name: "Epidemius", m: 4, ws: 6, bs: 5, s: 5, t: 5, w: 2, i: 4, a: 3, ld: 8, points: 190),
    (name: "Palanquin", m: 4, ws: 2, bs: 2, s: 2, t: "-", w: "-", i: 3, a: 8, ld: 7, points: ""),
  ),
  troop-type: "Infantry (Special Character, Daemon)",
  mount: "Palanquin (Daemon)",
  base-size: "50x50",
  equipment: "Hand weapon",
  special-rules: "Daemon of Nurgle, Inspiring Presence (6)",
  special-rules-body: [
- *The Tally of Pestilence:* Whilst Epidemius is alive, keep a count of all unsaved Wounds caused by any unit he is with in close combat (unless he has refused a challenge that turn). At the start of each of your turns, consult the table below to determine the effect of the Tally of Pestilence. Note that these effects are cumulative. If Epidemius is killed or leaves the unit, these effects are immediately lost.

#chart((("Wounds", "Effect"), ("0-6", "No effect."), ("7+", "All models in the unit gain +1 Strength."), ("14+", "All models in the unit gain +1 Toughness."), ("21+", "All models in the unit gain the Killing Blow special rule."), ("28+", "All models in the unit re-roll failed Magical Ward saves.")))
  ],
)

#unit("HORTICULOUS SLIMUX",
  solo: true,
  subtitle: "The Grand Cultivator",
  profiles: (
    (name: "Horticulous", m: 4, ws: 6, bs: 5, s: 5, t: 5, w: 2, i: 4, a: 3, ld: 8, points: 235),
    (name: "Mulch", m: 4, ws: 3, bs: 0, s: 5, t: 5, w: 4, i: 1, a: 4, ld: 7, points: ""),
  ),
  troop-type: "Monstrous Cavalry (Special Character)",
  base-size: "50x100 or 60x100",
  equipment: "Great weapon",
  daemonic-gifts: "Slime Trail",
  special-rules: "Daemon of Nurgle",
  special-rules-body: (
    rule("Beast Handler")[Friendly Beasts of Nurgle within 12" of Horticulous Slimux re-roll failed charge rolls and To Hit rolls of 1.],
    rule("In Death There is Life")[All friendly units within 6" of Horticulous Slimux gain the Regeneration (6+) special rule.],
    rule("Cultivating the Garden of Nurgle")[Once during the battle, at the start of your turns, you can set up a Venom Thicket (see the Warhammer Rulebook) within 3" of Horticulous Slimux and more than 1" away from any other model or terrain feature.],
  ),
)

#unit("N'KARI",
  solo: true,
  subtitle: "The Arch-tempter",
  profiles: (
    (name: "N'Kari", m: 10, ws: 8, bs: 5, s: 6, t: 6, w: 6, i: 9, a: 6, ld: 9, points: 625),
  ),
  troop-type: "Monster (Special Character, Daemon)",
  base-size: "50x50, 100x100 or 100x150",
  magic: "N'Kari is a level 4 Wizard who use spells from the Lore of Slaanesh.",
  daemonic-gifts: "Allure of Slaanesh, Spirit Swallower, Siren Song",
  magic-items: (
    rule("Witstealer Sword")[Magic Weapon. Any model that suffers one or more unsaved Wounds from the Witstealer Sword must immediately pass an Initiative test or suffer another Wound with the Ignores Armour Saves special rule.],
  ),
  special-rules: "Daemon of Slaanesh, Hatred (High Elves)",
  special-rules-body: (
    rule("Bringers of Beguilement")[If N'Kari is included in your army, you may upgrade one unit of Daemonettes to the Bringers of Beguilement for a cost of +1 point per model. All models in this unit have +1 Movement and may re-roll failed charge and pursuit distances.],
    rule("Willing Prey")[Enemy units in base contact with N'Kari suffer \-1 to their Weapon Skill.],
  ),
)

#unit("SHALAXI HELBANE",
  solo: true,
  subtitle: "Monarch of the Hunt",
  profiles: (
    (name: "Shalaxi Helbane", m: 10, ws: 9, bs: 5, s: 6, t: 6, w: 6, i: 10, a: 6, ld: 9, points: 525),
  ),
  troop-type: "Monster (Special Character, Daemon)",
  base-size: "100x100 or 100x150",
  magic: "Shalaxi Helbane is a Level 2 Wizard who uses spells from the Lore of Slaanesh",
  special-rules: "Daemon of Slaanesh",
  special-rules-body: (
    rule("Irresistible Challenge")[Enemy characters who refuses a Challenge from Shalaxi Helbane suffer D3 Strength 5 Hits which Ignores Armour saves.],
  ),
  magic-items: (
    rule("Soulpiercer")[Magic Weapon. Spear. When fighting in a Challenge, Shalaxi Helbane has the Heroic Killing Blow special rule.],
    rule("Shining Aegis")[Magic Armour. Shield. This shield gives Shalaxi Helbane the Magic Resistance (1) special rule.],
    rule("Cloak of Constriction")[Talisman. All models attempting to strike Shalaxi Helbane in close combat must pass a Strength test or lose 1 Attack.],
  ),
  order: ("troop-type", "base-size", "magic", "special-rules", "magic-items"),
)

#unit("AZAZEL",
  solo: true,
  subtitle: "Prince of Damnation",
  profiles: (
    (name: "Azazel", m: 8, ws: 8, bs: 5, s: 6, t: 5, w: 5, i: 9, a: 5, ld: 10, points: 425),
  ),
  troop-type: "Monstrous Creature (Special Character, Daemon)",
  base-size: "50x50",
  magic: "Azazel is a Level 2 Wizard who uses spells from the Lore of Slaanesh.",
  daemonic-gifts: "Soporific Musk, Temptator",
  magic-items: (
    rule("Daemonblade")[Magic Weapon. All attacks made with the Daemonblade have the Ignores Armour Saves special rule.],
  ),
  special-rules: "Daemon of Slaanesh, Fly (8), Terror",
  special-rules-body: (
    rule("Aura of Slaanesh")[Any enemy unit in base contact with Azazel suffers a \-1 penalty to its Leadership value.],
    rule("Dark Halo")[Azazel may re-roll failed Magical Ward saves.],
  ),
)

#unit("SYLL'ESSKE",
  solo: true,
  subtitle: "The Vengeful Allegiance",
  profiles: (
    (name: "Syll", m: "-", ws: 7, bs: 6, s: 4, t: "-", w: "-", i: 8, a: 4, ld: 8, points: 350),
    (name: "Esske", m: 8, ws: 8, bs: 5, s: 6, t: 5, w: 5, i: 8, a: 5, ld: 9, points: ""),
  ),
  troop-type: "Monstrous Creature (Special Character)",
  base-size: "50x50",
  equipment: "Light armour",
  magic-items: (
    rule("Axe of Dominion")[Magic Weapon. Great weapon. All attacks made by Esske automatically Wound with the Ignores Armour saves special rule.],
    rule("Scourging Whip")[Magic Weapon. All models in base contact with Syll'Esske lose 1 Attack.],
  ),
  special-rules: "Daemon of Slaanesh",
  special-rules-body: (
    rule("Deadly Symbiosis")[For each successful To Hit roll by Syll, Esske may re-roll one failed To Hit roll the same phase.],
    rule("Lithe and Swift")[Syll'Esske may re-roll failed charge and pursuit rolls.],
    rule("Subvert")[At the start of each of your turns, one enemy Character within 12" and Line of Sight of Syll'Esske must take a Psychology test. If failed, no units can use that model's Leadership until the start of your next turn.],
    rule("Regal Authority")[All friendly Daemons of Slaanesh within 18" of Syll'Esske may re-roll 1's To Hit in close combat.],
  ),
  notes: [
- Syll'Esske has a Line of Sight value of 4 and a Unit Strength of 5.
  ],
)

#unit("DEXCESSA",
  solo: true,
  subtitle: "The Talon of Slaanesh",
  profiles: (
    (name: "Dexcessa", m: 8, ws: 9, bs: 5, s: 6, t: 5, w: 5, i: 8, a: 5, ld: 9, points: 390),
  ),
  troop-type: "Monstrous Creature (Special Character, Daemon)",
  base-size: "100x50",
  magic-items: (
    rule("Sceptre of Slaanesh")[Enchanted Item. All friendly Daemons of Slaanesh units within 12" of Dexcessa may re- roll Daemonic Instability tests.],
  ),
  special-rules: "Daemon of Slaanesh, Fly (8)",
  special-rules-body: (
    rule("Joyous Battle Fury")[Dexcessa receive +1 Attack for each round of close combat after the first, for as a long as they remain in close combat (to a maximum of 10 Attacks total).],
    rule("Mesmerising Lepidoptera")[All enemy attacks targeting Dexcessa suffer a \-1 penalty To Hit.],
    rule("Redolence of Violence")[During any turn in which Dexcessa makes a successful charge, all friendly Daemon of Slaanesh units within 12" gain +1 Attack for the duration of this turn.],
  ),
)

#unit("SYNESSA",
  solo: true,
  subtitle: "The Voice of Slaanesh",
  profiles: (
    (name: "Synessa", m: 8, ws: 6, bs: 5, s: 5, t: 5, w: 5, i: 7, a: 3, ld: 9, points: 480),
  ),
  troop-type: "Monstrous Creature (Special Character, Daemon)",
  base-size: "100x50",
  magic: "Synessa are a Level 4 Wizard who uses spells from the Lore of Slaanesh. In addition, she knows the following spell:",
  magic-body: (
    rule("Whispers of Doubt")[Level 1, cast on 5+. _Whispers of Doubt_ is a *hex* spell with a range of 24". The target unit must take a Leadership test using an additional D6; if failed, all close combat attacks targeting that unit gain +1 To Hit until the start of your next Magic phase.],
  ),
  magic-items: (
    rule("Staff of Slaanesh")[Arcane Item. Staff. Bound Spell (Level 3, cast on 10+). This is a *direct damage* spell with a range of 18". The target unit suffers 2D6 Wounds. Saves are taken as normal.],
  ),
  special-rules: "Daemon of Slaanesh, Fly (8), Loremaster (Lore of Slaanesh)",
  special-rules-body: (
    rule("Mesmerising Lepidoptera")[All enemy attacks targeting Synessa suffer a \-1 penalty To Hit.],
    rule("The Voice of Slaanesh")[All friendly models within Line of Sight of Synessa may use their Leadership. In addition, any spells that Synessa casts can be targeted at any enemy unit within Line of Sight, regardless of range.],
  ),
)

#unit("THE MASQUE OF SLAANESH",
  solo: true,
  subtitle: "Eternal Dancer",
  profiles: (
    (name: "Masque of Slaanesh", m: 10, ws: 7, bs: 6, s: 4, t: 3, w: 2, i: 7, a: 5, ld: 8, points: 160),
  ),
  troop-type: "Infantry (Special Character, Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Daemon of Slaanesh",
  special-rules-body: [
- *The Eternal Dance:* At the start of each of the controlling player's Close Combat phases, the Masque must choose one dance to perform from the list given below. These abilities target one enemy unit (which may be in combat). Each dance has a range of 12" and does not require line of sight. Until the end of the phase, the target suffers a penalty to the characteristic stated (to a minimum of 1).
  - *The Fleshspasm Polka:* All models in the unit suffer \-1 Strength.
  - *The Waltz of Lethargy:* All models in the unit suffer
  - D3 Initiative.
  - *The Dance of Dreaming:* All models in the unit suffer
  - D3 Leadership.
- *Unnatural Reflexes:* The Masque of Slaanesh has the Dodge (6+) special rule, and may re-roll failed Dodge saves.
  ],
)

#unit("KAIROS FATEWEAVER",
  solo: true,
  subtitle: "Oracle of Tzeentch",
  profiles: (
    (name: "Kairos Fateweaver", m: 8, ws: 1, bs: 0, s: 5, t: 5, w: 6, i: 1, a: 1, ld: 9, points: 415),
  ),
  troop-type: "Monster (Special Character, Daemon)",
  base-size: "50x50 or 100x100",
  magic: "Kairos Fateweaver is a Level 4 Wizard who uses spells from the Lore of Tzeentch. In addition, his left head",
  magic-body: [
may choose a total of four spells from the following Lores of Magic:

- Heavens
- Life
- Light
- Metal

Kairos's right head may then choose a total of four spells from the following Lores of Magic:

- Beasts
- Death
- Fire
- Shadow

At the start of each Magic phase, decide which head Kairos is using this turn. He may only cast spells known to that head during this turn, as well as the Lore of Tzeentch.
  ],
  equipment: "Hand weapon",
  daemonic-gifts: "Twin Heads",
  magic-items: (
    rule("Staff of Tomorrow")[Arcane Item. Staff. Kairos allows you to re-roll a single D6 of your choice once per turn – declare before you make the re-roll. If this is used to re-roll a single dice from a batch of 2D6, 3D6 etc, the other dice in that batch cannot be re-rolled.],
  ),
  special-rules: "Daemon of Tzeentch, Fly (8), Loremaster (Lore of Tzeentch)",
  special-rules-body: (
    rule("Oracle of Eternity")[Kairos Fateweaver has a 6+ invulnerable save.],
    rule("The Blazing Squealers")[If Kairos Fateweaver is included in your army, you may upgrade one unit of Pink Horrors to the Blazing Squealers for a cost of +2 points per model. The Lesser Flames of Tzeentch from this unit are resolved at Strength 4 instead of Strength 3.],
  ),
  order: ("troop-type", "base-size", "magic", "equipment", "daemonic-gifts", "magic-items", "special-rules"),
)

#unit("AMON 'CHAKAI",
  solo: true,
  subtitle: "Lord of Change",
  profiles: (
    (name: "Amon 'Chakai", m: 8, ws: 6, bs: 5, s: 6, t: 6, w: 6, i: 6, a: 5, ld: 9, points: 570),
  ),
  troop-type: "Monster (Special Character, Daemon)",
  base-size: "50x50, 100x100 or 100x150",
  magic: "Amon 'Chakai is a Level 4 Wizard who uses spells from the Lore of Tzeentch.",
  equipment: "Hand weapon",
  daemonic-gifts: "All-Seeing Eye, Master of Sorcery",
  special-rules: "Daemon of Tzeentch, Fly (8)",
  special-rules-body: (
    rule("Daemonic Aura")[Amon 'Chakai and all friendly units within 6" gain +1 to their Magical Ward saves (to a maximum of 3+) against non-Magical Attacks.],
    rule("The Hand of Destiny")[At the start of the game, choose one enemy model. All close combat and shooting attacks against this model will automatically Hit for the remainder of the game.],
  ),
  order: ("troop-type", "base-size", "magic", "equipment", "daemonic-gifts", "special-rules"),
)

#unit("THE BLUE SCRIBES",
  solo: true,
  subtitle: "Azure Arcanologists",
  profiles: (
    (name: "The Blue Scribes", m: "-", ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 2, ld: 7, points: 80),
    (name: "Disc of Tzeentch", m: 0, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 4, a: 2, ld: 7, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Daemon)",
  mount: "Disc of Tzeentch (Daemon)",
  base-size: "50x50",
  magic-items: (
    rule("Scrolls of Sorcery")[Arcane Item. Relic. Bound Spell. The Blue Scribes can cast one spell from one of the eight Winds of Magic in the Warhammer rulebook during each of your Magic phases. You can choose which lore the spell is to be cast from, but must roll a D6 and refer to the spell order in their chosen Lore to see which spell is cast (the Blue Scribes can therefore never cast a signature spell). If there is no viable target or you choose not to cast the spell that has been rolled, the Blue Scribes do not cast a spell that turn – instead, add a counter as described in their Spell Syphon special rule.],
  ),
  special-rules: "Daemon of Tzeentch, Fly (9)",
  special-rules-body: (
    rule("Spell Syphon")[Whenever an enemy successfully casts a spell (including Bound Spells), place a counter next to the Blue Scribes. At the start of your next Magic phase, the Blue Scribes can make a channelling attempt for each counter. Once the Blue Scribes have attempted to channel, remove all counters from them.],
  ),
  notes: [
- The Blue Scribes have a Unit Strength of 3.
  ],
)

#unit("THE CHANGELING",
  solo: true,
  subtitle: "Tzeentch's Trickster",
  profiles: (
    (name: "The Changeling", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 8, points: 130),
  ),
  troop-type: "Infantry (Special Character, Daemon)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  magic: "The Changeling is a Level 1 Wizard who uses spells from the Lore of Tzeentch.",
  special-rules: "Daemon of Tzeentch",
  special-rules-body: (
    rule("Formless Horror")[At the start of each Close Combat phase, choose an enemy model in base contact with the Changeling. The Changeling may increase any or all of his Weapon Skill, Strength, Toughness, Initiative and Attacks characteristics to match those of the chosen enemy model until the end of that phase. If the chosen model has more than one value for a characteristic (as is the case with a mounted model), the Changeling may always choose the higher value. The Changeling cannot match the characteristics of an enemy that is fighting in a challenge, unless the Changeling is fighting in the same challenge.],
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
