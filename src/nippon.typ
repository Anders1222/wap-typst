// Nippon 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "nippon",
  army: "Nippon",
  version: "3.0",
  layout: "army",
  cover: "covers/nippon.png",
  align: "order",
)

#show: book.with(title: "Warhammer Armies Project — Nippon 3.0")

#cover(
  title: "Nippon",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/nippon.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Nippon*, version 3.0 — written and freely distributed by Mathias
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

This section of the book describes all the different units used in a Nipponese army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Nipponese units, and these are detailed here.

#namecost("DEATH BEFORE DISHONOUR", "")

Whenever a unit comprised wholly of models with this special rule is required to take a Break Test, they may choose to do so using the Cold-blooded special rule. However, if this test is failed, you must remove the entire unit as a casualty. The enemy then cannot pursue or overrun, but may reform as normal.

#namecost("WAY OF THE WARRIOR", "")

Models with this rule must always accept challenges. In addition, they ignore Panic caused by friendly units with the Loner special rule and with a lower unmodified Leadership value (excluding any characters) than them.

#namecost("CALTROPS", "")

Caltrops may be used as a Stand and Shoot reaction in addition to any other missile weapons the model might have. All models in the enemy unit charging them has to take a Dangerous Terrain test as soon as it comes within 4" of the Ninja unit.

#namecost("GRAPPLING HOOKS", "")

Models equipped with grappling hooks can move over impassable terrain like walls, rocks and buildings, but not water and the like. Note that they still may not end their move within impassable terrain.

#namecost("HORO CLOAK", "")

Horo Cloaks have the following armour profile:

#minitable(("Combat", "Missile", "Special Rules"), ("-", "+1/6+", "-"))
#namecost("KATANA", "")

Katanas have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Parry (6+), Requires Two Hands"))

#note[_A katana gives the wielder +1 To Wound._]

#namecost("MANTLETS", "")

Units with mantlets must place them on separate bases in front of the unit. Every model in the front rank must have a mantlet base in front of it, which must also be set up within the army's deployment zone. A unit with mantlets gains a 4+ armour save against missile attacks to its front arc (except template attacks). However, if the unit moves or reforms during the game, the mantlets are removed from play.

#namecost("SMOKE BOMBS", "")

A unit with Smoke Bombs may use them at the end of any Close Combat phase in which they take part. If they do so, the unit may disengage from combat by making a flee move. If they do so, the enemy cannot pursue them and they will rally automatically in their next turn.

= CLAN MON

*Characters and units that can take a Clan Mon are detailed in the army list. The cost below only applies to characters. You are not required to take Clan Mon on all units that can do so. You may not have multiple different Clan Mons in the same army.*

#namecost("MON OF THE HATTIGA CLAN", "20 points")

Each Shinobi adds +1 to deciding which table side to deploy on and whether or not to deploy Scouts first or second. In addition, Ninja, Kabuki Dolls and Shinobi gain +1 Attack in the first round of combat.

#namecost("MON OF THE DAWATE CLAN", "15 points")

Models with great weapons only. Models with this Mon do not suffer any penalties to their Initiative if armed with great weapons.

#namecost("MON OF THE UESIGO CLAN", "15 points")

Warrior Monks with this Clan Mon gain the Stubborn special rule. Yamabushi may re-roll failed Leadership tests when using Prayers of the Kami.

#namecost("MON OF THE SHISUMA CLAN", "10 points")

Infantry only. Models with this Mon using katanas gain the Parry (6+) special rule.

#namecost("MON OF THE TAKAI CLAN", "10 points")

Cavalry only. Models with this Mon may re-roll one dice when determining their charge distance, and re- roll 1's when rolling To Wound on the charge.

#namecost("MON OF THE CHOTOSA CLAN", "5 points")

Models with longbows only. Models with this Mon may re-roll 1's when rolling to Hit with longbows.

#namecost("MON OF THE HOJIZU CLAN", "")

War Machines only. War Machines with this Clan Mon may re-roll one failed To Hit roll or one Artillery Dice once per battle.

#namecost("MON OF THE ODARI CLAN", "")

Ashigaru only. Models with this Mon gain +1 to their Leadership.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Nipponese. These may be used in addition to the magic items found in the Warhammer rulebook. Any magic weapon that counts as a hand weapon follow the rules for katanas.])

#magic-item-section("weapon", first: true)[
#magic-weapon("GRASS-CUTTING SWORD", 60, type: "Great weapon")[Instead of attacking normally, this weapon may automatically inflict a single Hit on all enemy models in the front rank of any unit the wielder is in base contact with.]

#magic-weapon("DRAGON CLAW KATANA", 45, type: "Katana")[The wielder gains one additional Attack for every point of unmodified Leadership that exceeds that of any one enemy model in base contact. In addition, when fighting in challenges, the wielder gains the Killing Blow special rule and may re-roll all failed rolls To Hit and To Wound.]

#magic-weapon("DIVINE SLASHING BLADE", 20, type: "Katana")[All hits with this weapon automatically Wound. Armour saves are taken as normal.]

#magic-weapon("CRESENT MOON BLADE", 35, type: "Katana")[The wielder always counts their Strength characteristic at least one higher than that of any enemy models in base contact. In addition, they have the Multiple Wounds (D3) special rule.]

#magic-weapon("HEAVENLY NAGINATA", 35, type: "Polearm")[This weapon gives the wielder +1 to Hit in close combat and Flaming Attacks. In addition, on a To Hit roll of a 6, that attack is multiplied into D3 hits.]

#magic-weapon("MASAMUNE'S WAKIZASHI", 35, type: "Additional hand weapon")[The wielder gains the Always Strike First special rule. In addition, they may re-roll failed Parry saves.]

#magic-weapon("AUTUMN RAIN", 20, type: "Longbow")[The wielder may fire as many shots as they have Attacks on their profile and ignore all shooting modifiers.]

#magic-weapon("DAEMON CUTTER", 20, type: "Katana")[No Magical Ward saves can be taken against attacks made by this weapon.]

#magic-weapon("YARI OF RIGHTEOUSNESS", 15, type: "Light lance/spear")[Only one enemy model in base contact may attack the wielder in Close Combat. The attacking player chooses which model may attack. In addition, no enemy unit can claim the Outnumber bonus against the wearer and any unit they are with.]
]

#magic-item-section("armour")[
#magic-armour("YORITOMO'S ARMOUR", 55, type: "Heavy armour")[The wearer gains a Magical Ward (5+). In addition, if there are one or more friendly characters within 12" of the wearer, the wearer also gains +1 Strength.]

#magic-armour("ARMOUR OF IMPERIAL RULE", 40, type: "Heavy armour")[Enemies must re-roll 6’s when rolling To Wound against the wearer. Enemies who fail their rolls To Wound suffer a Strength 4 hit.]

#magic-armour("ARMOUR OF OSANO-WO", 25, type: "Medium armour")[The wearer is completely immune to all effects from spells.]

#magic-armour("IKOMA'S WARFAN", 25, type: "Buckler")[All enemies attacking the wielder in close combat suffer a \-1 To Hit penalty.]

#magic-armour("MEMPO OF HONOUR", 20)[This item gives the wearer a 6+ armour save. Enemies attacking the wearer in close combat must re-roll successful rolls To Hit. However, if the wearer flees for any reason, they are immediately removed as a casualty after making their flee move.]

#magic-armour("ISAWA'S HELM", 15)[This item gives the wearer a 6+ armour save. In addition, the wearer may re-roll 1's when taking armour saves.]
]

#magic-item-section("talisman")[
#talisman("BRONZE TOKEN", 35)[The wearer gains a 4+ invulnerable save against Magical Attacks. In addition, the wearer may re-roll one failed armour save each turn.]

#talisman("HAKAMA OF THE IDE FAMILY", 25)[Enemies attempting to strike the bearer in Close Combat must first pass a Leadership test. If failed, they may not attack this turn.]

#talisman("THE RAINBOW CLOAK", 25)[Enemies shooting at the bearer or any unit they are with suffer \-1 to hit.]

#talisman("HENSHIN'S AMULET", 20)[This item gives the wearer a Magical Ward (6+). In addition, they may re-roll one dice to Hit, to Wound or a failed armour save each turn.]
]

#magic-item-section("arcane")[
#arcane-item("CANDLE OF THE VOID", 30)[The Candle of the Void may be placed within 12" of the caster at the start of the game (use a small marker on a round 25mm base), but it may not be moved during the game and counts as impassable terrain.

The caster can choose to cast any spell through the candle rather than themselves. If they do so, measure the spell's range from the candle. The candle can draw Line of Sight in any direction and has a Line of Sight value of 1. The caster can use this to cast any spell type even if they are engaged in close combat. If a spell cast through the candle is miscast, the result of the miscast is applied to the caster as normal.
]

#arcane-item("INCENSE OF CONCENTRATION", 25)[The model carrying this item may adjust the dice roll of one power dice by 1 (either up or down) when casting spells once per turn.]

#arcane-item("CHIME OF HARMONY", 25)[The bearer of this item may re-roll failed casting rolls, as long as they are not in Close Combat or have not moved earlier in that turn.]

#arcane-item("SACRED MAGATAMA", 15)[This item allows the bearer to attempt to cast the same spell twice in a single turn if the first attempt fails or is dispelled.]
]

#magic-item-section("enchanted")[
#enchanted-item("CURSE OF THE MIDNIGHT FLIES", 35, one-use: true)[The character may use the Curse of the Midnight Flies in the Shooting phase. It has a range of 24" and causes 3D6 automatic Strength 3 hits.]

#enchanted-item("FAN OF COMMAND", 35, only: "Daimyo or Taisho")[Once per game, the bearer and any unit they are with may make a free reform in the beginning of the Movement phase. In addition, they automatically pass any test to reform, march and restrain from pursuit.]

#enchanted-item("DRAGON PEARL", 25)[At the start of the close combat phase, the bearer may transform this item into an exact copy of any enemy magic item in base contact, retaining all of its abilities for as long as it stays in base contact.]

#enchanted-item("DRUM OF WATER", 25)[The bearer and any unit they are with gains the Devastating Charge special rule.]

#enchanted-item("SERENITY LANTERNS", 25)[The bearer and any unit in base contact with them gains the Immunity (Psychology) special rule. In addition, they lose any Hatred or Frenzy special rule they might have while they remain in base contact.]

#enchanted-item("JADE MIRROR", 20)[The bearer gains the Inspiring Presence (6) special rule. However, if they flee for any reason, other friendly units may not use their Leadership at all for the remainder of the game.]

#enchanted-item("MANTLE OF FIRE", 20)[The wearer gains +1 To Wound with their Close Combat attacks.]

#enchanted-item("MEISHODO AMULET", 20)[At the start of each of your turns, the bearer of this item may increase one characteristic of their choosing by +1 by passing a Leadership test. This bonus lasts until the start of your next turn.]

#enchanted-item("BONSAI PINE OF IUCHI RAMATSU", 10)[This item may be used at the start of any of your turns. When activated, the bearer and any unit they are with halve their Line of Sight value (rounded down, to a minimum of 1). They may return to their normal Line of Sight value at the start of any of your turns.]

#enchanted-item("BRASS GONG OF OTAKU MASERO", 10)[All friendly units within 12" of the bearer gain +1 to their Leadership when taking Rally tests.]
]

#magic-item-section("standard")[
#magic-standard("IMPERIAL STANDARD", 55)[The bearer gains the Hold Your Ground (6) special rule. In addition, the unit carrying it gains +D3 to their combat resolution.]

#magic-standard("MIRUMOTO'S BATTLE STANDARD", 50)[The unit carrying this standard adds +1 To Hit and To Wound in the first round of close combat.]

#magic-standard("ANCESTRAL WAR STANDARD", 40)[All combats with at least one friendly unit involved within 6" of the unit carrying the banner receive +1 to their combat resolution bonus.]

#magic-standard("BANNER OF AMATERASU", 35)[The unit carrying this standard take all Break tests using a single D6. This cannot be combined with Death Before Dishonour.]

#magic-standard("STANDARD OF THE VERMILLION BIRD", 30)[All friendly Wizards within 12" of this standard gain +1 to cast spells.]

#magic-standard("STANDARD OF THE IRON CRANE", 30)[The unit carrying this standard gains the Dodge (6+) special rule.]

#magic-standard("BANNER OF THE ROARING TEMPEST", 15)[The unit carrying this standard counts as having one more rank than normal for the purposes of rank bonus. Note that the unit must have at least one complete rank.]
]

= CHARACTERS

#unit("COMMANDERS",
  first: true,
  profiles: (
    (name: "Daimyo", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 95),
    (name: "Taisho", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 55),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana, medium armour",
  special-rules: "Death Before Dishonour, Way of the Warrior",
  options: [
- May replace katana with one of the following:
  - Two hand weapons free
  - Buckler free
  - Spear free
  - Light lance free
  - Polearm +5 points
  - Great weapon +10 points
- May choose one of the following:
  - Pistol +5 points
  - Longbow +6 points
  - Handgun +7 points
- May choose one of the following:
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a Horo cloak +3 points
- May be mounted on one of the following
  - Warhorse +15 points
  - Komainu +25 points
  - Kirin +40 points
  - Mizuchi (Daimyo only) +300 points
- A Taisho may take one Clan Mon and/or Magic Items up to a total of 50 points
- A Daimyo may take one Clan Mon and/or Magic Items up to a total of 100 points
  ],
)

#unit("ONMYOJI",
  profiles: (
    (name: "Master Onmyoji", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 3, i: 4, a: 2, ld: 8, points: 160),
    (name: "Onmyoji", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 2, i: 3, a: 1, ld: 7, points: 65),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "An Onmyoji is a Level 1 Wizard. A Master Onmyoji is a Level 3 Wizard. They use one of the following",
  magic-body: [
Lores of Magic:

- Beasts
- Fire
- Death
- Heavens
- Life
- Light
- Metal
- Shadow
  ],
  options: [
- May take an additional Wizard Level +35 points
- May be mounted on one of the following
  - Warhorse +15 points
  - Kirin +40 points
- A Onmyoji may take Magic Items up to a total of 50 points
- A Master Onmyoji may take Magic Items up to a total of 100 points
  ],
)

#unit("HATAMOTO",
  profiles: (
    (name: "Hatamoto", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 40),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana",
  special-rules: "Death Before Dishonour, Way of the Warrior",
  special-rules-body: (
    rule("Sworn Bodyguard")[If you have any Characters with the Way of the Warrior special rule (that are not Hatamoto) in your army, you may nominate one of them for the Hatamoto to protect at the start of the game. The same character may not be nominated by several Hatamoto. Whenever the nominated character suffers a Wound (before saves are taken) and the Hatamoto is in the same unit as them, roll a D6. On a 1, the Wound is resolved as normal, but on a 2+ the Wound is intercepted, and re-allocated to the Hatamoto. No more than one Wound can be re-allocated to each Hatamoto in each phase. Wounds in a challenge cannot be re-allocated.],
  ),
  upgrades: (
    rule("Battle Standard")[The Battle Standard Bearer can have a magic banner with no points limit. However, a model carrying a magic standard can only carry other magic items up to a total of 25 points.],
  ),
  options: [
- One Hatamoto may carry the Battle Standard +25 points
- May replace katana with one of the following:
  - Two hand weapons free
  - Spear free
  - Light lance free
  - Polearm +5 points
  - Great weapon +10 points
- May choose one of the following:
  - Pistol +4 points
  - Longbow +5 points
  - Handgun +6 points
- May choose one of the following:
  - Medium armour +9 points
  - Heavy armour +18 points
- May take a Horo cloak +3 points
- May be mounted on one of the following
  - Warhorse +15 points
  - Komainu +25 points
- One Hatamoto may carry the Battle Standard +25 points
- May take one Clan Mon and/or Magic Items up to a total of 50 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("KENSAI",
  profiles: (
    (name: "Kensai", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 8, points: 120),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana",
  special-rules: "Death Before Dishonour, Killing Blow, Parry (5+), Way of the Warrior",
  special-rules-body: [
- *Art of the Blade:* A Kensai must always issue and accept challenges if possible. At the start of each round of close combat, he may choose to utilize one of the following duelling techniques. He may not use the same technique two rounds in a row.
  - *Drawing the Void:* The Kensai gains +1 To Hit and To Wound.
  - *A Single Moment:* The Kensai gains the Always Strikes First Special rule.
  - *Ritual of Steel:* The Kensai gains +D3 Attacks.
  ],
  options: [
- May replace katana with two hand weapons free
- May take one Clan Mon and/or Magic Items up to a total of 50 points
  ],
  notes: [
- A Kensai may never be the Army General.
  ],
)

#unit("YAMABUSHI",
  profiles: (
    (name: "Yamabushi", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 8, points: 100),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana",
  special-rules: "Immunity (Psychology), Magical Attacks, Magic Resistance (1)",
  special-rules-body: [
- *Light of the Sun Goddess:* Enemy units in base contact with the model suffer \-1 to their Weapon Skill.
- *Prayers of the Kami:* A model with this special rule know the four Prayers listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the prayer is answered and take immediate effect. A unit can only be under the effect of one Prayer at a time.
  - *Be the Mountain:* The model and any unit they are with gain the Stubborn special rule until the start of your next turn.
  - *Strike of the Flowing Waters:* The model and any unit they are with gain the Always Strikes First special rule until the start of your next turn.
  - *Fiery Wrath:* Every enemy unit in base contact with the model suffers 2D6 Strength 4 hits with the Flaming Attacks special rule.
  - *Borne on the Wind:* The model and any unit they are with gain the Fly (6) special rule until the start of your next turn.
  ],
  options: [
- May choose one of the following:
  - Longbow +5 points
  - Polearm +5 points
  - Handgun +6 points
  - Great weapon +10 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour +9 points
- May be mounted on a Warhorse +15 points
- May take one Clan Mon and/or Magic Items up to a total of 50 points
  ],
)

#unit("SHINOBI",
  profiles: (
    (name: "Shinobi", m: 5, ws: 6, bs: 6, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 95),
  ),
  troop-type: "Infantry (Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  special-rules: "Dodge (5+), Hidden, Independent, Poisoned Attacks, Scouts",
  upgrades: (
    rule("Fauntei Shi")[A model wounded (after saves) by Fauntei Shi must pass a Toughness test or lose all remaining wounds.],
    rule("Night Milk")[Any To Hit roll of 6 made by a model with their weapon coated in Night Milk automatically Wounds.],
    rule("Snake Venom")[A model that takes a wound (after saves) from snake venom will lose one Attack and gains the Always Strikes Last special rule for the remainder of the game.],
    rule("Spider Venom")[Single unit models and characters wounded (after saves) by spider venom must pass a Toughness at the start of their turns for the rest of the game, or lose 1 Wound with no saves allowed.],
  ),
  options: [
- May choose any of the following:
  - Caltrops +5 points
  - Grappling hook +5 points
  - Smoke bombs +5 points
  - Blowpipe +5 points
- May choose one of the following:
  - Night Milk +10 points
  - Snake Venom +20 points
  - Spider Venom +20 points
  - Fauntei Shi +30 points
- May take one Clan Mon and/or Magic Items up to a total of 50 points
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

#unit("KOMAINU",
  profiles: (
    (name: "Komainu", m: 7, ws: 4, bs: 0, s: 4, t: 5, w: 2, i: 3, a: 2, ld: 7, points: "-"),
  ),
  troop-type: "War Beast (Chimeric)",
  base-size: "25x50 or 30x60",
  options: [
- May take barding +5 points
  ],
  special-rules: "Fear, Magic Resistance (1)",
  order: ("troop-type", "base-size", "options", "special-rules"),
)

#unit("KIRIN",
  profiles: (
    (name: "Kirin", m: 8, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: "-"),
  ),
  troop-type: "War Beast (Chimeric)",
  base-size: "25x50, 30x60, 40x40, 40x60",
  special-rules: "Fear, Fly (9), Magical Attacks, Natural Armour (6+)",
  special-rules-body: (
    rule("Impale")[A Kirin gains the Mighty Blow (1) special rule in any turn that it charges.],
  ),
)

= CORE UNITS

#unit("SAMURAI WARRIORS",
  first: true,
  profiles: (
    (name: "Samurai", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 8),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana, medium armour",
  special-rules: "Death Before Dishonour, Way of the Warrior",
  options: [
- May replace katanas with one of the following:
  - Spears free
  - Polearms +1 point/model
  - Great weapons +2 points/model
- May take heavy armour +1.5 points/model
- May take a Clan Mon +1 point/model
- May upgrade one Samurai to a Leader +5 points
- May upgrade one Samurai to a Musician +5 points
- May upgrade one Samurai to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SAMURAI ARCHERS",
  profiles: (
    (name: "Samurai", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 13),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana, longbow, medium armour",
  special-rules: "Death Before Dishonour, Way of the Warrior",
  options: [
- May replace longbows with handguns +1 point/model
- May choose one of the following:
  - Heavy armour +1.5 points/model
  - Mantlets +1.5 points/model
- May take a Clan Mon +1 point/model
- May upgrade one Samurai to a Leader +5 points
- May upgrade one Samurai to a Musician +5 points
- May upgrade one Samurai to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SAMURAI CAVALRY",
  profiles: (
    (name: "Samurai", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 15),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50",
  equipment: "Katana, medium armour",
  special-rules: "Death Before Dishonour, Fast Cavalry, Way of the Warrior",
  options: [
- May choose one of the following:
  - Light lances +1 point/model
  - Polearms +2 points/model
  - Longbows +3 points/model
- May take heavy armour +1.5 points/model
- May take Horo cloaks +1 point/model
- May take a Clan Mon +1 point/model
- May upgrade one Samurai to a Leader +5 points
- May upgrade one Samurai to a Musician +5 points
- May upgrade one Samurai to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("ASHIGARU SPEARMEN",
  profiles: (
    (name: "Ashigaru", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 3.5),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Spear, light armour",
  options: [
- May replace spears with one of the following:
  - Pikes +1.5 point/model
  - Polearms +1.5 point/model
- May take medium armour +1 point/model
- May take a Clan Mon +1 point/model
- May upgrade one Ashigaru to a Leader +5 points
- May upgrade one Ashigaru to a Musician +5 points
- May upgrade one Ashigaru to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ASHIGARU ARCHERS",
  profiles: (
    (name: "Ashigaru", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 8),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana, longbow, light armour",
  options: [
- May replace longbows with handguns +1 point/model
- May choose one of the following:
  - Medium armour +1 point/model
  - Mantlets +1.5 points/model
- May take a Clan Mon +1 point/model
- May upgrade one Ashigaru to a Leader +5 points
- May upgrade one Ashigaru to a Musician +5 points
- May upgrade one Ashigaru to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("ASHIGARU SLINGERS",
  profiles: (
    (name: "Ashigaru", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 7),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana, sling, light armour",
  special-rules: "Skirmishers",
  options: [
- May take a Clan Mon +1 point/model
- May upgrade one Ashigaru to a Leader +5 points
- May upgrade one Ashigaru to a Musician +5 points
  ],
)

#unit("PEASANT LEVY",
  profiles: (
    (name: "Peasant", m: 4, ws: 2, bs: 2, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: 2),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Expendable",
  options: [
- May take spears +0.5 point/model
- May upgrade one Peasant to a Leader +5 points
  ],
)

= SPECIAL UNITS

#unit("WARRIOR MONKS",
  first: true,
  profiles: (
    (name: "Warrior Monk", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 9),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm, light armour",
  special-rules: "Immunity (Psychology), Magical Attacks, Magic Resistance (1)",
  options: [
- May replace polearms with katanas and one of the following:
  - Longbows +4 points/model
  - Handguns +5 points/model
- May take medium armour +1.5 point/model
- May take a Clan Mon +1 point/model
- May upgrade one Warrior Monk to a Leader +5 points
- May upgrade one Warrior Monk to a Musician +5 points
- May upgrade one Warrior Monk to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("WARRIOR MONK CAVALRY",
  profiles: (
    (name: "Warrior Monk", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 17),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50",
  equipment: "Polearm, light armour",
  special-rules: "Fast Cavalry, Immunity (Psychology), Magical Attacks, Magic Resistance (1)",
  options: [
- May replace polearms with katanas and one of the following:
  - Longbows +2 points/model
  - Handguns +2 points/model
- May take medium armour +1 point/model
- May take a Clan Mon +1 point/model
- May upgrade one Warrior Monk to a Leader +5 points
- May upgrade one Warrior Monk to a Musician +5 points
- May upgrade one Warrior Monk to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("SUMO WARRIORS",
  profiles: (
    (name: "Sumo Warrior", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 8, points: 12),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "25x25 or 30x30",
  equipment: "Great weapon, light armour",
  special-rules: "Death Before Dishonour, Way of the Warrior",
  options: [
- May take medium armour +1 point/model
- May take a Clan Mon +1 point/model
- May upgrade one Warrior Monk to a Leader +5 points
- May upgrade one Warrior Monk to a Musician +5 points
- May upgrade one Warrior Monk to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("ONNA BUSHI",
  profiles: (
    (name: "Onna Bushi", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 9),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Polearm",
  special-rules: "Death Before Dishonour, Stubborn, Way of the Warrior",
  special-rules-body: (
    rule("Stalwart Defence")[If the majority of models in the unit has this special rule and are garrisoning a building or fighting behind a defended obstacle, they gain the Stubborn special rule again.],
  ),
  options: [
- May replace polearms with katanas & longbows +4 points/model
- May choose one of the following:
  - Light armour +0.5 point/model
  - Medium armour +1.5 points/model
- May take mantlets +1.5 points/model
- May take a Clan Mon +1 point/model
- May upgrade one Onna Bushi to a Leader +5 points
- May upgrade one Onna Bushi to a Musician +5 points
- May upgrade one Onna Bushi to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("RONIN",
  profiles: (
    (name: "Ronin", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 7),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana",
  special-rules: "Independent, Stubborn, Skirmishers, Way of the Warrior",
  options: [
- May replace katanas with additional hand weapons free
- May take longbows +4 points/model
- May take light armour +0.5 point/model
- May upgrade one Ronin to a Leader +5 points
  ],
)

#unit("YABUSAME",
  profiles: (
    (name: "Yabusame", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 17),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50",
  equipment: "Katana, longbow",
  special-rules: "Death Before Dishonour, Fast Cavalry, Way of the Warrior",
  special-rules-body: (
    rule("Way of the Bow")[Yabusame do not suffer penalties to Hit for moving and shooting and can fire Multiple Shots even when moving that turn. In addition, when firing from within 6", all their missile attacks have the Armour Piercing (1) special rule.],
  ),
  options: [
- May take a Clan Mon +1 point/model
- May upgrade one Yabusame to a Leader +5 points
- May upgrade one Yabusame to a Musician +5 points
- May upgrade one Yabusame to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("KOMAINU RIDERS",
  profiles: (
    (name: "Samurai", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 34),
    (name: "Komainu", m: 7, ws: 4, bs: 0, s: 4, t: 5, w: 2, i: 3, a: 2, ld: 7, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Human)",
  mount: "Komainu (Chimeric)",
  base-size: "25x50 or 30x60",
  equipment: "Katana, medium armour",
  special-rules: "Death Before Dishonour, Fear, Magic Resistance (1), Way of the Warrior",
  options: [
- May choose one of the following:
  - Light lances free
  - Polearms +1 point/model
  - Longbows +2 points/model
- May take heavy armour +3 points/model
- May take Horo cloaks +2 points/model
- May take a Clan Mon +1 point/model
- May upgrade one Samurai to a Leader +5 points
- May upgrade one Samurai to a Musician +5 points
- May upgrade one Samurai to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("FIRE ROCKETS",
  profiles: (
    (name: "Samurai", m: 4, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 15),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana, fire rocket, medium armour",
  equipment-body: [
- *Fire Rocket:* Fire rockets have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "4", "Flaming Attacks, Ponderous"))

Each Hit from a fire rocket is multiplied into D3 Hits.
  ],
  special-rules: "Death Before Dishonour, Skirmishers, Way of the Warrior",
  options: [
- May take heavy armour +1.5 points/model
  ],
)

#unit("OZUTSU ASHIGARU",
  profiles: (
    (name: "Ashigaru", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: 11),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana, ozutsu, light armour",
  equipment-body: [
- *Ozutsu:* Ozutsu have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("9/18\"", "6", "Ponderous"))
  ],
  options: [
- May take a Clan Mon +1 point/model
- May take mantlets +1.5 point/model
  ],
)

#unit("WAKO PIRATES",
  profiles: (
    (name: "Wako Pirate", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 7, points: 4),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana",
  special-rules: "Ambushers, Independent",
  options: [
- May choose one of the following:
  - Spears free
  - Longbows +3 point/model
  - Handguns +4 point/model
- May take light armour +0.5 point/model
- May upgrade one Wako Pirate to a Leader +5 points
- May upgrade one Wako Pirate to a Musician +5 points
- May upgrade one Wako Pirate to a Standard Bearer +10 points
  ],
)

#unit("KABUKI DOLLS",
  profiles: (
    (name: "Kabuki Doll", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 7, points: 11),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, war fan",
  equipment-body: (
    rule("War Fan")[A war fan may be used in two ways: it can either be used as an additional hand weapon with the Jidaimono style or as a buckler in close combat with the Sewamono style.],
  ),
  special-rules: "Independent, Poisoned Attacks, Skirmishers",
  special-rules-body: [
- *Kabuki Dance:* You must choose one of the two dances for the kabuki Dolls to perform at the start of each close combat phase. Each effect lasts for the duration of the close combat round.
  - *Crimson Finale:* The Kabuki Dolls have the Always Strikes First special rule.
  - *Form of Falling Petals:* The Kabuki Dolls have the Dodge (5+) special rule.
  ],
  options: [
- May take a Clan Mon +1 point/model
- May upgrade one Kabuki Doll to a Leader +5 points
  ],
)

#unit("NINJA",
  profiles: (
    (name: "Ninja", m: 5, ws: 4, bs: 4, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 10),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Human)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons, throwing weapons",
  special-rules: "Dodge (6+), Loner, Scouts, Skirmishers",
  options: [
- May choose any of the following:
  - Grappling hooks +1 point/model
  - Blowpipe +2 points/model
  - Caltrops +2 points/model
  - Poisoned Attacks +2 points/model
  - Smoke bombs +2 points/model
- May take a Clan Mon +1 point/model
- May upgrade one Ninja to a Leader +5 points
  ],
)

#unit("TENGU",
  profiles: (
    (name: "Tengu", m: 5, ws: 4, bs: 3, s: 3, t: 3, w: 1, i: 5, a: 1, ld: 8, points: 12),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Beastman)",
  base-size: "25x25",
  equipment: "Katana",
  special-rules: "Fly (10), Loner",
  options: [
- May take polearms +1 point/model
- May take light armour +0.5 point/model
  ],
)

#unit("ONI",
  profiles: (
    (name: "Oni", m: 6, ws: 5, bs: 3, s: 5, t: 4, w: 3, i: 5, a: 3, ld: 7, points: 52),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Infantry (Daemon)",
  base-size: "40x40",
  equipment: "Hand weapon",
  special-rules: (
    rule("Daemonic")[Models with this special rule have the Magical Attacks and Magical Ward (5+) special rules.],
  ),
  options: [
- May choose any of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model
- May take light armour +1.5 points/model
- May upgrade one Oni to a Leader +5 points
  ],
)

= RARE UNITS

#unit("GREAT GUARD",
  first: true,
  profiles: (
    (name: "Great Guard", m: 4, ws: 5, bs: 4, s: 4, t: 3, w: 1, i: 4, a: 1, ld: 8, points: 40),
    (name: "Kirin", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 2, i: 4, a: 2, ld: 7, points: ""),
  ),
  unit-size: "3-9",
  troop-type: "Cavalry (Human)",
  mount: "Kirin (Chimeric)",
  base-size: "25x50, 30x60, 40x40, 40x60",
  equipment: "Katana, medium armour",
  special-rules: "Death Before Dishonour, Devastating Charge, Fear, Fly (9), Impale (see Kirin), Magical",
  special-rules-body: [
*Attacks* (Kirin only)*, Natural Armour (6+), Stubborn, Way of the Warrior*
  ],
  options: [
- May choose one of the following:
  - Light lances free
  - Polearms +1 point/model
- May take heavy armour +3 points/model
- May take Horo cloaks +2 points/model
- May take a Clan Mon +1 point/model
- May upgrade one Great Guard to a Leader +5 points
- May upgrade one Great Guard to a Musician +5 points
- May upgrade one Great Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("MIKOSHI SHRINE",
  profiles: (
    (name: "Mikoshi Shrine", m: 4, ws: 4, bs: 4, s: 4, t: 4, w: 6, i: 4, a: 4, ld: 8, points: 120),
  ),
  troop-type: "Shrine (Human)",
  base-size: "40x60 or 50x75 or 50x100 or 60x100",
  equipment: "Polearm, light armour",
  special-rules: "Immunity (Psychology), Magical Ward (4+), Magic Resistance (1)",
  special-rules-body: [
- *Holy Relic:* A Mikoshi Shrine and any unit of Warrior Monks joined by it has the Stubborn special rule. Unlike other Shrines, it does not need to be in the front rank of the unit.
- *Blessings of the Kami:* Enchanted Item. Bound spell (Level 1, cast on 6+). All Blessings are *augment* spells with a range of 12" that lasts until the start of your next Magic phase. You may attempt to cast one spell in each Magic phase.
  - *Blessing of Strength:* The unit may re-roll all failed To Wound rolls in close combat.
  - *Blessing of Persistence:* Enemies attacking the unit suffer \-1 To Wound.
  - *Blessing of Swiftness:* The unit may re-roll the distance moved when charging and pursuing.

However, if a unit with an active Blessing flees for any reason, they immediately lose the Blessing and suffer D6 Strength 4 hits.
  ],
)

#unit("TAIKO DRUM",
  profiles: (
    (name: "Taiko Drum", m: "-", ws: "-", bs: "-", s: "-", t: 5, w: "-", i: "-", a: "-", ld: "-", points: 50),
    (name: "Drummer", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "1 Drummer (Human)",
  base-size: "40x40 or 50x50 (Taiko Drum) 20x20 or 25x25 (Drummer)",
  equipment: "Hand weapon, light armour",
  special-rules: [
- *Vigour Rhythms:* At the start of any of your Movement phases, you may choose to have your Taiko Drum give out one of the following abilities to all friendly units within 18" which lasts until the start of your next Movement phase:
  - *Bravery and Courage:* The units gain the Cold-blooded special rule.
  - *Strategy and Discipline:* The units gain the Disciplined special rule.
  - *Charge!* The units may re-roll one of the dice that determines their charge distance.
  ],
  options: [
- May take an additional Drummer +7 points
  ],
)

#unit("MANGONEL",
  profiles: (
    (name: "Mangonel", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 90),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Mangonel), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, stone thrower, light armour",
  special-rules: (
    rule("Flaming Ammunition")[All shots from a Mangonel have the Flaming Attacks special rule.],
  ),
  options: [
- May take a Clan Mon +15 points
  ],
)

#unit("CANNON",
  profiles: (
    (name: "Cannon", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 85),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine (Cannon)",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Cannon), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, cannon, light armour",
  options: [
- May take a Clan Mon +15 points
  ],
)

#unit("FLAMING ARROW",
  profiles: (
    (name: "Flaming Arrow", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 65),
    (name: "Crew", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Crew (Human)",
  base-size: "50x75 (Flaming Arrow), 20x20 or 25x25 (Crew)",
  equipment: "Hand weapon, flaming arrow, light armour",
  equipment-body: [
- *Flaming Arrows:* Flaming Arrows are bolt throwers using the following profile. If you roll a 1 To Hit, roll a D6 and consult the Black Powder Misfire chart in the Warhammer rulebook.

#minitable(("Range", "Strength", "Special Rules"), ("30/60\"", "8", "Flaming Attacks, Multiple Wounds (D3)"))
  ],
  options: [
- May take a Clan Mon +15 points
  ],
)

#unit("KITSUNE",
  compact: true,
  profiles: (
    (name: "Kitsune", m: 9, ws: 5, bs: 0, s: 4, t: 4, w: 2, i: 6, a: 2, ld: 9, points: 80),
  ),
  troop-type: "War Beast (Spirit)",
  base-size: "25x25 or 25x50 or 40x40",
  magic: "A Kitsune is Level 1 Wizard that uses spells from the Lore of Shadow.",
  special-rules: "Forest Strider, Magical Attacks, Magical Ward (5+), Scouts",
)

#unit("MIZUCHI",
  profiles: (
    (name: "Mizuchi", m: 6, ws: 6, bs: 0, s: 6, t: 6, w: 6, i: 3, a: 5, ld: 8, points: 300),
  ),
  troop-type: "Monster (Draconid)",
  base-size: "50x75 or 50x100",
  special-rules: "Aquatic, Fly (7), Natural Armour (3+)",
  special-rules-body: (
    rule("Poison Breath")[This is a Strength 3 Breath Weapon with the Poisoned Attacks special rule.],
  ),
)

= SPECIAL CHARACTERS

#unit("TOKUDAIRA IEYASU",
  solo: true,
  first: true,
  subtitle: "Shogun of Nippon",
  profiles: (
    (name: "Tokudaira Ieyasu", m: 4, ws: 7, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 5, ld: 10, points: 280),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Blade of the Silver Moon")[Magic Weapon. Katana. All attacks that Hit will Wound automatically and have the Multiple Wounds (D3) special rule*.*],
    rule("Armour of Iron Resolve")[Magic Armour. Heavy armour. The wearer gains +1 Toughness and a Magical Ward (5+).],
  ),
  special-rules: "Death Before Dishonour, Way of the Warrior",
  special-rules-body: (
    rule("Great Guard")[One unit of Samurai Warriors in an army led by Tokudaira Ieyasu may be upgraded to Great Guard on foot for a cost of 4 points per model. Great Guard have +1 Weapon Skill and Strength as well as the Devastating Charge and Stubborn special rules. This unit counts as a Special choice.],
    rule("Shogun")[Tokudaira Ieyasu must be the Army General. He has the Inspiring Presence (6) special rule. An army led by the Shogun ignores the restriction on not allowing multiple Clan Mons in the army.],
  ),
  options: [
- May be mounted on one of the following
  - Warhorse +15 points
  - Komainu +25 points
  - Kirin +40 points
  - Mizuchi +300 points
  ],
)

#unit("ODARI NOBUHIDE",
  solo: true,
  subtitle: "The Daemon King, Daimyo of the Odari Clan",
  profiles: (
    (name: "Odari Nobuhide", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 200),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Guard Breaker")[Magic Weapon. Katana. Attacks made with Guard Breaker have the Ignores Armour saves special rule, and no Parry saves may be taken against it.],
    rule("Achala's Ward")[Magic Armour. Heavy armour. Achala’s Ward grants the wearer a Magical Ward (4+) and the Immunity (Killing Blow) special rule.],
  ),
  special-rules: "Death Before Dishonour, Way of the Warrior",
  special-rules-body: (
    rule("Daemon King")[Friendly Ashigaru units that uses Odari Nobuhide's Inspiring Presence special rule have the Cold-blooded special rule.],
    rule("Daimyo of the Odari Clan")[Ashigaru units in an army led by Odari Nobuhide must take the Odari Clan Mon.],
  ),
  options: [
- May be mounted on one of the following
  - Warhorse +15 points
  - Komainu +25 points
  - Kirin +40 points
  - Mizuchi +300 points
  ],
)

#unit("TAKAI KATSUYORI",
  solo: true,
  subtitle: "The Red Tiger, Daimyo of the Takai Clan",
  profiles: (
    (name: "Takai Katsuyori", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 225),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Katana",
  magic-items: (
    rule("Sunset Defender")[Magic Armour. Heavy armour. Sunset Defender gives the wearer +1 Toughness. In addition, for every successful Armour save the wearer makes in Close Combat, they gain +1 to their Combat Resolution that round.],
    rule("Takai War Fan")[Magic Armour. Buckler. The Takai War Fan gives the bearer the Inspiring Presence (6) special rule. In addition, units using their Leadership may re-roll failed Leadership tests.],
  ),
  special-rules: "Death Before Dishonour, Mon of the Takai Clan, Way of the Warrior",
  special-rules-body: [
- *Brilliant Tactician:* Once per turn, Takai Katsuyori may attempt to issue one of the following commands to a friendly unit within 12" that is not fleeing or in combat. This unit must take a Leadership test; if failed, the command has no effect this turn. If passed, the command works as intended.
  - *Brace Yourselves!* Issue as a Charge Reaction. Enemies charging the unit to its front lose all charging bonuses.
  - *Fall back!* Issue as a Charge Reaction. The unit may use Feigned Flight like Fast Cavalry/Skirmishers.
  - *Reform!* Issue in the Remaining Moves phase. The unit may make a normal Reform and still move this turn.
- *Daimyo of the Takai Clan:* Cavalry models in an army led by Takai Katsuyori must take the Takai Clan Mon.
  ],
  options: [
- May be mounted on one of the following
  - Warhorse +15 points
  - Komainu +25 points
  - Kirin +40 points
  - Mizuchi +300 points
  ],
)

#unit("DAWATE TADAMUNE",
  solo: true,
  subtitle: "The One-Eyed Dragon, Daimyo of the Dawate Clan",
  profiles: (
    (name: "Dawate Tadamune", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 180),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Saddle-Cutter")[Magic Weapon. Great weapon. Saddle-cutter gives the wielder the Killing Blow special rule against Cavalry or Monstrous Cavalry which applies on the roll of a 5+ rather than 6+.],
    rule("Armour of the Night Ocean")[Magic Armour. Medium armour. The Armour of the Night Ocean grants the wearer the Natural armour (4+) special rule. In addition, enemy models suffer \-1 to Hit against them in close combat.],
  ),
  special-rules: "Death Before Dishonour, Mon of the Dawate Clan, Way of the Warrior",
  special-rules-body: (
    rule("Daimyo of the Dawate Clan")[Models with great weapons in an army led by Dawate Tadamune must take the Dawate Clan Mon.],
    rule("Reckless Abandon")[Dawate Tadamune has the Devastating Charge special rule. In addition, for every successful Wound caused on a turn he charges he gains an additional attack. These additional attacks do not generate any further attacks.],
  ),
  options: [
- May be mounted on one of the following
  - Warhorse +15 points
  - Komainu +25 points
  - Kirin +40 points
  - Mizuchi +300 points
  ],
)

#unit("UESIGO NORIMASA",
  solo: true,
  subtitle: "Avatar of Bishamonten, Daimyo of the Uesigo Clan",
  profiles: (
    (name: "Uesigo Norimasa", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 3, i: 6, a: 4, ld: 9, points: 170),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Medium armour",
  magic-items: (
    rule("Bishamonten's Might")[Magic Weapon. Polearm. Attacks made with this weapon gain +1 To Hit. In addition, for every Hit inflicted with it, an enemy model of your choice in base contact loses an Attack.],
    rule("Chalice of Bishamonten")[Enchanted Item. One use only. The Chalice of Bishamonten can be used at the start of any round of close combat. When used, Uesigo Norimasa gains +1 to his Weapon Skill, Strength, Toughness, Initiative and Attacks as well as a Magical Ward (5+) for the remainder of the turn],
  ),
  special-rules: "Death Before Dishonour, Immunity (Psychology), Magic Resistance (2), Stubborn, Way of the Warrior",
  special-rules-body: (
    rule("Daimyo of the Uesigo Clan")[Units of Warrior Monks, Shugenja and Yamabushi in an army led by Uesigo Norimasa must take the Uesigo Clan Mon. Warrior Monks count as a Core choice. However, no Wako Pirates, Ninjas or Shinobis may be taken.],
  ),
  options: [
- May be mounted on one of the following
  - Warhorse +15 points
  - Komainu +25 points
  - Kirin +40 points
  - Mizuchi +300 points
  ],
)

#unit("SANADA NAOMASA",
  solo: true,
  subtitle: "The Red Oni, Leader of the Red Devils",
  profiles: (
    (name: "Sanada Naomasa", m: 4, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 5, a: 3, ld: 8, points: 185),
    (name: "Warhorse", m: 8, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 5, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Human)",
  mount: "Warhorse (Equine)",
  base-size: "25x50",
  magic-items: (
    rule("Divine Wind")[Magic Weapon. Light lance. Divine Wind gives the wielder +1 Strength and the Devastating Charge special rule.],
    rule("Red Daemon Armour")[Magic Armour. Medium armour. The Red Daemon Armour gives Sanada Naomasa a Magical Ward (5+) and the Fear special rule. In addition, only one enemy in base contact (chosen by Naomasa) can choose to allocate their attacks against him in close combat.],
  ),
  special-rules: "Death Before Dishonour, Frenzy, Way of the Warrior",
  special-rules-body: (
    rule("The Red Devils")[The Red Devils are a unit of Samurai Cavalry with an additional +1 Strength and the Frenzy special rule. Naomasa must deploy in this unit and may not leave it.],
  ),
)

#unit("HITOMI GOZEN",
  solo: true,
  subtitle: "Lady of War, the First Onna Bushi",
  profiles: (
    (name: "Hitomi Gozen", m: 4, ws: 5, bs: 5, s: 4, t: 4, w: 2, i: 6, a: 3, ld: 8, points: 90),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Medium armour, longbow",
  magic-items: (
    rule("The Thundering Blade")[Magic Weapon. Polearm. All attacks with this weapon have the Lightning Attacks special rule.],
  ),
  special-rules: "Death Before Dishonour, Stalwart Defence, Stubborn, Way of the Warrior",
  special-rules-body: (
    rule("Onna Bushi Commander")[If Hitomi Gozen is included in your army, one unit of Onna Bushi may be taken as a Core Unit instead of a Special Unit.],
  ),
  options: [
- May be mounted on a Warhorse +12 points
  ],
)

#unit("EMPRESS HIMIKO",
  solo: true,
  subtitle: "Daughter of Amaterasu",
  profiles: (
    (name: "Empress Himiko", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 3, i: 3, a: 1, ld: 9, points: 370),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic: "Empress Himiko is a Level 4 Wizard who can use spells from the Lore of Heavens or Light.",
  equipment: "Hand weapon",
  magic-items: (
    rule("Sacred Jewel of Eight")[Talisman. The Sacred Jewel of Eight causes enemy units in base contact with the bearer to suffer \-1 To Hit.],
    rule("Eight Span Mirror")[Arcane Item. If an enemy spell targets Empress Himiko or the unit she is with and is subsequently dispelled by her, she may immediately cast the spell back at the enemy caster just like a Bound Spell, using the same casting value as the enemy Wizard.],
  ),
  special-rules: "Death Before Dishonour, Way of the Warrior",
  special-rules-body: (
    rule("Empress of Nippon")[Any unit with the Way of the Warrior special rule joined by Empress Himiko becomes Unbreakable as long as she is in it. In addition, she benefits from a 3+ "Look Out, Sir!" roll in close combat.],
    rule("Supreme Onmyoji")[Himiko may re-roll failed channelling rolls. In addition, she may re-roll one dice when casting and dispelling each turn.],
  ),
  order: ("troop-type", "base-size", "magic", "equipment", "magic-items", "special-rules"),
)

#unit("AKASHI SHO",
  solo: true,
  subtitle: "Pillar of Tradition, Grand Yokozuna of Nippon",
  profiles: (
    (name: "Akashi Sho", m: 4, ws: 6, bs: 5, s: 5, t: 5, w: 3, i: 5, a: 3, ld: 8, points: 200),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Medium armour",
  magic-items: (
    rule("Oni-Kanabo")[Magic Weapon. Great weapon. The Oni-Kanabo gives the wielder the Multiple Wounds (D3) special rule.],
    rule("Tsuna Belt")[Talisman. The Tsuna Belt grants Akashi Sho a Magical Ward (5+) and the Magic Resistance (1) special rule.],
    rule("Purifying Salt")[Enchanted Item. The Purifying Salt may be used whenever Akashi Sho issues or accepts a challenge. For the duration of the challenge, he may re-roll 1's To Hit, To Wound and when taking armour and Ward saves.],
  ),
  special-rules: "Death Before Dishonour, Sworn Bodyguard (see Hatamoto), Way of the Warrior",
)

#unit("MINAMOTO KENSHIN",
  solo: true,
  subtitle: "Wandering Kensai, Legendary Ronin",
  profiles: (
    (name: "Minamoto Kenshin", m: 4, ws: 8, bs: 5, s: 4, t: 4, w: 2, i: 7, a: 3, ld: 8, points: 210),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("The Nameless Blades")[Magic Weapon. Two hand weapons. The wielder may re-roll all failed To Hit rolls. In addition, any successful Parry or Dodge saves must be re-rolled.],
    rule("Headband of the Second Sun")[Talisman. The Headband of the Second Sun allows Minamoto Kenshin to re- roll Parry saves while fighting in challenges.],
  ),
  special-rules: "Iaijutsu, Killing Blow, Parry (5+), Way of the Warrior",
  special-rules-body: (
    rule("Uncouth Challenger")[When Minamoto Kenshin issues a challenge, the opponent cannot choose to refuse it. Furthermore, the Nippon player nominates which enemy character will accept the challenge.],
    rule("Path of the Blade")[For each successful Parry save made, Minamoto Kenshin immediately gets to make an additional attack back against the enemy that struck the blow.],
  ),
  notes: [
- Minamoto Kenshin may never be the Army General.
  ],
)

#unit("SARUTORI HANZO",
  solo: true,
  subtitle: "Shinobi Assassin",
  profiles: (
    (name: "Sarutori Hanzo", m: 5, ws: 8, bs: 6, s: 4, t: 4, w: 2, i: 8, a: 3, ld: 9, points: 200),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  magic-items: (
    rule("Biting Wind")[Magic Weapon. The wielder causes an automatic Strength 4 hit on all models in base contact in addition to his normal attacks. In addition, any model wounded, but not killed, loses all their attacks for the duration of the turn.],
    rule("Kage Mask")[Enchanted Item. This item gives Sarutori Hanzo the Fear special rule. In addition, it contains a Bound Spell (Level 1, cast on 3+). This is an *augment* spell that Sarutori Hanzo can cast on himself. He may immediately make a Fly move up 10", even if engaged in close combat, as if it were the Remaining Moves sub-phase.],
  ),
  special-rules: "Dodge (4+), Fauntei Shi (see Shinobi), Hidden, Independent, Poisoned Attacks, Scouts, Mon",
  special-rules-body: [
*of the Hattiga Clan*
  ],
)

#unit("O-SAYUMI",
  solo: true,
  subtitle: "Legendary Geisha",
  profiles: (
    (name: "O-Sayumi", m: 4, ws: 4, bs: 3, s: 3, t: 3, w: 2, i: 4, a: 2, ld: 7, points: 140),
  ),
  troop-type: "Infantry (Special Character, Human)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, war fan",
  magic-items: (
    rule("Karyukai Tea Set")[Enchanted Item. One use only. O-Sayumi may use this item at the start of any of your turns. O-Sayumi and any unit she is with becomes Unbreakable until the start of your next turn.],
    rule("Samisen of Oracular Vision")[Enchanted Item. O-Sayumi may use this item at the start of any of your turns. Target one friendly unit within 12". That unit gains +1 To Hit in close combat until the start of your next turn.],
  ),
  special-rules: "Poisoned Attacks, Kabuki Dance (see Kabuki Dolls)",
  special-rules-body: (
    rule("Legendary Geisha")[Any friendly unit joined by O-Sayumi may re-roll all failed Leadership tests. Against enemy characters, O-Sayumi may re-roll failed rolls To Wound and has the Killing Blow special rule.],
  ),
  notes: [
- O-Sayumi may never be the Army General.
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
  subtitle: "Stefan Wolf",
  before: [
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")
  ],
)
