// Hobgoblins 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "hobgoblins",
  army: "Hobgoblins",
  version: "3.0",
  layout: "army",
  cover: "covers/hobgoblins.png",
  align: "neutral",
)

#show: book.with(title: "Warhammer Armies Project — Hobgoblins 3.0")

#cover(
  title: "Hobgoblins",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/hobgoblins.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Hobgoblins*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a Hobgoblin army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Hobgoblin units, and these are detailed here.

#namecost("BACKSTABBERS", "")

A unit with this special rule that successfully restrains from pursuing after breaking an enemy unit in close combat causes D6 Strength 3 hits on the fleeing unit for every complete rank the Hobgoblin unit has (up to a maximum of 3). Resolve any casualties before moving the fleeing unit.

#namecost("COWARDLY DESPOILERS", "")

Models with this special rule gain +1 To Hit in the first round of combat if they successfully charge an enemy in the rear or flank.

#namecost("CUNNING RETREAT", "")

When an enemy unit declares to fire at a unit with this special rule in their Shooting phase, it may choose to make a Feigned Flight move directly away from the enemy unit shooting at it. Once the unit has completed its move, the enemy unit may continue with its shooting as declared (provided they are still in range).

#namecost("DED SHOOTY", "")

Mounted models with this special rule do not suffer penalties To Hit for Moving and Shooting and may Volley Fire even while moving. In addition, when using Fire and Flee, the unit can still use their Swiftstride special rule.

#namecost("HIIYAAARRGHH!", "")

If a model with this special rule is your Army General, then once per game he may call a Hiiyaaarrghh! The Hiiyaaarrghh! may only be called if the model first declares a charge, and must be announced immediately after making the charge declaration, before any charge reaction takes place. In the turn a Hiiyaaarrghh! is called, every friendly Hobgoblin unit within 12" add +D3" to their charge move this turn. The Army General himself, and any unit he joins, adds +D6 to their charge move instead. In addition, every friendly unit within 12" of the Army General add their rank bonus to the result rolled on the Treacherous Gits table (to a maximum of 6).

#namecost("QUELL TREACHERY", "")

Any friendly unit joined by a model with this special rule may re-roll failed Treachery tests.

#namecost("TREACHEROUS GITS", "")

Units with this special rule must test for Treachery in the Charge sub-phase after all normal charges has been declared during each of your turns, by every unit that is subject to Treachery, unless any of the following applies:

- The unit has less than 5 models.
- The unit has declared a charge this turn.
- The unit is engaged in close combat.
- The unit is garrisoning a building.
- The unit is fleeing or currently off the battlefield.

Roll a D6 for each eligible unit. If the dice roll is a 2 or more, the unit behaves normally this turn. If the roll is a 1, however, the unit has failed its Treachery test and must roll on the Treachery table below:

#chart((("D6", "Result"), ("1", "Traitor! If the unit is armed with missile
weapons, they will immediately resolve a
round of shooting against the nearest friendly
unit within Line of Sight. If the unit does not
have any missile weapons or if there are no
friendly units within Line of Sight, they will
inflict D3 Strength 3 Hits for every complete
rank the unit has on themselves instead (any
Wounds suffered will not cause a Panic test).
The unit may not move, shoot or cast spells
this turn."), ("2", "We'll get a better view from further back!
The unit must immediately take a Panic test.
If it's passed, the unit may not voluntarily
move this turn."), ("3-4", "We Stayz 'Ere! The unit may not voluntarily
move this turn."), ("5", "Bloody Murder! The unit suffers D3
Strength 3 Hits for every complete rank the
unit has (any Wounds suffered will not cause
a Panic test). The unit may move as normal
afterwards."), ("6", "Cut 'em good! Pivot the unit on the spot to
face the nearest visible enemy unit, and then
make a full normal move in a straight line
towards it. If there is no visible enemy, the
unit must move straight ahead instead. If it is
impossible for the unit to pivot to face the
closest enemy, it will pivot towards it as far
as it can, and will then move as far forward
as it can while still keeping the enemy within
its forward arc. After the move is complete
the unit must declare a charge against the
closest visible enemy unit, if it is possible to
do so. If the unit cannot declare a charge then
it may carry on with the rest of its turn
normally, as if it had not yet moved this turn.")))

#lore("LORE OF DA HIIYAAARRGHH!")[

#spell("SNEAKY STEALIN'", "Lore Attribute")[When a Spell of da Little Waaagh! is successfully cast, and after its effects have been resolved, roll a D6. On a 6 you may take one dispel dice from the opponent's dispel pool and add it to your power pool. If there are no dice left in the opponent's dispel pool, then this lore attribute has no effect.]

#spell("VINDICTIVE GLARE", "Signature Spell", cast: "6+")[_Vindictive Glare_ is a *magic missile* with a range of 24" and causes 2D6 Strength 3 hits.]

#spell("OI! GERROFF!", 1, cast: "5+")[_Oi! Gerroff!_ is a *magic missile* with a range of 18". The target is 'pushed' 2D3" directly away from the caster (it does not change facing). If the target comes into contact with impassable terrain or another unit it stops 1" away and both units suffer D6 Strength 3 hits. Targets that cannot move are not pushed back at all, but still suffer D6 Strength 3 hits.]

#spell("SNEAKY STABBIN'", 1, cast: "5+")[_Sneaky Stabbin'_ is an *augment* spell with a range of 24" that targets Hobgoblins. The target unit's close combat attacks have the Armour Piercing (1) special rule until the start of the caster's next Magic phase. In addition, while the spell is in effect, they can re-roll all failed To Hit and To Wound rolls when attacking in close combat against an enemy's flank or rear.]

#spell("BRAIN BURSTA", 1, cast: "6+")[_Brain Bursta_ is a *direct damage* spell with a range of 18" that targets a single enemy model (even a character in a unit). The target suffers a Strength 5 hit.]

#spell("MORK-KHAN SAVE UZ!", 2, cast: "6+")[_Mork-khan Save Uz!_ is an *augment* spell with a range of 24" that targets Hobgoblins. The target unit gains the Magic Resistance (5) special rule until the start of the caster's next Magic phase.]

#spell("GAZE OF GORK-KHAN", 2, cast: "8+")[_Gaze of Gork_ is a *direct damage area* spell that uses the line template. Place it 24" in length, directly away from the caster's front arc. Any model whose base falls under the line suffers a Strength 3 hit with the Ignores Armour Saves special rule.]

#spell("GORK-KHAN'LL FIX IT", 2, cast: "8+")[_Gork-khan'll Fix It_ is a *hex* spell with a range of 24". The target unit must re-roll any of its To Hit, To Wound and armour save rolls of 6 (in shooting and close combat) until the start of the caster's next Magic phase.]

#spell("THE HAND OF GORK-KHAN", 3, cast: "8+")[_The Hand of Gork-khan_ is a *conveyance* spell with a range of 24". The target is immediately picked up and may be moved to any point on the battlefield within 4D6" of its original position, just like a summoning spell.]

#spell("ITCHY NUISANCE", 3, cast: "8+")[_Itchy Nuisance_ is a *hex* spell with a range of 24". Roll a D6. The target unit immediately reduces its Movement and Initiative by this number (to a minimum of 1), until the start of the caster's next Magic phase.]

#spell("SNEAKY DISTRACTION", 3, cast: "8+")[_Sneaky Distraction_ is a *hex aura* with a range of 12". The targets suffer \-1 To Hit with missile attacks and in close combat until the start of the caster's next Magic phase.]

#spell("NIKKIT! NIKKIT!", 4, cast: "11+")[_Nikkit! Nikkit!_ is a *direct damage* spell with a range of 12" that targets a single enemy character (even a character in a unit). If the target has one or more magic items, randomly select one of them and roll a D6 – that item is stolen on a 3+. If the caster does not already have a magic item of this type they can now use it, otherwise it is destroyed. In addition, the target suffers D3 Strength 4 Hits which Ignores Armour Saves.]

#spell("THE GREAT GREEN SPITE", 4, cast: "12+")[_The Great Green Spite_ is a *direct damage* spell with a range of 24". The target enemy unit suffers D6 Strength 4 hits with the Armour Piercing (1) special rule for every 10 points of Unit Strength the Wizard and any unit they are with have, up to a maximum of 4D6.]

#spell("MORK-KHAN WANTS YA!", 4, cast: "13+")[_Mork-khan Wants Ya!_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). The target suffers D3 Strength 10 hits.]
]
#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Hobgoblins. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("LIGHTNING SPEAR", 50, type: "Light lance/spear")[All attacks made with this weapon have the Lightning Attacks special rule. On the round that the wielder of the Lightning Spear charges, for each successful Wound made with this weapon it strikes the model behind the hit model with an attack at \-1 Strength. If this attack wounds, then the model behind the second wounded model is struck with an attack at an additional \-1 Strength. This will continue until you fail to wound a model.]

#magic-weapon("AXE HEADROOM", 40, type: "Great weapon")[All attacks made with this weapon have the Killing Blow and Ignores Armour Saves special rule.]

#magic-weapon("THE BLACK BOW", 35, type: "Bow")[This weapon gives the wielder the Sniper special rule. Any model hit by the Black Bow must re-roll successful armour saves.]

#magic-weapon("COMET BOW", 25, type: "Bow")[Each time the wielder of this bow Hits their target, all other friendly units targeting the same unit this Shooting phase receive +1 To Hit.]

#magic-weapon("SERPENT'S FANG", 25)[All attacks made with this weapon are considered to be made at 1 Strength higher than the target’s Toughness. This also affects armour saves.]

#magic-weapon("WARPSTONE SCIMITAR", 25)[This weapon gives the wielder Poisoned Attacks. In addition, any enemy model in base contact with the wielder at the end of the close combat phase must pass a Toughness test or suffer a single Wound which Ignores Armour save. However, the wielder must roll a D6 at the start of each of their turns. On a roll of 1 they suffer a Wound which Ignores Armour saves.]

#magic-weapon("ZANZILL'S THREE-SECTION STAFF", 25, type: "Polearm")[This weapon gives the wielder +2 Attacks. However, if a 1 is rolled To Hit, the hit is resolved against the wielder rather than the opponent.]

#magic-weapon("OUTRIDER'S MACE", 20)[Attacks made with this weapon have the Strength Bonus (1) and Armour Piercing (1) special rules, and their effects are doubled on turns during which the wielder successfully charges an enemy in the flank or rear.]
]

#magic-item-section("armour")[
#magic-armour("WOLF-HOWL HELM", 45)[The Helm gives the bearer a 6+ armour save and the Fear special rule. In addition, enemies must re-roll successful To Hit roll against the wearer in close combat.]

#magic-armour("ARMOUR OF THE WIND FORTRESS", 30, type: "Medium armour")[Once each turn, at any time during the turn, including before or after moving, the wearer of the Armour of the Wind Fortress may be placed anywhere within 6" of their initial position. The model may be placed facing any direction at its new location. This ability may not be used to enter or leave combat.]

#magic-armour("SHIELD OF THE INHOSPITABLE STEPPES", 30, type: "Shield")[Enemy models attempting to strike the bearer in close combat suffer a \-1 penalty to their Weapon Skill and Strength.]

#magic-armour("HIDE OF THE FALLEN TYRANT", 20, type: "Light armour")[The wearer of this armour gains +1 to their Toughness.]

#magic-armour("SCORPION SHIELD", 15, type: "Shield")[Enemy models suffer a Strength 4 hit with the Poisoned Attacks and Killing Blow special rules for each To Hit roll of 1 against the bearer in close combat.]

#magic-armour("SABRETUSK CLAW GAUNTLETS", 10)[These gauntlets give the bearer a 6+ armour save and the Devastating Charge special rule.]
]

#magic-item-section("talisman")[
#talisman("LUCKY'S PAW", 45)[The bearer of Lucky’s Paw may re-roll failed Armour and Ward saves.]

#talisman("CRIMSON JADE PENDANT", 30)[All enemies targeting the wearer in close combat suffer -D3 to their Attacks (to a minimum of 0).]

#talisman("WYRDSTONE CROWN", 20)[The Wyrdstone Crown grants the wearer a Magical Ward (4+). If the result is a 1 when rolling the save, the bearer suffers a permanent \-1 penalty to his Leadership.]

#talisman("SPIRIT AMULET", 15)[The wearer of this amulet gains a Magical Ward (5+) after suffering their first Wound. This has no effect against Attacks that would instantly kill the wearer.]

#talisman("SPIDER SILK SHIRT", 10)[The wearer gains a Magical Ward (3+) against missile attacks with Strength 4 or lower.]
]

#magic-item-section("arcane")[
#arcane-item("FENDRIZZ' ORB OF THEFT", 50)[The bearer of this Orb can remove 1 of the enemy’s Power dice and add it to their own Dispel dice pool.]

#arcane-item("SPIRIT TOTEM STAFF", 40)[The bearer may re-roll failed channelling rolls.]

#arcane-item("CLOAK OF SORCERY", 35)[The wearer of the Cloak of Sorcery gains +1 Power Dice. In addition, there is no limit on the maximum amount of dice they are allowed to use to cast spells.]

#arcane-item("STEALER OF THUNDER", 25)[Whenever the Wizard carrying this item successfully dispels a spell, they may immediately attempt to channel Dispel Dice equal to the number of dice used to cast the spell (including any bonus dice used).]

#arcane-item("VAZZAK'S STAFF OF PROCRASTINATION", 20)[At the end of each Magic phase the wielder can choose to save 1 unused Power or Dispel dice and use in the next turn.]

#arcane-item("TELLING BONES", 10, one-use: true)[The wizard can reroll a single dice when casting or dispelling a spell.]
]

#magic-item-section("enchanted")[
#enchanted-item("EVERSHIFTING MAP", 30)[The model carrying the Evershifting Map and one unit they must be assigned to can deploy as Scouts.]

#enchanted-item("DEATHSEEKER GEM", 25)[The model carrying this item gains the Frenzy special rule. They can never lose their Frenzy, and gain+D3 Attacks rather than just 1.]

#enchanted-item("SCROLL OF TAUNTS", 25, one-use: true)[This item can be used in the enemy's Charge sub-phase. When used, all enemy units within charge range of the bearer must pass a Leadership test or be forced to declare charge against them.]

#enchanted-item("BAG O' SNEAKY TRICKS", 20)[At the start of the game, roll a D6 and consult the following chart to determine what the item retrieved for that battle actually does:

#chart((("D6", "Result"), ("1", "Worthless Scrap: The item does nothing."), ("2", "Red Gem: The item grants the bearer the
Flaming Attacks and Immunity (Flaming
Attacks) special rules."), ("3", "Protective Amulet: The item grants a Ward
save (6+)."), ("4", "Obsidian Bracelet: The item grants the Magic
Resistance (2) special rule."), ("5", "Trollbone Torc: The item grants the
Regeneration (4+) special rule."), ("6", "Daemon Skull: The item grants the bearer +1
Strength as well as the Magical Attacks and
Magical Ward (5+) special rules.")))
]

#enchanted-item("THE HIDDEN SHEATH", 20)[On any turn that the model equipped with the Hidden Sheath enters a challenge, they get to make one extra round of attacks against their opponent before all other attacks are made.]

#enchanted-item("YATZSUP'S THUMB RING", 10)[The wearer ignores all To Hit penalties with missile weapons.]

#enchanted-item("BLOOD DEBT TOKEN", 5, one-use: true)[This item may be used whenever the bearer and any unit they are with fails a Treacherous Gits test. Roll a D6; on a 2+ they pass the Treacherous Gits test.]
]

#magic-item-section("standard")[
#magic-standard("STANDARD OF THE GREAT KHAN", 55)[The unit carrying this standard gains +D3 to its combat resolution. In addition, all Hobgoblins within 12" of this banner may re-roll failed Treacherous Gits tests.]

#magic-standard("SPIRIT BANNER", 50, one-use: true)[The banner may be activated at the start of any of your turns. For the remainder of the turn, all models in the unit gains the Ethereal special rule.]

#magic-standard("LAUGHING SKULL BANNER", 40)[All enemy units within 12" of this standard suffer \-1 to their Leadership.]

#magic-standard("WAR BANNER OF MORK-KHAN", 40)[A unit carrying this magic standard has the Hatred and Fear special rules.]

#magic-standard("TAUNTING EFFIGY", 35)[All enemy units within charge range of this unit at the start of their Compulsory Moves sub-phase must pass a Leadership test or be forced to declare a charge against it. This has no effect on models with Immunity (Psychology).]

#magic-standard("STANDARD OF THE DEVOURING WOLF", 30)[The unit carrying this standard gains the Devastating Charge special rule.]

#magic-standard("WINDRIDER BANNER", 30)[The unit carrying this standard gains a Magical Ward (4+) against all missile attacks with Strength 4 or less.]

#magic-standard("STANDARD OF THE OPEN STEPPE", 25)[The unit carrying this standard may add +D6" to their charge range.]

#magic-standard("BANNER OF THE GREAT WOLF", 25)[All mounts in a unit carrying this banner gain +1 to their Strength.]

#magic-standard("CRAVEN BANNER", 10)[The unit carrying this standard may re-roll its Flee distance (before your opponent rolls their Charge/Pursuit distance).]
]

= Characters

#unit("WARLORDS",
  first: true,
  profiles: (
    (name: "Khan", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 8, points: 70),
    (name: "Orlok", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: 40),
  ),
  troop-type: "Infantry (Character, Hobgoblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Backstabbers, Cowardly Despoilers, Ded Shooty, Hiiyaaarrghh!, Quell Treachery",
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May take a shortbow +5 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May take a shield +3 points
- May be mounted on one of the following:
  - Giant Wolf +15 points
  - Snarlfang +40 points
  - Wolf Chariot (replacing one of the crew) +45 points
- One Orlok may carry the Battle Standard +25 points
- An Orlok may take Magic Items up to a total of 50 points
- A Khan may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("SHAMANS",
  profiles: (
    (name: "Great Shaman", m: 4, ws: 4, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 2, ld: 7, points: 155),
    (name: "Shaman", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 2, a: 1, ld: 6, points: 60),
  ),
  troop-type: "Infantry (Character, Hobgoblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "A Shaman is a Level 1 Wizard. A Great Shaman is a Level 3 Wizard. They use the Lore of da Hiiyaaarrghh!",
  special-rules: "Backstabbers, Cowardly Despoilers",
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Giant Wolf +15 points
  - Snarlfang +40 points
  - Corpseripper Vulture (Great Shaman only) +175 points
- May take Magic Items up to a total of 100 points
- A Shaman may take Magic Items up to a total of 50 points
- A Great Shaman may take Magic Items up to a total of 100 points
  ],
)

#unit("THROAT-SLASHER",
  profiles: (
    (name: "Throat-Slasher", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 7, points: 100),
  ),
  troop-type: "Infantry (Character, Hobgoblin)",
  equipment: "Two hand weapons, throwing weapons",
  special-rules: "Backstabbers, Cowardly Despoilers, Dodge (5+), Hidden, Poisoned Attacks, Scouts",
  options: [
- May take Magic Items up to a total of 50 points
  ],
)

= CHARACTER MOUNTS

#unit("GIANT WOLF",
  first: true,
  profiles: (
    (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Canine)",
  base-size: "25x50",
  options: [
- May take barding +5 points
  ],
)

#unit("SNARLFANG",
  profiles: (
    (name: "Snarlfang", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 4, points: "-"),
  ),
  troop-type: "Monstrous Beast (Canine)",
  base-size: "50x75",
  options: [
- May take barding +5 points
  ],
)

= CORE UNITS

#unit("CUTTHROATS",
  first: true,
  profiles: (
    (name: "Cutthroat", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 3.5),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Hobgoblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shield",
  special-rules: "Backstabbers, Cowardly Despoilers, Treacherous Gits",
  options: [
- May take spears +0.5 point/model
- May take throwing weapons +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Cutthroat to a Leader +5 points
- May upgrade one Cutthroat to a Musician +5 points
- May upgrade one Cutthroat to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ARCHERS",
  profiles: (
    (name: "Archer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 4.5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Hobgoblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, shortbow",
  special-rules: "Backstabbers, Cowardly Despoilers, Treacherous Gits",
  options: [
- May take light armour +0.5 point/model
- May upgrade one Archer to a Leader +5 points
- May upgrade one Archer to a Musician +5 points
- May upgrade one Archer to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("WOLF RAIDERS",
  profiles: (
    (name: "Wolf Raider", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 9),
    (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Hobgoblin)",
  mount: "Giant Wolf (Canine)",
  base-size: "25x50",
  equipment: "Hand weapon",
  special-rules: "Backstabbers, Cowardly Despoilers, Cunning Retreat, Ded Shooty, Fast Cavalry, Treacherous Gits",
  options: [
- May take light lances +1 point/model
- May take shortbows +1 point/model
- May take light armour +1 point/model
- May take shields +0.5 point/model
- May be upgraded to Ambushers +1 point/model
- May upgrade one Wolf Raider to a Leader +5 points
- May upgrade one Wolf Raider to a Musician +5 points
- May upgrade one Wolf Raider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("KHARASH",
  profiles: (
    (name: "Kharash", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: 2),
    (name: "Slavedriver", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 2, ld: 6, points: 10),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  handler: "Slavedriver (Hobgoblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Expendable, Mixed Unit",
  special-rules-body: (
    rule("Slavedriver")[Each unit of Kharash must take a leadership test at the start of each of their turns. If failed, the unit will suffer D6 Strength 3 Hits for each Slavedriver.],
  ),
  options: [
- May take throwing weapons +0.5 point/model
  ],
  notes: [
- You must include one Slavedriver for every 10 Kharash in the unit.
  ],
)

#unit("HOBHOUNDS",
  profiles: (
    (name: "Hobhound", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: 6),
    (name: "Packmaster", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 10),
  ),
  unit-size: "10+",
  troop-type: "War Beast (Canine)",
  handler: "Packmaster (Hobgoblin)",
  base-size: "25x50 (Hobhound), 20x20 or 25x25 (Packmaster)",
  equipment: "Hand weapon",
  special-rules: "Frenzy, Mixed Unit",
  notes: [
- You must include one Packmaster for every 5 Hobhounds in the unit.
  ],
)

= SPECIAL UNITS

#unit("KHESHIG WOLF RIDERS",
  first: true,
  profiles: (
    (name: "Kheshig", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 17),
    (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Hobgoblin)",
  mount: "Giant Wolf (Canine)",
  base-size: "25x50",
  equipment: "Light lance, medium armour, shield",
  special-rules: "Backstabbers, Cowardly Despoilers, Cunning Retreat, Ded Shooty, Fast Cavalry, Treacherous Gits",
  special-rules-body: (
    rule("Khan's Guard")[If a unit with this special rule is joined by a character with the Quell Treachery special rule, they become Stubborn as long as the character remains in the unit.],
  ),
  options: [
- May take Poisoned Attacks (close combat only) +1 point/model
- May take shortbows +2 points/model
- May take barding +1 point/model
- May upgrade one Kheshig to a Leader +5 points
- May upgrade one Kheshig to a Musician +5 points
- May upgrade one Kheshig to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("RAVAGERS",
  profiles: (
    (name: "Ravager", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 11),
    (name: "Hobhound", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Hobgoblin)",
  mount: "Hobhound (Canine)",
  base-size: "25x50",
  equipment: "Two hand weapons",
  special-rules: "Backstabbers, Cowardly Despoilers, Fast Cavalry, Frenzy (Ravagers & Hobhounds), Treacherous Gits",
  options: [
- May take Poisoned Attacks +1 point/model
- May upgrade one Ravager to a Leader +5 points
- May upgrade one Ravager to a Musician +5 points
- May upgrade one Ravager to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("MANGUDAI",
  profiles: (
    (name: "Mangudai", m: 4, ws: 3, bs: 4, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 7, points: 13),
    (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Hobgoblin)",
  mount: "Giant Wolf (Canine)",
  base-size: "25x50",
  equipment: "Hand weapon, shortbow",
  special-rules: "Backstabbers, Cowardly Despoilers, Cunning Retreat, Ded Shooty, Fast Cavalry, Treacherous Gits",
  special-rules-body: (
    rule("Quick Shot")[Mangudai can fire Multiple Shots even if they moved during their turn.],
  ),
  options: [
- May take Poisoned Attacks +2 points/model
- May take light armour +1 point/model
- May upgrade one Mangudai to a Leader +5 points
- May upgrade one Mangudai to a Musician +5 points
- May upgrade one Mangudai to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SNEAKY GITS",
  profiles: (
    (name: "Sneaky Git", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 5),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Hobgoblin)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  special-rules: "Backstabbers, Cowardly Despoilers, Poisoned Attacks, Treacherous Gits, Cunning Retreat",
  special-rules-body: (
    rule("Dirty, Rotten, Sneaky")[After each round of combat is fought, the Sneaky Gits may Fight in an Extra Rank each turn for as long as they are in combat with that enemy. So, after one turn, they fight in one additional rank, after two turns they fight in two additional ranks, and so on.],
  ),
  options: [
- May be upgraded to Scouts +1 point/model
- May be upgraded to Skirmishers +1 point/model
- May upgrade one Sneaky Git to a Leader +5 points
  ],
)

#unit("WOLF CHARIOT",
  profiles: (
    (name: "Wolf Chariot", m: 8, ws: "-", bs: "-", s: 5, t: 4, w: 3, i: "-", a: "-", ld: "-", points: 60),
    (name: "Hobgoblin", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 6, points: ""),
    (name: "Giant Wolf", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "3 (Hobgoblin)",
  drawn-by: "2 Giant Wolves (Canine)",
  base-size: "50x100",
  equipment: "Hand weapon",
  special-rules: "Backstabbers, Cowardly Despoilers, Ded Shooty",
  options: [
- May take an additional Giant Wolf +3 points
- May take light lances +3 points
- May choose one of the following:
  - Shortbows +3 points
  - Bows +6 points
- May take scythes +5 points
- May be upgraded to a standard bearer ´ +10 points
  ],
)

#unit("BOLT THROWA",
  profiles: (
    (name: "Bolt Throwa", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 35),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Hobgoblins (Hobgoblin)",
  base-size: "50x50 (Bolt Throwa), 20x20 or 25x25 (Hobgoblin)",
  equipment: "Hand weapon, bolt thrower",
  special-rules: (
    rule("Slipshod")[If the To Hit roll for a shooting attack made by a Bolt Throwa is a 1 (before any modifiers are applied), then it misfires. Roll on the Stone Thrower Misfire table in the Warhammer rulebook and apply the result to the Bolt Throwa.],
  ),
)

#unit("ALMASLAR",
  compact: true,
  profiles: (
    (name: "Almas", m: 6, ws: 3, bs: 0, s: 5, t: 4, w: 3, i: 2, a: 4, ld: 6, points: 43),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Primate)",
  base-size: "40x40 or 50x50",
  special-rules: "Armour Piercing (1), Frenzy, Regeneration (5+)",
)

#unit("GIANT SCORPIONS",
  profiles: (
    (name: "Giant Scorpion", m: 7, ws: 3, bs: 0, s: 5, t: 4, w: 3, i: 3, a: 3, ld: 4, points: 42),
    (name: "Scorpion Herder", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Beast (Arachnid)",
  handler: "Scorpion Herder (Hobgoblin)",
  base-size: "50x50 or 50x75 (Giant Scorpion), 20x20 or 25x25 (Packmaster)",
  equipment: "Hand weapon",
  special-rules: "Killing Blow, Natural Armour (5+), Mixed Unit, Poisoned Attacks",
  notes: [
- You must include one Scorpion Herder for every 3 Giant Scorpions in the unit.
  ],
)

= RARE UNITS

#unit("KHESHIG SNARLFANG RIDERS",
  first: true,
  profiles: (
    (name: "Kheshig", m: 4, ws: 4, bs: 3, s: 4, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 48),
    (name: "Snarlfang", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 4, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Hobgoblin)",
  mount: "Snarlfang (Canine)",
  base-size: "50x75",
  equipment: "Light lance, medium armour, shield",
  special-rules: "Backstabbers, Cowardly Despoilers, Ded Shooty, Treacherous Gits",
  special-rules-body: (
    rule("Khan's Guard")[If a unit with this special rule is joined by a character with the Quell Treachery special rule, they become Stubborn as long as the character remains in the unit.],
  ),
  options: [
- May take Poisoned Attacks (close combat only) +1 point/model
- May take shortbows +2 points/model
- May take barding +3 points/model
- May upgrade one Kheshig to a Leader +5 points
- May upgrade one Kheshig to a Musician +5 points
- May upgrade one Kheshig to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("WAR WAGON",
  profiles: (
    (name: "War Wagon", m: 8, ws: "-", bs: "-", s: 4, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 85),
    (name: "Hobgoblin", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 6, points: ""),
    (name: "Giant Wolf", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 3+)",
  crew: "3 (Hobgoblin)",
  drawn-by: "2 Giant Wolves (Canine)",
  base-size: "50x100",
  equipment: "Hand weapon, giant bow",
  equipment-body: [
- *Giant Bow:* Instead of firing another missile weapon in the Shooting phase, one of the Hobgoblin crew may fire the giant bow. This is a bolt thrower with the following profile.

#minitable(("Range", "Strength", "Special Rules"), ("28/42\"", "5", "Cumbersome, Multiple Wounds (D3)"))
  ],
  special-rules: "Backstabbers, Cowardly Despoilers, Ded Shooty",
  options: [
- May take an additional Giant Wolf +3 points
- May choose one of the following:
  - Shortbows +3 points
  - Bows +6 points
  ],
)

#unit("ROKKIT LAUNCHA",
  compact: true,
  profiles: (
    (name: "Rokkit Launcha", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: 3, i: "-", a: "-", ld: "-", points: 80),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Hobgoblins (Hobgoblin)",
  base-size: "50x50 (Rokkit Launcha), 20x20 or 25x25 (Hobgoblin)",
  equipment: "Hand weapon, rocket launcher",
)

#unit("WIND DAEMONS",
  profiles: (
    (name: "Wind Daemon", m: 6, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 3, a: 3, ld: 7, points: 50),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Elemental)",
  base-size: "40x40 or 50x50",
  special-rules: "Ethereal, Fly (7), Unstable",
  special-rules-body: (
    rule("Gust Charge")[Any unit charged by a model with this special rule is Disrupted in the first round of close combat.],
  ),
)

#unit("CORPSERIPPER VULTURE",
  profiles: (
    (name: "Corpseripper Vulture", m: 4, ws: 4, bs: 0, s: 5, t: 5, w: 5, i: 4, a: 5, ld: 7, points: 175),
  ),
  troop-type: "Monster (Avian)",
  base-size: "50x100 or 100x150",
  special-rules: "Fly (8)",
  special-rules-body: (
    rule("Preying on the Weak")[A Corpseripper Vulture gains the Heroic Killing Blow special rule against models with half or less of their starting Wounds left.],
    rule("Scavenger")[Each time a Corpseripper Vulture causes an unsaved Wound, roll a D6. On a 6, they regain one Wound lost earlier during the game.],
  ),
)

#unit("DREAD MAW",
  profiles: (
    (name: "Dread Maw", m: "*", ws: 2, bs: 0, s: 5, t: 5, w: 5, i: 1, a: 5, ld: 7, points: 225),
  ),
  troop-type: "Monster (Vermian)",
  base-size: "50x100 or 100x150",
  special-rules: "Impact Hits (D6), Multiple Wounds (D3), Random Movement (2D6), Stubborn, Natural",
  special-rules-body: [
*Armour (4+).*

- *Death From Below:* The Dread Maw has the Ambushers special rule, with the following exception. When it enters the battle in the Remaining Moves sub-phase, it does not move onto the board as reinforcements in the normal way. Instead, when a Dread Maw enters the battle, place a small marker anywhere on the battlefield, but not in impassable terrain or within 1" of a deployed unit.

Roll a scatter dice and an artillery dice. If you roll a Hit on the scatter dice, the marker stays in place. If you roll an arrow, move the marker the number, in inches, indicated by the artillery dice in the direction shown. If the marker is under a friendly unit, impassable terrain or a building, place it 1" away from the closest edge of the unit/terrain.

Once the final position of the marker is established, place the emerging Dread Maw such that it touches the marker, facing any direction. If the marker is under an enemy unit, you may place your Dread Maw into base contact with the enemy unit in their front arc; the Dread Maw will counts as charging this turn.

If you roll a misfire, or if for any reason some of the models in the unit cannot be placed, then the unit does not emerge this turn. You may roll for it to appear again the next turn.

- *Tunneller:* The Dread Maw moves the same way as a creature with the Fly special rule. Any unit charged by a Dread Maw counts as being Disrupted in the first round of combat.
  ],
  upgrades: (
    rule("Clawed Mandibles")[The Dread Maw gains the Armour Piercing (1) special rule.],
    rule("Hooked Spines")[The Dread Maw gains the Devastating Charge special rule.],
    rule("Poisonous Blood")[Any model that inflicts a wound on the Dread Maw in close combat immediately suffer a single Strength 4 hit.],
    rule("Slime Spray")[The Dread Maw gains a Breath weapon that forces any unit under the flame template to pass an Initiative test or suffer \-2" to their move for the next turn.],
  ),
  options: [
- May take Clawed Mandibles +10 points
- May take Hooked Spines +10 points
- May take Poisonous Blood +20 points
- May take Slime Spray +20 points
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

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Large Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4-6", "Swing with Club")))

*BIG THINGS CHART *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2-4", "Thump with Club"), ("5-6", "'Eadbutt")))

*\- 'Eadbutt:* The Giant automatically inflicts D3 Wounds which Ignores Armour Saves. If the victim is wounded but not slain, then it loses all of its following attacks. If the target has not yet attacked in that combat round, it loses those attacks; if it has already attacked, then it loses the next round's attacks. *\- Jump Up and Down:* The Giant must test to determine if it falls over (see previous page). If it falls over, work out where it falls and calculate damage as already described. Any wounds caused by the fall (on either side) count towards the combat result. Otherwise, it will instead use the Stomp (2D6) special rule this turn instead of its normal Stomp. A Giant that starts to Jump Up and Down will therefore continue to do so on the same target until it falls over, the target is destroyed, or the combat ends. *\- Swing with Club:* The Giant fights using the Random Attacks (2D6) special rule this round. *\- Thump with Club:* The Giant chooses a single model from the target unit that is in base contact. The target may attempt to avoid the blow by passing an Initiative test (use the lowest if the model has several different values). If the test is failed, the model takes 2D3 Wounds which Ignores Armour Saves. If a double is rolled the Giant cannot attack at all in the following round of the same combat. *\- Yell and Bawl:* Neither the Giant nor models in contact with it fight if they have not already done so this round. The Giant automatically wins the combat by 2 points. *\- Pick Up and\.\.\.:* The Giant stoops down and grabs a single Character in base contact from the target unit (Giant player's choice). The Giant grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Bag: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Giant should be slain, any enemy trapped in its bag are freed at the end of the
battle, and no longer counts as casualties."), ("2", "Throw Back into Combat: The victim is hurled into its own unit like a living missile. The
victim suffers D3 Strength 6 Hits which Ignores Armour saves, and D6 Strength 3 hits are
inflicted on the unit (save as normal)."), ("3", "Hurl: The victim is hurled into an enemy unit within 12\" of the Giant – randomly determine
which. The victim is removed as a casualty, and the unit takes D6 Strength 3 hits. Unsaved
Wounds from these hits count towards the Giant's combat result. If no enemy units are in range,
treat this as a Throw Back into Combat result instead."), ("4-5", "Squash or Eat: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Giant had rolled the Stuff into Bag result, above, and
then choose another victim. Roll again on this table to see what the Giant does with it.")))
  ],
)

= SPECIAL CHARACTERS

#unit("HOBGOBLA KHAN",
  solo: true,
  first: true,
  subtitle: "Scourge of the Steppes",
  profiles: (
    (name: "Hobgobla Khan", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 5, a: 5, ld: 9, points: 225),
  ),
  troop-type: "Infantry (Special Character, Hobgoblin)",
  base-size: "20x20 or 25x25",
  equipment: "Medium armour, shield",
  magic-items: (
    rule("Sabre of the First Khan")[Magic Weapon. The wielder of this weapon gains the Random Attacks (D3) special rule in addition to their normal Attacks. In addition, they have the Fear special rule.],
    rule("Bow of Storms")[Magic Weapon. Bow. All shots from this bow are resolved at Strength 5 and have the Lightning Attacks Special rule.],
    rule("Mask of the Great Deceiver")[Magic Armour. This Mask gives the bearer a 6+ armour save and a Magical Ward (5+). In addition, all Hobgoblins may use the wearers Inspiring Presence ability within 18" rather than the normal 12".],
    rule("Horn of the Steppe")[Enchanted Item. One use only. This item can be used at the start of each of your Movement phases. Once used, all friendly Hobgoblin units within 12" gain +1 to their Combat Resolution for the remainder of the turn.],
  ),
  special-rules: "Backstabbers, Cowardly Despoilers, Ded Shooty, Hiiyaaarrghh!",
  special-rules-body: (
    rule("The Great Khan")[Hobgobla Khan must always be the Army General. In addition, units of Kheshig Wolf Riders may be taken as Core units instead of Special Units.],
  ),
  options: [
- May be mounted on one of the following:
  - Giant Wolf +18 points
  - Snarlfang +45 points
  - Wolf Chariot (replacing one of the crew) +45 points
  ],
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
  equipment: "Bow, medium armour, shield",
  magic-items: (
    rule("The Red Scimitar")[Magic Weapon. All Attacks made with this weapon have the Armour Piercing (3) and Multiple Wounds (D3) special rules.],
    rule("Daemonhead Helmet")[Magic Armour. 6+ armour save. As soon as Ghazak suffers his first wound in battle, Ghazak gains the Magical Ward (4+) and Magic Resistance (1) special rules for the remainder of the battle. In addition, his Strength is doubled when fighting against the model or unit which caused the Wound.],
  ),
  special-rules: "Backstabbers, Cowardly Despoilers, Ded Shooty, Fear, Quell Treachery, Hiiyaaarrghh!",
  special-rules-body: (
    rule("War Cry of the Steppes")[Any unit that Ghazak Khan charges will not be able to Stand and Shoot or Flee as a Charge Reaction. This does not affect units that have Immunity (Psychology).],
  ),
)

#unit("MAGLAH KHAN",
  solo: true,
  subtitle: "The Eagle Eye",
  profiles: (
    (name: "Maglah Khan", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: 110),
    (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Hobgoblin)",
  mount: "Giant Wolf (Canine)",
  base-size: "25x50",
  equipment: "Light lance, shortbow, medium armour, shield",
  magic-items: [
- *Trickster's Quiver:* Enchanted Item. At the start of your Shooting phase, roll a D6 and consult the table below to see what sort of arrow the bearer has access to this turn:

#chart((("D6", "Result"), ("1", "Flame Arrows: All shots have the Flaming Attacks special rule."), ("2", "Bodkin Arrows: All shots have the Armour Piercing (1) special rule."), ("3", "Poisoned Arrows: All shots have the Poisoned Attacks special rule."), ("4", "Burst Arrows: All shots have the Multiple Wounds (D3) special rule."), ("5", "Storm Arrows: All shots have the Lightning Attacks special rule."), ("6", "Frost Arrows: All shots have the Ice Attacks special rule.")))
  ],
  special-rules: "Backstabbers, Cowardly Despoilers, Ded Shooty, Sniper, Hiiyaaarrghh!, Inspiring Presence",
  special-rules-body: [
*(6), Quell Treachery*
  ],
  options: [
- May take Magic Items up to a total of 50 points
  ],
)

#unit("SOBUTAI",
  solo: true,
  subtitle: "The Crossed Knife",
  profiles: (
    (name: "Sobutai", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: 100),
    (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Hobgoblin)",
  mount: "Giant Wolf (Canine)",
  base-size: "25x50",
  magic-items: (
    rule("Blades of Begtsethulu")[Magic Weapon. Two hand weapons. These weapons allow the wielder to re-roll To Hit and To Wound in close combat give them the Armour Piercing (1) special rule.],
    rule("Wurmplate")[Magic Armour. Medium armour. This armour grants the wearer the Devastating Charge special rule.],
  ),
  options: [
- May take barding +5 points
- May replace Giant Wolf with Snarlfang +25 points
  ],
  special-rules: "Backstabbers, Cowardly Despoilers, Ded Shooty, Hiiyaaarrghh!",
  special-rules-body: (
    rule("Khan's Guard")[If a unit with this special rule is joined by a character with the Quell Treachery special rule, they become Stubborn as long as the character remains in the unit.],
    rule("Kheshig Commander")[Any unit of Kheshig joined by Sobutai gains the Devastating Charge special rule as long as he remains in the unit.],
  ),
  order: ("troop-type", "mount", "base-size", "magic-items", "options", "special-rules"),
)

#unit("NERGUI",
  solo: true,
  subtitle: "Great Shaman of the Steppes",
  profiles: (
    (name: "Nergui", m: 4, ws: 4, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 2, ld: 7, points: 300),
  ),
  troop-type: "Infantry (Special Character, Hobgoblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "Nergui is a Level 4 Wizard who uses the Lore of da Hiiyaaarrghh! In addition, he knows the following spell:",
  magic-body: (
    rule("Summon Dread Maw")[Level 4, cast on 12+. _Summon Dread Maw_ is a *direct damage area* spell with a range of 18" that uses the small round template. Roll the artillery dice and the scatter dice. Unless a Hit! is rolled, move the template the distance shown on the artillery dice, in the direction indicated on the scatter dice. If a misfire is rolled, centre the template on the caster; it scatters D6". All models under the template must take an Initiative test. Models that pass the test suffer a Strength 3 Hit. Models that fail the test suffer a Strength 5 hit with the Killing Blow and Multiple Wounds (D3) special rules.],
  ),
  magic-items: (
    rule("Staff of Wind Daemons")[Arcane Item. This item gives the bearer access to one additional spell. Once per game, during your Magic phase, the full power of the staff may be used. When it does, every enemy unit within 12" of the bearer suffers D6 Strength 4 Hits.],
    rule("Ongon")[Talisman. This item gives the bearer the Magical Ward (5+) and Magic Resistance (2) special rules.],
  ),
  special-rules: "Backstabbers, Cowardly Despoilers",
  special-rules-body: (
    rule("Great Shaman of the Steppes")[Nergui may re-roll one Power Dice (except 1's) per casting attempt.],
  ),
  options: [
- May be mounted on one of the following:
  - Giant Wolf +15 points
  - Snarlfang +40 points
  - Corpseripper Vulture +175 points
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
