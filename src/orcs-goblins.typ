// Orcs & Goblins 3.0 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "orcs-goblins",
  army: "Orcs & Goblins",
  version: "3.0",
  layout: "army",
  cover: "covers/orcs-goblins.png",
  align: "destruction",
)

#show: book.with(title: "Warhammer Armies Project — Orcs & Goblins 3.0")

#cover(
  title: "Orcs & Goblins",
  subtitle: "Warhammer Armies Project · 3.0",
  art: "/assets/covers/orcs-goblins.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    Orcs & Goblins*, version 3.0 — written and freely distributed by Mathias
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
This section of the book describes all the different units used in an Orc & Goblin army, along with any rules necessary to use them in your games of Warhammer. Where a model has a special rule that is explained in the _Warhammer_ rulebook, only the name of that rule is given. If a model has a special rule that is unique to it, that rule is detailed alongside its description. However, there are a number of commonly recurring ‘army special rules’ that apply to several Orc & Goblin units, and these are detailed here.

#namecost("ANIMOSITY", "")

Units with this special rule must test for Animosity in the Charge sub-phase after all normal charges have been declared during each of your turns, unless any of the following applies:

- The unit has fewer than 5 models.
- The unit has declared a charge this turn.
- The unit is engaged in close combat.
- The unit is garrisoning a building.
- The unit is fleeing or currently off the battlefield.

Roll a D6 for each eligible unit. If the dice roll is a 2 or more, the unit behaves normally this turn. If the roll is a 1, however, the unit has failed its Animosity test and must roll on the Animosity table below:

#chart((("D6", "Result"), ("1", "Get 'Em: For every complete rank the unit
has, it suffers D3 hits at the Strength
characteristic of the majority of the models in
the unit. The unit may not voluntarily move
or shoot this turn. Wounds caused by the Get
'Em result never cause Panic tests."), ("2-4", "Squabble: If it is possible to do so, the unit
must declare a charge against the closest
viable enemy unit. If the unit is unable to
declare a charge, the unit may not move in
the Movement phase or shoot this turn."), ("5-6", "We'll Show 'Em: Pivot the unit on the spot
to face the nearest visible enemy unit, and
then make a full normal move in a straight
line towards it. If there is no visible enemy,
the unit must move straight ahead instead. If
it is impossible for the unit to pivot to face
the closest enemy, it will pivot towards it as
far as it can, and will then move as far
forward as it can while still keeping the
enemy within its forward arc. After the move
is complete the unit must declare a charge
against the closest visible enemy unit, if it is
possible to do so. If the unit cannot declare a
charge then it may carry on with the rest of
its turn normally, as if it had not yet moved
this turn.")))
#chartlabel("ARMED TO DA TEEF")

If a model with this special rule has more than one weapon and/or a shield, they may choose which weapon combination they want to use at the start of each round of close combat.

#namecost("GREENSKIN RACES", "")

Characters may only join units of the same race or sub- species (such as Common Orc, Savage Orc, Black Orc, Common Goblin, Forest Goblin, Night Goblin or Snotling). Black Orc characters may still join units of Common Orcs, however.

#namecost("FEAR ELVES", "")

Models with this special rule treat all Elves as causing Fear against them.

#namecost("MAGIC MUSHROOMS", "")

A Wizard with this special rule may eat a Magic Mushroom once per Magic phase, before casting a spell. This adds another D6 to the casting result. This dice does not count as a power dice, and cannot contribute to Ultimate Power. However, if you roll a 1 on this dice you must roll a further D6. On a roll of 4+ nothing else happens, but on a roll of 1\-3 the Wizard suffers a Wound which Ignores Armour Saves, and the spell automatically fails.

#namecost("QUELL ANIMOSITY", "")

If a model with this special rule is in a unit that fails an Animosity test, they immediately inflict D6 hits at their base Strength on their unit, distributed as shooting attacks. After removing casualties, the unit is treated as if the Animosity test was passed. These hits cannot be allocated to characters with this special rule, and do not cause a Panic test.

#namecost("SIZE MATTERS", "")

Models with this special rule treat Goblins and Snotlings of all types as Expendable.

#namecost("SPIDER VENOM", "")

A Wizard with this special rule may re-roll one dice per Magic phase when casting spells. However, any time they Miscast, they will also count as having failed a Stupidity test (if they survive).

#namecost("TUSKER CHARGE", "")

Models with this special rule have the Mighty Blow (1) special rule in any turn that they charge.

#namecost("WAAAGH!", "")

If a model with this special rule is your Army General, then once per game he may call a Waaagh! The Waaagh! may only be called if the model first declares a charge, and must be announced immediately after making the charge declaration, before any charge reaction takes place. In the turn a Waaagh! is called, every combat involving friendly Orc units within 12" of the Army General adds +1 to its combat resolution for the rest of the player turn. The Army General himself, and any unit he joins, adds +D3 to their combat resolution instead. In addition, every friendly unit within 12" of the Army General add their rank bonus to the result rolled on the Animosity table (to a maximum of 6).

#namecost("WALL-CRAWLER", "")

Models with this rule have the Forest Strider and Obstacle Strider special rules. In addition, they treat ungarrisoned buildings as open terrain for the purposes of movement. They may not finish their movement inside or on top of an ungarrisoned building.

#namecost("WAAAGH! MISCAST", "")

If an Orc or Goblin Wizard rolls a Miscast, they roll on the following table instead of the normal Miscast Table used by other wizards:

#chart((("D6", "Result"), ("1-3", "FZZZZZZAP! Resolve the effects as if the
Wizard had cast the Gaze of Mork spell and
then deduct D3 dice from the power pool."), ("4-5", "\"Yuuurgh!\" The Wizard is subject to the
Frenzy and Stupidity special rules for the
rest of the game, although he may never
lose his Frenzy. He may cast no further
spells this turn."), ("6-7", "\"I've Forgot!\" The Wizard permanently
reduces his Wizard Level by 1 and may not
cast any further spells this phase."), ("8-9", "\"Me 'Ead 'Urts!\" All Orcs and Goblins
(friend or foe) within 12\" that are capable
of channelling power or dispel dice suffer a
Strength 4 hit which Ignores Armour saves.
In addition, D3 dice are lost from the pool."), ("10-11", "\"I Fink I'm Gonna…\": The Wizard
suffers a Strength 10 hit and all Orc and
Goblin units (friend or foe) within 12\"
suffer D6 Strength 5 hits which Ignores
Armour saves. In addition, D3 dice are lost
from the pool."), ("12+", "'EADBANG! Place the large round
template over the Wizard. Any model under
the template must pass a Toughness test or
also be killed outright with no armour saves
allowed. After resolving hits from this
template, removing the Wizard as casualty
with no saves allowed. In addition, D3 dice
are lost from the power pool.")))
]

#lore("LORE OF DA BIG WAAAGH!")[

#spell("POWER OF DA WAAAGH!", "Lore Attribute")[A Wizard using this lore gains +1 to cast spells for each friendly Orc unit within 24" that is in close combat and has a Unit Strength of 10 of more. Conversely, a Wizard using this lore suffers \-1 to cast spells for each friendly Orc unit within 24" that is fleeing and has a Unit Strength of 10 or more.]

#spell("WRATH OF GORK", "Signature Spell", cast: "5+")[_Wrath of Gork_ is a *magic missile* with a range of 24" that inflicts D3+1 Strength 4 hits for every friendly unit of 10 or more Orc models within 6" of the caster.]

#spell("BASH 'EM LADZ", 1, cast: "6+")[_Bash 'em Ladz_ is an *augment* spell with a range of 18". The target unit may re-roll To Hit rolls in close combat until the start of the caster's next Magic phase.]

#spell("FISTS OF GORK", 1, cast: "6+")[Remains in play. _Fists of Gork_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the Wizard gains +2 Strength and +3 Attacks.]

#spell("'ARD AS NAILS", 1, cast: "7+")[_'Ard as Nails_ is an *augment* spell with a range of 18". All successful To Wound rolls against the target must be re-rolled until the start of the caster's next Magic phase.]

#spell("BIG GREEN CHOPPA", 2, cast: "7+")[_Big Green Choppa_ is an *augment* spell with a range of 18". The target unit gains +1 Strength until the start of the caster's next Magic phase.]

#spell("'ERE WE GO!", 2, cast: "7+")[_'Ere We Go!_ is a *conveyance aura* spell with a range of 12" that targets Orc units. The targets add +D6" to their charge distance until the start of the caster's next Magic phase.]

#spell("GREEN PUKE", 2, cast: "7+")[_Green Puke_ is a *direct damage* spell. The caster makes a Breath Weapon attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models hit suffer a Strength 3 hit with the Armour Piercing (2) special rule.]

#spell("GAZE OF MORK", 3, cast: "8+")[_Gaze of Mork_ is a *direct damage area* spell that uses the line template. Place it 30" in length, directly away from the caster's front arc. Any model whose base falls under the line suffers a Strength 5 hit.]

#spell("'EADBUTT", 3, cast: "9+")[_'Eadbutt_ is a *direct damage* spell with a range of 12". Choose a single enemy model, even a character in a unit ("Look Out, Sir!" cannot be used). The target suffers a Strength 4 hit with the Ignores Armour Saves and Multiple Wounds (D3) special rules.]

#spell("RAISE GREAT IDOL", 3, cast: "10+")[_Raise Great Idol_ is *summoning* spell with a range of 18". This spell summons an Idol of Gork (or possibly Mork). Units that start the turn within 6" of the Idol can re-roll failed charge distance rolls. In addition, friendly units of Orcs within 6" may reroll failed To Hit rolls.]

#spell("WAAAGH!", 4, cast: "13+")[_WAAAGH!_ is a *conveyance* spell that targets all Orc units within 12". The target units will immediately make a move using the Random Movement (2D6) special rule towards the nearest enemy unit within each unit's Line of Sight. If no enemy units are within Line of Sight, they will move directly forward instead.]

#spell("WALLOPIN' KRUNCH", 4, cast: "14+")[_Wallopin' Krunch_ is a *direct damage area* spell with a range of 18" that uses the small round template. All models hit by the template suffer a Strength 6 hit with the Multiple Wounds (D3) special rule. In addition, all units within 3" of the template suffer D6 Strength 3 hits.]

#spell("FOOT OF GORK", 4, cast: "15+")[
_Foot of Gork_ is a *direct damage area* spell with a range of 24" that uses the small round template. All models hit by the template suffer a Strength 5 hit with the Multiple Wounds (D3) special rule. After resolving the effects of the spell, roll a D6 and consult the following table:

#chart((("D6", "Result"), ("1", "Your opponent places the template anywhere
on the table and resolves the effect of the
spell again. The spell then ends."), ("2-3", "The spell ends without further effect."), ("4-6", "Place the template and resolve the effect of
the spell again. After resolving the effects of
this stomp, roll again on this table.")))
]
]
#lore("LORE OF DA SAVAGE WAAAGH!")[

#spell("POWER OF DA WAAAGH!", "Lore Attribute")[A Wizard using this lore gains +1 to cast spells for each friendly Orc unit within 24" that is in close combat and has a Unit Strength of 10 of more. Conversely, a Wizard using this lore suffers \-1 to cast spells for each friendly Orc unit within 24" that is fleeing and has a Unit Strength of 10 or more.]

#spell("BRUTAL BEAST SPIRITS", "Signature Spell", cast: "6+")[_Brutal Beast Spirits_ is an *augment* spell with a range of 18" that targets Orcs. The unit gains +1 To Hit in close combat and may re-roll their pursuit distance until the start of the caster's next Magic phase.]

#spell("KUNNIN' BEAST SPIRITS", 1, cast: "5+")[_Kunnin' Beast Spirits_ is an *augment* spell with a range of 18" that targets Orcs. Your opponent must re-roll all To Hit rolls of 6 that target the unit with missile attacks and in close combat until the start of the caster's next Magic phase.]

#spell("GLOWY GREEN TUSKS", 1, cast: "6+")[_Glowy Green Tusks_ is an *augment* spell with a range of 18" that targets Orcs and their mounts. The target gains the Frenzy and Magical Attacks special rules until the start of the caster's next Magic phase.]

#spell("BREATH OF MORK", 2, cast: "7+")[_Breath of Mork_ is a *conveyance* spell with a range of 18". The target immediately makes a normal Fly (10) move (not march) as if it was the Remaining Moves phase.]

#spell("FALLIN' FISTS", 2, cast: "7+")[_Fallin' Fists_ is a *direct damage* spell with a range of 24". The target unit suffers 3D6 Attacks with Weapon Skill 3 and Strength 4, resolved as close combat attacks.]

#spell("BONE KRUSHA", 3, cast: "8+")[_Bone Krusha_ is a *magic missile* with a range of 24". The closer the target is to the caster, the more powerful the attack will be: if the target is within 12" of the caster, it suffers 2D6 Strength 5 Hits; if the target is between 12" and 18" away, it instead suffers D6 Strength 5 Hits; if the target is more than 18" away, it only suffers D3 Strength 5 Hits.]

#spell("SQUIGGLY CURSE", 3, cast: "9+")[_Squiggly Curse_ is a *direct damage* spell with a range of 12" and targets a single enemy model (even a character in a unit). Roll a D6; on a 1 it has no effect, on a 2 to 3 that model suffers one Wound, on a 4 to 5 it suffers D3 Wounds and on a 6 it suffers D6 Wounds. These Wounds have the Ignores Armour Saves special rule. Each time a model is slain by Squiggly Curse, you can add +2 to any further casting attempts made by the caster this Magic Phase.]

#spell("GORK'S WAR CRY", 4, cast: "11+")[_Gork's War Cry_ is a *direct damage* spell with a range of 18". The target suffers D6 Strength 5 which Ignores Armour Saves. In addition, the target halves all their Movement and is subject to the Always Strikes Last special rule until the start of the caster's next Magic phase.]

#spell("THE EVIL SUN", 4, cast: "15+")[Remains in play. _The Evil Sun_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move suffers a Strength 5 hit. In addition, friendly units of Savage Orcs within 6" of the Evil Sun template may re-roll To Hit rolls of 1.]
]
#lore("LORE OF DA LITTLE WAAAGH!")[

#spell("SNEAKY STEALIN'", "Lore Attribute")[When a Spell of da Little Waaagh! is successfully cast, and after its effects have been resolved, roll a D6. On a 6 you may take one dispel dice from the opponent's dispel pool and add it to your power pool. If there are no dice left in the opponent's dispel pool, then this lore attribute has no effect.]

#spell("VINDICTIVE GLARE", "Signature Spell", cast: "6+")[_Vindictive Glare_ is a *magic missile* with a range of 24" and causes 2D6 Strength 3 hits.]

#spell("OI! GERROFF!", 1, cast: "5+")[_Oi! Gerroff!_ is a *magic missile* with a range of 18". The target is 'pushed' 2D3" directly away from the caster (it does not change facing). If the target comes into contact with impassable terrain or another unit it stops 1" away and both units suffer D6 Strength 3 hits. Targets that cannot move are not pushed back at all, but still suffer D6 Strength 3 hits.]

#spell("SNEAKY STABBIN'", 1, cast: "5+")[_Sneaky Stabbin'_ is an *augment* spell with a range of 24" that targets Goblins. The target unit's close combat attacks have the Armour Piercing (1) special rule until the start of the caster's next Magic phase. In addition, while the spell is in effect, they can re-roll all failed To Hit and To Wound rolls when attacking in close combat against an enemy's flank or rear.]

#spell("BRAIN BURSTA", 1, cast: "6+")[_Brain Bursta_ is a *direct damage* spell with a range of 18" that targets a single enemy model (even a character in a unit). The target suffers a Strength 5 hit.]

#spell("MORK SAVE UZ!", 2, cast: "6+")[_Mork Save Uz!_ is an *augment* spell with a range of 24" that targets Orcs or Goblins. The target unit gains the Magic Resistance (5) special rule until the start of the caster's next Magic phase.]

#spell("GAZE OF GORK", 2, cast: "8+")[_Gaze of Gork_ is a *direct damage area* spell that uses the line template. Place it 24" in length, directly away from the caster's front arc. Any model whose base falls under the line suffers a Strength 3 hit with the Ignores Armour Saves special rule.]

#spell("GORK'LL FIX IT", 2, cast: "8+")[_Gork'll Fix It_ is a *hex* spell with a range of 24". The target unit must re-roll any of its To Hit, To Wound and armour save rolls of 6 (in shooting and close combat) until the start of the caster's next Magic phase.]

#spell("THE HAND OF GORK", 3, cast: "8+")[_The Hand of Gork_ is a *conveyance* spell with a range of 24". The target is immediately picked up and may be moved to any point on the battlefield within 4D6" of its original position, just like a summoning spell.]

#spell("ITCHY NUISANCE", 3, cast: "8+")[_Itchy Nuisance_ is a *hex* spell with a range of 24". Roll a D6. The target unit immediately reduces its Movement and Initiative by this number (to a minimum of 1), until the start of the caster's next Magic phase.]

#spell("SNEAKY DISTRACTION", 3, cast: "8+")[_Sneaky Distraction_ is a *hex aura* with a range of 12". The targets suffer \-1 To Hit with missile attacks and in close combat until the start of the caster's next Magic phase.]

#spell("NIKKIT! NIKKIT!", 4, cast: "11+")[_Nikkit! Nikkit!_ is a *direct damage* spell with a range of 12" that targets a single enemy character (even a character in a unit). If the target has one or more magic items, randomly select one of them and roll a D6 – that item is stolen on a 3+. If the caster does not already have a magic item of this type they can now use it, otherwise it is destroyed. In addition, the target suffers D3 Strength 4 Hits which Ignores Armour Saves.]

#spell("THE GREAT GREEN SPITE", 4, cast: "12+")[_The Great Green Spite_ is a *direct damage* spell with a range of 24". The target enemy unit suffers D6 Strength 4 hits with the Armour Piercing (1) special rule for every 10 points of Unit Strength the Wizard and any unit they are with have, up to a maximum of 4D6.]

#spell("MORK WANTS YA!", 4, cast: "13+")[_Mork Wants Ya!_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). The target suffers D3 Strength 10 hits.]
]
#lore("LORE OF DA BAD MOON")[

#spell("SNEAKY STEALIN'", "Lore Attribute")[When a Spell of da Bad Moon is successfully cast, and after its effects have been resolved, roll a D6. On a 6 you may take one dispel dice from the opponent's dispel pool and add it to your power pool. If there are no dice left in the opponent's dispel pool, then this lore attribute has no effect.]

#spell("SPORE MAWS", "Signature Spell", cast: "5+")[Remains in play. _Spore Maws_ is an *augment* spell with a range of 18". Each enemy unit in base contact with the target unit immediately suffers 3D6 Strength 3 hits at the end of each Magic phase.]

#spell("SQUIG LURE", 1, cast: "5+")[_Squig Lure_ is a *conveyance* spell with a range of 24" that targets Squigs. The target immediately makes a Random Move (2D6) straight forward.]

#spell("MESMERISE", 1, cast: "6+")[_Mesmerise_ is a *magic missile* with a range of 24". The target cannot choose to charge, cast spells or shoot at the Wizard or any unit they are with until the start of the caster's next Magic phase.]

#spell("NIK MAGIC", 2, cast: "6+")[_Nik Magic_ is a *hex* spell with a range of 24" that targets a single Wizard, even if in a unit. Choose one spell the target knows and roll a D6; on 1\-4 they cannot use that spell in their next Magic Phase, on a 5\-6 they cannot attempt to cast this spell for the remainder of the game.]

#spell("FACE OF DA BAD MOON", 2, cast: "7+")[Remains in play. _Face of da Bad Moon_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the Wizard gains the Terror special rule and all enemy units with Line of Sight to it suffer \-1 Leadership.]

#spell("BAD MOON RIZIN'", 3, cast: "8+")[_Bad Moon Rizin'_ is a *hex* spell with a range of 24". The target unit is subject to the Always Strikes Last special rule until the start of the caster's next Magic phase.]

#spell("CALL DA MOON", 3, cast: "10+")[_Call da Moon_ is a *direct damage area* spell with a range of 36" that uses the small round template; it scatters and inflicts damage like a Stone Thrower. If a misfire is rolled, centre the template over the caster instead.]

#spell("NIGHT SHROUD", 4, cast: "12+")[_Night Shroud_ is an *augment aura* spell with a range of 12". All missile attacks targeted against friendly units within range suffer a \-1 penalty To Hit until the start of the caster's next Magic phase. In addition, all models in any enemy unit that charges into base contact with the Wizard or the unit they are with while the spell is in effect must take a Dangerous Terrain test.]

#spell("CURSE OF DA BAD MOON", 4, cast: "15+")[
Remains in Play. _Curse of da Bad Moon_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must pass a Characteristic test or suffer a Wound which Ignores Armour Saves. The type of Characteristic test is determined by rolling on the following chart. Roll once each Magic phase, just before moving the template, and apply the result to all models affected by the curse in that Magic phase.

#chart((("D6", "Characteristic"), ("1-2", "Initiative"), ("3-4", "Strength"), ("5-6", "Toughness")))
]
]
#lore("LORE OF DA SPIDER GOD")[

#spell("SNEAKY STEALIN'", "Lore Attribute")[When a Spell of da Spider God is successfully cast, and after its effects have been resolved, roll a D6. On a 6 you may take one dispel dice from the opponent's dispel pool and add it to your power pool. If there are no dice left in the opponent's dispel pool, then this lore attribute has no effect.]

#spell("VENOMOUS SPIDERLINGS", "Signature Spell", cast: "5+")[_Venomous Spiderlings_ is a *direct damage* spell with a range of 24". The target suffers 2D6 Strength 1 Hits with the Poisoned Attacks special rule.]

#spell("CHITINOUS ARMOUR", 1, cast: "5+")[_Chitinous Armour_ is an *augment* spell with a range of 18". The target gains the Natural Armour (6+) special rule until the start of the caster's next magic phase. If the target is a Forest Goblin, they gain Natural Armour (5+) instead.]

#spell("SPEED OF DA SPIDER GOD", 1, cast: "6+")[_Speed of da Spider God_ is an *augment* spell with a range of 18" that targets Goblins. The target gains the Always Strikes First and Wall-crawler special rules until the start of the caster's next Magic phase. If the target already has the Wall-crawler special rule, they gain +1 Movement instead.]

#spell("DEADLY WEBBING", 2, cast: "7+")[_Deadly Webbing_ is a *hex* spell with a range of 24". The target treats all terrain as Dangerous Terrain for all Movement and cannot march until the start of the caster's next Magic phase.]

#spell("SCUTTLING TERRORS", 3, cast: "7+")[_Scuttling Terrors_ is a *conveyance* spell with a range of 18" that targets Goblins. The target unit may immediately make a Move as if it were the Remaining Moves phase.]

#spell("WEB OF FEAR", 3, cast: "7+")[_Web of Fear_ is a *hex aura* spell with a range of 18". Until the start of the caster's next Magic phase, the targets treats all Ararchnids as causing Fear, and must re-roll successful Terror tests from Arachnarok Spiders.]

#spell("GIFT OF DA SPIDER GOD", 3, cast: "10+")[_Gift of da Spider God_ is an *augment* spell with a range of 18" that targets Goblins and their mounts. The target gains the Poisoned Attacks and Regeneration (6+) special rules until the start of the caster's next Magic phase.]

#spell("CURSE OF DA SPIDER GOD", 4, cast: "11+")[_Curse of da Spider God_ is a *hex* spell with a range of 24". The target must re-roll successful To Hit rolls (in shooting and close combat) and armour saves until the start of the caster's next Magic phase.]

#spell("SCUTTLETIDE", 4, cast: "12+")[Remains in Play. _Scuttletide_ is a *magical vortex* that uses the large round template. Any model touched by the template at any point during its move suffers a Strength 2 Hit with the Poisoned Attacks special rule.]
]
#lore("LORE OF TROLL MAGIC")[

#spell("BIG SMARTZ", "Signature Spell", cast: "5+")[Remains in play. _Big Smartz_ is an *augment aura* spell with a range of 12". While the spell is in effect, all friendly units of Trolls within range may re-roll failed Stupidity tests.]

#spell("TROLL BRAINZ", 1, cast: "6+")[Remains in play. _Troll Brainz_ is a *hex* spell with a range of 24". While the spell is in effect, the target unit gains the Stupidity special rule and suffers \-1 to its Leadership.]

#spell("FOETID WHIRLPOOL", 1, cast: "7+")[Remains in play. _Foetid Whirlpool_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must take a Dangerous Terrain test.]

#spell("RAVENOUS RECOURSE", 2, cast: "7+")[_Ravenous Recourse_ is an *augment aura* spell with a range of 12". All friendly units of Trolls within range gain +2 to their Movement until the start of the caster's next Magic phase.]

#spell("RAPID REGENERATION", 2, cast: "10+")[_Rapid Regeneration_ is an *augment* spell with a range of 18". The target unit gains the Regeneration (5+) special rule until the start of the caster's next Magic phase. Models that already have Regeneration (4+) or better may instead re-roll failed Regeneration saves.]

#spell("TORRENT OF FILTH", 3, cast: "10+")[_Torrent of Filth_ is a *direct damage* spell. The caster makes a Breath Weapon attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit suffer a Strength 4 hit with the Ignores Armour Saves special rule.]

#spell("ACIDIC BILE", 3, cast: "11+")[_Acidic Bile_ is a *direct damage area* with a range of 18" that uses the small round template. All models under the template suffer a Strength 4 hit with the Ignores Armour Saves special rule.]
]
#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Orcs & Goblins. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", columns: 2, first: true)[
#magic-weapon("BATTLEAXE OF THE LAST BIG WAAAGH!", 85, only: "Orcs")[Roll a D6 at the start of each round of combat – the wielder of this weapon adds that number to both his Attacks and Strength in that round. However, the bearer's Weapon Skill is lowered by an amount equal to half the dice roll (i.e. 1\-2 = \-1 Weapon Skill, 3\-4 = \-2 Weapon Skill, and 5\-6 = \-3 Weapon Skill).]

#magic-weapon("WARBOSS IRONCLAW'S WAAAGH! CLEAVA", 60, only: "Common Orcs")[All hits from Warboss Ironclaw's Waaagh! Cleava Wound automatically with the Ignores Armour Saves special rule.]

#magic-weapon("BASHAS AXE OF STUNTY SMASHIN'", 50)[The wielder of this weapon has the Armour Piercing (1) special rule, and adds +1 to both his Attacks and Strength in close combat. This bonus is doubled if the wielder is in base contact with a Dwarf. In addition, the wielder causes Fear in all Dwarfs.]

#magic-weapon("BASHA'S BLOODAXE", 50, only: "Common Orcs on foot")[The wielder of Basha's Bloodaxe gains the Frenzy rule. However, they get +D6 Attacks (rolled before making their Attacks) rather than +1 and can never lose their Frenzy.]

#magic-weapon("BONEHEAD'S WHACKER", 50, only: "Savage Orcs", type: "Great weapon")[The Whacker gives the wielder the Always Strikes First special rule and allows them to re-roll failed To Wound rolls.]

#magic-weapon("SHAGA'S SCREAMING SWORD", 50)[Shaga's Screaming Sword gives the wielder the Fear special rule. In addition, they also gain +1 Strength and +1 Attack for each enemy character model within 12".]

#magic-weapon("BASHA'S BIG AXE OF BASHIN'", 30)[Basha's Big Axe of Bashin' gives wielder +1 Strength and Attacks.]

#magic-weapon("DA CHOPPIEST CHOPPA", 30, only: "Orcs")[This weapon gives the wielder +1 Strength and the Armour Piercing (3) special rule.]

#magic-weapon("KLEEVA'S CLEAVER OF CLEAVAGE", 30)[All hits with Kleeva's Cleaver of Cleavage Wound automatically. Armour saves are modified by the Strength of the bearer.]

#magic-weapon("MARTOG'S BEST BASHA", 30)[Martog's Best Basha gives the wielder +1 Weapon Skill, +1 Strength and +1 Initiative.]

#magic-weapon("THE RED FANG", 30, only: "Common Orcs")[The Red Fang gives the wielder +1 Attack and +1 To Hit in close combat.]

#magic-weapon("SNEAKY SKEWERER", 30, only: "Goblins")[The Sneaky Skewerer gives the wielder +1 To Hit and the Killing Blow special rule.]

#magic-weapon("DUFFFA'S CLUB OF DUFFIN'", 25)[Duffa's Club of Duffin' gives the wielder +3 Attacks in the first round of close combat.]

#magic-weapon("FUMPA'S CLUB OF FUMPIN'", 25)[Fumpa's Club of Fumpin' gives the wielder +1 Strength and the Quell Animosity special rule.]

#magic-weapon("HACKA'S SWORD OF HACKIN'", 25)[Hacka's Sword of Hackin' makes the wielder always hit any opponent on roll of a 2+.]

#magic-weapon("THE HUMIE HEWERS", 25, type: "Two hand weapons")[Whenever the wielder's To Hit roll on a D6 is higher than his target's Weapon Skill, the attack will not only hit regardless of the score normally needed to hit, but will also be multiplied into 2 Hits.]

#magic-weapon("KRUMPA'S CLUB OF CRUMPIN'", 25, type: "Great weapon")[Krumpa's Club of Crumpin' gives the wielder the Ignores Armour Saves special rule.]

#magic-weapon("PORKO'S PIGSTIKKA", 25, only: "Mounted Orcs", type: "Light lance")[On any turn that they charge, Porko's Pigstikka gives the wielder +1 Attack for each rank that the unit they are attacking has.]

#magic-weapon("ULAG'S AK'RIT AXE", 25)[Ulag's Ak'rit Axe allows the wielder to re-roll any failed To Hit rolls.]

#magic-weapon("BIGGER, CHOPPIER AXE", 20, only: "Orcs", type: "Great weapon")[This weapon gives the wielder the Killing Blow special rule.]

#magic-weapon("KURBOG'S CURMUDGEONLY CLOBBERA", 20)[Any model Wounded (but not slain) by Kurbog's Curmudgeonly Clobbera may not attack this close combat phase. If they have already attacked this close combat phase, they may not attack in the next close combat phase.]

#magic-weapon("SMASHA AND KUNNIN'", 20, only: "Orcs", type: "Two hand weapons")[When targeting a Wizard in close combat, the wielder may re-roll failed rolls To Hit and gains the Multiple Wounds (D3) special rule. When targeting a Character that is not a Wizard in close combat, the wielder may re-roll failed rolls To Wound and gains the Killing Blow special rule.]

#magic-weapon("BACKSTABBER'S BLADE", 15, only: "Goblins")[The Backstabber's Blade gives the wielder the Poisoned Attacks special rule. In addition, they get +1 Strength if they attack the enemy to their flank, or +2 Strength if they attack the enemy in their rear.]

#magic-weapon("WEEPWOOD BIG SHIV", 15, only: "Savage Orc", type: "Additional hand weapon")[The Strength of this weapon is increased by 1 for the remainder of the game for each unsaved Wound it inflicts on a Monstrous Creature or Monster. Roll to Wound individually against these Troop Types.]

#magic-weapon("THE BLACK FANG", 10)[If the bearer rolls a natural 6 To Hit, that Attack automatically Wounds with the Multiple Wounds (D3) special rule.]

#magic-weapon("CLUB WIV A NAIL IN'", 10, type: "Great weapon")[The wielder gains the Random Attacks (D6) special rule.]

#magic-weapon("GREATDRAKE TOOF", 10, only: "Savage Orc")[If the bearer rolls a natural 6 To Wound, that Attack has the Multiple Wounds (D6) special rule.]

#magic-weapon("LUCKY'S DIRK", 10, only: "Goblins")[Lucky's Dirk gives the wielder +1 Strength for each enemy Magic Item in base contact.]

#magic-weapon("METALRIPPA'S KLAW", 10, type: "Additional hand weapon")[The wielder gains the Armour Piercing (1) special rule.]

#magic-weapon("MOONHONED SHIV", 10, only: "Night Goblin")[The wielder gains +1 Attack. In addition, they gain the Feigned Flight ability from the Skirmishers special rule. Each time they use this ability, they gain +1 Attack for the duration of the battle.]

#magic-weapon("STABBY'S RUSTY STIKKA", 10, only: "Goblins")[The wielder will automatically Wound on a To Hit roll of a natural 6.]

#magic-weapon("SWORD OF BORK", 10)[Any unit joined by the bearer of the Sword of Bork that fails their Animosity test may roll 2D6 on the Animosity table and discard the lowest result.]

#magic-weapon("WOLLOPA'S ONE HIT WUNDA", 10, one-use: true)[Wollopa's One Hit Wunda may be used at the start of any close combat phase when it is the wielder's turn to attack. The wielder may replace all their normal Attacks with a special attack that is resolved at +3 Strength with the Heroic Killing Blow special rule.]

#magic-weapon("BIG SPIRIT STIKK", 5, only: "Savage Orc Wizards")[The wielder of this item gains the Multiple Wounds (D3) special rule. Against Monstrous Creatures and Monsters, they gain the Multiple Wounds (D6) special rule.]

#magic-weapon("OWZAT'S CLUB OF SMACKIN'", 5)[An Infantry Character model which suffers an unsaved Wound (but is not slain) by Owzat's Club of Smackin' is immediately knocked clean out of combat and suffers a Strength 4 Hit. Move the model D6" backwards (measure from the back of any unit it is in), stopping at least 1" away from other units or impassable terrain.]
]

#magic-item-section("armour")[
#magic-armour("ARMOUR OF GORK", 70, type: "Medium armour")[The wearer has +D3 Toughness. Roll to determine the armour's effectiveness the first time the wearer is hit each turn, and use the result for the rest of the turn. In addition, the wearer has the Impact Hits (D6) special rule.]

#magic-armour("BULAK'S BLOODY ARMOUR", 45, only: "Black Orcs", type: "Heavy armour")[This armour gives the wearer the Magical Ward (4+) special rule. However, if they roll a 1 for their Ward save, the number of Wounds suffered is doubled.]

#magic-armour("ARMOUR OF MORK", 30, type: "Medium armour")[The Armour of Mork gives the wearer and any unit they join the Magic Resistance (2) special rule.]

#magic-armour("ARMOUR OF PROTECTYNESS", 30, type: "Medium armour")[The Armour of Protectyness gives the wearer the Regeneration (5+) special rule.]

#magic-armour("IRONSKIN SHIELD", 30, type: "Shield")[The Ironskin Shield gives the bearer the Magical Ward (5+) special rule.]

#magic-armour("TROLLHIDE TROUSERS", 25, only: "Common Orcs or Common Goblins")[This armour gives the wearer the Natural Armour (6+) and Regeneration (5+) special rules.]

#magic-armour("UGBRAG'S LUCKY SHIELD", 20, type: "Shield")[Ugbrag's Lucky Shield enables the wearer to ignore the first Wounding Hit (after saves) suffered in the game.]

#magic-armour("NOBBLA'S 'ELMET", 15, only: "Common Goblins")[Nobbla's Helmet gives the wearer a 6+ armour save and the Magical Ward (6+) special rule.]

#magic-armour("THE SPIKY SHOULDER PLATES", 10, only: "Common Orcs on foot")[The bearer gains a 6+ armour save and the Impact Hits (1) special rule.]

#magic-armour("SPITEFUL SHIELD", 10, only: "Goblins", type: "Shield")[For each To Hit roll of a 1 against the bearer in close combat, the Spiteful Shield inflicts a Strength 5 Hit against the model that struck the blow.]
]

#magic-item-section("talisman", columns: 2)[
#talisman("HEADDRESS OF MANY EYES", 30, only: "Forest Goblin on foot")[The wearer can only be hit in close combat on To Hit rolls of a natural 6.]

#talisman("AMULET OF PROTECTYNESS", 25)[Whenever the bearer of the Amulet of Protectyness suffers a Wound, they count as having the same armour and Ward save as the model that caused the Wound.]

#talisman("THE CLAMMY COWL", 25, only: "Night Goblins")[All Close Combat attacks targeting the wearer of this item must re-roll successful rolls To Hit.]

#talisman("LUCKY SHRUNKEN HEAD", 25, only: "Savage Orc Wizards")[Any unit joined by the bearer of the Lucky Shrunken head may re-roll 1's when taking Magical Ward saves.]

#talisman("MOONSTONE MEDALLION", 25, only: "Night Goblin")[This item gives the bearer the Magical Ward (6+) special rule and may re-roll failed Magical Ward saves.]

#talisman("SIZZLA'S SHINY BAUBLES", 25)[Sizzla's Shiny Baubles can be used against any successfully cast enemy spell that targets the bearer or the unit they are with. Roll a D6; on 1\-3 nothing happens; on a 4+ the spell is reflected back at the caster and their unit and affects them instead, following all the normal rules for the spell. The original caster may then attempt to dispel their own spell using any remaining power dice.]

#talisman("THE COLLAR OF ZORGA", 20)[War Beasts, Monstrous Beasts, Monstrous Creatures, Monsters and all mounts require 6's to hit the bearer. In addition, the wearer can attempt to take control of any creatures in base contact mentioned above at the start of each round of Close Combat. Each player rolls a D6 for each beast and add the unmodified Leadership of the wearer of the Collar and each beast he is trying to control. If the Orc player scores equal or higher, he takes control of that beast who will now attack any friendly models in base contact for the remainder of the close combat phase (including Stomps, but not Impact Hits). If there are no friendly models for the beast to attack, it simply makes no attacks this round. If the Orc player scores lower, the beast may act normally this turn.]

#talisman("EFFIGY OF MORK", 20, only: "Savage Orcs")[All close combat attacks made against the bearer of the Effigy of Mork suffer \-1 To Hit.]

#talisman("MORK'S EYE PEBBLE", 20, only: "Goblins", one-use: true)[This item may be used at the start of any enemy shooting phase. If they do so, the bearer and all friendly units within 12" gain the Magical Ward (5+) special rule against missile attacks for the duration of this phase.]

#talisman("WARBOSS UMM'S BEST BIG BOSS'S 'AT", 20)[Warboss Umm's Best Big Boss's 'At gives the wearer the Magical Ward (4+) special rule. However, if the wearer fails its Magical Ward save at any point, it will no longer have any effect from the start of the next player turn.]

#talisman("DAUBING OF MORK", 15, only: "Orcs on foot")[Enemy models must re-roll 6's To Wound against the bearer of this item.]

#talisman("NECKLACE OF BLESSED TEEF", 15)[The bearer of the Necklace of Blessed Teef may re-roll any armour or Ward Save rolls of 1.]

#talisman("SPARKLY WIZARD FINDA", 15)[The bearer of the Sparkly Wizard Finda has the Hatred (Wizards) and Magic Resistance (3) special rules.]

#talisman("DOKK JUICE", 10, only: "Savage Orc Wizards", one-use: true)[This item may be used at the start of any turn. Once used, the imbiber gains the Regeneration (4+) special rule for the remainder of the turn.]

#talisman("GLOWIN' TATTOOZ", 10, only: "Savage Orc")[The bearer of this item may re-roll failed Magical Ward save rolls.]

#talisman("GLOWY GREEN AMULET", 10)[Instead of making a normal dispel attempt, the wearer of the Glowy Green Amulet may attempt to nullify any enemy spell cast at the bearer or the unit they are with by a rolling a number of dice equal to the number of dice used to cast the spell. As long as no 1's are rolled, the spell is dispelled. However, if two or more 1's are rolled, the spell gets through automatically and the wearer is killed outright (with no saves allowed).]

#talisman("GLOWY HOWZIT", 10)[This item gives the bearer the Magical Ward (5+) special rule. At the end of each phase in which the model suffered 1 or more Wounds, roll a D6 for each failed Ward save roll they made. On the roll a 1, the Glowy Howzit cannot be used for the remainder of the game.]
]

#magic-item-section("arcane", columns: 2)[
#arcane-item("STAFF OF SNEAKY STEALIN'", 60, only: "Goblins", type: "Staff")[At the start of each of your Magic phases, the Staff of Sneaky Stealin' allows you to remove one dice from the opponent's Dispel dice pool and add it to your own Power dice pool.]

#arcane-item("SKULL WAND OF KALOTH", 50, type: "Staff")[The Skull Wand unleashes a curse on a single enemy model that is in base contact with the bearer at the start of the Close Combat phase. The victim must pass a Leadership test (using its own, unmodified, Leadership) or be slain instantly, with no save of any kind allowed. In addition, the bearer of the Skull Wand causes Terror.]

#arcane-item("GREAT GREEN VISIONS", 45, only: "Orcs", type: "Relic")[The bearer of this item may re-roll failed channelling rolls.]

#arcane-item("SPEAKY-SKULL FETISH", 35, type: "Relic")[Every time the bearer of this item rolls a 6 on their channelling roll, they gain an extra dice to the pool.]

#arcane-item("BEAST-LURE GLYPHS", 30, only: "Savage Orcs", type: "Charm", one-use: true)[The caster may cast one of their spells (with a casting value of 10 maximum) without using any power dice. The spell counts as having been cast on their minimum casting value and may be dispelled as normal.]

#arcane-item("IDOL OF MORK", 30, only: "Orcs", type: "Relic")[At the start of your magic phase, the Idol of Mork adds one power dice to your power pool for every friendly Orc unit (any type) with 10 or more Unit Strength in combat within 24" if the bearer. However, it removes one power dice from your power pool for every friendly fleeing Orc (any type) with 10 or more Unit Strength unit within 24" of the bearer.]

#arcane-item("SCUTTLEPOT", 30, only: "Forest Goblins", type: "Relic")[The bearer of this item gains a +D3 casting bonus. Roll for each casting attempt.]

#arcane-item("DITTO'S DOUBLE DOIN' DOODAHS", 25, type: "Relic")[The bearer of Ditto's Double Doin' Doodahs may choose to attempt to cast one of their spells twice per Magic phase.]

#arcane-item("LOONSTONE TALISMAN", 20, type: "Charm", one-use: true)[Night Goblin Wizard only. This item may be used at the start of any enemy Magic phase. Each time a Wizard with this item dispels an enemy spell this turn, they gain +1 Power Dice that they can use in their next Magic phase (up to a maximum of +3 dice).]

#arcane-item("BUZGOB'S KNOBBLY STAFF", 20, type: "Staff")[Buzgob's Knobbly Staff allows the wielder to re- roll all power dice used to cast a spell once per Magic phase (before rolling any Ultimate Power dice). This cannot be used if a miscast is rolled.]

#arcane-item("MORK'S BONEY BITZ", 20, only: "Savage Orcs", type: "Relic")[The bearer of this item gains +1 to cast for every Monster within 18".]

#arcane-item("SHAMANIC SKULLCAPE", 20, only: "Common Orcs", type: "Relic")[The bearer of this item gains a +1 casting bonus. In addition, if they successfully kill an enemy Wizard in close combat or with a spell, you may choose one of the spells they knew at that time. The model may then cast that spell themselves for the remainder of the game.]

#arcane-item("STAFF OF BADUUM", 20, type: "Staff")[The bearer of this item gains a +2 casting bonus to one of their spells, chosen at the start of the battle. However, in case a Miscast is rolled when casting that spell, add 1 to the result rolled on the Waaagh! Miscast chart.]

#arcane-item("WAAAGH! PAINT", 15, only: "Savage Orcs", type: "Relic", common: true)[If the wearer of the Waaagh! Paint is in close combat at the start of your Magic phase, they gain a +2 to casting bonus.]

#arcane-item("AMBERBONE HOARD", 10, only: "Orc Wizard", type: "Relic")[The bearer of this item gains +1 Strength and +1 Attack.]

#arcane-item("DA HAG'S BREW", 10, type: "Relic")[In addition to the Lores of Magic they may normally know spells from, the bearer of Da Hag's Brew knows the Signature spell from the Lore of Troll Magic.]

#arcane-item("DANGLY WOTNOTZ", 10, type: "Charm", one-use: true)[When casting a spell, the bearer of the Dangly Wotnotz may use it to add +1 to the result of one of the dice rolled. This may cause Ultimate Power or prevent a Miscast.]

#arcane-item("DA GREAT ZAPPA SQUIG", 5, only: "Savage Orcs", type: "Charm", one-use: true)[This item can be used at the start of any of your Magic phases. Roll a D6 and consult the table below:

#chart((("D6", "Result:"), ("1", "The bearer suffers a Strength 5 Hit."), ("2-4", "The bearer gains +1 Power dice."), ("5-6", "The bearer gains +D3 Power dice.")))
]
]

#magic-item-section("enchanted", columns: 2)[
#enchanted-item("THE CROWN OF GORK", 40, only: "Common Orc")[All friendly units within 12" of the bearer may re-roll failed Animosity tests.]

#enchanted-item("SQUIGRILER PIPES", 35, only: "Night Goblins")[This item may be used in your Remaining Moves sub-phase. When used, all Squig units within 18" will immediately make a Random Move (using their normal Random Movement) directly towards the bearer of this item. If they get into base contact with the bearer, it is immediately removed as a casualty.]

#enchanted-item("BIGGED'S 'ED KICKIN' BOOTS", 30, only: "Common Orcs and Black Orcs on foot")[The wearer of Bigged's 'Ed Kickin' Boots gains the Stomp (D3) special rule.]

#enchanted-item("IRONBACK BOAR", 30, only: "Common Orcs and Black Orcs")[War Boar. The Ironback Boar has Strength 4 and the Impact Hits (D3) special rule.]

#enchanted-item("MOONFACE MOMMET", 30, only: "Night Goblins", one-use: true)[This item can be used against an enemy character (even within a unit) within 12" and Line of Sight during your Shooting phase. The target must take a Panic test. If passed, the model may not voluntarily move in their next turn.]

#enchanted-item("THE PIPES OF DOOM", 30, only: "Night Goblins", one-use: true)[The Pipes of Doom can be used at the start of the Shooting Phase. All enemy War Beasts (including Mixed Units), Cavalry, Monstrous Beasts, Monstrous Cavalry, Chariots (except those that do not have any mounts pulling them) and Monsters within 12" must take a Panic test.]

#enchanted-item("TRICKSY TRINKET", 30, only: "Goblins (of any type)")[No units in base contact with the wearer of the Tricksy Trinket may take Magical Ward saves.]

#enchanted-item("DA THINKIN' ORC'S 'AT", 25, only: "Common Orc")[The wearer of Da Thinkin' Orc's 'At gains +1 Initiative. In addition, the wearer and any unit they have joined is not subject to the Animosity special rule.]

#enchanted-item("GLAREFACE'S GRIN", 25, only: "Common Goblins", one-use: true)[This item may be used the start of any of your shooting phases. Pick a point on the battlefield within 6" of the bearer. All enemy units within 12" and with Line of Sight to that point suffers D6 Strength 5 Hits.]

#enchanted-item("THE HORN OF URGOK", 25, one-use: true)[The horn can be used at the start of any of your turns. When this horn is sounded, all friendly units within 24" receive +1 Leadership and all enemy units within 24" suffer a \-1 penalty to their Leadership until the end of the turn.]

#enchanted-item("SAVAGE TROPHY", 25, only: "Savage Orc")[Army General only. The bearer of this item and any friendly units of Savage Orcs within 12" gain +1 to their Leadership.]

#enchanted-item("EL GROBIS' MASK OF THE FEARSOME RENOWN", 20, only: "Goblin Bosses")[The bearer gains the Fear and Hidden special rules. In addition, it gains the Always Strikes First and Armour Piercing (1) special rules on the turn that it is revealed or charges into an enemy unit's flank or rear.]

#enchanted-item("GRISLY TROPHY RACK", 20, only: "Warboss or Big Boss")[All enemy units within 6" of the bearer of the Grisly Trophy Rack suffer \-1 modifier to their Leadership.]

#enchanted-item("MAD CAP MUSHROOMS", 20, only: "Night Goblins", one-use: true)[If the model bearing the Mad Cap Mushrooms is in a unit containing one or more Night Goblin Fanatics, each Fanatic from this unit inflicts an additional D6 Hits on any unit they move into base contact with this turn.]

#enchanted-item("NIBBLA'S 'ITTY RING", 20, bound: (power: 4))[Nibbla's 'Itty Ring contains the _Vindictive Glare_ spell from the Lore of the Little Waaagh! Roll a D6 each time it has successfully been cast; on the roll of a 1, the caster suffers a Strength 5 Hit.]

#enchanted-item("SPIKER SEEDS", 20, only: "Goblins", one-use: true)[This item can be used if the bearer is charged and chooses to Hold or Stand & Shoot. All models in the enemy unit must take a Dangerous Terrain test before they begin their charge move (at the same time as any Stand & Shoot reaction is resolved).]

#enchanted-item("WARBOSS IMBAD'S IRON GNASHAS", 20, only: "Common Orcs and Black Orcs")[The model wearing Imbad's Iron Gnashas gains +1 Attack with the Killing Blow special rule. This attack does not benefit from any other weapon rules the wearer might have.]

#enchanted-item("BEASTKILLA SLOP", 15, only: "Goblins", one-use: true)[This item can be used at the start of any close combat phase. One enemy monster in base contact with the bearer of this item must take a number of Toughness tests equal to their starting number of Wounds. Each failed Toughness test causes D3 Wounds with no saves allowed. This has no effect against Daemons or Animated Constructs.]

#enchanted-item("BRIMSTONE BAUBLE", 15, only: "Goblins")[If the bearer of the Brimstone Bauble is slain in close combat (not including pursuit), all units (friends and foe) in base contact suffer D6 Strength 6 Hits, distributed as Hits from shooting. Any Wounds caused count towards combat resolution.]

#enchanted-item("EYE-BITER ASH", 15, only: "Goblins", one-use: true)[This item can be used at the start of any close combat phase. When used, roll a D6 and consult the table below:

#chart((("D6", "Result:"), ("1", "The bearer and their unit suffer -1 To Hit in
close combat this phase."), ("2", "No effect"), ("3-6", "All enemy units in base contact with the
bearer suffer -1 To Hit in close combat this
phase.")))
]

#enchanted-item("GUZZLA'S BATTLE BREW", 15)[Roll a D6 for the bearer of Guzzla's Battle Brew at the start of the game and consult the table below to see what effect it has:

#chart((("D6", "Result:"), ("1", "The model gains the Stupidity special rule."), ("2-4", "The model gains the Hatred special rule."), ("5-6", "The model gains the Hatred and Frenzy
special rule.")))
]

#enchanted-item("THE GOLDEN TOOF", 15, only: "Orcs")[The bearer of this item and any unit that they join may roll an additional dice and discard the highest result when taking Break tests. This has no effect if the bearer is a Lone Character.]

#enchanted-item("MAAD'S MAP", 15, only: "Model on foot")[Before deployment, roll a D6. On 4+, the bearer of Maad's Map and one unit they must join gains the Scouts special rule. On a 1\-3, the unit has gotten lost and gains the Ambushers special rule instead.]

#enchanted-item("ROTTING DANKHOLD SPORES", 15, only: "Dankhold Trollboss", one-use: true)[This item may be used at the start of any round of Close Combat. All enemy units must pass D6 Toughness tests or suffer a Wound which Ignores Armour Saves for each failed test.]

#enchanted-item("'EADBUTTIN' 'AT", 10, only: "Orcs")[The 'Eadbuttin' 'At gives the wearer a special attack in challenges. This attack causes a hit at the wearer Strength with the Multiple Wounds (D3) special rule. This attack does not benefit from any other weapon rules the wearer might have.]

#enchanted-item("LOONSTONE TEEFCAPS", 10, only: "Mounted Night Goblins")[The close combat attacks of the bearer's mount have the Armour Piercing (2) special rule.]

#enchanted-item("PET GRIBBLY", 10, only: "Dankhold Trollboss")[Every time the bearer of this item suffers an unsaved Wound, roll a D6. On a 1, the Pet Gribbly is squished and removed from the game. When the Pet Gribbly is squished, the bearer gains the Hatred and Frenzy special rule for the remainder of the game.]

#enchanted-item("LUCKY BONE", 10, only: "Savage Orc")[The bearer of this item may re-roll a single To Hit or To Wound roll of 1 each close combat phase.]

#enchanted-item("CRUNCHY SHINIES", 5, only: "Dankhold Trollboss", one-use: true)[This item may be used at the start of any of your Movement phases. For the duration of this turn, the bearer gains +2 Movement and +2 Initiative.]

#enchanted-item("FUNGUS WINE", 5, only: "Night Goblins", one-use: true)[This item may be used at the start of any of your turns. Until the start of your next turns, the model and any unit they are with have the Immunity (Psychology) special rule.]

#enchanted-item("WEB-STRUNG CLOAK", 5, only: "Forest Goblins")[Enemy units in base contact with the bearer of this item roll one dice less for their flee moves.]
]

#magic-item-section("standard")[
#magic-standard("MORK'S SPIRIT TOTEM", 50)[The unit carrying this standard gains the Magic Resistance (D6) special rule. Roll to determine the effectiveness of the banner every time a spell is cast on the unit carrying it. For example, if a 5 is rolled, the unit with have Magic Resistance (5) against that spell. In addition, all magic items belonging to enemy units that are in base contact with the bearer of Mork's Spirit Totem do not work and will count as mundane versions of the same type.]

#magic-standard("THE BAD MOON BANNER", 40, only: "Night Goblins")[The model carrying this standard and any unit they join gains the Stubborn special rule, and enemies suffer \-1 To Hit with missile weapons against them. In addition, any enemy model that charges into base contact with the bearer or their unit must take a Dangerous Terrain test.]

#magic-standard("ROWDY GROTT'S BIG RED RAGGEDY BANNER", 35, only: "Common Goblins")[All Goblins within 12" of this standard have the Cold-blooded special rule.]

#magic-standard("DA ANGRY LADZ FLAG", 25)[The unit carrying this standard gains the Frenzy special rule.]

#magic-standard("GORK'S WAAAGH! BANNER", 25, only: "Orcs")[The unit carrying this standard gains D6" to its charge distance. This does not affect the unit's maximum charge range for the purpose of determining mandatory charge declarations. If the charge is failed, the unit will move forward its normal failed charge distance.]

#magic-standard("SPIDER BANNER", 25, only: "Forest Goblins")[The unit carrying this standard gain the Poisoned Attacks special rule.]

#magic-standard("TOTEM OF THE SPIDER GOD", 20, only: "Forest Goblins")[The unit carrying this standard gains the Multiple Wounds (2) special rule (including mounts).]

#magic-standard("THE EVIL SUN BANNER", 15)[The unit carrying this standard may re-roll any failed Animosity tests.]

#magic-standard("DA BANNER OF DA NOMADZ", 10, only: "Goblin Wolf Riders or Snarlfang Riders")[The unit carrying this standard may re-roll 1's for their charge, flee or pursuit rolls.]

#magic-standard("THE BASHIN' FLAG OF BORK", 10)[The unit carrying this standard ignores their first failed Animosity roll of the game – it passes the test instead.]

#magic-standard("GUFF'S WINDY BANNER", 10)[The unit carrying this standard may re-roll failed Panic tests.]

#magic-standard("NOGG'S BANNER OF BUTCHERY", 10, one-use: true)[This standard may be used at the start of any close combat phase. All models in the unit (except mounts) gain +1 Attack for the remainder of the close combat phase.]

#magic-standard("BANNER OF THE WILDZ", 5)[The unit carrying this standard may re-roll failed Dangerous Terrain tests.]
]

= CHARACTERS

#unit("ORC BOSSES",
  first: true,
  profiles: (
    (name: "Orc Warboss", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 4, a: 4, ld: 9, points: 115),
    (name: "Orc Big Boss", m: 4, ws: 5, bs: 3, s: 5, t: 5, w: 2, i: 3, a: 3, ld: 8, points: 70),
  ),
  troop-type: "Infantry (Character, Common Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Size Matters, Waaagh!",
  upgrades: (
    rule("Savage Orc")[The model gains the Frenzy and Magical Ward (6+) special rules. This changes their Troop Type to Infantry (Character, Savage Orc).],
    rule("Black Orc")[The model gains +1 Weapon Skill, Armed to da Teef, Immunity (Psychology) and Quell Animosity special rules. This changes their Troop Type to Infantry (Character, Black Orc).],
  ),
  options: [
- May be upgraded to one of the following:
  - Black Orc +20 points
  - Savage Orc +20 points
- May choose any of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour (Common and Black Orc only) +9 points
  - Heavy armour (Black Orc only) +18 points
- May take a shield +5 points
- May be mounted on one of the following:
  - War Boar +20 points
  - Grunta (Common Orc only) +40 points
  - Boar Chariot (Common or Black Orc only, replacing one of the crew) +70 points
  - Wyvern (Warboss only) +160 points
  - Maw-grunta (Common Orc Warboss only, replacing one of the crew) +235 points
  - Maw-krusha (Warboss only) +250 points
- One Orc Big Boss may carry the Battle Standard +25 points
- An Orc Big Boss may take Magic Items up to a total of 50 points
- An Orc Warboss may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("ORC SHAMANS",
  profiles: (
    (name: "Weirdnob", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 3, a: 2, ld: 8, points: 190),
    (name: "Weirdboy", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 2, i: 2, a: 1, ld: 7, points: 80),
  ),
  troop-type: "Infantry (Character, Common Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  magic: "A Weirdboy is a Level 1 Wizard. A Weirdnob is a Level 3 Wizard. They choose spells from the Lore of da",
  magic-body: [
Big Waaagh!
  ],
  special-rules: "Size Matters",
  upgrades: (
    rule("Savage Orc")[The model gains the Frenzy and Magical Ward (6+) special rules. This changes their Troop Type to Infantry (Character, Savage Orc). A Savage Orc Shaman can use spells from the Lore of da Big Waaagh! or da Savage Waaagh!],
  ),
  options: [
- May be upgraded to a Savage Orc +15 points
- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - War Boar +20 points
  - Boar Chariot (Common Orc only, replacing one of the crew) +70 points
  - Wyvern (Weirdnob only) +160 points
- A Weirdboy may take Magic Items up to a total of 50 points
- A Weirdnob may take Magic Items up to a total of 100 points
  ],
)

#unit("GOBLIN BOSSES",
  profiles: (
    (name: "Goblin Warboss", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 3, i: 4, a: 4, ld: 8, points: 60),
    (name: "Goblin Big Boss", m: 4, ws: 4, bs: 5, s: 4, t: 4, w: 2, i: 3, a: 3, ld: 7, points: 35),
  ),
  troop-type: "Infantry (Character, Common Goblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Fear Elves",
  upgrades: (
    rule("Night Goblin")[The model gains the Hatred (Dwarfs) special rule. This changes their Troop Type to Infantry (Character, Night Goblin).],
    rule("Forest Goblin")[The model gains the Forest Strider special rule. This changes their Troop Type to Infantry (Character, Forest Goblin).],
  ),
  options: [
- May be upgraded to one of the following:
  - Night Goblin free
  - Forest Goblin free
- May choose one of the following:
  - Additional hand weapon +5 points
  - Spear +5 points
  - Light lance +5 points
  - Polearm +10 points
  - Great weapon +15 points
- May take a shortbow +4 points
- May choose one of the following:
  - Light armour +3 points
  - Medium armour (Common and Night Goblin only) +9 points
- May take a shield +5 points
- May be mounted on one of the following:
  - Giant Wolf (Common Goblin only) +15 points
  - Giant Spider (Forest Goblin only) +15 points
  - Snarlfang (Common Goblin only) +40 points
  - Gigantic Spider (Forest Goblin only) +40 points
  - Great Cave Squig (Night Goblin only) +40 points
  - Wolf Chariot (Common Goblin only, replacing one of the crew) +45 points
  - Arachnarok Spider (Forest Goblin Warboss only, replacing one of the crew) +255 points
- One Goblin Big Boss may carry the Battle Standard +25 points
- A Goblin Big Boss may take Magic Items up to a total of 50 points
- A Goblin Warboss may take Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
)

#unit("GOBLIN SHAMANS",
  profiles: (
    (name: "Oddnob", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 3, i: 3, a: 2, ld: 7, points: 160),
    (name: "Oddgit", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 2, i: 2, a: 1, ld: 7, points: 60),
  ),
  troop-type: "Infantry (Character, Common Goblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "An Oddgit is a Level 1 Wizard. An Oddnob is a Level 3 Wizard. They choose spells from the Lore of da",
  magic-body: [
Little Waaagh!
  ],
  special-rules: "Fear Elves",
  upgrades: (
    rule("Night Goblin")[The model gains the Hatred (Dwarfs) and Magic Mushrooms special rules. This changes their Troop Type to Infantry (Character, Night Goblin). A Night Goblin Shaman can use spells from the Lore of da Little Waaagh! or da Bad Moon.],
    rule("Forest Goblin")[The model gains the Forest Strider and Spider Venom special rules. This changes their Troop Type to Infantry (Character, Forest Goblin). A Forest Goblin Shaman can use spells from the Lore of da Little Waaagh! or da Spider God.],
  ),
  options: [
- May be upgraded to one of the following:
  - Night Goblin +10 points
  - Forest Goblin +15 points
- May take an additional Wizard Level +35 points
- May be mounted on one of the following:
  - Giant Wolf (Common Goblin only) +18 points
  - Giant Spider (Forest Goblin only) +21 points
  - Wolf Chariot (Common Goblin only, replacing one of the crew) +45 points
  - Gigantic Spider (Forest Goblin only) +48 points
  - Arachnarok Spider (Forest Goblin only, replacing one of the crew) +255 points
- An Oddgit may take Magic Items up to a total of 50 points
- An Oddnob may take Magic Items up to a total of 100 points
  ],
)

#unit("GIANT RIVER TROLL HAG",
  breakable: true,
  profiles: (
    (name: "Giant River Troll Hag", m: 5, ws: 3, bs: 1, s: 6, t: 5, w: 6, i: 1, a: "*", ld: 6, points: 270),
  ),
  troop-type: "Monster (Character, Troll)",
  base-size: "50x100 or 60x100",
  equipment: "Hand weapon",
  magic: "A Giant River Troll Hag is a Level 2 Wizard who choose spells from the Lore of Troll Magic.",
  special-rules: "Loner, Marsh Strider, Regeneration (4+), River Strider",
  special-rules-body: (
    rule("Slimy Shanks")[Enemies attempting to attack a Giant River Troll Hag in close combat suffer a \-1 penalty to their To Hit rolls.],
    rule("Swamp Breath")[This is a Strength 3 Breath Weapon with the Ignores Armour saves special rule. A unit that takes casualties from to this attack suffers \-2 to its Leadership until the start of your next turn.],
    rule("Water Wise")[Unless she is within a water feature of any type (including rivers, marshes, swamps, etc), the Giant River Troll Hag has the Stupidity special rule. If the test is failed and there is one or more water features on the table, the Troll Hag moves towards the closest of these instead of straight forwards.],
  ),
  options: [
- May take an additional Wizard Level +35 points
- May take Magic Items up to a total of 100 points

- *Troll Hag Special Attacks:* To determine what happens in each Close Combat phase, pick a unit in base contact with the Troll Hag and roll a D6 on one of the following tables. Which table you use depends on the size of the Troll Hag's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*TIDDLERS TABLE *_Use this chart when fighting Infantry, Large Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Suck out its Marrow"), ("2-3", "Pick up and…"), ("4-5", "Crush with Stump"), ("6", "Grind its Bones")))

*WHOPPERS TABLE *_Use this chart when fighting Monsters, Monstrous Creatures, Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1-2", "Smother"), ("3-4", "Mother"), ("5-6", "Mither")))

*\- Suck out its Marrow:* The unit suffers D6 Strength 5 hits. For every wound the target loses, the Troll Hag gains one, up to its starting number. *\- Pick up and…:* The Troll Hag stoops down and grabs a single Character in base contact from the target unit (Troll Hag's choice). The Troll Hag grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Net: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Troll Hag should be slain, any enemy trapped in its bag are freed at the end of the
battle, and no longer counts as casualties."), ("2", "Toss Back: The victim suffers D3 Strength 6 Hits which Ignores Armour saves, and D6
Strength 3 hits are inflicted on the unit (save as normal)."), ("3", "Send Packing: The Troll Hag will attempt to throw the victim in the nearest water feature (such
as a river, marsh or swamp) within 12\". The victim is automatically removed as a casualty
unless they have the Aquatic special rule in which case the model lands unharmed in the water.
If no water feature is in range, treat this as a Toss Back result instead."), ("4", "Squish: The model is removed as a casualty."), ("5", "Gobble: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Troll Hag had rolled the Stuff into Net result, and then
choose another victim. Roll again on this table to see what the Troll Hag does with it.")))

*\- Crush with Stump:* All models in base contact, friend or foe, suffer a Strength 6 hit. *\- Grind its Bones:* The Troll Hag may target a single model in base contact. This model suffers a single Strength 6 hit with the Multiple Wounds (D3) special rule. *\- Smother:* The target suffers D3 Wounds which Ignores Armour saves. This has no effect on Animated Constructs. In addition, the target may not make any attacks until the Troll Hag is either slain or rolls a different result on its special attack table. *\- Mother:* The target takes a single Strength 6 hit with the Multiple Wounds (D3) special rule. If the target survives the attack, it may not attack until the start of your next turn. *\- Mither:* Neither the Troll Hag nor the target actually fight if they have not already done so this round. The Troll Hag automatically wins the combat by 2 points or more. In addition, the target has its Weapon Skill reduced to 1 until the end of the next turn. This result has no effect against Animated Constructs.
  ],
)

#unit("WARCHANTER",
  profiles: (
    (name: "Warchanter", m: 4, ws: 4, bs: 3, s: 5, t: 5, w: 2, i: 3, a: 2, ld: 8, points: 100),
  ),
  troop-type: "Infantry (Character, Common Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Size Matters",
  special-rules-body: [
- *Violent Fury:* Any Orc unit joined by a Warchanter may re-roll 1's To Wound in close combat.
- *Warbeats:* A Warchanter knows the three Warbeats listed below. They may attempt to use one at the start of each of your turns by taking a Leadership test on their own unmodified Leadership. If passed, the Warbeat is answered and take immediate effect. Each Warbeat lasts until the start of your next turn. A friendly unit can only be under the effect of one Warbeat at a time.
  - *Fixin' Beat:* The unit gains the Regeneration (6+) special rule.
  - *Get 'Em Beat:* The unit gains the Swiftstride special rule.
  - *Killa Beat:* The unit may re-roll 1's To Hit in close combat.
  ],
  upgrades: (
    rule("Savage Orc")[The model gains the Frenzy and Magical Ward (6+) special rules. This changes their Troop Type to Infantry (Character, Savage Orc).],
  ),
  options: [
- May be upgraded to a Savage Orc +20 points
- May choose one of the following:
  - Light armour (Common Orc only) +2 points
  - Medium armour (Common Orc only) +6 points
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- A Warchanter may never be the Army General.
  ],
)

#unit("SQUIGBOSS",
  profiles: (
    (name: "Squigboss", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 2, i: 3, a: 2, ld: 6, points: 50),
    (name: "Gnasha-Squig", m: "*", ws: 4, bs: 0, s: 4, t: "-", w: "-", i: 3, a: 2, ld: 3, points: ""),
  ),
  troop-type: "Infantry (Character, Night Goblin/Squig)",
  base-size: "20x20 or 25x25",
  equipment: "Great weapon, light armour",
  special-rules: "Fear Elves, Hatred (Dwarfs), Loner",
  special-rules-body: [
- *Gnasha-Squig:* Squigbosses and Gnasha-Squigs follow the split profile rules for Cavalry.
- *Mycophile's Pouch:* At the start of each of your turns, the Squigboss can bestow one of the following shrooms to any unit of Squigs they are with. Each shrooms effect lasts until the start of your next turn. A unit can only be under the effect of one shroom type at a time.
  - *Crimson Deffcap:* All Squigs in the unit may roll an extra D6 for their Random Movement and discard the lowest result.
  - *Yellow Lurka:* All Squigs in the unit gain the Multiple Wounds (2) special rule.
  - *Sproutin' Moon:* All Squigs in the unit gain +1 Attack.
- *Squigboss:* Models with this special rule may join units of Squig Herds, following the rules for Handlers from the Mixed Unit special rule.
  ],
  options: [
- May be mounted on a Great Cave Squig (replacing the Gnasha-Squig) +30 points
- May take Magic Items up to a total of 50 points
  ],
)

#unit("DANKHOLD TROLLBOSS",
  profiles: (
    (name: "Dankhold Trollboss", m: 6, ws: 4, bs: 1, s: 6, t: 5, w: 5, i: 1, a: 5, ld: 7, points: 200),
  ),
  troop-type: "Monstrous Creature (Character, Troll)",
  base-size: "50x50",
  equipment: "Hand weapon",
  special-rules: "Magic Resistance (3), Regeneration (4+), Stupidity",
  special-rules-body: (
    rule("Copious Troll Vomit")[In addition to their normal Attacks, models with this special rule inflicts D3 automatic Strength 5 hits which Ignores Armour Saves.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +5 points
  - Great weapon +15 points
- May take Magic Items up to a total of 50 points
  ],
)

= CHARACTER MOUNTS

#unit("WAR BOAR",
  first: true,
  profiles: (
    (name: "War Boar", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Porcine)",
  base-size: "25x50 or 30x60",
  special-rules: "Natural Armour (6+), Tusker Charge",
  options: [
- May take barding (Common or Black orc Only) free
  ],
)

#unit("GRUNTA",
  profiles: (
    (name: "Grunta", m: 7, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 4, points: "-"),
  ),
  troop-type: "Monstrous Beast (Porcine)",
  base-size: "50x75",
  special-rules: "Natural Armour (6+), Tusker Charge",
  options: [
- May take barding free
  ],
)

#unit("WYVERN",
  compact: true,
  profiles: (
    (name: "Wyvern", m: 4, ws: 5, bs: 0, s: 6, t: 5, w: 5, i: 3, a: 3, ld: 6, points: "-"),
  ),
  troop-type: "Monster (Draconid)",
  base-size: "50x50 or 50x100",
  special-rules: "Fly (8), Natural Armour (4+), Poisoned Attacks",
)

#unit("MAW-KRUSHA",
  compact: true,
  profiles: (
    (name: "Maw-krusha", m: 6, ws: 5, bs: 0, s: 6, t: 6, w: 6, i: 2, a: 4, ld: 6, points: "-"),
  ),
  troop-type: "Monster (Draconid)",
  base-size: "100x150",
  special-rules: "Fly (5), Impact Hits (D6), Natural Armour (3+)",
)

#unit("GIANT WOLF",
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
    (name: "Snarlfang", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 4, points: ""),
  ),
  troop-type: "Monstrous Beast (Canine)",
  base-size: "50x75",
  options: [
- May take barding +5 points
  ],
)

#unit("GREAT CAVE SQUIG",
  compact: true,
  profiles: (
    (name: "Great Cave Squig", m: "*", ws: 4, bs: 0, s: 6, t: 4, w: 3, i: 3, a: 3, ld: 3, points: "-"),
  ),
  troop-type: "Monstrous Beast (Fungoid)",
  base-size: "40x40 or 50x50",
  special-rules: "Immunity (Psychology), Random Movement (3D6), Vanguard",
)

#unit("GIANT SPIDER",
  profiles: (
    (name: "Giant Spider", m: 7, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 2, points: "-"),
  ),
  troop-type: "War Beast (Arachnid)",
  base-size: "25x50",
  special-rules: "Poisoned Attacks, Natural Armour (6+), Wall-crawler",
  special-rules-body: (
    rule("Creeping Assault")[Unlike other mounts, Giant Spiders are allowed to attack when assaulting buildings.],
  ),
)

#unit("GIGANTIC SPIDER",
  compact: true,
  profiles: (
    (name: "Gigantic Spider", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 3, points: "-"),
  ),
  troop-type: "Monstrous Beast (Arachnid)",
  base-size: "50x50",
  special-rules: "Natural Armour (5+), Poisoned Attacks, Wall-crawler",
)

= CORE UNITS

#unit("ORC BOYZ",
  first: true,
  profiles: (
    (name: "Orc", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 6),
  ),
  unit-size: "15-45",
  troop-type: "Infantry (Common Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Animosity, Size Matters",
  upgrades: (
    rule("Big Stabbas")[A unit of Savage Orc Boyz may be upgraded to include Big Stabbas. This is represented by including one or more Big Stabba models in the unit. A Big Stabba is mounted on two Infantry bases and must be placed to cover both the first and second rank of the unit, but is otherwise equipped like the rest of the unit. Each Big Stabba model causes D3 Impact Hits with the Multiple Wounds (D3) special rule. Big Stabbas are always the last models to be removed as casualties (excluding any Command Group models); the weapons are picked up by other Savage Orcs in the unit should they be slain.],
    rule("Big 'Uns")[For each Orc Warboss in your army, you may upgrade one unit of Orc Boys or Orc Boar Boyz of the same sub-species to Big 'Uns. Big 'Uns gain +1 Weapon Skill and the Mighty Blow (1) special rule. In addition, they count as Special Units.],
    rule("Savage Orc")[The model gains the Frenzy and Magical Ward (6+) special rules. This changes their Troop Type to Infantry (Savage Orc).],
  ),
  options: [
- May be upgraded to Big 'Uns +2 points/model
- May be upgraded to Savage Orcs +3 points/model
- May choose one of the following:
  - Additional hand weapons +1 point/model
  - Spears +1 point/model
  - Polearms (Common Big 'Uns only) +2 points/model
  - Great weapons (Big 'Uns only) +3 points/model
- May take shields (unless armed with great weapons) +1 point/model
- May choose one of the following:
  - Light armour (Common Orcs only) +0.5 point/model
  - Medium armour (Common Big Un's only) +1.5 points/model
- May upgrade two Savage Orcs to a Big Stabba for every 10 models in the unit +10 points/Big Stabba
- May upgrade one Orc Boy to a Leader +5 points
- May upgrade one Orc Boy to a Musician +5 points
- May upgrade one Orc Boy to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  - Big 'Uns take a Magic Standard worth up to 50 points
  ],
)

#unit("BOAR BOYZ",
  profiles: (
    (name: "Orc", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 15),
    (name: "War Boar", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Common Orc)",
  mount: "War Boar (Porcine)",
  base-size: "25x50 or 30x60",
  equipment: "Hand weapon",
  special-rules: "Animosity, Natural Armour (6+), Size Matters, Tusker Charge (War Boar only)",
  upgrades: (
    rule("Big 'Uns")[For each Orc Warboss in your army, you may upgrade one unit of Orc Boys or Orc Boar Boyz of the same sub-species to Big 'Uns. Big 'Uns gain +1 Weapon Skill and the Mighty Blow (1) special rule. In addition, they count as Special Units.],
    rule("Savage Orc")[The model gains the Frenzy and Magical Ward (6+) special rules. This changes their Troop Type to Cavalry (Savage Orc).],
  ),
  options: [
- May be upgraded to Savage Orcs +3 points/model
- May choose one of the following:
  - Additional hand weapons (Savage Orcs only) +1 point/model
  - Light lances +1.5 points/model
- May take shields (unless armed with additional hand weapons) +1 point/model
- May choose one of the following:
  - Light armour (Common Orcs only) +1 point/model
  - Medium armour (Common Big Un's only) +2 points/model
- May upgrade one Boar Boy to a Leader +5 points
- May upgrade one Boar Boy to a Musician +5 points
- May upgrade one Boar Boy to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  - Big 'Uns take a Magic Standard worth up to 50 points
  ],
)

#unit("ARRER BOYZ",
  profiles: (
    (name: "Orc", m: 4, ws: 3, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 7, points: 9),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Common Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon, longbow",
  special-rules: "Animosity, Size Matters",
  upgrades: (
    rule("Savage Orc")[The model gains the Frenzy and Magical Ward (6+) special rules. This changes their Troop Type to Infantry (Savage Orc).],
  ),
  options: [
- May be upgraded to Savage Orcs +2 points/model
- May take light armour (Common Orcs only) +0.5 point/model
- May upgrade one Arrer Boy to a Leader +5 points
- May upgrade one Arrer Boy to a Musician +5 points
- May upgrade one Arrer Boy to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("GOBLIN GITZ",
  breakable: true,
  profiles: (
    (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 2),
    (name: "Nasty Skulker", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: ""),
  ),
  unit-size: "20-60",
  troop-type: "Infantry (Common Goblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Animosity, Fear Elves",
  upgrades: [
- *Night Goblin:* The model gains the Hatred (Dwarfs) special rule. This changes their Troop Type to Infantry (Night Goblin).
- *Forest Goblin:* The model gains the Forest Strider special rule. This changes their Troop Type to Infantry (Forest Goblin).
- *Jester:* A Jester counts as being part of the unit's command group. A unit joined by a Jester gains +1 Leadership and may re-roll failed Animosity tests. At the start of each round of close combat in which a Goblin Jester is involved, roll a dice and consult the table below:

#chart((("D6", "Result:"), ("1", "Oh Dear! The unit the jester is attached to suffers -1 To Hit in close combat this turn."), ("2-3", "Nothing Happens: The Jester has no effect this turn."), ("4-6", "You Annoying Little…! All enemy units in base contact with the Jester's unit suffer -1 To Hit in
close combat this turn. This has no effect on units with Immunity (Psychology).")))

- *Little Big 'Uns:* For each Goblin Warboss in your army, you may upgrade one unit of Goblin Gitz of the same sub-species to Little Big 'Uns. Little Big 'Uns gain +1 Weapon Skill and the Mighty Blow (1) special rule. In addition, they count as Special Units.
- *Nasty Skulkers:* Nasty Skulkers are equipped with two hand weapons and have the Hidden special rule. They may be targeted separately from the rest of the unit, just like characters. In addition, they have the Always Strikes First and Armour Piercing (1) special rules in any turn they are revealed or the unit they are with successfully charges an enemy in the flank or rear.
- *Netters:* At the start of each round of close combat, a unit containing Netters must attempt to entangle one of the units they are fighting in their front arc. Roll a D6 for each Netter in your unit; for every 4+, an enemy model has become entangled (distributed as hits from shooting, but only affecting models that are allowed to strike). However, for each natural 1 rolled on these dice, the Netters entangle a member of their own unit instead. A model that has been entangled suffers a \-1 penalty to their Attacks (this does not apply to mounts) until the end of the close combat round. Netters are always the last models to be removed as casualties (excluding any Command Group models); the nets are picked up by other Night Goblins in the unit should they be slain.
  ],
  options: [
- May be upgraded to one of the following:
  - Night Goblin free
  - Forest Goblin free
- May be upgraded to Little Big 'Uns +2 points/model
- May choose one of the following:
  - Spears +0.5 point/model
  - Polearms (Common and Night Little Big 'Uns only) +2 points/model
  - Shortbows +2 points/model
  - Great weapons (Little Big 'Uns only) +3 points/model
- May take shields (unless armed with great weapons, bows or shortbows) +0.5 point/model
- May take light armour (Common and Night Goblins only) +0.5 point/model
- May include one Nasty Skulker for every 10 models in the unit (Common Goblins only) +6 points/model
- May upgrade one Goblin Git to a Jester (Common Goblins only) +20 points
- May upgrade one Goblin Git to a Netter for every 5 models in the unit (Night Goblins only) +2 points/Netter
- May include one Fanatic for every 10 models in the unit (Night Goblins only) +25 points/model
- May upgrade one Goblin Git to a Leader +5 points
- May upgrade one Goblin Git to a Musician +5 points
- May upgrade one Goblin Git to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("FANATICS",
  profiles: (
    (name: "Fanatic", m: "*", ws: "-", bs: "-", s: 5, t: 3, w: 1, i: 3, a: "*", ld: 10, points: 25),
  ),
  troop-type: "Infantry (Night Goblin)",
  base-size: "25 or 30 (round)",
  equipment: "Giant ball and chain",
  special-rules: "Immunity (Psychology), Random Movement (2D6)",
  special-rules-body: [
- *Fanatic:* Fanatics deploy following the rules for Hidden models. However, they are not revealed like other Hidden models, but instead follow the rules below:
  - *Release the Fanatics:* Fanatics are automatically released when an enemy unit comes to within 8" of the concealing unit's Line of Sight. The moving unit stops immediately (fliers land). Once the Fanatic's movement has been resolved, the unit can continue their move (unless panicked). When a Fanatic is released, you may choose the direction in which it travels, and the point on the concealing unit from which it starts. Fanatics move 2D6" using the rules for Random Movement, measured from the base of its unit. After release, Fanatics are treated as individual units. In your subsequent turns they must move in the Compulsory Moves subphase using the Random Movement special rule, but they always move in a random direction.
  - *Splat!:* If a Fanatic's move would bring it into contact with another unit, then he moves through rather than stopping. If the Fanatic ever ends its move over a unit, place it 1" beyond the unit in the direction it was moving. If this is also over a unit it should be placed 1" beyond that unit, repeating the process until it is no longer touching any models. When this happens, units between where the Fanatic ended its move do not take any damage. When a Fanatic moves through any unit it inflicts D6 Strength 5 Armour Piercing (1) hits.
  - *Force of Destruction:* Fanatics cannot be charged, but models can move into contact with them. Any unit that does so takes 2D6 Strength 5 hits with the Armour Piercing (1) special rule. The Fanatic model is then removed, and the unit may carry on with its move.
  - *Out of Control:* A Fanatic is removed immediately as a casualty when:
- It contacts a piece of terrain of any kind that's not open ground.
- It contacts another Fanatic (both Fanatics are removed).
- It moves off a table edge.
- It rolls a double for movement. This does not apply the first time the Fanatic moves.
- Any unit moves into contact with the Fanatic.
  ],
  upgrades: (
    rule("Thwackwheezer Puffshrooms")[Twackwheezer Puffshrooms replace the Fanatic's normal Strength 5 Hits. All models Hit must pass a Toughness test or suffer a Wound which Ignores Armour Saves. In addition, all units where the majority of the models are within 6" of a Fanatic with this upgrade count as being in soft cover.],
  ),
  options: [
- Each individual Fanatic may replace giant ball and chain with Twackwheezer Puffshrooms free
  ],
  notes: [
- Fanatics may only be taken as upgrades in units of Night Goblin Gitz, not as stand-alone units. Victory Points are rewarded for each slain Fanatic individually.
  ],
  labels: (upgrades: "UPGRADE"),
)

#unit("WOLF RIDERS",
  profiles: (
    (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 8),
    (name: "Giant Wolf", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Common Goblin)",
  mount: "Giant Wolf (Canine)",
  base-size: "25x50",
  equipment: "Hand weapon",
  special-rules: "Animosity, Fast Cavalry, Fear Elves",
  options: [
- Must choose at least one of the following:
  - Light lances +1 point/model
  - Shields +1 point/model
  - Shortbows +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Wolf Rider to a Leader +5 points
- May upgrade one Wolf Rider to a Musician +5 points
- May upgrade one Wolf Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("SPIDER RIDERS",
  profiles: (
    (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 8),
    (name: "Giant Spider", m: 7, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 2, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Forest Goblin)",
  mount: "Giant Spider (Arachnid)",
  base-size: "25x50",
  equipment: "Hand weapon",
  special-rules: "Animosity, Fast Cavalry, Fear Elves, Natural Armour (6+), Poisoned Attacks (Giant Spiders",
  special-rules-body: [
only)*, Wall-crawler*

- *Creeping Assault:* Unlike other mounts, Giant Spiders are allowed to attack when assaulting buildings.
  ],
  options: [
- Must choose at least one of the following:
  - Light lances +1 point/model
  - Shields +1 point/model
  - Shortbows +1 point/model
- May upgrade one Spider Rider to a Leader +5 points
- May upgrade one Spider Rider to a Musician +5 points
- May upgrade one Spider Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

#unit("SPIDER SWARMS",
  compact: true,
  profiles: (
    (name: "Spider Swarm", m: 4, ws: 3, bs: 0, s: 1, t: 1, w: 8, i: 1, a: 8, ld: 2, points: 40),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Arachnid)",
  base-size: "40x40",
  special-rules: "Poisoned Attacks, Wall-crawler",
)

#unit("SNOTLINGS",
  profiles: (
    (name: "Snotlings", m: 4, ws: 2, bs: 0, s: 2, t: 2, w: 6, i: 3, a: 6, ld: 4, points: 20),
  ),
  unit-size: "3-9",
  troop-type: "Swarm (Snotling)",
  base-size: "40x40",
  special-rules: (
    rule("Mimic")[A Snotling unit must deploy within 6" of friendly Orc or Goblin unit, and must attempt to move to within 6" of one if further away. If a Snotling unit is within 6" of a friendly Orc or Goblin unit, they will mimic the nearest of these. If the Orc or Goblin unit declares a charge, the Snotling unit must also declare a charge against the same target. If the Orc or Goblin unit flees, the Snotling unit will move in the same direction.],
  ),
  upgrades: [
- *Explodin' Spores:* Explodin' Spores automatically hit and have the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "3", "Ignores Armour Saves, Quick to Fire"))
  ],
  options: [
- May take Explodin' Spores +5 points/model
  ],
)

= SPECIAL UNITS

#unit("BRUTES",
  first: true,
  profiles: (
    (name: "Brute", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 7, points: 26),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Common Orc)",
  base-size: "30x30 or 40x40",
  equipment: "Two hand weapons, medium armour",
  special-rules: "Animosity, Immunity (Fear), Mighty Blow (1), Size Matters",
  special-rules-body: (
    rule("Duff Up da Big Thing")[Orc Brutes may re-roll failed To Hit rolls against Monstrous Infantry, Monstrous Beasts, Monstrous Cavalry, Monstrous Creatures and Monsters.],
  ),
  options: [
- May replace hand weapons with one of the following:
  - Polearms +2 points/model
  - Great weapons +4 points/model
- May upgrade one Brute to a Leader +5 points
  ],
)

#unit("BOAR CHARIOT",
  profiles: (
    (name: "Boar Chariot", m: 6, ws: "-", bs: "-", s: 5, t: 5, w: 4, i: "-", a: "-", ld: "-", points: 75),
    (name: "Orc", m: "-", ws: 3, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 7, points: ""),
    (name: "War Boar", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 (Common Orc)",
  drawn-by: "2 War Boars (Porcine)",
  base-size: "50x100",
  equipment: "Hand weapon, light armour",
  special-rules: "Mighty Blow (1) (Orc only), Natural Armour (6+), Size Matters, Tusker Charge (War Boar",
  special-rules-body: [
only)
  ],
  options: [
- May take an additional Orc +5 points
- May take light lances +2 points
- May take scythes +5 points
- May be upgraded to a standard bearer +10 points
  ],
)

#unit("BLACK ORCS",
  profiles: (
    (name: "Black Orc", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 8, points: 13),
  ),
  unit-size: "10-30",
  troop-type: "Infantry (Black Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon, medium armour",
  special-rules: "Armed to da Teef, Immunity (Psychology), Mighty Blow (1)",
  options: [
- Must take one of the following:
  - Shields free
  - Spears free
  - Additional hand weapons +1 point/model
  - Great weapons +1 point/model
- May take one of the following:
  - Additional hand weapons +1 point/model
  - Great weapons +1 point/model
  - Shields +1 point/model
  - Spears +1 point/model
- May take heavy armour +1.5 point/model
- May upgrade one Black Orc to a Leader +5 points
- May upgrade one Black Orc to a Musician +5 points
- May upgrade one Black Orc to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("NASTY SKULKERS",
  profiles: (
    (name: "Nasty Skulker", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 1, i: 3, a: 1, ld: 6, points: 6),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Common Goblin)",
  base-size: "20x20 or 25x25",
  equipment: "Two hand weapons",
  options: [
- May take throwing weapons +1 point/model
  ],
  special-rules: "Animosity, Fear Elves, Scouts, Skirmishers",
  special-rules-body: (
    rule("Puffball Smoke Bomb")[At the end of any Close Combat in which a unit of Nasty Skulkers take part, before taking break tests, they may choose to use their smoke bombs. On a 4+, the unit may disengage the combat by making a flee move. If they do so, the enemy cannot pursue them and they will rally automatically in their next turn.],
    rule("Surprise!")[Nasty Skulkers have the Always Strikes First and Armour Piercing (1) special rules in any turn they successfully charge an enemy in the flank or rear.],
  ),
  order: ("unit-size", "troop-type", "base-size", "equipment", "options", "special-rules"),
)

#unit("SNARLFANG RIDERS",
  profiles: (
    (name: "Goblins", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 2, i: 2, a: 2, ld: 6, points: 44),
    (name: "Snarlfang", m: 9, ws: 4, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 4, points: ""),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Cavalry (Common Goblin)",
  mount: "Snarlfang (Canine)",
  base-size: "50x75",
  equipment: "Light lance, light armour, shield, barding",
  special-rules: "Animosity, Fear Elves",
  options: [
- May upgrade one Snarlfang Rider to a Leader +5 points
- May upgrade one Snarlfang Rider to a Musician +5 points
- May upgrade one Snarlfang Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  notes: [
- Snarlfang Riders have a Unit Strength of 4.
  ],
)

#unit("WOLF CHARIOT",
  profiles: (
    (name: "Wolf Chariot", m: 8, ws: "-", bs: "-", s: 5, t: 4, w: 4, i: "-", a: "-", ld: "-", points: 60),
    (name: "Goblin", m: "-", ws: 2, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 6, points: ""),
    (name: "Giant Wolf", m: "-", ws: 3, bs: 0, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
  ),
  unit-size: "1-3",
  troop-type: "Chariot (Armour Save 6+)",
  crew: "2 (Common Goblin)",
  drawn-by: "2 Giant Wolves (Canine)",
  base-size: "50x100",
  equipment: "Hand weapon, light armour",
  special-rules: "Fear Elves",
  options: [
- May take an additional Goblin +3 points
- May take an additional Giant Wolf +3 points
- May take light lances +2 points
- May take shortbows +2 points
- May take scythes +5 points
- May upgrade one Wolf Chariot to a standard bearer +10 points
  ],
)

#unit("SPEAR CHUKKA",
  profiles: (
    (name: "Spear Chukka", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 30),
    (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
    (name: "Orc Bully", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Goblins (Common Goblin)",
  base-size: "50x50 (Spear Chukka), 20x20 or 25x25 (Goblin Crew), 25x25 or 30x30 (Orc Bully)",
  equipment: "Hand weapon, bolt thrower",
  special-rules: "Fear Elves",
  special-rules-body: (
    rule("Slipshod")[If the To Hit roll for a shooting attack made by a Spear Chukka is a 1 (before any modifiers are applied), then it misfires. Roll on the Stone Thrower Misfire table in the Warhammer rulebook and apply the result to the Spear Chukka.],
  ),
  upgrades: (
    rule("Orc Bully")[An Orc Bully counts as an extra crew member for the war machine, and is always the last model to be removed. Orc Bullies have the Mighty Blow (1) special rule. In addition, while the Bully is still alive, their unit gains the Size Matters special rule and ignores the Fear Elves special rule.],
  ),
  options: [
- May take an Orc Bully +10 points
  ],
  notes: [
- You may take 1\-2 Spear Chukkas as a single Special choice.
  ],
)

#unit("ROCK LOBBA",
  profiles: (
    (name: "Rock Lobba", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 80),
    (name: "Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
    (name: "Orc Bully", m: 4, ws: 3, bs: 3, s: 3, t: 4, w: 1, i: 2, a: 1, ld: 7, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Goblins (Common Goblin)",
  base-size: "50x75 (Rock Lobba), 20x20 or 25x25 (Goblin Crew), 25x25 or 30x30 (Orc Bully)",
  equipment: "Hand weapon, stone thrower",
  special-rules: "Fear Elves",
  upgrades: (
    rule("Orc Bully")[An Orc Bully (Common Orc) counts as an extra crew member for the war machine, and is always the last model to be removed. Orc Bullies have the Mighty Blow (1) special rule. In addition, while the Bully is still alive, their unit gains the Size Matters special rule and ignores the Fear Elves special rule.],
  ),
  options: [
- May take an Orc Bully +10 points
  ],
)

#unit("SQUIG HUNTERS",
  profiles: (
    (name: "Squig Hunter", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 5),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Night Goblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Animosity, Hatred (Dwarfs), Immunity (Psychology), Scouts, Skirmishers",
  special-rules-body: (
    rule("Hunting Team")[The models in a unit of Night Goblin Squig Hunters may be armed with number of different weapons. This is represented by including one or more models with that weapon in the unit. If the unit includes Nets the unit follows the rules for Netters (see Night Goblin Gitz). If the unit includes Clubs all models fight with +1 Strength in close combat. If the unit includes Prodders all models gain the Fight in Extra Ranks (1) special rule.],
  ),
  options: [
- Must choose at least one of the following:
  - Clubs +1 point/model
  - Nets +1 point/model
  - Prodders +1 point/model
- May upgrade one Squig Hunter to a Leader +5 points
  ],
)

#unit("SNEAKY SNUFFLERS",
  profiles: (
    (name: "Sneaky Snuffler", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 6),
    (name: "Snufflesquig", m: 4, ws: 3, bs: 0, s: 4, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Infantry (Night Goblin/Squig)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  special-rules: "Animosity, Immunity (Psychology), Hatred (Dwarfs), Skirmishers",
  special-rules-body: (
    rule("Snufflesquig")[Sneaky Snufflers and Snufflesquigs follow the split profile rules for Cavalry.],
    rule("Mooncap Mushrooms")[At the start of your movement phase, as long as it is not in close combat or fleeing, you can say that this unit is harvesting mooncap mushrooms. If you do so, it cannot move in that movement phase, but you can roll a D6. On a 2+, pick a friendly Night Goblin unit within 6" of this unit. This unit gains the Frenzy special rule until the start of your next turn.],
  ),
)

#unit("SQUIG HERD",
  profiles: (
    (name: "Cave Squig", m: "*", ws: 4, bs: 0, s: 5, t: 3, w: 1, i: 3, a: 2, ld: 3, points: 7),
    (name: "Herder", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 8),
  ),
  unit-size: "10-30",
  troop-type: "War Beast (Fungoid)",
  handler: "Herder (Night Goblin)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Hatred (Dwarfs) (Herder only), Immunity (Psychology), Mixed Unit, Random Movement",
  special-rules-body: [
*(3D6)*

- *Squigs Go Wild:* If the unit would flee, or if at any time there are only Squigs left alive in the unit with no Herders, all units within 2D6" (friend and foe) immediately take D6 Strength 5 hits. For every 5 Cave Squigs remaining when the Squigs Go Wild, add +1 to the number of hits caused. After damage is resolved, the Squig Herd is removed in its entirety.
  ],
  notes: [
- One Herder must be included for every five Cave Squigs in the unit.
  ],
)

#unit("SQUIG HOPPERS",
  profiles: (
    (name: "Squig Hopper", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 12),
    (name: "Cave Squig", m: "*", ws: 4, bs: 0, s: 5, t: 3, w: 1, i: 3, a: 2, ld: 3, points: ""),
  ),
  unit-size: "5-15",
  troop-type: "Cavalry (Night Goblin)",
  mount: "Cave Squig (Fungoid)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  special-rules: "Hatred (Dwarfs), Immunity (Psychology), Random Movement (3D6), Skirmishers",
  options: [
- May take light lances +1 point/model
- May take light armour +0.5 point/model
- May upgrade one Squig Hopper to a Leader +5 points
  ],
)

#unit("GIGANTIC SPIDER RIDERS",
  profiles: (
    (name: "Forest Goblin", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: 35),
    (name: "Gigantic Spider", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 3, i: 4, a: 3, ld: 3, points: ""),
  ),
  unit-size: "3-9",
  troop-type: "Monstrous Cavalry (Forest Goblin)",
  mount: "Gigantic Spider (Arachnid)",
  base-size: "50x50",
  equipment: "Hand weapon",
  special-rules: "Animosity, Fear Elves, Natural Armour (5+), Poisoned Attacks (Gigantic Spiders only), Wall-crawler",
  options: [
- Must choose at least one of the following:
  - Light lances +1 point/model
  - Shields +1 point/model
  - Shortbows +1 point/model
- May upgrade one Forest Goblin Gigantic Spider Rider to a Leader +5 points
- May upgrade one Forest Goblin Gigantic Spider Rider to a Musician +5 points
- May upgrade one Forest Goblin Gigantic Spider Rider to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("TROLLS",
  profiles: (
    (name: "Troll", m: 6, ws: 3, bs: 1, s: 5, t: 4, w: 3, i: 1, a: 3, ld: 6, points: 44),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Troll)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Loner, Regeneration (4+), Stupidity",
  special-rules-body: (
    rule("Troll Vomit")[In addition to their normal Attacks, models with this special rule inflicts one automatic Strength 4 hit which Ignores Armour Saves after resolving all their normal Attacks. This cannot be used with supporting attacks.],
  ),
  upgrades: (
    rule("River Trolls")[River Trolls have the Marsh Strider and River Strider special rules. Additionally, enemies attempting to attack a River Troll in close combat suffer a \-1 penalty on their To Hit rolls due to the stench and slime.],
    rule("Stone Trolls")[Stone Trolls have the Magic Resistance (2) and Natural Armour (5+) special rules.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model
- May be upgraded to one of the following:
  - River Trolls +8 points/model
  - Stone Trolls +8 points/model
  ],
)

#unit("OGRES",
  profiles: (
    (name: "Ogre", m: 6, ws: 3, bs: 2, s: 4, t: 4, w: 3, i: 2, a: 3, ld: 7, points: 27),
  ),
  unit-size: "3+",
  troop-type: "Monstrous Infantry (Ogre)",
  base-size: "40x40 or 50x50",
  equipment: "Hand weapon",
  special-rules: "Loner, Natural Armour (6+)",
  special-rules-body: (
    rule("Ogre Charge")[Ogres have the Impact Hits (1) special rule. A unit of Ogres adds its current Rank Bonus to the Strength of any Impact Hits they inflict.],
  ),
  options: [
- May choose one of the following:
  - Bucklers +3 points/model
  - Additional hand weapons +3 points/model
  - Great weapons +6 points/model
- May choose one of the following:
  - Light armour +1.5 points/model
  - Medium armour +4.5 points/model
- May upgrade one Ogre to a Leader +5 points
- May upgrade one Ogre to a Musician +5 points
- May upgrade one Ogre to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 25 points
  ],
)

= RARE UNITS

#unit("BRUTE RAGERZ",
  first: true,
  profiles: (
    (name: "Brute Rager", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 7, points: 26),
  ),
  unit-size: "3-9",
  troop-type: "Infantry (Common Orc)",
  base-size: "30x30 or 40x40",
  equipment: "Light armour",
  special-rules: "Animosity, Frenzy, Mighty Blow (1), Size Matters, Skirmishers",
  special-rules-body: (
    rule("Green Rage")[Models with this special rule may make an additional Attack for every unsaved Wound they cause in close combat. These additional Attacks cannot generate additional Attacks.],
  ),
  upgrades: (
    rule("Weirdbrute Wrekkaz")[Models with this upgrade gain the Magical Ward (5+) special rule.],
  ),
  options: [
- Must choose one of the following:
  - Flails +4 points/model
  - Great weapons +6 points/model
- May be upgraded to Weirdbrute Wrekkaz +5 points/model
- May upgrade one Brute Rager to a Leader +5 points
  ],
)

#unit("GORE-GRUNTAS",
  profiles: (
    (name: "Brute", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 7, points: 53),
    (name: "Grunta", m: 7, ws: 3, bs: 0, s: 4, t: 5, w: 3, i: 3, a: 3, ld: 4, points: ""),
  ),
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Common Orc)",
  mount: "Grunta (Porcine)",
  base-size: "50x75",
  equipment: "Hand weapon, medium armour",
  special-rules: "Animosity, Mighty Blow (1), Natural Armour (6+), Size Matters, Tusker Charge (Grunta",
  special-rules-body: [
only)
  ],
  options: [
- May take light lances +2 points/model
- May take barding free
- May upgrade one Gore-grunta to a Leader +5 points
- May upgrade one Gore-grunta to a Musician +5 points
- May upgrade one Gore-grunta to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
)

#unit("MAW-GRUNTA",
  profiles: (
    (name: "Maw-grunta", m: 7, ws: 3, bs: 0, s: 5, t: 6, w: 5, i: 3, a: 5, ld: 4, points: 225),
    (name: "Brute", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 7, points: ""),
  ),
  troop-type: "Monster (Porcine)",
  crew: "1 Brute (Common Orc)",
  base-size: "50x100 or 60x100",
  equipment: "Two hand weapons (Brute only), medium armour, barding",
  special-rules: "Mighty Blow (1) (Orc brute only), Impact Hits (D6), Natural Armour (5+), Size Matters, Tusker Charge (Maw-grunta only)",
  options: [
- May take two additional crew armed with great weapons +10 points
  ],
)

#unit("DOOM DIVER CATAPULT",
  profiles: (
    (name: "Doom Diver Catapult", m: "-", ws: "-", bs: "-", s: "-", t: 7, w: "-", i: "-", a: "-", ld: "-", points: 80),
    (name: "Goblin Crew", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
  ),
  troop-type: "War Machine",
  crew: "3 Goblins (Common Goblin)",
  base-size: "50x75 (Doom Diver Catapult), 20x20 or 25x25 (Goblin Crew), 25x25 or 30x30 (Orc Bully)",
  equipment: "Hand weapon",
  equipment-body: [
- *Doom Diver Catapult:* A doom diver catapult is a stone thrower that uses the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "5", "Ignores Armour Saves"))

Unlike other stone throwers, the Doom Diver uses a 32mm template. After rolling the scatter dice, you may roll a D6 and move the Doom Diver Goblin model by that many inches in any direction.

Should the artillery dice roll a misfire, roll a D6 and consult the Doom Diver Misfire table below:

#chart((("D6", "Result"), ("1-2", "Destroyed! The Doom Diver Catapult is destroyed."), ("3-4", "Disabled: The Doom Diver Catapult cannot shoot this turn or in the controlling player's next turn."), ("5", "Skidmarks: The Doom Diver will hit the first thing along the path towards his chosen target point. If this
is a piece of terrain he is removed immediately and inflicts no damage. If this is a unit (friend or foe) he
will inflict D6 Strength 5 hits, before being removed. The catapult may be fired next turn as normal."), ("6", "Wild Shot! The Doom Diver is fired D6x10\" in a random direction. This roll determines the impact point
for the Doom Diver – he is unable to move the impact point D6\" in this case. The catapult may be fired
next turn as normal.")))
  ],
  special-rules: "Fear Elves",
  upgrades: (
    rule("Orc Bully")[An Orc Bully counts as an extra crew member for the war machine, and is always the last model to be removed. Orc Bullies have the Mighty Blow (1) special rule. In addition, while the Bully is still alive, their unit gains the Size Matters special rule and ignores the Fear Elves special rule.],
  ),
  options: [
- May take an Orc Bully +10 points
  ],
)

#unit("MANGLER SQUIGS",
  profiles: (
    (name: "Mangler Squigs", m: "*", ws: "-", bs: "-", s: 6, t: 4, w: 6, i: 3, a: "*", ld: 3, points: 100),
  ),
  troop-type: "Monstrous Beast (Fungoid)",
  base-size: "50 or 80 (round)",
  special-rules: "Immunity (Psychology), Random Movement (3D6).",
  special-rules-body: [
- *Ker-splat!:* If the Mangler Squigs' move would bring them into contact with another unit, then they move through rather than stopping. If the Mangler Squigs ever end their move over a unit, place them 1" beyond the unit in the direction it was moving. If this is also over a unit it should be placed 1" beyond that unit, repeating the process until it is no longer touching any models. When this happens, units between where the Mangler Squigs ended their move do not take any damage. When Mangler Squigs move through a unit (friend or foe) they inflict 2D6 Strength 6 hits.
- *Gone Crazy!* Mangler Squigs that make a Ker-Splat! attack Go Crazy. Once Mangler Squigs have Gone Crazy they will move in a random direction when they move in the Compulsory Moves sub-phase.
- *Force of Total Destruction:* Mangler Squigs cannot be charged, but models can move into contact with them. Any unit that moves into contact with Mangler Squigs takes 2D6 Strength 6 hits for moving into the Squigs and a further D6 Strength 6 hits due to the Mangler Squigs' death throes. The Mangler Squig model is then removed, and the unit may carry on with its move.
- *Completely Out of Control:* Mangler Squigs are removed as a casualty when:
  - They contact other Mangler Squigs (both Mangler Squigs are removed as casualties).
  - They have Gone Crazy and rolled a triple for movement.
  - Any unit moves into contact with the Mangler Squigs – see the Force of Total Destruction rule, above.
- *Watch Out!* Mangler Squigs must take a Dangerous Terrain test if they move over any of the following types of terrain: Forests, Marshland, Obstacles or Mystical Monuments. If their move would take them into contact with a Building, Impassable Terrain or off a table edge then they must take a Dangerous Terrain test and will stop 1" short of the obstruction.
  ],
  notes: [
- Mangler Squigs have a Unit Strength of 6.
  ],
)

#unit("SQUIG GOBBA",
  profiles: (
    (name: "Squig Gobba", m: "-", ws: 4, bs: 0, s: 6, t: 4, w: 3, i: 3, a: 3, ld: 3, points: 75),
    (name: "Tender", m: 4, ws: 2, bs: 3, s: 3, t: 3, w: 1, i: 2, a: 1, ld: 6, points: ""),
  ),
  troop-type: "Monstrous Beast (Fungoid)",
  handler: "4 Tenders (Night Goblin)",
  base-size: "50x75, 50x100 or 60x100 (Squig Gobba), 20x20 or 25x25 (Tenders)",
  equipment: "Hand weapon",
  special-rules: "Hatred (Dwarfs) (Tenders only), Immunity (Psychology), Mixed Unit.",
  special-rules-body: [
- *Squig Gobba:* The Squig Gobba may fire in the Shooting Phase as long as at least one Tender remains and it is not in close combat. When firing the Squig Gobba, roll 3D6 and consult the table below:

#chart((("Total", "Result"), ("3-4", "Acid Guts: Every model within 6\" of the Squig Gobba (including the Night Goblin Tenders) takes a
Strength 2 Hit which Ignores Armour saves."), ("5-6", "Stomach Rumblings: Nothing happens this turn, but you must instead roll 4D6 when firing the
Squig Gobba next shooting phase."), ("7-17", "Squig Torrent: This is resolved as a shot from a Stone Thrower that uses the large round template
with a range of 36\". Any model covered by the template suffers a Strength 4 hit. If a misfire is
rolled, the Squig Gobba suffers D3 Wounds and the shot is wasted."), ("18+", "Intestinal Explosion: The Squig Gobba immediately makes a Breath Weapon Attack at Strength 6.
After the attack has been resolved, the Squig Gobba suffers D3 Wounds.")))

- *Tied Down:* The Squig Gobba cannot move after it has been deployed except pivoting on the spot. It may not pursue an enemy it defeats in combat. If the Squig Gobba breaks from combat, it is automatically destroyed.
  ],
)

#unit("COLOSSAL SQUIG",
  profiles: (
    (name: "Colossal Squig", m: "*", ws: 4, bs: 0, s: 7, t: 5, w: 6, i: 3, a: 6, ld: 3, points: 150),
  ),
  troop-type: "Monster (Fungoid)",
  base-size: "60x100, 100x100 or 100x150",
  special-rules: "Immunity (Psychology), Random Movement (4D6).",
  special-rules-body: (
    rule("Dinner's Dinner!")[When the Colossal Squig's Random Movement special rule brings it into contact with any unit (friend or foe), it will attack it normally as if it were an enemy, and counts as charging that unit. This combat will continue until resolved normally.],
    rule("Falls Apart")[When a Colossal Squig is removed as a casualty, every model in base contact with it suffers an automatic Strength 3 hit.],
  ),
)

#unit("ARACHNAROK SPIDER",
  profiles: (
    (name: "Arachnarok Spider", m: 7, ws: 4, bs: 0, s: 5, t: 6, w: 8, i: 4, a: 8, ld: 3, points: 260),
    (name: "Forest Goblin", m: 4, ws: 2, bs: 3, s: 3, t: "-", w: "-", i: 2, a: 1, ld: 6, points: ""),
  ),
  troop-type: "Monster (Arachnid)",
  crew: "8 (Forest Goblin)",
  base-size: "100x150",
  equipment: "Spear, shortbow (Forest Goblins only)",
  special-rules: "Immunity (Psychology), Natural Armour (4+), Poisoned Attacks, Stubborn, Wall-crawler",
  special-rules-body: (
    rule("Venom Surge")[When fighting Monstrous Infantry, Monstrous Beasts, Monstrous Cavalry, Monstrous Creature or Monsters; before rolling to hit, nominate one of the Arachnarok's attacks to be made with the Venom Surge, and roll it separately. This is a Poisoned Attack with the Multiple Wounds (D6) special rule.],
  ),
  upgrades: [
- *Catchweb Spidershrine:* A Forest Goblin Oddnob mounted on an Arachnarok Spider with a Catchweb Spidershrine has the Loremaster (Spells of da Spider God) special rule and adds +1 to his channelling attempts.
- *Flinger:* The Flinger is a stone thrower with the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "1(3)", "Multiple Wounds (D3)"))

Any unit hit by a Flinger suffer \-1 to its Movement, Weapon Skill, Ballistic Skill, Strength and Initiative until the end of its next turn. If a Misfire is rolled, Flinger does not use the Stone Thrower Misfire table – a misfire result simply means that the Flinger may not shoot this turn.
  ],
  options: [
- May choose one of the following:
  - Flinger +20 points
  - Catchweb Spidershrine +40 points
  ],
)

#unit("PUMP WAGON",
  profiles: (
    (name: "Pump Wagon", m: "*", ws: "-", bs: "-", s: 4, t: 4, w: 3, i: "-", a: "-", ld: "-", points: 45),
    (name: "Snotling", m: "-", ws: 2, bs: 0, s: 2, t: "-", w: "-", i: 3, a: 1, ld: 4, points: ""),
  ),
  troop-type: "Chariot (Armour Save 6+)",
  crew: "4 Snotlings (Snotlings)",
  base-size: "50x50, 50x75 or 50x100",
  equipment: "Hand weapon",
  special-rules: "Impact Hits (2D6), Random Movement (2D6), Unstable",
  special-rules-body: (
    rule("Pump Harder Ladz!")[Before moving a Pump Wagon you may declare that the crew are 'pumping harder'. If you do so, you must roll 3D6 for its random movement.],
    rule("Too Pumped Up")[Any time a Pump Wagon rolls two or more l's for its movement, it will not move as normal but instead veers out of control. Re-roll the Random Movement distance (including the extra dice if you were 'pumping harder'), but this time the Pump Wagon will move in a random direction. If the re-rolled movement also includes two or more ls, then the Pump Wagon has crashed – remove it as a casualty. Otherwise, all Random Movement rules apply, except that a Pump Wagon halted by a friendly unit will inflict 2D6 Impact Hits on the unit that blocks its move.],
  ),
  upgrades: (
    rule("Flappas")[The Pump Wagon only has to take Dangerous Terrain tests if they end their move in Dangerous Terrain.],
    rule("Giant Explodin' Spores")[The Pump Wagon's Impact Hits has the Ignores Armour Saves special rule.],
    rule("Spiky Roller")[The Pump Wagon's Impact Hits have +1 Strength.],
    rule("Out-rigga")[The Pump Wagon's Random Movement is increased by D6.],
  ),
  options: [
- May take up to 6 additional Snotlings +1 point/model
- May take scythes +5 points
- May take Flappas +5 points
- May take Out-rigga +10 points
- May take Spiky Roller +15 points
- May take Giant Explodin' Spores +20 points
  ],
  notes: [
- You may take 1\-2 Snotling Pump Wagons as a single Rare choice.
- For every 3 additional Snotling Crew, the model's Unit Strength is increased by 1.
  ],
)

#unit("DANKHOLD TROLL",
  profiles: (
    (name: "Dankhold Troll", m: 6, ws: 3, bs: 1, s: 6, t: 5, w: 4, i: 1, a: 4, ld: 6, points: 170),
  ),
  troop-type: "Monstrous Creature (Troll)",
  base-size: "50x50",
  equipment: "Hand weapon",
  special-rules: "Magic Resistance (3), Regeneration (4+), Stupidity",
  special-rules-body: (
    rule("Copious Troll Vomit")[In addition to their normal Attacks, models with this special rule inflicts D3 automatic Strength 5 hits which Ignores Armour Saves.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +4 points
  - Great weapon +8 points
  ],
)

#unit("ROGUE IDOL OF GORK",
  profiles: (
    (name: "Rogue Idol", m: 6, ws: 3, bs: 0, s: 7, t: 7, w: 10, i: 1, a: 4, ld: 8, points: 240),
  ),
  troop-type: "Monster (Animated Construct)",
  base-size: "100x50, 100x60, 100x100 or 150x100",
  special-rules: "Animated Construct, Impact Hits (D6), Magical Ward (6+), Unstable",
  special-rules-body: (
    rule("Da Big Un")[If it is possible for a Rogue Idol to charge an enemy it must do so (if multiple targets are within charge range, you may pick which to attack). At the start of any turn that a Rogue Idol is not able to charge or is not already in combat, its player must roll a D6. On a roll of a 1 it must instead charge a friendly unit if one is available to charge, and a single round of combat is fought as normal, after which the Rogue Idol is pushed 1" back if the charged unit does not break. If no friendly units are available to charge the Rogue Idol may do nothing this turn.],
    rule("Idol of Gork")[Friendly Orcs and Goblins that start the turn within 6" of the Idol can re-roll failed charge distance rolls.],
  ),
)

#unit("GIANT",
  breakable: true,
  profiles: (
    (name: "Giant", m: 6, ws: 3, bs: 3, s: 6, t: 6, w: 6, i: 3, a: "*", ld: 10, points: 180),
  ),
  troop-type: "Monster (Giant).",
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

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Cavalry, War Beasts or Swarms._

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
  options: [
- May have a Magical Ward (6+) (if Savage Orc Wizard is included in your army) +20 points
  ],
)

#unit("BONEGRINDER GIANT",
  breakable: true,
  profiles: (
    (name: "Bonegrinder Giant", m: 10, ws: 3, bs: 3, s: 8, t: 8, w: 10, i: 1, a: "*", ld: 10, points: 385),
  ),
  troop-type: "Monster (Giant).",
  base-size: "50x100, 60x100 or 100x150",
  equipment: "Hand weapon",
  special-rules: "Immunity (Psychology), Natural Armour (6+), Stubborn",
  special-rules-body: [
- *Fall Over:* A Bonegrinder Giant must test to see whether it falls over if any of the following apply:
  - If it is beaten in close combat. Test once results are established but before taking a Break test.
  - If it is fleeing at the start of the Movement phase.
  - When it crosses an obstacle. Test when the obstacle is reached.
  - If the Bonegrinder Giant decides to Jump Up and Down on an enemy. Test immediately beforehand.

To see if a Bonegrinder Giant falls over roll a D6. On a roll of 1, the Bonegrinder Giant falls over. A slain Bonegrinder Giant falls over automatically. To determine in which direction the Bonegrinder Giant falls, roll a scatter dice. Place the large round template in base contact with the Bonegrinder Giant in the direction of the scatter dice, measured from the centre of the Bonegrinder Giant's base. A model hit by a falling Bonegrinder Giant suffers a Strength 8 Hit with the Multiple Wounds (D6) special rule. If the unit is in combat and the Bonegrinder Giant has fallen over whilst attempting to Jump Up and Down, wounds inflicted by a falling Bonegrinder Giant count towards the combat result. A Bonegrinder Giant that falls over automatically suffers 1 wound. If the Bonegrinder Giant is in combat then this Wound counts towards combat resolution.

Once on the ground, a Bonegrinder Giant may get up in his following Movement phase, but may not move in the Movement phase that turn. Whilst on the ground a Bonegrinder Giant may not attack, but he can still defend himself after a fashion so the enemy must still roll to score hits on him. If forced to flee whilst on the ground the Giant is slain. If the Bonegrinder Giant gets the opportunity to pursue his foes whilst he's on the ground he stands up instead. A Bonegrinder Giant may attack in close combat as usual on the turn he stands up.

- *Bonegrinder Giant Special Attacks:* To determine what a Bonegrinder Giant does in each Close Combat phase, pick a unit in base contact with the Giant and roll a D6 on one of the following tables. Which table you use depends on the size of the Bonegrinder Giant's victim. If no suitable target is in base contact, roll again on the chart until you get another result.

*MAN-SIZED THINGS CHART *_Use this chart when fighting Infantry, Cavalry, War Beasts or Swarms._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4", "Vomit"), ("5", "Kick"), ("6", "Crush")))

*BIG THINGS CHART *_Use this chart when fighting Monstrous Beasts, Monstrous Infantry, Monstrous Cavalry, Chariots, War Machines, and Shrines._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2", "Jump Up and Down"), ("3", "Pick Up and..."), ("4-6", "Swing with Club (see Giants, but using the Random Attacks (3D6) special rule)")))

*BIGGER THINGS CHART *_Use this chart when fighting Monsters and Monstrous Creatures._

#chart((("D6", "Result"), ("1", "Yell and Bawl"), ("2-3", "Thump with Club"), ("4-5", "'Eadbutt"), ("6", "Grapple and...")))

*\- 'Eadbutt:* The Bonegrinder Giant automatically inflicts D6 Wounds which Ignores Armour Saves. If the victim is wounded but not slain, then it loses all of its following attacks. If the target has not yet attacked in that combat round, it loses those attacks; if it has already attacked, then it loses the next round's attacks. *\- Jump Up and Down:* The Bonegrinder Giant must test to determine if it falls over (see previous page). If it falls over, work out where it falls and calculate damage as already described. Any wounds caused by the fall (on either side) count towards the combat result. Otherwise, it will attack using the Stomp (3D6) special rule this turn instead of its normal Stomp. A Bonegrinder Giant that starts to Jump Up and Down will therefore continue to do so on the same target until it falls over, the target is destroyed, or the combat ends. *\- Swing with Club:* The Bonegrinder Giant fights using the Random Attacks (3D6) special rule this round. *\- Thump with Club:* The Bonegrinder Giant chooses a single model from the target unit that is in base contact. The target may attempt to avoid the blow by passing an Initiative test (use the lowest if the model has several different values). If the test is failed, the model takes 2D6 Wounds which Ignores Armour Saves. If a double is rolled the Bonegrinder Giant cannot attack at all in the following round of the same combat. *\- Yell and Bawl:* Neither the Bonegrinder Giant nor models in contact with it fight if they have not already done so this round. The Bonegrinder Giant automatically wins the combat by 3 points. *\- Vomit:* Place the flame template so that the narrow end is in base contact with the Bonegrinder Giant and the body of the template is over at least one other unit. All models (friendly and enemy) under the template suffer an automatic Strength 5 hit which Ignores Armour Saves. All unsaved Wounds from these hits count towards the combat result (unsaved Wounds on friendly models count to your opponent's combat result). Once damage has been resolved, roll a D6. On a roll of 1\-3, the Bonegrinder Giant falls over. *\- Kick:* Choose a model in base contact with the Bonegrinder Giant. That model is immediately removed as a casualty. The model behind the victim suffer a Strength 8 hit with the Multiple Wounds (D3) special rule that continues to pierce ranks like a bolt thrower. If he is slain, the model behind him suffers a Strength 7 hit with the Multiple Wounds (D3) special rule, and so on, until the unit runs out of ranks/files. *\- Crush!:* Place the small round template so that it is at least partially covering one or more models in base contact with the Giant, but not the Giant himself. The model under the centre of the template suffers an automatic Strength 10 hit with the Multiple Wounds (D6) special rule. Roll an artillery dice and halve the

result – all other models (friendly and enemy) under the template suffer an automatic hit of this Strength. If the roll is a: misfire, the Giant manages to miss the rest of the unit. *\- Grapple and\.\.\.:* Roll a D6 and consult the table below:

#chart((("D6", "Result"), ("1-2", "Knobbly Knee: The victim immediately suffers D3 Wounds which Ignores Armour Saves and
has their Weapon Skill and Initiative reduced to 1 until the end of the next player turn."), ("3", "Slam: The victim immediately suffers 2D3 Wounds which Ignores Armour Saves. If there is
another enemy unit in base contact with the Bonegrinder Giant, that unit also suffers 2D3
Wounds which Ignores Armour Saves. If there are two or more other enemy units in base
contact with the Bonegrinder Giant, randomise to see which is slammed."), ("4", "Bear Hug: Roll 2D6 and add the Bonegrinder Giant's Strength. Your opponent rolls 2D6 and
adds the victim's Toughness. If the Bonegrinder Giant's score is higher, the victim is removed as
a casualty with no saves of any kind allowed."), ("5", "Fall Over: Roll 2D6 and add the Bonegrinder Giant's Strength. Your opponent rolls 2D6 and
adds the victim's Toughness. If the Bonegrinder Giant's score is higher, the victim is removed as
a casualty with no saves of any kind allowed. Then continue to resolve the Bonegrinder Giant
falling over, in the direction of the target."), ("6", "Punch, and...: The victim suffers D3 Wounds which Ignores Armour Saves, then roll again on
this table.")))

*\- Pick Up and\.\.\.:* The Bonegrinder Giant stoops down and grabs a single Character in base contact from the target unit (Bonegrinder Giant player's choice). The Bonegrinder Giant grabs the model and the player rolls a D6 to see what happens next:

#chart((("D6", "Result"), ("1", "Stuff into Bag: The model is effectively removed as a casualty and can do nothing whilst in the
bag, but if the Bonegrinder Giant should be slain, any enemy trapped in its bag are freed at the
end of the battle, and no longer counts as casualties."), ("2", "Throw Back into Combat: The victim is hurled into its own unit like a living missile. The
victim suffers D3 Strength 8 Hits which Ignores Armour saves, and D6 Strength 5 hits are
inflicted on the unit (save as normal)."), ("3", "Hurl: The victim is hurled into an enemy unit within 12\" of the Bonegrinder Giant – randomly
determine which. The victim is removed as a casualty, and the unit takes D6 Strength 5 hits.
Unsaved Wounds from these hits count towards the Bonegrinder Giant's combat result. If no
enemy units are in range, treat this as a Throw Back into Combat result instead."), ("4-5", "Squash or Eat: The model is removed as a casualty."), ("6", "Pick Another: Treat the attack as if the Bonegrinder Giant had rolled the Stuff into Bag result,
above, and then choose another victim. Roll again on this table to see what the Giant does with
it.")))
  ],
  options: [
- May have a Magical Ward (6+) (if Savage Orc Wizard is included in your army) +35 points
  ],
  notes: [
- A Bonegrinder Giant has a Line of Sight value of 10.
  ],
)

= SPECIAL CHARACTERS

#unit("GORBAD IRONCLAW",
  solo: true,
  first: true,
  subtitle: "Da Great Leader, Warboss of the Ironclaw Tribe",
  profiles: (
    (name: "Gorbad Ironclaw", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 5, a: 4, ld: 10, points: 340),
    (name: "Gnarla (War Boar)", m: 7, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Common Orc, Warboss)",
  mount: "Gnarla (Animal)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy armour",
  magic-items: (
    rule("Morglor the Mangler")[Magic Weapon. This weapon gives Gorbad the Always Strikes First, Ignores Armour Saves and Multiple Wounds (D3) special rules.],
  ),
  special-rules: "Mighty Blow (1), Natural Armour (6+), Size Matters, Tusker Charge (Gnarla only), Waaagh!",
  special-rules-body: (
    rule("Da Boss 'as a Plan!")[Gorbad must be the Army General and also counts as the Battle Standard Bearer. In addition, he has the Inspiring Presence (6) and Hold Your Ground (6) special rules.],
    rule("Da Great Leader")[Friendly units within 18" of Gorbad that fail an Animosity test add Gorbad's current number of Wounds to their roll on the Animosity table.],
    rule("Orcs are da Best")[An Orc & Goblin army that includes Gorbad may take one of unit of Common Orc Big 'Uns and Common Orc Boar Boy Big 'Uns as a Core choice instead of a Special choice.],
  ),
)

#unit("AZHAG THE SLAUGHTERER",
  solo: true,
  subtitle: "Warboss of the Bonerattlaz",
  profiles: (
    (name: "Azhag the Slaughterer", m: 4, ws: 7, bs: 3, s: 5, t: 5, w: 3, i: 5, a: 4, ld: 9, points: 460),
    (name: "Skullmuncha (Wyvern)", m: 4, ws: 5, bs: 0, s: 6, t: 5, w: 5, i: 3, a: 3, ld: 6, points: ""),
  ),
  troop-type: "Monster (Special Character, Common Orc, Warboss)",
  mount: "Skullmuncha (Draconid)",
  base-size: "50x50, 50x100 or 100x150",
  magic-items: (
    rule("Slagga's Slashas")[Magic Weapon. Two hand weapons. The Slashas allow Azhag to re-roll failed To Hit rolls in the first round of combat.],
    rule("Azhag's 'Ard Armour")[Magic Armour. Medium armour. The 'Ard Armour gives Azhag the Magical Ward (5+) special rule.],
    rule("Daemon Staff")[Arcane Item. The Daemon Staff gives Azhag +1 to cast spells.],
    rule("The Crown of Sorcery")[Enchanted Item. The crown makes Azhag a Level 2 Wizard who uses spells from the Lore of Death. In addition, Azhag suffers from Stupidity.],
  ),
  special-rules: "Fly (8), Mighty Blow (1), Natural Armour (4+), Poisoned Attacks (Skullmuncha only), Size",
  special-rules-body: [
*Matters, Waaagh!*

- *Get on Wiv it!* Azhag must be the Army General. Any unit within range of Azhag's Inspiring Presence that fails an Animosity test must immediately re-roll the dice.
  ],
)

#unit("GRUMLOK & GAZBAG",
  solo: true,
  subtitle: "Warboss of the Bloody Sun Boyz",
  profiles: (
    (name: "Grumlok", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 3, i: 5, a: 4, ld: 9, points: 300),
    (name: "Gazbag", m: 4, ws: 2, bs: 3, s: 3, t: "-", w: "-", i: 3, a: 1, ld: "-", points: ""),
  ),
  troop-type: "Infantry (Special Character, Common Orc/Night Goblin, Warboss)",
  base-size: "25x25 or 30x30",
  equipment: "Medium armour",
  magic: "Gazbag is a Level 2 Wizard who uses the Lore of da Bad Moon.",
  special-rules: "Hatred (Dwarfs) (Gazbag only), Magic Mushrooms (see Night Goblin Oddnobs), Mighty",
  special-rules-body: [
*Blow (1)* (Grumlok only)*, Size Matters, Waaagh!*
  ],
  options: [
- May take Magic Items up to a total of 100 points
  ],
)

#unit("GRIMGOR IRONHIDE",
  solo: true,
  subtitle: "The Green Slaughterer, Harbinger of Gork",
  profiles: (
    (name: "Grimgor Ironhide", m: 4, ws: 8, bs: 1, s: 5, t: 5, w: 3, i: 5, a: 5, ld: 9, points: 310),
  ),
  troop-type: "Infantry (Special Character, Black Orc, Warboss)",
  base-size: "25x25 or 30x30",
  magic-items: (
    rule("Gitsnik")[Magic Weapon. Close combat attacks made with Gitsnik are resolved at +2 Strength. In addition, the axe grants Grimgor the Always Strikes First special rule.],
    rule("Blood-Forged Armour")[Magic Armour. The Blood-forged Armour gives Grimgor a 2+ armour save and the Magical Ward (5+) special rule.],
    rule("Mork's All-Seeing Eye")[Talisman. The Eye gives Grimgor the Magic Resistance (1) special rule.],
  ),
  special-rules: "Hatred, Immunity (Psychology), Mighty Blow (1), Quell Animosity, Waaagh!",
  special-rules-body: (
    rule("He's da Boss")[Grimgor must be the Army General.],
    rule("Da Immortulz")[Grimgor must be accompanied by a unit of Black Orcs chosen from the army list at a cost of +2 points per model. This unit has +1 Weapon Skill and the Hatred special rule. Grimgor may never choose to leave this unit.],
    rule("Grimgor's 'Ardboyz")[If your army includes Grimgor, the restriction on duplicate units for Black Orcs is halved (rounding up).],
  ),
)

#unit("BORGUT FACEBEATER",
  solo: true,
  subtitle: "Champion of Grimgor Ironhide",
  profiles: (
    (name: "Borgut Facebeater", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 2, i: 3, a: 3, ld: 9, points: 175),
  ),
  troop-type: "Infantry (Special Character, Black Orc)",
  base-size: "25x25 or 30x30",
  magic-items: (
    rule("'Ardlad's Axe o' Doom")[Magic Weapon. Two hand weapons. This axe adds +1 to Borgut's Strength and allows him to re-roll failed armour saves.],
    rule("Drog's Dead 'Ard Armour")[Magic Armour. This armour gives Borgut a 1+ Armour save that cannot be improved.],
  ),
  special-rules: "Immunity (Psychology), Mighty Blow (1), Quell Animosity",
  special-rules-body: (
    rule("Do as I say and wot I do")[If Borgut is included in your army, then you may make one unit of Orc Big 'Uns as a Core Unit. Borgut must deploy with this unit and may never choose to leave it.],
    rule("The Facebeater")[If Borgut fights in a challenge, then at the beginning of the first Close Combat phase of the challenge, he can make a special attack in addition to his normal attacks, which is resolved before any other attacks in the challenge. If this attack inflicts an unsaved Wound, the target is reduced to Weapon Skill 1 and gains the Always Strike Last special rule for the rest of the Close Combat phase. If this attack kills his opponent, Borgut can still make his remaining attacks to calculate Overkill for the purposes of combat resolution.],
    rule("Keep Your Enemies Closer")[If your army includes Grimgor, then you may never deploy Borgut further than 6" from him when setting up your army.],
  ),
)

#unit("BADRUK 'EADSPLITTA",
  solo: true,
  subtitle: "Scourge of the Grey Dwarfs of Karak Norn",
  profiles: (
    (name: "Badruk 'Eadsplitta", m: 4, ws: 6, bs: 3, s: 5, t: 5, w: 2, i: 3, a: 3, ld: 8, points: 140),
  ),
  troop-type: "Infantry (Special Character, Black Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Great weapon, heavy armour",
  magic-items: (
    rule("Dwarf Trinket")[Talisman. One use only. Once per battle, Badruk can cause one enemy model fighting him in close combat to miss with all his normal attacks. He may wait until after the enemy has rolled to hit to decide to use it, but must choose before he rolls To Wound.],
  ),
  special-rules: "Immunity (Psychology), Mighty Blow (1), Quell Animosity",
  special-rules-body: (
    rule("Executioner's Strike")[Badruk has the Killing Blow special rule. In addition, he causes a Killing Blow on the To Wound roll of a 5+ rather than a 6.],
  ),
)

#unit("ZOGGROK ANVILSMASHA",
  solo: true,
  subtitle: "Legendary Orc Smith",
  profiles: (
    (name: "Zoggrok Anvilsmasha", m: 4, ws: 5, bs: 3, s: 4, t: 5, w: 2, i: 3, a: 3, ld: 8, points: 100),
    (name: "Klonk (Squig)", m: 4, ws: 4, bs: 0, s: 5, t: 3, w: 1, i: 3, a: 2, ld: 3, points: ""),
  ),
  troop-type: "Large Infantry (Special Character, Common Orc)",
  base-size: "30x30 or 40x40 (Zoggrok Anvilsmasha), 20x20 or 25x25 (Klonk)",
  equipment: "Light armour",
  magic-items: (
    rule("Ward-smashing Choppa")[Magic Weapon. Magical Ward saves may not be taken against Wounds caused by this weapon.],
  ),
  special-rules: "Mighty Blow (1), Size Matters",
  special-rules-body: (
    rule("Klonk")[Klonk must always be kept in base contact with Zoggrok Anvilsmasha, but may otherwise be targeted separately.],
    rule("Power of da Great Green God")[Any unit joined by Zoggrok Anvilsmasha gains the Armour Piercing (1) special rule while he remains in the unit.],
  ),
)

#unit("OGDRUZ SWAMPDIGGA",
  solo: true,
  subtitle: "Da Troll Calla",
  profiles: (
    (name: "Ogdruz Swampdigga", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 3, a: 2, ld: 8, points: 235),
  ),
  troop-type: "Infantry (Special Character, Common Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  magic: "Ogdruz Swampdigga is a Level 3 Wizard who uses the Lore of Troll Magic.",
  magic-items: (
    rule("Bog-wood Staff")[Magic Weapon. Great weapon. For each unsaved Wound inflicted with this weapon, Ogdruz recovers a lost Wound.],
    rule("Trollhide Shawl")[Magic Armour. This item gives Ogdruz the Natural Armour (6+) and Regeneration (5+) special rules.],
  ),
  special-rules: "Size Matters",
  special-rules-body: (
    rule("Da Troll Calla")[All friendly Trolls treat Ogdruz as the Army General.],
    rule("Protect Da Boss")[Ogdruz may join and use "Look Out, Sir!" from friendly units of Trolls, even though they are not the same Troop Type.],
    rule("Syphoned Strength")[Whilst Ogdruz Swampdigga is within 6" of a friendly unit of Trolls with 3 or more models, he gains a +1 casting bonus.],
  ),
)

#unit("WURRZAG UD URA ZAHUBU",
  solo: true,
  subtitle: "The Great Green Prophet, Great Shaman of the Bone Nose Tribe",
  profiles: (
    (name: "Wurrzag", m: 4, ws: 4, bs: 3, s: 4, t: 4, w: 3, i: 3, a: 2, ld: 8, points: 310),
    (name: "Spleenrippa (War Boar)", m: 7, ws: 3, bs: 0, s: 3, t: 4, w: 1, i: 3, a: 1, ld: 3, points: ""),
  ),
  troop-type: "Infantry (Special Character, Savage Orc)",
  base-size: "25x25 or 30x30",
  equipment: "Hand weapon",
  magic: "Wurrzag is a Level 4 Wizard who uses the Lore of da Savage Waaagh!",
  magic-items: (
    rule("Bonewood Staff")[Arcane Item. Staff. Bound spell. The Bonewood Staff contains the _Wurrzag's Revenge_ spell. _Wurrzag's Revenge_ is a *hex* spell, which targets all enemy Wizards within 12" of Wurrzag. Roll a D6 for each Wizard that is affected. On a roll of 1\-5 they shake off the spell, but on a roll of 6 they are turned into a Squiggly Beast and removed as a casualty, along with any mount they have, with no saves of any kind allowed. In addition, you may store one extra dice in Wizzbang the Power Squig (see below) for each Wizard that is transformed.],
    rule("Wizzbang the Power Squig")[Arcane Item. Relic. At the end of either player's Magic phase, you can store one unused dice from your pool in the Power Squig. At the start of the next Magic phase, you must add this extra dice to your power or dispel pool as appropriate.],
    rule("Baleful Mask")[Enchanted Item. Relic. Bound spell. The Baleful Mask contains the Gaze of Mork spell from Spells of da Big Waaagh!],
  ),
  special-rules: "Frenzy, Magical Ward (5+), Size Matters",
  special-rules-body: (
    rule("Mork's Favourite")[Wurrzag has a +1 casting bonus, and may re-roll the result on the Waaagh! Miscast chart.],
  ),
  options: [
- May be mounted on Spleenrippa (War Boar) +20 points
  ],
)

#unit("GROM THE PAUNCH",
  solo: true,
  subtitle: "Warboss of the Misty Mountain",
  profiles: (
    (name: "Grom", m: "-", ws: 5, bs: 3, s: 4, t: 4, w: 3, i: 4, a: 4, ld: 8, points: 140),
  ),
  troop-type: "Infantry (Special Character, Common Goblin, Warboss)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic-items: (
    rule("Axe of Grom")[Magic Weapon. Great weapon. Attacks made with this axe have the Killing Blow special rule. In addition, Grom's Axe gains the Killing Blow special twice against Elves.],
    rule("Lucky Banner")[Magic Standard. This is the Battle Standard. The Lucky Banner allows Grom to re-roll failed armour and invulnerable saves. This item requires Grom to be mounted on a Wolf Chariot to have any effect.],
  ),
  special-rules: "Regeneration (4+)",
  special-rules-body: (
    rule("Goblin General")[If your army includes Grom, he must be the Army General. In addition, you may not include any Orc Lords if Grom is your General. An army containing Grom must include at least one unit of Goblin Gitz.],
    rule("Eats Elves for Breakfast")[As long as Grom is alive, all Goblins in his army ignore the Fear Elves special rule.],
    rule("Grom's Goblin Guard")[Grom may include a unit of Common Goblin Gitz chosen from the army list at a cost of +2 points per model. This unit has +1 Weapon Skill and wears medium armour.],
    rule("Grom's Waaagh!")[Grom has the Waaagh! special rule. When Grom calls a Waaagh!, in addition to the units that would normally be affected, every unit of five or more Goblins in the army adds +1 to its combat resolution for the rest of the player turn.],
  ),
  options: [
- May be mounted on a Wolf Chariot (replacing one of the crew) +100 points
  ],
  notes: [
- Grom's Chariot includes an additional Giant Wolf, and may take no additional equipment or crew except scythes.
  ],
)

#unit("KIKNIK TOOFSNATCHA",
  solo: true,
  subtitle: "Goblin Warboss",
  profiles: (
    (name: "Kiknik Toofsnatcha", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 3, i: 4, a: 4, ld: 8, points: 145),
    (name: "Chompa (Giant Wolf)", m: 9, ws: 3, bs: 0, s: 4, t: 3, w: 1, i: 3, a: 2, ld: 3, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Common Goblin, Warboss)",
  mount: "Chompa (Animal)",
  base-size: "25x50",
  equipment: "Light armour, shield",
  magic-items: (
    rule("Da Skull Smasha")[Magic Weapon. This weapon can be used in one of two ways, chosen at the start of each round of close combat. It can either be used to add +1 Strength, or the Armour Piercing (1) and Multiple Wounds (2) special rules.],
    rule("Da Boss' Trophy Rack")[Enchanted Item. During a turn in which he charged, Kiknik and any unit he has joined have the Fear special rule and gain an additional +1 bonus to their Combat Resolution.],
  ),
  special-rules: "Fear Elves",
  special-rules-body: (
    rule("All Sneaky Like")[One unit of Wolf Riders may have the Ambushers special rule. In addition, they gain +1 to the result when rolling to determine if they arrive.],
    rule("'It & Run")[In any close combat phase in which Kiknik and any unit he is with does not break or break their enemy, they may choose to disengage from combat instead of doing a combat reform (if the unit lost the combat they must pass a Leadership test just like when attempting to Reform from Defeat). If the unit manages to disengage from combat, the unit will make a Flee move as if it had broken from combat. This Flee move follows the rule for Feigned Flight (though only Fast Cavalry and Skirmishers may choose to move normally in the Remaining Moves phase after rallying). After finishing its move, the unit rallies automatically. The enemy unit is not allowed to Pursue, but may make a Combat Reform as normal.],
  ),
  options: [
- May take Magic Items up to a total of 50 points
  ],
)

#unit("GITILLA DA HUNTER",
  solo: true,
  subtitle: "Big Boss of da Drippin' Fangs",
  profiles: (
    (name: "Gitilla da Hunter", m: 4, ws: 4, bs: 6, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: 65),
    (name: "Ulda (Giant Wolf)", m: 9, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 3, a: 2, ld: 3, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Common Goblin)",
  mount: "Ulda (Animal)",
  base-size: "25x50",
  equipment: "Spear",
  magic-items: [
- *Bone Bow:* Magic Weapon. The Bone Bow has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("24\"", "4", "Multiple Shots (3), Quick to Fire"))
  ],
  special-rules: "Fear Elves, Natural Armour (6+)",
  special-rules-body: (
    rule("Ulda the Great Wolf")[Gitilla, and any unit he is with, can choose to re-roll any Pursuit or Flee rolls they make.],
    rule("Da Howlerz")[Gitilla must be accompanied by a unit of Goblin Wolf Riders chosen from the army list at a cost of +2 points per model. This unit has +1 Ballistic Skill and the Quick to Fire special rule. Gitilla may never choose to leave this unit.],
  ),
  options: [
- May take Magic Items up to a total of 25 points
  ],
)

#unit("SKARSNIK",
  solo: true,
  subtitle: "Warboss of the Eight Peaks",
  profiles: (
    (name: "Skarsnik", m: 4, ws: 5, bs: 6, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 8, points: 200),
    (name: "Gobbla (Great Cave Squig)", m: "-", ws: 5, bs: 0, s: 6, t: "-", w: "-", i: 4, a: 4, ld: "-", points: ""),
  ),
  troop-type: "Infantry (Special Character, Night Goblin/Squig)",
  base-size: "60x40 or 75x50",
  equipment: "Light armour",
  magic-items: (
    rule("Skarsnik's Prodder")[Magic Weapon. Polearm. The Prodder contains a Bound Spell (power level 5). This spell is a *magic missile* with a range of 24" that causes D3 Strength 6 hits with the Ignores Armour saves special rule. The number of hits is increased to D6 if Skarsnik is within a Night Goblin unit with at least 5 models.],
  ),
  special-rules: "Hatred (Dwarfs), Fear Elves, Killing Blow (Gobbla only)",
  special-rules-body: (
    rule("Gobbla")[Skarsnik and Gobbla follow the Split Profile rules for Cavalry.],
    rule("Sneaky Schemes")[At the start of the game, before deployment, roll a D6 for each enemy unit. On a roll of 6, that unit has been delayed and do not deploy as normal, but instead enter play as reinforcements in the Movement phase of their first turn.],
    rule("Tricksy Traps")[Any friendly Night Goblin unit that chooses to flee as a charge reaction and subsequently rallies at the beginning of its next turn may reform as normal, but is then also free to move during the Remaining Moves sub-phase. The unit is also free to shoot as normal (but it always counts as having moved).],
  ),
  options: [
- May take Magic Items up to a total of 50 points
  ],
  notes: [
- Skarsnik & Gobbla have a combined Unit Strength of 4.
  ],
)

#unit("SKITGIT",
  solo: true,
  subtitle: "The Black Gobbo",
  profiles: (
    (name: "Skitgit", m: 4, ws: 6, bs: 6, s: 4, t: 4, w: 3, i: 5, a: 4, ld: 8, points: 145),
  ),
  troop-type: "Infantry (Special Character, Night Goblin)",
  base-size: "20x20 or 25x25",
  equipment: "Light armour",
  magic-items: (
    rule("Thagi Az")[Magic Weapon. If Skitgit scores a hit against an enemy who has a magic weapon, the enemy's magic weapon is destroyed on the roll of a 4+. In addition, the axe confers +1 Strength and +1 Attack to the wielder.],
    rule("Belt Buckle of Durzik Al Drazh")[Magic Armour. Skitgit may reroll any single D6 roll once per game that affects him directly.],
    rule("Gotkid's Beard")[Talisman. This item gives Skitgit the Magical Ward (6+) special rule.],
    rule("Hood of Night")[Enchanted Item. This item causes friendly units of Night Goblins to treat Skitgit as if he had Leadership 9.],
  ),
  special-rules: "Fear Elves, Surprise! (see Nasty Skulkers)",
  special-rules-body: (
    rule("Really Hates Dwarfs")[The Black Gobbo may re-roll all failed rolls To Hit when fighting Dwarfs. In addition, the Black Gobbo and any unit he accompanies are Stubborn when they are in base contact with any Dwarf.],
  ),
  options: [
- May choose one of the following:
  - Additional hand weapon +3 points
  - Shield +3 points
  ],
)

#unit("SKRAGROTT",
  solo: true,
  subtitle: "The Moon King",
  profiles: (
    (name: "Skragrott", m: 4, ws: 3, bs: 3, s: 3, t: 3, w: 3, i: 2, a: 2, ld: 7, points: 310),
  ),
  troop-type: "Infantry (Special Character, Night Goblin)",
  base-size: "40x60 or 50x75",
  magic: "Skragrott is a Level 4 Wizard who chooses spells from the Lore of da Bad Moon.",
  magic-items: (
    rule("Da Moon Onna Stikk")[Magic Weapon. If an enemy model suffers one or more unsaved Wounds from Da Moon Onna Stikk, they must pass a Toughness test at the start of each Movement phase or suffer 1 additional Wound with no saves allowed.],
    rule("Babbling Wand")[Arcane Item. The Babbling Wand allows Skragrott to re-roll any failed Channelling rolls.],
    rule("Moon King's Crown")[Talisman. The Moon King's Crown gives Skragrott a +1 casting bonus and the Magical Ward (4+) special rule.],
  ),
  special-rules: "Fear Elves, Hatred (Dwarfs), Magic Mushrooms",
  special-rules-body: (
    rule("The Moon King's Entreaty")[Skragrott can always choose to re-roll any number of dice when determining the distance the template from the _Curse of da Bad Moon_ spell moves.],
  ),
)

#unit("SNAGLA GROBSPIT",
  solo: true,
  subtitle: "Leader of the Deff Creepers",
  profiles: (
    (name: "Snagla Grobspit", m: 4, ws: 4, bs: 5, s: 4, t: 4, w: 2, i: 4, a: 3, ld: 7, points: 80),
    (name: "Giant Spider", m: 7, ws: 3, bs: 0, s: 3, t: 3, w: 1, i: 4, a: 1, ld: 2, points: ""),
  ),
  troop-type: "Cavalry (Special Character, Forest Goblin)",
  mount: "Giant Spider (Animal)",
  base-size: "25x50",
  equipment: "Light lance",
  magic-items: [
- *Fangspike:* Magic Weapon. The Fangspike has the Poisoned Attacks and Multiple Wounds (D3) special rules.
- *Sting of Snagla:* Magic Weapon. The Sting of Snagla has the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("6\"", "3", "Multiple Wounds (D3), Poisoned Attacks, Quick to Fire"))
  ],
  special-rules: "Ambushers, Fear Elves, Hatred (The Empire), Poisoned Attacks (Giant Spider only), Wall-",
  special-rules-body: [
*crawler*

- *The Deff Creepers:* Snagla Grobspit must be accompanied by a unit of Forest Goblin Spider Riders chosen from the army list at a cost of +2 points per model. This unit has the Ambushers, Devastating Charge and Hatred (Empire) special rules. In addition, they cause Fear on any turn that they charge. Snagla Grobspit may never choose to leave this unit.
  ],
  options: [
- May take Magic Items up to a total of 25 points
  ],
)

#unit("TRUGG THE TROLL KING",
  solo: true,
  profiles: (
    (name: "Trugg the Troll King", m: 6, ws: 5, bs: 1, s: 7, t: 6, w: 6, i: 1, a: 6, ld: 7, points: 375),
  ),
  troop-type: "Monster (Special Character, Troll)",
  base-size: "100x50 or 100x60",
  equipment: "Hand weapon",
  magic-items: [
- *Malfunctioning Leystone:* Enchanted Item. This item may be used at the start of any of your turns. Roll a D6 and consult the table below.

#chart((("D6", "Result"), ("1", "Glyph of Shyish: Trugg suffers 1 Wound with no saves allowed."), ("2", "Glyph of Aqshy: Trugg gains the Flaming Attacks and Multiple Wounds (D3) special rules until the
start of your next turn."), ("3", "Glyph of Ghur: Trugg gains +1 Attack until the start of your next turn."), ("4", "Glyph of Hysh: Trugg gains +1 Leadership until the start of your next turn."), ("5", "Glyph of Ulgu: Enemy shooting and close combat attacks suffer -1 To Hit Trugg until the start of your
next turn."), ("6", "Glyph of Chamon: Trugg gains a 3+ armour save until the start of your next turn.")))
  ],
  special-rules: "Magic Resistance (3), Regeneration (4+), Stupidity",
  special-rules-body: (
    rule("Massive Troll Vomit")[In addition to his normal Attacks, Trugg inflicts D6 automatic Strength 6 hits which Ignores Armour Saves.],
    rule("Crushing Grip")[In addition to his normal attacks, Trugg may do a special attack against any single model in base contact with a Unit Strength of 2 or less. That model immediately suffers D3 Wounds which Ignores Armour Saves.],
    rule("Imbued with Life")[Trugg may re-roll failed Regeneration rolls.],
    rule("Troll King")[You may take units of Trolls as Core Units instead of Special Units in an army containing Trugg the Troll King. He may not be the Army General, but all friendly Trolls treat him as the Army General instead of whoever the actual Army General is.],
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
