// Kislev 3.1 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "kislev",
  army: "Kislev",
  version: "3.1",
  layout: "army",
  cover: "covers/kislev.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Kislev 3.1")

#cover(
  title: "Kislev",
  subtitle: "Warhammer Armies Project · 3.1",
  art: "/assets/covers/kislev.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Kislev*, version 3.1 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a Kislev army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the Warhammer rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules' that apply to several Kislev units, and these are detailed here.

#namecost("BY OUR BLOOD", "")

A unit with this special rule is Steadfast in the first round of close combat even if it has fewer ranks than the enemy. If the unit has more complete ranks after the first than all individual enemy units in base contact, it instead becomes Stubborn in the first round of close combat.

#namecost("FURY OF URSUN", "")

Models with this special rule must always pursue fleeing enemies in close combat.

#namecost("GLORIOUS CHARGE", "")

All Cavalry models with this special rule cause Fear in any turn in which they charge.

In addition, in any turn in which a Cavalry unit where the majority of models have this special rule makes a successful charge and wins the subsequent combat but does not break the enemy, they may attempt to disengage from the fight by passing a Leadership test.

If successful, the unit will make a flee move away from the enemy in a direction of your choice, as long as they do not flee through any units, in which case they must stop within 1".

The enemy may not pursue a unit disengaging from combat in this manner. After making its flee move, the unit will automatically rally and reform at the end of their move. If this move would take the unit off the battlefield, treat this as the unit having pursued off the table.

#namecost("STEADY IN THE RANKS", "")

Models with this special rule do not suffer the normal \-1 penalty To Hit for firing at a charging enemy.

#lore("THE LORE OF ICE")[

#spell("FROST SHIELD", "Lore Attribute")[For each spell the Wizard successfully casts from the Lore of Ice, the Wizard and any unit they are with gain the Natural Armour (6+) special rule until the start of their next Magic phase. However, this save cannot be used against Flaming Attacks.]

#spell("MIDWINTER'S KISS", "Signature Spell", cast: "7+")[_Midwinter’s Kiss_ is a *direct damage* spell. The caster makes a Breath Weapon Attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit suffer a Strength 4 Hit with the Ice Attacks special rule.]

#spell("FORM OF THE FROSTFIEND", 1, cast: "6+")[Remains in play. _Form of the Frostfiend_ is an *augment* spell that may be cast on the Wizard itself if they are on foot. While active, they gain the Fly (9) and Terror special rules, +2 Strength, +2 Toughness and +3 Attacks. The effects of all magic items except talismans are ignored for the duration of this spell.]

#spell("CHILL VOICE", 1, cast: "7+")[Remains in play. _Chill Voice_ is an *augment* spell that may be cast on the Wizard itself. While the spell is in effect, the Wizard has +1 Leadership and the Inspiring Presence (12) special rule.]

#spell("FROSTBEAM", 1, cast: "7+")[_Frostbeam_ is a *direct damage area* spell that uses the line template. Place it 30" in length, directly away from the caster's front arc. Each model in the way suffers a Strength 4 hit with the Armour Piercing (1) and Ice Attacks special rules.]

#spell("ICE SHEET", 2, cast: "7+")[_Ice Sheet_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, the target has all its movement halved and all models in it must take a Dangerous Terrain test if they move.]

#spell("BRIDGE OF ICE", 2, cast: "8+")[_Bridge of Ice_ is a *conveyance* spell with a range of 18". The target may immediately make a move straight forward as if it were the Remaining Moves sub-phase.]

#spell("FROST BLADES", 2, cast: "8+")[_Frost Blades_ is an *augment* spell with a range of 12". The target gains the Armour Piercing (1), Ice Attacks and Magical Attacks special rules until the start of the caster's next Magic phase.]

#spell("PIERCING ICICLE", 3, cast: "8+")[_Piercing Icicle_ is a *magic missile* with a range of 24". It inflicts a single Strength 6 hit with the Multiple Wounds (D3) and Ice Attacks special rules that penetrates ranks in the same manner as a shot from a Bolt Thrower.]

#spell("CHILL BLAST", 3, cast: "9+")[_Chill Blast_ is a *magic missile* with a range of 18" that causes D6 Strength 5 hits with the Ice Attacks and Ignores Armour saves special rules.]

#spell("DEATH FROST", 3, cast: "10+")[_Death Frost_ is a *direct damage* spell with a range of 12" and targets a single enemy model (even a character in a unit). The target must pass a Toughness test or suffer a Wound with the Multiple Wounds (D6) and Ignores Armour saves special rules. This is an Ice Attack.]

#spell("GLACIAL BARRIER", 4, cast: "10+")[_Glacial Barrier_ is a *summoning* spell with a range of 24" that summons a wall (obstacle). This wall has a Line of Sight value of 3 and is treated as impassable terrain. If it is hit by a cannon, the centre hole of a stone thrower, a fire thrower or breath weapon with the Flaming Attacks special rule it is automatically destroyed.]

#spell("CRYSTAL SANCTUARY", 4, cast: "12+")[Remains in play. _Crystal Sanctuary_ is an *augment* spell that affects the Wizard and any unit they are with. While the spell is in effect, the unit gains the Magical Ward (4+) special rule. However, if it moves for any reason, this Magical Ward is lost.]

#spell("HEART OF WINTER", 4, cast: "15+")[_Heart of Winter_ is a *direct damage area* with a range of 18" that uses the small round template. All models under the template must pass a Toughness test or suffer one Wound which Ignores Armour saves. This is an Ice Attack. In addition, all models in the unit have all their movement halved until the start of the caster's next turn.]
]
#lore("THE LORE OF TEMPEST")[

#spell("FREEZING WINDS", "Lore Attribute")[Every time a Wizard successfully casts a spell from the Lore of Tempest, all enemy units within 12" of the Wizard suffer a \-1 penalty to their Movement (to a minimum of 1) until the start of the caster's next Magic phase.]

#spell("SHARDSTORM", "Signature Spell", cast: "6+")[_Shardstorm_ is a *magic missile* spell with a range of 24". The target suffers 2D6 Strength 3 Hits.]

#spell("SWIFTWING", 1, cast: "6+")[_Swiftwing_ is an *augment* spell with a range of 18". The target gains +2 Movement, Devastating Charge and the Strider special rules until the start of the caster's next Magic phase.]

#spell("WIND BLAST", 1, cast: "6+")[_Wind Blast_ is a *magic missile* with a range of 24". The target is 'pushed' 2D3" directly away from the caster (it does not change facing). If the target comes into contact with impassable terrain it stops 1" away and suffers D6 Strength 3 hits. If the target comes into contact with another unit it stops 1" away and both units suffer D6 Strength 3 hits. Targets that cannot move are not pushed back at all, but still suffer D6 Strength 3 hits.]

#spell("GUST OF TRUE FLIGHT", 1, cast: "7+")[_Gust of True Flight_ is an *augment* spell with a range of 24". Until the start of the caster's next Magic phase, the target gains +1 To Hit and +12" maximum range with missile weapons.]

#spell("HAILSTORM", 2, cast: "7+")[_Hailstorm_ is a *direct damage area* with a range of 24" that uses the small round template. All models underneath the template suffer a Strength 3 Hit.]

#spell("CURSE OF THE MIDNIGHT WIND", 2, cast: "8+")[_Curse of the Midnight Wind_ is a *hex* spell with a range of 24". The target suffers a \-1 to their Weapon Skill, Ballistics Skill and Leadership until the start of the caster's next Magic phase. Shooting attacks that do not use Ballistic Skill must roll 4+ on a D6 before firing, or the shot(s) are lost. This is an Ice Attack.]

#spell("STORMCALL", 2, cast: "8+")[_Stormcall_ is a *direct damage area* with a range of 24" that uses the large round template. Roll a D6 for each model underneath the template; on the roll of a 5+, the model suffers a Strength 5 Hit with the Lightning Attacks special rule.]

#spell("BITING WIND", 3, cast: "9+")[_Biting Wind_ is a *direct damage area* spell that uses the line template. Place it 18" in length, directly away from the caster's front arc. All models in each unit in the way suffer a Strength 2 hit.]

#spell("HAWKS OF MISKA", 3, cast: "9+")[_Hawks of Miska_ is a *hex* spell with a range of 18". The target must take a Panic test with a \-3 Leadership penalty.]

#spell("THE HOWLER WIND", 3, cast: "9+")[_The Howler Wind_ is an *augment aura* spell with a range of 12". Until the start of the caster's next Magic phase, all missile attacks targeting friendly units within range suffer \-1 To Hit.]

#spell("GIFT OF THE WINTER WIND", 4, cast: "10+")[_Gift of the Winter Wind_ is a *hex* spell with a range of 24". The target must take a Leadership test on 3D6, suffering a Wound which Ignores Armour saves and Regeneration for every point by which the test is failed.]

#spell("INVOCATION OF THE ICE STORM", 4, cast: "14+")[Remains in play. _Invocation of the Ice Storm_ is a *summoning* spell with a range of 24". Place a marker anywhere within range. While the spell is in effect, all units within 6" of the marker cannot draw Line of Sight to targets outside this area.]

#spell("ICESHARD BLIZZARD", 4, cast: "15+")[Remains in play. _Iceshard Blizzard_ is a *magical vortex* that uses the small round template. Any model touched by the template suffers a Strength 3 Hit with the Ice Attacks special rule. In addition, all the unit's movement is halved and all non-magical missile attacks suffer \-1 To Hit until the start of the caster's next turn.]
]
#lore("THE LORE OF THE HAGS")[

#spell("FATE OF INTERLOPERS", "Lore Attribute")[If a *hex* spell from the Lore of the Hags is successfully cast on an enemy unit, that unit must re-roll 6’s when rolling to Hit until the start of the casters next Magic phase.]

#spell("SUMMON SPIRITS", "Signature Spell", cast: "5+")[_Summon Spirits_ is a *magic missile* with a range of 24" and causes 2D6 Strength 2 Armour Piercing (1) hits.]

#spell("FORM OF THE ANCIENT WIDOW", 1, cast: "6+")[Remains in play. _Form of the Ancient Widow_ is an *augment* spell that may be cast on the wizard itself if they are on foot. While active, she gains the Terror and Armour Piercing (1) special rules, +3 Strength, +2 Toughness and +3 Attacks. The effects of all magic items except talismans are ignored for the duration of this spell.]

#spell("HAUNTING HORROR", 1, cast: "7+")[_Haunting Horror_ is a *hex* spell with a range of 24". The target treats all units as causing Terror against them until the start of the casters next Magic phase.]

#spell("WITCHBREW", 1, cast: "7+")[_Witchbrew_ is a *direct damage* spell. The caster makes a Breath Weapon Attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit suffer a Strength 4 Hit with the Poisoned Attacks special rule.]

#spell("THE FORBIDDEN FENS", 2, cast: "8+")[Remains in play. _The Forbidden Fens_ is a *hex* with a range of 24". While the spell is in effect, the target counts as moving through marshland.]

#spell("FORTUNE TOLD", 2, cast: "8+")[_Fortune Told_ is an *augment* spell that may be cast on the wizard herself. Until the start of the caster’s next Magic phase, all models in the same unit as the caster gain a Magical Ward (6+) and may re-roll failed rolls To Hit in close combat and with missile weapons.]

#spell("MALEDICTION OF MADNESS", 2, cast: "9+")[_Malediction of Madness_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, the target gains the Frenzy special rule, suffers a \-3 penalty to all Berserk Rage tests and suffer \-1 To Hit in both close combat and with missile weapons.]

#spell("CURSE OF THE ANCIENT WITCH", 3, cast: "10+")[_Curse of the Ancient Witch_ is a *hex* spell with a range of 24". The target must re-roll successful armour saves until the start of the caster’s next magic phase. In addition, roll a D6; on a 3+, choose another enemy unit within 6" of the initial target – this unit also suffers the effects of the spell. Keep rolling for further victims (each within 6" of the previous target) until you fail or there are no more viable targets.]

#spell("CURSED CAULDRON", 3, cast: "10+")[_Cursed Cauldron_ is a *direct damage area* spell with a range of 24" that uses the small round template. Place D3 templates anywhere within range. All models underneath each template suffer a Strength 3 Hit.]

#spell("VENGEANCE OF SPIRITS", 3, cast: "11+")[Remains in play. _Vengeance of Spirits_ is a *hex* spell with a range of 24". All models in the target unit suffer a Strength 1 Hit with the Ignores Armour saves special rule. While the spell is in effect, all models keep suffering Hits at the end of each subsequent Magic phase, with the Strength of these Hits getting increased by 1 every player turn.]

#spell("CURSED PLEDGE", 4, cast: "11+")[_Cursed Pledge_ is a *hex* spell with a range of 24". You may force the unit to do one of the following; make a move as if it were the Remaining Moves sub-phase or shoot with their missile weapons at a unit on their own side, as chosen by the caster. The target can refuse to do either of these things, but if it does, each model in it suffers a Hit which Wounds on a 4+. Saves are taken as normal.]

#spell("HAG'S CURSE", 4, cast: "12+")[Remains in play. _Hag's Curse_ is a *hex* spell with a range of 24". The target suffers \-1 to all their Characteristics (to a minimum of 1). While the spell is in effect, the target suffers an additional \-1 to all their characteristics at the end of each Magic phase.]

#spell("CURSE OF SICKNESS", 4, cast: "15+")[_Curse of Sickness_ is a *direct damage* spell with a range of 24". All models in the unit must pass a Toughness test or suffer one Wound which Ignores Armour saves.]
]
#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Kislevites. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("HOLY AXE OF MISKA", 65)[Requires two hands. The Holy Axe of Miska gives the wielder +2 Strength. In addition, it has the Multiple Wounds (D3) special rule.]

#magic-weapon("WYRMSPIKE", 40)[All attacks made with the Wyrmspike have the Ice Attacks and Multiple Wounds (D3) special rules.]

#magic-weapon("FROST SHARD GLAIVE", 35, type: "Polearm", bound: (level: 1, cast: "6+"))[This is a *hex* spell with a range of 18". The target suffers a -D3 penalty to their Movement (to a minimum of 1) until the start of the caster's next turn.]

#magic-weapon("THE RIME BLADE", 35)[All attacks made with the Rime Blade have the Ice Attacks and the Armour Piercing (2) special rules.]

#magic-weapon("DAZH'S BRAZIER", 25)[All attacks made with Dazh's Brazier have the Flaming Attacks special rule. In addition, the wielder and any unit they are with gain the Regeneration (6+) special rule.]

#magic-weapon("PISTOLS OF PRINCE BOYDINOV", 25, type: "Brace of pistols")[All shots fired automatically Hit and may re-roll failed rolls To Wound.]

#magic-weapon("AXE OF TOR", 20)[All attacks made with this weapon have the Lightning Attacks special rule.]

#magic-weapon("URSUN'S CLAWS", 20, type: "Two hand weapons")[Attacks made with these weapons have the Armour Piercing (1) special rule. In addition, the wielder gains the Frenzy special rule.]
]

#magic-item-section("armour")[
#magic-armour("ARMOUR OF ALEXANDR", 40, type: "Medium armour")[The Armour of Alexandr gives the wearer a Magical Ward (5+). In addition, if an enemy with a Magic Weapon causes a Wound that is saved by either the wearer's armour save or Magical Ward, roll a D6. On a 5+, the opponent's weapon is destroyed.]

#magic-armour("ICE-ARMOUR OF JEKATERINA", 35, only: "Ice Witches and Frost Maidens")[This armour gives the wearer a 2+ Armour save, which cannot be improved by any means. The armour save can never be reduced below 4+. If the save ever fails the armour is destroyed. This armour may be taken by Wizards despite them not normally being able to take armour.]

#magic-armour("IRON ICE ARMOUR", 30, type: "Medium armour")[Enemies in base contact with the wielder are subject to the Always Strikes Last special rule. This has no effect on models with Immunity (Ice Attacks).]

#magic-armour("SHIELD OF SACRIFICE", 30, type: "Shield")[Every time the bearer suffers an unsaved Wound, roll a D6. On a 4+, the Wound is taken by a friendly model in base contact instead.]

#magic-armour("FROST SHARD ARMOUR", 20, type: "Medium armour")[The bearer gains the Immunity (Ice Attacks) and Magic Resistance (2) special rules.]

#magic-armour("WYRM HARNESS", 20, type: "Medium armour")[The wearer of the Wyrm Harness gains a Magical Ward (6+).]

#magic-armour("GREAT BEAR PELT", 15)[The wearer of the Great Bear Belt gains the Natural Armour (5+) special rule.]
]

#magic-item-section("talisman")[
#talisman("THE CROWN OF KISLEV", 40)[Enemies must re-roll all successful to Wound rolls against the wearer.]

#talisman("BLIZZARD BROACH", 35)[As long as they have not joined a unit, the wearer of the Blizzard Broach cannot be charged or targeted by missile attacks or spells from enemies more than 12" away.]

#talisman("BLOOD OF THE MOTHERLAND", 25)[For every unsaved Wound suffered by the bearer or the unit they are with, they gain +1 to their Leadership for the remainder of the turn.]

#talisman("STAR-IRON RING", 20)[The wearer of the Star-Iron Ring gains a Magical Ward (6+) which may be re-rolled.]
]

#magic-item-section("arcane")[
#arcane-item("SCEPTRE OF SHOIKA", 75, type: "Staff")[The Sceptre of Shoika adds a Power and a Dispel dice to the Kislev army in every phase. Once per battle, the wizard can add +1 to a dice used for casting a spell. This can be used to cause Ultimate Power or prevent a Miscast.]

#arcane-item("GASTUVA'S EGG", 50, type: "Charm", one-use: true)[Gastuva's Egg may be used at the start of any turn. Once used, the bearer and any unit they are with gain the Unbreakable special rule and cannot be harmed from any source, but they cannot move for any reason. The effect lasts until the start of your next turn.]

#arcane-item("SNOWFLAKE PENDANT", 40, type: "Relic")[The bearer of the Snowflake Pendant may re-roll 1's when casting spells.]

#arcane-item("MIRROR OF THE ICE QUEEN", 25, only: "Ice Witch or Frost Maiden", type: "Relic")[Every time an enemy model causes an unsaved Wound on the bearer or any unit they are with, the enemy model suffers a Strength 3 Hit.]

#arcane-item("YAKOV'S KVAS", 25, one-use: true)[The kvas may be distributed to one unit joined by the character with Yakov’s Kvas at the start of any turn. Roll a D6 and consult the chart below:

#chart((("D6", "Result"), ("1-2", "The character and unit suffer from Stupidity
for the rest of the game."), ("3-4", "The character and unit are subject to Frenzy
for the rest of the game."), ("5-6", "The character and unit are subject to Hatred
for the rest of the game.")))
]

#arcane-item("STEPPE HUNTER'S HORN", 20, one-use: true)[The Steppe Hunter's Horn may be sounded at the start of any phase. Once used, the bearer and any unit they are with gain the Multiple Wounds (D3) special rule for the remainder of the turn.]

#arcane-item("DAZH'S FLINT", 5)[The model bearing Dazh's Flint gains the Flaming Attacks special rule.]
]

#magic-item-section("standard")[
#magic-standard("BANNER OF THE ORTHODOXY", 35)[The unit carrying this standard gains the Magical Attacks and Mighty Blow (1) special rules.]

#magic-standard("BANNER OF PRAAG", 25)[The unit carrying this standard gains the Immunity (Psychology) and Stubborn special rules once it is below Unit Strength 10.]

#magic-standard("HOLY ICON OF MISKA", 25)[The unit carrying this standard gains +1 to Hit in the first round of close combat.]

#magic-standard("NJEVSKI'S SCREECHING BACK BANNERS", 25, only: "Winged Lancers or Gryphon Legion")[Any unit charged by the unit carrying this standard that chooses to Hold as a charge reaction must take a Panic test with a \-1 Leadership modifier.]

#magic-standard("FATHER NIKLAS' MANTLE", 10)[The unit carrying this standard may re-roll Dangerous Terrain tests.]

#magic-standard("STANDARD OF THE EMPTY STEPPE", 10)[The unit carrying this standard gains the Vanguard special rule.]
]

#magic-item-section("enchanted")[
#enchanted-item("APPLE OF KISLEV", 40, only: "Boyar or Ataman")[The Apple of Kislev increases the Leadership of the owner to 10. In addition, the unit led by the character carrying the Apple can re-roll any Leadership test.]

#enchanted-item("EVER-FULL KOVSH", 35)[The bearer gains a Strength 4 Breath Weapon with the Flaming Attacks special rule.]

#enchanted-item("SAINT ANNUSHKA'S FINGER BONE", 35)[The bearer of Saint Annushka's Finger Bone automatically regains one lost Wound at the start of each turn.]

#enchanted-item("BALALAIKA OF THE ARARI", 25)[The bearer and any unit they are with gain +1 to their Weapon Skill.]

#enchanted-item("BOOTS OF SEVEN LEAGUES", 25, only: "Model on foot")[These boots increase the wearer's Movement value to 10 and give him the Strider special rule. In addition, he may move as if he had the Fly (10) special rule.]
]

= CHARACTERS

#unit("COMMANDERS",
  first: true,
  profiles: (
    (name: "Boyar", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 90),
    (name: "Ataman", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 50),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "By Our Blood, Hatred (Chaos), Glorious Charge",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Light lance +5 points
  - Heavy lance +10 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Shortbow +4 points
  - Pistol +5 points
  - Handgun +7 points
  - Brace of Pistols +7 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Great Bear +40 points
- One Ataman may carry the Battle Standard +25 points
- An Ataman may take Magic Items up to a total of 50 points
- A Boyar may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("ICE WITCHES",
  profiles: (
    (name: "Ice Witch", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
    (name: "Frost Maiden", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Frost Maiden is a Level 1 Wizard. An Ice Witch is a Level 3 Wizard. They use one of the following Lores",
  magic-body: [
of Magic:

- Ice
- Tempest
  ],
  special-rules: "By Our Blood, Hatred (Chaos), Ice Attacks",
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Warhorse +15 points
  - Great Bear +40 points
  - Heavy War Sled (Ice Witch only, replacing the crew) +110 points
- A Frost Maiden may take Magic Items up to a total of 50 points
- An Ice Witch may take Magic Items up to a total of 100 points
  ],
)

#unit("HAGS",
  profiles: (
    (name: "Hag Mother", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
    (name: "Hag Witch", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Hag Witch is a Level 1 Wizard. A Hag Mother is a Level 3 Wizard. They use the Lore of the Hags.",
  special-rules: "By Our Blood, Hatred (Chaos)",
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on a Light War Sled (Hag Mother only, replacing the crew) +60 points
- A Hag Witch may take Magic Items up to a total of 50 points
- A Hag Mother may take Magic Items up to a total of 100 points
  ],
)

#unit("PATRIARCHS",
  profiles: (
    (name: "Supreme Patriarch", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 130),
    (name: "Patriarch", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 90),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "By Our Blood, Hatred (Chaos), Magical Attacks, Magic Resistance (1)",
  special-rules-body: [
- *Battle Prayers of Ursun:* A model with this special rule knows the four Battle Prayers listed below. Unless fleeing, they may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and takes immediate effect. Each prayer lasts until the start of your next turn. A friendly unit can only be under the effect of one Battle Prayer at a time.
  - *Ursun's Roar:* The model and their unit gain the Mighty Blow (1) special rule.
  - *Dazh's Song of Winter Sunlight:* The model and their unit gain +D3 to their Movement.
  - *Salyak's Lullaby:* The model and their unit gain the Regeneration (6+) special rule.
  - *Tor's Battle Hymn:* The model and their unit gain +1 Attack.
- *The Courage of Sacrifice:* A model with this special rule and any unit they join gains the Stubborn special rule as long as they remain in the unit.
  ],
  options: [
- May be mounted on one of the following:
  - Warhorse +15 points
  - Great Bear +40 points
- A Patriarch may take Magic Items up to a total of 50 points
- A Supreme Patriarch may take Magic Items up to a total of 100 points
  ],
)

#unit("SHAMAN",
  profiles: (
    (name: "Shaman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Shaman is a Level 1 Wizard who uses one of the following Lores of Magic:",
  magic-body: [
- Beasts
- Fire
- Life
  ],
  special-rules: "By Our Blood, Hatred (Chaos)",
  options: [
- May take an additional Wizard Level +35 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("RANGER",
  profiles: (
    (name: "Ranger", m: 4, ws: 4, bs: 6, s: 4, t: 4, w: 2, i: 5, a: 2, ld: 8, points: 85),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, longbow",
  special-rules: "By Our Blood, Forest Strider, Hatred (Chaos), Scouts",
  special-rules-body: (
    rule("Heart Strike")[Against Monstrous Infantry, Monstrous Beasts; Monstrous Cavalry, Monstrous Creatures and Monsters, Rangers have the Heroic Killing Blow special rule with their longbow, though armour saves may be taken as normal.],
    rule("Pathfinder")[The Ranger and one friendly Infantry unit may deploy together as Ambushers.],
  ),
  options: [
- May take one of the following:
  - Additional hand weapon +5 points
  - Great weapon +10 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("DROYASKA",
  profiles: (
    (name: "Droyaska", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 2, i: 7, a: 4, ld: 8, points: 110),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  special-rules: "By Our Blood, Hatred (Chaos), Killing Blow, Parry (5+)",
  options: [
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- A Droyaska may never be the Army General.
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

#unit("GREAT BEAR",
  profiles: (
    (name: "Great Bear", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 3, i: 3, a: 3, ld: 6, points: "-"),
  ),
  troop-type: "Monstrous Beast (Ursine)",
  base-size: "50x50 or 50x75",
  special-rules: "Fury of Ursun, Natural Armour (6+)",
  options: [
- May take barding +5 points
  ],
)

= CORE UNITS

#unit("KOSSARS",
  first: true,
  profiles: (
    (name: "Kossar", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 3),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "By Our Blood, Hatred (Chaos), Steady in the Ranks",
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Spears +1 point/model
  - Great weapons +3 points/model
- May choose one of the following:
  - Shortbows +2 points/model
  - Pistols +3 points/model
- May take light armour +0.5 point/model
- May take shields (if armed with a hand weapon or spear) +1 point/model
- May upgrade one Kossar to a Leader +5 points
- May upgrade one Kossar to a Musician +5 points
- May upgrade one Kossar to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("CITY MILITIA",
  profiles: (
    (name: "Militiaman", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 4),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm",
  special-rules: "By Our Blood, Hatred (Chaos)",
  options: [
- May replace polearms with spears & shields free
- May upgrade one Militiaman to a Leader +5 points
- May upgrade one Militiaman to a Musician +5 points
- May upgrade one Militiaman to a Standard Bearer +10 points
  ],
)

#unit("UNGOLS",
  profiles: (
    (name: "Ungol", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50",
  equipment: "Hand weapon",
  special-rules: "By Our Blood, Fast Cavalry, Hatred (Chaos)",
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Shortbows +2 points/model
- May upgrade one Ungol to a Leader +5 points
- May upgrade one Ungol to a Musician +5 points
- May upgrade one Ungol to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("DRUZHINA",
  profiles: (
    (name: "Druzhinnik", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 12),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50",
  equipment: "Hand weapon, light armour, shield",
  special-rules: "By Our Blood, Fast Cavalry, Hatred (Chaos)",
  options: [
- May take light lances +1 point/model
- May take javelins +2 points/model
- May take medium armour +1.5 points/model
- May take barding +1 point/model
- May upgrade one Druzhinnik to a Leader +5 points
- May upgrade one Druzhinnik to a Musician +5 points
- May upgrade one Druzhinnik to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("WINGED LANCERS",
  profiles: (
    (name: "Winged Lancer", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 18),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, medium armour, shield",
  special-rules: "By Our Blood, Fast Cavalry, Glorious Charge, Hatred (Chaos)",
  options: [
- May take pistols +2 points/model
- May upgrade one Winged Lancer to a Leader +5 points
- May upgrade one Winged Lancer to a Musician +5 points
- May upgrade one Winged Lancer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

= SPECIAL UNITS

#unit("KREML GUARD",
  first: true,
  profiles: (
    (name: "Kreml Guard", m: 4, ws: 4, bs: 3, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 8, points: 11),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, medium armour, shield",
  special-rules: "By Our Blood, Hatred (Chaos), Stubborn",
  options: [
- May replace shields with great weapons +2 points/model
- May upgrade one Kreml Guard to a Leader +5 points
- May upgrade one Kreml Guard to a Musician +5 points
- May upgrade one Kreml Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("ICE GUARD",
  profiles: (
    (name: "Ice Guard", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 7),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "By Our Blood, Hatred (Chaos), Ice Attacks, Immunity (Psychology), Magical Attacks, Steady in the Ranks",
  options: [
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Polearms +2 points/model
  - Spears & shields +2 points/model
- May take bows +4 points/model
- May take light armour +0.5 point/model
- May upgrade one Ice Guard to a Leader +5 points
- May upgrade one Ice Guard to a Musician +5 points
- May upgrade one Ice Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("STRELTSI",
  profiles: (
    (name: "Strelets", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 13),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm, handgun",
  special-rules: "By Our Blood, Hatred (Chaos), Steady in the Ranks",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Strelets to a Leader +5 points
- May upgrade one Strelets to a Musician +5 points
- May upgrade one Strelets to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("GRYPHON LEGION",
  profiles: (
    (name: "Gryphon Legionnaire", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 22),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, medium armour, shield",
  special-rules: "By Our Blood, Fast Cavalry, Glorious Charge, Hatred (Chaos), Immunity (Psychology)",
  options: [
- May take pistols +2 points/model
- May take heavy armour +2 points/model
- May take barding +1 point/model
- May upgrade one Gryphon Legionnaire to a Leader +5 points
- May upgrade one Gryphon Legionnaire to a Musician +5 points
- May upgrade one Gryphon Legionnaire to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("CHEKISTS",
  profiles: (
    (name: "Chekist", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 8, points: 13),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50",
  equipment: "Hand weapon, pistol",
  special-rules: "By Our Blood, Fast Cavalry, Hatred (Chaos)",
  special-rules-body: (
    rule("Not A Step Back")[All friendly units within 6" of a unit of Chekists gain the Cold-blooded special rule. If a friendly unit flees within 12" of a unit of Chekists, the Chekists may choose to open fire on that unit with their pistols (the unit still needs to be within range and Line of Sight before they begin their flee move). If they manage to cause a casualty, the unit will rally immediately after making its flee move.],
  ),
  options: [
- May upgrade one Chekist to a Leader +5 points
- May upgrade one Chekist to a Musician +5 points
- May upgrade one Chekist to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("BROTHERHOOD OF THE BEAR",
  profiles: (
    (name: "Ranger Templar", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 17),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50",
  equipment: "Light lance, shield, shortbow",
  special-rules: "Ambushers, By Our Blood, Fast Cavalry, Forest Strider, Hatred (Chaos), Hill Strider",
  options: [
- May take light armour +2 points/model
- May upgrade one Ranger Templar to a Leader +5 points
- May upgrade one Ranger Templar to a Musician +5 points
- May upgrade one Ranger Templar to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SIBYRIAN HUNTERS",
  profiles: (
    (name: "Hunter", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, longbow",
  special-rules: "By Our Blood, Forest Strider, Hatred (Chaos), Scouts, Skirmishers",
  special-rules-body: (
    rule("Trappers")[As soon as an enemy unit enters the same forest or hill as a unit with this special rule, roll a D6. On a 2+, the enemy unit suffers D6 Strength 3 hits. This may cause a Panic test; if failed the unit will immediately stop and flee in the opposite direction.],
  ),
  options: [
- May replace longbows with crossbows +1 point/model
- May take throwing axes +1 point/model
- May upgrade one Hunter to a Leader +5 points
- May upgrade one Hunter to a Musician +5 points
  ],
)

#unit("KVASSNICS",
  profiles: (
    (name: "Kvassnic", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 9),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, fire bombs",
  equipment-body: [
- *Fire Bombs:* Fire bombs have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "4", "Flaming Attacks (non-physical), Ignores Armour Saves, March & Shoot, Quick Shot"))
  ],
  special-rules: "By Our Blood, Hatred (Chaos), Skirmishers",
  special-rules-body: [
- *Drunken Stupor:* At the start of each Kislev turn, roll a D6 for each unit of Kvassnics and consult the following table:

#chart((("D6", "Result"), ("1", "The Kvassnics are subject to Stupidity until the start of your next turn."), ("2-4", "The Kvassnics act as normal until the start of your next turn."), ("5-6", "The Kvassnics are subject to Frenzy until the start of your next turn.")))
  ],
)

#unit("LIGHT WAR SLED",
  compact: true,
  profiles: (
    (name: "Light War Sled", m: 7, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 70),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
    (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "1-3",
  troop-type: "Chariot (Armour Save 6+)",
  crew: "3 Crew (Human)",
  drawn-by: "2 Warhorses (Equine)",
  base-size: "50x100",
  equipment: "Light lance, handgun",
  special-rules: "By Our Blood, Hatred (Chaos)",
)

#unit("HEAVY WAR SLED",
  compact: true,
  profiles: (
    (name: "Heavy War Sled", m: 5, ws: "-", bs: "-", s: 5, t: 5, w: 6, i: "-", a: "-", ld: "-", points: 120),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
    (name: "War Bear", m: "-", ws: 4, bs: 0, s: 5, t: "-", w: "-", i: 3, a: 3, ld: 6, points: ""),
  ),
  troop-type: "Chariot (Armour Save 5+)",
  crew: "3 Crew (Human)",
  drawn-by: "2 War Bears (Ursine)",
  base-size: "50x100 or 60x100",
  equipment: "Light lance, handgun",
  special-rules: "By Our Blood, Fear, Fury of Ursun, Hatred (Chaos), Natural Armour (6+)",
)

#unit("WAR BEARS",
  profiles: (
    (name: "War Bear", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 6, points: 37),
    (name: "Bear Tamer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 10),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Beast (Ursine)",
  handler: "1 Bear Tamer (Human)",
  base-size: "40x40 or 50x50 or 50x75 (War Bears), 20x20 or 25x25 (Bear Tamer)",
  equipment: "Hand weapon (Bear Tamer only)",
  special-rules: "By Our Blood, Fury of Ursun, Hatred (Chaos) (Bear Tamer only), Mixed Unit, Natural",
  special-rules-body: [
*Armour (6+)*
  ],
  options: [
- May take barding +3 points/model
  ],
  notes: [
- One Bear Tamer must be included for every three War Bears in the unit.
  ],
)

#unit("SNOW LEOPARDS",
  compact: true,
  profiles: (
    (name: "Snow Leopard", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 5, points: 22),
  ),
  unit-size: "3-9",
  troop-type: "War Beast (Feline)",
  base-size: "25x50",
  special-rules: "Ambushers, Fear, Natural Armour (6+), Scouts",
)

= RARE UNITS

#unit("WAR BEAR RIDERS",
  first: true,
  profiles: (
    (name: "Winged Lancer", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 52),
    (name: "War Bear", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 6, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Human)",
  mount: "War Bear (Ursine)",
  base-size: "50x50 or 50x75",
  equipment: "Hand weapon, medium armour, shield",
  special-rules: "By Our Blood, Fury of Ursun, Hatred (Chaos), Natural Armour (6+)",
  options: [
- May choose one of the following:
  - Replace shields with polearms free
  - Heavy lances +2 points/model
- May take pistols +2 points/model
- May take heavy armour +6 points/model
- May take barding +3 points/model
- May upgrade one War Bear Rider to a Leader +5 points
- May upgrade one War Bear Rider to a Musician +5 points
- May upgrade one War Bear Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("WAR WAGON",
  profiles: (
    (name: "War Wagon", m: 7, ws: "-", bs: "-", s: 5, t: 5, w: 10, i: "-", a: "-", ld: "-", points: 180),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
    (name: "Warhorse", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Chariot (Armour Save 5+)",
  crew: "6 Crew (Human)",
  drawn-by: "4 Warhorses (Equine)",
  base-size: "50x100 (Warhorses) and 50x100 (War Wagon)",
  equipment: "Hand weapon",
  special-rules: "By Our Blood, Hatred (Chaos).",
  special-rules-body: (
    rule("Mobile Fortress")[At the start of any phase, the War Wagon may elect to fortify itself by releasing the horses (remove these from the unit, keeping only the base of the War Wagon). If they choose to do so, the War Wagon cannot move for the rest of the game, and will be Unbreakable. For purposes of shooting, the Crew can fire all round.],
  ),
  options: [
- The crew may choose one of the following:
  - Shortbows +10 points
  - Crossbows +15 points
  - Handguns +15 points
- The crew may choose one of the following:
  - Flails +12 points
  - Polearms +12 points
  ],
)

#unit("CANNON",
  compact: true,
  profiles: (
    (name: "Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Cannon), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, cannon",
  special-rules: "By Our Blood, Hatred (Chaos)",
)

#unit("URUGAN CANNON",
  compact: true,
  profiles: (
    (name: "Urugan Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Urugan Cannon), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, organ gun",
  special-rules: "By Our Blood, Hatred (Chaos)",
)

#unit("TZAR CANNON",
  profiles: (
    (name: "Tzar Cannon", m: 5, ws: "-", bs: "-", s: 5, t: 5, w: 6, i: "-", a: "-", ld: "-", points: 175),
    (name: "Crew", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: 7, points: ""),
    (name: "War Bear", m: "-", ws: 4, bs: 0, s: 5, t: "-", w: "-", i: 3, a: 3, ld: 6, points: ""),
  ),
  troop-type: "Chariot (Armour Save 4+)",
  crew: "3 Crew (Human)",
  drawn-by: "2 War Bears (Ursine)",
  base-size: "50x100 or 60x100",
  equipment: "Hand weapon, tzar cannon",
  equipment-body: [
- *Tzar Cannon:* A tzar cannon is a mortar that uses the small round template with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-60\"", "5(10)", "Cumbersome, Multiple Wounds (D6)"))

If a misfire is rolled, consult the Black Powder Misfire Chart.
  ],
  special-rules: "By Our Blood, Fear, Fury of Ursun, Hatred (Chaos), Natural Armour (6+)",
)

#unit("ELEMENTAL BEAR",
  profiles: (
    (name: "Elemental Bear", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 10, points: 220),
  ),
  troop-type: "Monster (Animated Construct)",
  base-size: "50x100 or 60x100 or 100x150",
  special-rules: "Animated Construct, Fury of Ursun, Ice Attacks, Magical Attacks, Natural Armour (5+)",
  special-rules-body: (
    rule("Elemental Breath")[This is a Breath Weapon with Strength 4 and the Ice Attacks special rule.],
  ),
)

#unit("FROST WYRM",
  profiles: (
    (name: "Frost Wyrm", m: 6, ws: 5, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: 245),
  ),
  troop-type: "Monster (Draconid)",
  base-size: "50x100 or 60x100 or 100x150",
  special-rules: "Elemental Breath, Ice Attacks, Magical Attacks, Natural Armour (3+).",
  special-rules-body: (
    rule("Elemental Breath")[This is a Breath Weapon with Strength 4 and the Ice Attacks special rule.],
  ),
)

= SPECIAL CHARACTERS

#unit("BORIS URSUS",
  solo: true,
  first: true,
  subtitle: "The Red Tzar",
  profiles: (
    (name: "Boris Ursus", m: 4, ws: 6, bs: 5, s: 5, t: 4, w: 3, i: 5, a: 4, ld: 10, points: 285),
    (name: "Urskin (Great Bear)", m: 6, ws: 5, bs: 0, s: 6, t: 5, w: 3, i: 4, a: 4, ld: 7, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Shield",
  magic-items: (
    rule("Shard Blade")[Magic Weapon. The Shard Blade gives the wielder +2 Strength. Any model who suffers an unsaved Wound must take an immediate Toughness test. If this test is failed, they suffer D3 additional Wounds with no saves allowed.],
    rule("Armour of Ursun")[Magic Armour. Medium Armour. For each Hit caused by enemies in close combat, the wearer may make an additional attack back after his enemies' attacks have been resolved (as long as the wearer is still alive). The wearer may make these bonus attacks even if they have already attacked that phase.],
  ),
  special-rules: "By Our Blood, Hatred (Chaos), Stubborn",
  special-rules-body: (
    rule("Mark of the Bear God")[Any units of Kossars in the army may be given the Mark of the Bear God at a cost of +1 point/model. Models with the Mark of the Bear God gain the Devastating Charge special rule.],
  ),
  options: [
- May be mounted on Urskin +65 points
  ],
  notes: [
- Boris Ursus must be the Army General.
  ],
)

#unit("TZARINA KATARIN BOKHA",
  solo: true,
  subtitle: "The Ice Queen, Bringer of Winter",
  profiles: (
    (name: "Tzarina Katarin", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 10, points: 380),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic: "Tzarina Katarin is a Level 4 Wizard who uses the Lore of Ice.",
  magic-items: (
    rule("Fearfrost")[Magic Weapon. Fearfrost grants the wielder the Ignores Armour Saves and Killing Blow special rules.],
    rule("The Crystal Cloak")[Talisman. The Crystal Cloak grants the Tzarina a Magical Ward (4+). In addition, all attacks directed against the Tzarina in close combat suffer a \-1 penalty to both To Hit and To Wound.],
  ),
  special-rules: "By Our Blood, Hatred (Chaos), Ice Attacks, Loremaster (Lore of Ice)",
  special-rules-body: (
    rule("Beloved of Kislev")[Any friendly unit joined by the Tzarina becomes Stubborn, and all Kislevite units within 12" of the Tzarina may re-roll failed Psychology tests.],
    rule("Protectors of the Khan-queen")[If the Tzarina joins a unit of Gryphon Legion, the unit has the Cold-blooded special rule when taking Break tests.],
  ),
  options: [
- May be mounted on one of the following:
  - Warhorse +15 points
  - Great Bear +40 points
  - Heavy War Sled (replacing the crew) +110 points
  ],
  notes: [
- Tzarina Katarin must be the Army General.
  ],
)

#unit("KOSTALTYN",
  solo: true,
  subtitle: "Supreme Patriarch of Ursun, Leader of the Great Orthodoxy",
  profiles: (
    (name: "Kostaltyn", m: 4, ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 170),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Brazier Mace of Ursun")[Magic Weapon. Flaming Attacks. For each Wound suffered during the game from his starting number of Wounds, Kostaltyn gains +1 Strength and the Armour Piercing (1) special rule.],
  ),
  special-rules: "Battle Prayers of Ursun (see Patriarchs), By Our Blood, The Courage of Sacrifice (see",
  special-rules-body: [
Patriarchs)*, Frenzy, Magic Resistance (1), Hatred (Chaos)*

- *Blaze of Devotion:* Any unit joined by Kostaltyn gains the Flaming Attacks special rule and may re-roll failed Break tests.
- *Ursun's Ward:* When Kostaltyn is down to two Wounds, he gains the Regeneration (5+) special rule. When he is down to one Wound, he gains the Regeneration (3+) special rule. Roll each To Wound roll against Kostaltyn separately.
  ],
  options: [
- May be mounted on one of the following:
  - Warhorse +15 points
  - Great Bear +40 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("YURI BARKHOV",
  solo: true,
  subtitle: "Prince of Kislev",
  profiles: (
    (name: "Yuri Barkhov", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 185),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Medium armour, shield",
  magic-items: (
    rule("Wolfbane")[Magic Weapon. Bound Spell. This contains the _Urannon's Thunderbolt_ spell from the Lore of Heavens. In addition, Wolfbane gives the wielder +1 Attack.],
  ),
  special-rules: "By Our Blood, Hatred (Chaos), Heroic Killing Blow, Mighty Blow (1)",
  options: [
- May be mounted on one of the following:
  - Warhorse +15 points
  - Great Bear +40 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("TZAR SALTAN",
  solo: true,
  subtitle: "The Bitter Ruler of Praag",
  profiles: (
    (name: "Tzar Saltan", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 190),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Shield",
  magic-items: (
    rule("The Black Blade")[Magic Weapon. All attacks made with the Black Blade gain +1 Strength. In addition, enemy models attempting to strike the wielder in close combat suffer \-1 To Hit.],
    rule("Armour of Praag")[Magic Armour. Medium Armour. The Armour of Praag gives the wearer +1 to their Toughness.],
  ),
  special-rules: "By Our Blood, Immunity (Psychology)",
  special-rules-body: (
    rule("Bitter Hatred")[Saltan has the Hatred special rule. When fighting models from _Warriors of Chaos_, _Daemons of Chaos_ or _Beastmen_, Tzar Saltan may re-roll all failed rolls to hit, not just the first turn. He must always issue a challenge to any characters in the unit. If challenged by a character from any of the above armies, he must accept. When fighting against characters from the above armies in a challenge, Saltan gets a +1 Strength bonus.],
  ),
  options: [
- May be mounted on one of the following:
  - Warhorse +18 points
  - Great Bear +48 points
  ],
)

#unit("MOTHER OSTANKYA",
  solo: true,
  subtitle: "The Crone of the Forest",
  profiles: (
    (name: "Mother Ostankya", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 9, points: 285),
    (name: "Chicken-Legged Hut", m: 6, ws: 3, bs: 0, s: 6, t: 6, w: 10, i: 1, a: 3, ld: 10, points: ""),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25 (Mother Ostankya), 50x100 or 60x100 or 100x150 (Chicken-Legged Hut)",
  equipment: "Hand weapon",
  magic: "Mother Ostankya is a Level 4 Wizard who uses the Lore of the Hags. In addition to her other spells, she",
  magic-body: [
knows the following:

- *Spirit Bear:* Level 4, Cast on 12+. _Spirit Bear_ is a *magic missile* with a range of 18" that causes 2D6 Strength 5 Hits.
  ],
  magic-items: [
- *Cauldron of Power:* Arcane Item. Relic. This item adds +6" to the range of all of Mother Ostankya's spells (excluding auras).
- *Crown of Claws*: Talisman. This item give all friendly units within 6" a Magical Ward (5+) against missile attacks.
  ],
  special-rules: "By Our Blood, Fear, Hatred (Chaos)",
  special-rules-body: (
    rule("Gulyas")[Mother Ostankya and any unit joined by her have the Regeneration (6+) special rule.],
  ),
  upgrades: (
    rule("Chicken-Legged Hut")[The Chicken-Legged Hut is a Monster (Animated Construct) with the Animated Construct special rule. It must be deployed within 6" of Baba Yaga, but otherwise acts as its own individual unit.],
  ),
  options: [
- May be mounted on one of the following:
  - Flying Mortar & Pestle +25 points
  - Light War Sled (replacing the crew) +40 points
- May be accompanied by the Chicken-Legged Hut +200 points
  ],
  notes: [
- The Flying Mortar & Pestle gives Baba Yaga the Fly (10) special rule.
  ],
)

#unit("IGOR THE TERRIBLE",
  solo: true,
  subtitle: "Tyrant Tzar of Kislev",
  profiles: (
    (name: "Igor the Terrible", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 150),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: [
- *Blood Edge*: Magic Weapon. At the start of your Magic phase, all enemy models within 6" of Igor must roll a D6; for each natural 6 rolled, they suffer one Wound that Ignores Armor Saves.
  ],
  special-rules: "By Our Blood, Hatred",
  special-rules-body: (
    rule("Tyrant")[All friendly units within 12" of Igor have the Cold-blooded special rule.],
  ),
  options: [
- May be mounted on a Warhorse +12 points
- May take Magic Items up to a total of 75 points
  ],
  notes: [
- Igor the Terrible must be the Army General.
  ],
)

#unit("MISKA THE SLAUGHTERER",
  solo: true,
  subtitle: "Khan-Queen of Kislev",
  profiles: (
    (name: "Miska the Slaughterer", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 3, ld: 9, points: 325),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic: "Miska the Slaughterer is a Level 3 Wizard who uses the Lore of Ice.",
  magic-items: (
    rule("Fearfrost")[Magic Weapon. Fearfrost grants the wielder the Ignores Armour Saves and Killing Blow special rules.],
    rule("Cloak of the Great Bear")[Talisman. This item gives the wearer the Natural Armour (5+) special rule. For each successful unsaved Wound caused by the wearer in Close Combat, they may make an extra attack immediately. These additional attacks do not generate further attacks.],
  ),
  special-rules: "By Our Blood, Frenzy, Hatred (Chaos), Ice Attacks",
  options: [
- May be mounted on a Heavy War Sled (replacing the crew) +100 points
  ],
  notes: [
- Miska the Slaughterer must be the Army General.
  ],
)

#unit("NARYSKA LEYSA",
  solo: true,
  subtitle: "The Golden Knight",
  profiles: (
    (name: "Naryska Leysa", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 180),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Heavy armour, shield",
  magic-items: (
    rule("Ursun's Claw")[Magic Weapon. All attacks made with this weapon have +1 Strength as well as the Armour Piercing (2) and Ice Attacks special rules.],
    rule("Golden Wafers")[Talisman. This item gives the wielder a Magical Ward (6+) and the Magical Resistance (2) special rule.],
    rule("Totem of Ursus")[Enchanted Item. Magical Weapons in base contact with the bearer of this item lose all their special rules and count as mundane versions of their type.],
  ),
  special-rules: "By Our Blood, Hatred (Chaos), Hold Your Ground (6)",
  special-rules-body: (
    rule("Tzarina's Guardian")[If Naryska Leysa is in the same unit as Tzarina Katarin, Tzarina Katarin gains a 3+ 'Look Out, Sir!' save in close combat with any Hits being allocated against Naryska Leysa instead.],
  ),
  options: [
- May be mounted on a Warhorse +12 points
  ],
)

#unit("TORDIMIR LUBOVASYN",
  solo: true,
  subtitle: "Commander of the Gryphon Legion",
  profiles: (
    (name: "Tordimir Lubovasyn", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 160),
    (name: "Seraphima (Warhorse)", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Seraphima (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Medium armour, shield",
  magic-items: [
- *The Gryphon Lance*: Magic Weapon. Heavy lance. The wielder gains the Heroic Killing Blow and Armour Piercing (1) special rules when he charges.
- *Gryphon Wing*: Talisman. The Gryphon Wing gives Tordimir a Magical Ward (5+). In addition, any unit led by him automatically passes any Leadership test to disengage from combat with the Glorious Charge special rule.
  ],
  special-rules: "By Our Blood, Glorious Charge, Hatred (Chaos), Immunity (Psychology)",
  special-rules-body: (
    rule("Commander of the Gryphon Legion")[Tordimir must join a unit of Gryphon Legion and may never leave this unit during the game. This unit gains the Stubborn special rule. In addition, units of Gryphon Legion counts as Core Units instead of Special if Tordimir is included in your army.],
  ),
)

#unit("STEPAN RASIN",
  solo: true,
  subtitle: "Clan Chief of the Ungols",
  profiles: (
    (name: "Stepan Rasin", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 100),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50",
  equipment: "Hand weapon",
  magic-items: (
    rule("The Silver Shard")[Magic Weapon. Shortbow. Any shot with this bow that hits is multiplied into D6 hits.],
  ),
  special-rules: "By Our Blood, Hatred (Chaos), Strider",
  special-rules-body: (
    rule("Lucky")[Stepan Rasin is allowed to re-roll any one dice To Hit or To Wound per phase.],
  ),
  notes: [
- Stepan Rasin may only join units of Ungols.
  ],
)

#unit("ILJA OF MUROVA",
  solo: true,
  subtitle: "The Great Bear",
  profiles: (
    (name: "Ilja of Murova", m: 4, ws: 5, bs: 5, s: 5, t: 5, w: 3, i: 5, a: 3, ld: 8, points: 130),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, longbow, throwing axes",
  special-rules: "By Our Blood, Hatred (Chaos), Heart Strike (see Ranger), Scouts, Trapper (see Sibyrian",
  special-rules-body: [
Hunters)

- *Hugely Resilient:* Whenever Ilja is reduced to 0 Wounds, roll a D6. On a 1\-3 he is killed as normal, but on a 4+ he completely ignores the damage and remains at 1 Wound. This rule has no effect against attacks that kill him outright.
- *Strength of the Great Bear:* Ilja may forfeit his normal attacks in favour of doing a special attack. This attack has the Multiple Wounds (D6) and Ignores Armour Saves special rules.
  ],
)

#unit("ULRIKA MAGDOVA STRAGHOV",
  solo: true,
  profiles: (
    (name: "Ulrika Magdova Staghov", m: 6, ws: 6, bs: 5, s: 5, t: 4, w: 2, i: 7, a: 3, ld: 9, points: 220),
  ),
  troop-type: "Infantry (Special Character, Vampire).",
  base-size: "20x20 or 25x25",
  magic: "Ulrika Magdova Straghov is a Level 1 Wizard who chooses spells from the Lore of Shadows.",
  equipment: "Hand weapon, longbow",
  magic-items: (
    rule("Silver Dagger")[Magic Weapon. Additional hand weapon. All attacks made with this weapon have the Ignores Armour Saves special rule, and also ignore all Magical Ward saves.],
    rule("Blood Shard")[Arcane Item. Relic. For every unsaved Wound Ulrika causes in close combat, she receives a +1 casting bonus in her next Magic Phase, up to a total of +3.],
  ),
  special-rules: "By Our Blood, Hatred (Chaos)",
  special-rules-body: (
    rule("The Dancing Blade")[Ulrika may re-roll failed rolls To Hit in close combat, and enemies targeting her in close combat must re-roll successful rolls To Hit.],
    rule("The Red Thirst")[Whenever Ulrika kills one or more enemy models in close combat, roll a D6 at the end of the Close Combat phase. On the roll of a 5+, the model recovers a single Wound lost earlier in the battle. This does not work against models with the Animated Construct, Daemonic, Forest Spirit or Vampiric special rules.],
    rule("Vampiric")[Ulrika has the Fear and Immunity (Psychology) special rules. In addition, models suffer a \-1 penalty To Wound rolls against her, unless they are using Magical Attacks or Flaming Attacks. However, she treats all rivers as Deadly Terrain unless she is mounted.],
  ),
  options: [
- May be mounted on a Warhorse +15 points
  ],
  order: ("troop-type", "base-size", "magic", "equipment", "magic-items", "special-rules", "options"),
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
