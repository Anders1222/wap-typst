// The Game of Fantasy Battles 3.11 - re-typeset from the Warhammer Armies Project PDF.
// Imported once by extract/to_book.py; this file is the source of truth
// now, so edit it directly. Nothing regenerates it.
//
// Rules text, army design and points values are Mathias Eliasson's work.
// Only the typesetting differs here - see the colophon below.

#import "template.typ": *

#book-meta(
  slug: "rulebook",
  army: "The Game of Fantasy Battles",
  version: "3.11",
  layout: "rules",
  cover: "covers/rulebook.png",
)

#show: book.with(title: "Warhammer Armies Project — The Game of Fantasy Battles 3.11", side: 3.1cm)

#cover(
  title: "The Game of Fantasy Battles",
  subtitle: "Warhammer Armies Project · 3.11",
  art: "/assets/covers/rulebook.png",
)

#colophon((
  [
    An unofficial, non-commercial re-typesetting of *Warhammer Armies Project:
    The Game of Fantasy Battles*, version 3.11 — written and freely distributed by Mathias
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

#outline(title: [Contents], depth: 3)

= WHAT YOU NEED

#namecost("ARMIES OF MINIATURES", "")

Both you and your opponent each need to have an army built out of suitable models. There is no strict rule what models you should use, but you should endeavour to use models of a similar scale (most commonly between 28 to 32 mm) and have them be armed with appropriate equipment matching their rules, so it is clear to both you and your opponent what each model is supposed to represent. Ideally, all miniatures should also be painted, but it is up to you and your opponent whether or not this is a rule you want to enforce for yourselves.

#namecost("RULEBOOK", "")

You should make sure to always have the rulebook on hand so you can look up rules as needed. This is especially important as you are getting started. As you play more and more games, it will be less commonly required, but you will still need to check the book for occasional reference or to find clarification for an unusual game situation.

#namecost("TAPE MEASURE", "")

A tape measure or other measuring device marked in inches is required to measure the distance a model can move, shoot etc.

#namecost("A BATTLEFIELD", "")

You require a flat area to set up and play your games on. This can be as simple as a green blanket to represent grass to a custom build board with model scale terrain. You are also likely to want to add some terrain pieces. This can be represented by anything from household items to scratch-built scenery pieces.

#namecost("TEMPLATES", "")

There are several weapons that use templates; flat pieces of plastic or paper that are used to determine whether a model has been hit. These are described in more detail later on.

#namecost("MOVEMENT TRAYS", "")

In Warhammer a grouped formation of troops is called a unit. Most units consist of multiple models standing next to each other. For ease of moving these units around, it is recommended to invest in some movement trays so all models in the unit can be moved together.

#namecost("PEN & PAPER", "")

Having access to pen & paper can be vital to keeping track of important information, such as magic items, spells, unit upgrades, hidden models and wounded creatures.

#namecost("DICE", "")

Warhammer uses six-sided dice to work out effects such as combat and shooting. It is recommended that you have access to a minimum of 12 dice, as well as an artillery and scatter dice (explained later) while playing.

#namecost("TOKENS & MARKERS", "")

It is recommended that you use some sort of tokens or markers to help remind you of things such as which units have charged, fled, rallied etc, as well as if they are under the effect of some spell or special rule.

= BASIC RULES

=== MEASURING DISTANCES

*In Warhammer, distances are measured in inches (") with a tape measure. You can always measure distances and range at any time and for any reasons, which is especially useful before you declare an action, such as charging or shooting.*

This allows you to check whether your units are in range of their target before they launch an attack.

Distances between models and all other objects are always measured from the closest point on one base to the closest point on the other base. Distances between units are always measured to and from the closest models in each of the units (see diagram below). Sometimes units will be mounted on movement trays for ease of use. Nevertheless, always use the model's base, and not the movement tray, as the reference point when taking your measurements. So, for example, if any part of a model's base is within 6" of the base of an enemy model, the two models are said to be within 6" of each other.

Sometimes the rules will call upon a unit to move directly towards another unit, or some other feature on the battlefield. Where this is the case, draw an imaginary line between the centre of the unit and its destination, and move the unit forward along this line a number of inches equal to the distance stated.

#diagram("/assets/figures/rulebook/img-0424.jpg", 0.463)

#note[_The distance between the blue unit and the red unit is 6". We therefore say that the units are within 6"._]

#note[_The distance between the blue unit and the red model is 3". We therefore say that the monster is within 3"._]

=== DICE

*You will often need to roll dice to see how the actions of your models turn out – how effective their shooting is, what damage they have done in close combat, and so on.*

Almost all the dice rolls in Warhammer use standard six-sided dice, also known as D6.

#namecost("ROLLING A D3", "")

In some circumstances you may be told to roll a D3. Unless you have dedicated three-sided dice, use the following method to determine a score between 1 and 3. Roll a D6 and halve the score, rounding up. Thus:

1 or 2 = 1 3 or 4 = 2 5 or 6 = 3

#namecost("ARTILLERY DICE & SCATTER DICE", "")

Warhammer also uses two special dice: the artillery dice (marked 2, 4, 6, 8, 10 and Misfire) and a scatter dice (marked with four arrows and two Hit! symbols). These dice are mostly used to represent the effects of various war machines, such as cannon and stone throwers.

Note that, except where clearly specified, the artillery and scatter dice cannot be re-rolled. We've not talked about re-rolls yet, but we will do shortly.

#namecost("DIVIDING VALUES", "")

Sometimes you'll be called upon to divide the result of a dice roll, a characteristic or some other value. Where this happens, any fractions should always be rounded up. So a 2D6 roll of 7 halved, would be a result of 4 (3.5 rounded up). Similarly, 10% of a unit of 51 models, rounded up, would be 6 models.

#namecost("MODIFYING DICE ROLLS", "")

Sometimes, you may have to modify the result of the dice roll, such as adding or subtracting a number from the result. For example, where you gain a +1 modifier means that where the roll might normally require you to roll a 4+, you now only need to roll a 3+. By contrast, a \-1 modifier means that where the roll might normally require you to roll a 4+, you now need to roll a 5+.

At other times you might need to add or subtract to get a final result. This is noted as D6 plus or minus a number, such as D6+1. Roll the dice and add or subtract the number given to or from the score (as appropriate) to get the final result. For example, D6+2 means roll a dice and add 2 to the score, giving a total between 3 and 8.

You may also be told to roll a number of dice in one go, which is written as 2D6, 3D6 and so on. Roll the indicated number of dice and add the scores together, so a 2D6 roll is two dice rolled and added together for a score of 2\-12. Another method is to multiply the score of a dice by a certain amount, such as D6x5 for a total of between 5 and 30.

#namecost("RE-ROLL", "")

In some situations, the rules allow you to pick up and re-roll a dice. This is exactly what it sounds like – pick up the dice you wish to re-roll, and roll it again. The second score counts, even if it means a worse result than the first, and no single dice can normally be re- rolled more than once, regardless of the source of the re-roll. If you re-roll a 2D6 or 3D6 roll, you must re- roll all of the dice and not just some of them, unless the rule granting the re-roll specifies otherwise.

If a model is granted a re-roll from a special rule or similar while the enemy might have a special rule or similar that forces successful rolls to be re-rolled, they cancel each other out and no re-rolls are made for as long as both special rules are in effect.

#namecost("ROLL-OFF", "")

If the rules require players to roll-off, this simply means that each player rolls a dice and the player that scores the highest result wins the roll-off. If the players roll the same result, both dice must be re-rolled again until one player is the winner – any modifiers that applied to the first dice roll are also applied to any further rolls.

#namecost("RANDOMISING", "")

Sometimes you'll be called upon to randomly select something – often a model, but sometimes a magic item, a spell or similar. Where this is the case, simply assign a D6 result to each of the things the random selection must be made from, and roll the dice to make your random choice. If you have fewer than six items to randomise between, simply re-roll any unassigned results until you roll an assigned number.

=== TEMPLATES

*Some spells and war machines do not target a single model or unit, but have an 'area effect' which might encompass several different units. Warhammer uses a series of four different templates:*

- A small round template (3"/75mm in diameter)
- A large round template (5"/125mm in diameter)
- A flame template (a teardrop-shaped template roughly 8"/208mm long)
- A straight line (length varies depending on the rule, the line itself can only ever cover one model per rank)

The templates are used as a way of determining whether or not models have been hit by an attack that has an area of effect or blast radius. When an attack uses a template, it will explain how the template is positioned, including any kind of scatter that might occur (scatter is discussed more completely next in this section). To work out which models are hit, you normally need to hold the template over an enemy unit or a particular point on the battlefield (as close to the battlefield or unit as possible), and then look underneath to see which models' bases lie partially or completely underneath the template.

Normally, any model that is fully or even partially underneath the template is hit automatically with the effect described in the special rules for the attack. Remember that a model’s base is counted as being part of the model itself, so as long as any part of the base is under the template everything is hit.

If a model is hit by multiple templates at the same time, resolve each template one at a time in an order chosen by the controlling player.

Note that you may never place templates over models in close combat or in such a way that their initial placement would hit friendly models.

=== SCATTER

*Sometimes a rule will call for an object (a template, counter or even a unit) to be placed on the battlefield and then scattered. When this occurs, follow this procedure:*

Place the object on the battlefield, as instructed by the rule. Roll a scatter dice to determine the direction of scatter, and any other dice required by the rule to determine the scatter distance. For example, if something is said to 'scatter 2D6" in a random direction' then you'd roll the scatter dice for the direction and 2D6" for the distance. It's normally a good idea to roll these as close to the scattering object as possible, to minimise the inaccuracy that will inevitably creep in as you attempt to match the vector.

If a Hit! is rolled on the scatter dice, the object does not move (unless specified) – leave it in place and resolve the rest of the rule.

If an arrow is rolled, move the object in the direction of the arrow and the distance (in inches) shown on the other dice, ignoring intervening terrain, units, etc, unless the rule states otherwise. Once the object has scattered to its final position, you can resolve the effects of the rule. Note that war machines usually use the artillery dice to determine the distance scattered.

#namecost("CHOOSING A RANDOM DIRECTION", "")

Some rules require that you choose a random direction. To do so, roll the scatter dice, and use the direction indicated by the direction of the arrow. If you roll a Hit!, use the arrow shown on the Hit! symbol to determine the direction.

#diagram("/assets/figures/rulebook/img-0434.jpg", 0.463)

=== CHARACTERISTIC TESTS

*A model will sometimes be called upon to take a characteristic test (see model profiles for more info). Such a test could be applied against any characteristic the model has, save Leadership. A Toughness test is a characteristic test, as is a Strength test or an Initiative test, and so on.*

Models will not normally have a choice of which characteristic they must use – the characteristic to be tested will be specified in the rule.

To make a characteristic test, roll a D6 and compare the score to the relevant characteristic in the model's profile. If the score is equal to or less than the number in the profile, the test is passed with no ill effect. If the score is greater than the number in the model's profile, the test has been failed, and something nasty will occur, as detailed in the rule that called for the test.

Where a model (or a unit) has more than one value for the same characteristic, as is the case with cavalry, for example, a characteristic test is always taken against the highest of the values.

If the unit is required to take a characteristic test, the best value in the unit is used. If every model in a unit is required to take a characteristic test, then each model uses its own best value instead.

#namecost("AUTOMATIC PASS AND FAIL", "")

When taking a characteristic test a natural roll of 6 is always a failure, and a natural 1 is always a success, regardless of any other modifiers. However, if the model has a characteristic of "0" or "-", it automatically fails the test.

=== LEADERSHIP TESTS

*At certain times, a model or unit might be called upon to take a Leadership test.*

To take a Leadership test, roll 2D6. If the result is equal to or less than the model's Leadership value, then the test has been passed. If the result is greater than the model's Leadership value, the test is failed. This will normally involve the unit turning and fleeing from the enemy or some other negative outcome.

If a unit includes models with different Leadership values, always use the one with the highest Leadership. Note that a unit that has a LD of '1', ‘0’ or ‘-’ automatically fail Leadership tests.

#namecost("UNMODIFIED LEADERSHIP", "")

When taking a Leadership test, sometimes you have to take it on a unit’s unmodified Leadership. A unit’s unmodified Leadership is the highest Leadership characteristic in the unit. That means the Leadership from any characters in the unit itself (but not from outside the unit) with a higher Leadership can be used unless specifically stated otherwise.

#namecost("PSYCHOLOGY TESTS", "")

Psychology tests are a form of Leadership test that applies in certain situations throughout the game, most commonly when testing for Panic. Psychology tests are governed by certain restrictions which do not apply to Leadership tests, and some models can be immune to needing to take certain Psychology tests.

=== FORMING UNITS

The models that make up your Warhammer army must be organised into 'units'. A unit usually consists of several models that have banded together, but a single model such as a lone character, chariot, monster, war machine and its crew, and so on, are also considered to be a unit. Such single model units are referred to as Lone Models.

A unit consists of 1 or more models that are arranged in base contact with each other in formations of squares or rectangles. All models in a unit must face the same direction. In addition, all models in the unit must be arranged in a formation that consists of one or more horizontal lines, called ranks, and a number of vertical lines, called files. This is why we often refer to basic warriors as 'rank and file' troops.

A unit may not have more ranks than they have files, e.g. if the unit is 5 models wide, it may at most have 5 ranks. The exception to this is if the unit is too wide to pass in between terrain or units; in these situations, the unit may temporary reform into a formation with more ranks than files for as long as it takes to pass the terrain or unit. After this, it must return to a legal formation again as soon as possible.

As far as possible there must be the same number of models in each rank. Where this is not possible it must be the rear rank that has fewer models, and models should always be placed as centrally as possible. Once formed into a unit, the models move and fight as a single entity for the rest of the battle.

In some cases, you will see the rules talking about models in 'base contact'. Note that for whatever reason, a model is never considered to be in base contact with itself, only other models.

#diagram("/assets/figures/rulebook/img-0437.jpg", 0.463)

#note[_Here you can see examples of correct and incorrect formations._]

=== REMOVING CASUALTIES

When casualties occur, models are removed from the back rank of the unit. If the unit is reduced to a single rank, casualties must be removed evenly from either end of the line.

If a model has to be removed from a fighting rank as there are no others to replace them – for example a character – another model will immediately fill the gap.

=== UNIT FACING

A model has a forward, flank and rear arc based on the direction that it is facing. We'll be using this later to work out what the model can attack, as well as calculating which side of the model an enemy will be able to charge as the game goes on.

A model's forward (or 'front'), flank and rear arcs extend out from its corners at 45° angles, forming four 90° quadrants. A unit's facings therefore are determined by the facing of its constituent models.

#diagram("/assets/figures/rulebook/img-0439.jpg", 0.463)
#diagram("/assets/figures/rulebook/img-0441.jpg", 0.463)

=== UNIT STRENGTH

All models and units have a Unit Strength (abbreviated as "US") value to establish the relative power of all these different creatures. This is used to determine the overall size and power of each model for purposes like ranks, charging, flanking and so on, which will be described later.

In most cases this is worked out by simply counting the number of models in a unit. However, some large creatures have a different Unit Strength. For information on each model’s Unit Strength, see the troop types chapter.

To work out the Unit Strength of a unit, count the number of models in the unit and multiply it by the appropriate number given. In the case of several models with different Unit Strengths in the same unit, simply add these together.

=== LINE OF SIGHT

Line of Sight (abbreviated as "LoS") determines what a model can 'see'. Many situations call for you to determine whether or not a model has line of sight. A model normally needs line of sight whenever it wishes to attack an enemy.

For one model to have line of sight to another, you must be able to trace an unblocked line from the front arc of its base to the base of the target. However, models with a higher Line of Sight value can see and be seen behind models or terrain with a lower Line of Sight value.

For more information about the different Line of Sight values, see the troop types chapter for models, and Battlefield Terrain chapter for terrain.

Example: _A model with Line of Sight value 2 can see and be seen behind a model with Line of Sight value 1, but cannot see or be seen behind a model with Line of Sight Value 3._

=== SEQUENCING

Whilst every effort has been made to make sure that the sequencing of rules is utterly clear, occasionally you'll find that two or more rules are to be resolved at the same time – normally 'at the start of the Movement phase' or similar. When this happens, resolve both rules at the same time whenever possible. If this is not possible for any reason, then the player whose turn it is chooses the order.

=== TAKE-BACKS & FORGOTTEN

=== RULES

There will likely be situations where you or your opponent will find yourself in a situation where you might second-guess your original plan and wants a re- do, such as moving a unit a certain distance and realising that would put you in a bad spot. Players should be tolerant of letting each other change their minds and re-do such mistakes.

However, once the dice has been rolled for any reason, or your opponent has made a countermove of any kind; players are not allowed to change their decision.

Likewise, if a player has forgotten a rule that should have happened in a previous sub-phase; they are not allowed to go back and apply that rule later unless both players agree.

However, players should be encouraged to remind each other about said rules if they are able to ensure the game is as fair as possible to both sides.

=== BASIC RULES AND

=== ADVANCED RULES

Basic rules apply to all the models in the game, unless specifically stated otherwise. They include the rules for movement, shooting, close combat and so on, as well as the rules for Panic tests. These are all the rules you'll need for your average infantry model.

Advanced rules apply to specific types of model, whether because they have a special kind of weapon (such as a spear), unusual skills (such as flaming attacks or the ability to regenerate damaged flesh), because they are different to their fellows (such as a standard bearer or a mighty hero), or because they are not normal infantry models (a knight, a cannon or even a Dragon). The advanced rules that apply to a unit are indicated in the entry for the unit in their relevant Warhammer Armies book.

#namecost("BASIC VERSUS ADVANCED", "")

Where rules apply to a specific model, they always override any contradicting basic rules. For example, the basic rules state that a model must take Panic test under certain situations. If, however, that model has a rule that makes it immune to Panic, then it does not test for Panic – the advanced rule takes precedence.

On rare occasions, a conflict may arise between a rule in this rulebook, and one printed in a Warhammer Armies book. Where this occurs, the rule printed in the Warhammer Armies book always takes precedence.

=== THE MOST IMPORTANT RULE

Remember, you are playing to enjoy a challenging battle with friends, where having fun and keeping to the spirit of the game is more important than winning at any cost.

Warhammer is an involving game, with many different races, weapons, and endless possibilities. In a game of this size and level of complexity there are bound to be certain occasions where a particular situation lies outside the rules as they are written. Warhammer players should feel free to improvise where necessary, resolving such situations in a friendly and mutually agreed manner, and evolving the game far beyond the published rules if they wish.

When you come across a situation in a battle that is not covered fully by the rules, be prepared to interpret a rule or come up with a suitable house rule for yourselves.

When a situation of contention arises, players should agree on a fair and reasonable solution and get on with the game as quickly as possible. The most common way of resolving any disputes is for a player to roll a D6 to see whose interpretation applies in that instance. On the roll of 1\-3 player A may decide, on a 4\-6 player B may decide. After the game has finished, sit down and discuss what happened with your opponent and see if you can both reach an agreement in case the same situation ever arises again (this is called a 'house rule').

Likewise; if there are any rules you or your gaming group dislike, feel free to discuss them among yourself and change them accordingly to something you prefer. This book is meant as a framework to play the game around, but feel free to make up new rules or changes as you see fit as long as your opponent agrees with you.

= MODEL PROFILES

Warhammer uses nine different statistics or characteristics to describe the various attributes of the different models. All characteristics are rated on a scale from 0 to 10 – they cannot go below 0 or rise above 10, unless specified.

If certain spells or special rules give an increase or decrease to a model’s characteristics, then you use the new value for as long as that spells or special rule is in effect. However, this does not apply to weapons of any kind (see the Weapons & Armour chapter for more information).

#namecost("MOVEMENT (M)", "")

Often called Move, this shows the number of inches a model can move on the battlefield under normal circumstances.

#namecost("WEAPON SKILL (WS)", "")

This defines how skilled a model is to fight in close combat.

#namecost("BALLISTIC SKILL (BS)", "")

This defines how skilled a model is to shoot with missile weapons.

#namecost("STRENGTH (S)", "")

This defines how easy it is for a model to inflict damage on their opponent.

#namecost("TOUGHNESS (T)", "")

This defines how hard it is to damage the model and how much pain they can ignore.

#namecost("WOUNDS (W)", "")

This shows how much damage a model can take before it dies or is so badly hurt that it can't fight any more.

#namecost("INITIATIVE (I)", "")

This indicates how fast a creature can react. In close combat, Initiative dictates the order in which the models strike.

#namecost("ATTACKS (A)", "")

This shows the number of times a model attacks during close combat.

#namecost("LEADERSHIP (LD)", "")

Leadership is used to determine how brave or well- disciplined the model is.

#namecost("CHARACTERISTICS OF ZERO", "")

Some creatures have been given a value of '0' (often shown as a dash: '-') for certain characteristics, which means that they have no ability whatsoever in that skill. This usually applies to creatures unable to use missile weapons, so they have BS0 or BS-, but it might equally well apply to other characteristics too. For example, some creatures or war machines may have no Attacks (A0 or A-). In some cases a model might have a characteristics value of '\*'. This means that characteristic uses a special rule rather than a number.

If any model has a Movement value of 0, it cannot move at all for any reason, unless it has some special rule that allows it to move another way.

If any model has a Weapon Skill of 0 then it is unable to attack with its normal attacks or defend itself in close combat, and any blows struck against it will therefore automatically hit. A model with Ballistic Skill 0 cannot use any missile weapons that require To Hit.

If at any time a model's Strength, Toughness or Wounds are reduced to 0 or less by magic or a special rule, it is slain and removed from play.

= FIGHTING A BATTLE

=== CHOOSING AN ARMY

First, you must choose an army to play and a points value to use. In a pitched battle, both your and your opponent’s armies should be at the same points value. You are allowed to have less points than agreed on, but not more.

=== THE BATTLEFIELD

The size of the battlefield depends on the size of the game played. A standard game of 2500 points is best played on a 6' x 4' table. Games below 1500 points are best played on a 4' x 4' table, and games above 3500 points are best played on an 8' x 4' table.

Firstly, players take their turn to place terrain pieces on the tabletop. Unless both players agree to do otherwise, place the terrain you want to use according to the following rules:

- Place a minimum of one terrain piece for every 2' x 2' square of the table.
- Keep a minimum distance of 6" between separate terrain pieces.
- Multiple terrain pieces that fit together (such as a group of fences, trees, or buildings) counts as a single terrain piece, as long as they do not take up more than a 12" x 12" square of space combined.
- Single terrain pieces may extend beyond 12" in size.

Each player should clarify what type of terrain is placed upon deployment of said terrain.

=== DEPLOYMENT

After placing the terrain, it is time to choose which side of the table each player deploys on. Normally, this is the longer sides of the table. Each player rolls a dice and whoever rolls highest picks the side of the table they wish their army to start on and deploys their first unit. The two players then take it in turns to place their units until they are finished.

All units (not including characters) costing less than 50 points must be placed at the same time. All characters must be placed at the same time after all your other units have been deployed, but may be set up in separate locations or units in their deployment zone.

When deploying your units, place them at least 1" apart so it is made clear which units are separate from each other.

=== STARTING THE BATTLE

After deployment is finished, the players roll a dice to decide which player will begin. The player with the least amount of deployment drops adds +1 to their result. The player with the highest result then chooses if they want to go first or second. In case both players roll the same result, re-roll the dice until one player rolls higher.

A standard game lasts 6 whole turns. A turn consists of the Movement, Magic, Shooting and Close Combat phase of both players. Once the 6 turns are finished, calculate the casualties and completed objectives for both armies to determine the winner. For more information on various battles, see the Scenarios chapter.

=== THE TURN SEQUENCE

On a player’s turn, that player can move and act with all their units. Then the opponent takes their turn. This process is then repeated, back and forth, until the game is done. For convenience and flow of game play, we divide a player's turn into four main phases:

*1\. Movement 2. Magic 3. Shooting 4. Close Combat*

In a complete game turn, both players get a player turn, each divided into the Movement, Magic, Shooting and Close Combat phases, as shown above. One game turn will therefore comprise two player turns, each with its own Movement, Magic, Shooting and Close Combat phases. Whenever a rule refers to a 'turn', whether in this book, a Warhammer Armies book or an expansion, it means 'player turn', otherwise it will specifically state 'game turn'.

=== EXCEPTIONS

While playing your game of Warhammer, you'll occasionally discover exceptions to the general turn sequence laid out above, when things are worked out as they occur rather than in any strict order, or perhaps that both players will have to do something at the same time. Occasionally the actions of one player will trigger the sudden appearance of a particular troop type, or may activate some special rule or occurrence. When this happens, the exceptional rule will contain all the information you need to resolve it.

= MOVEMENT

=== MOVING YOUR UNITS

*A unit can move straight forward any distance up to its Movement value (M) in inches.*

In Warhammer, a normal move for any model, and therefore any unit of models, is to move forward a number of inches up to their Movement characteristic.

Individual models are not permitted to leave their units and so a unit effectively moves as a single entity. If, for whatever reason, there is more than one Move characteristic in the unit, then the entire unit is treated as having the same Move value as the slowest model.

#diagram("/assets/figures/rulebook/img-0454.jpg", 0.463)

#note[_When moving models, it is a common mistake to measure the distance from the front of the base and then place the model so the back of its base is on the far side of the tape measure. This is incorrect, as it adds the entire length of the model's base (or the unit's bases) to the distance moved. Always use a common measuring point – in this example, the front of the first rank._]

#namecost("1\" APART", "")

A unit is not allowed to end their move closer than 1" to another unit, friend or foe. If pivoting the unit on the spot would cause you to come into base contact with another unit, you must move your model back so that it is still 1" away from these after your pivot. If your model cannot be moved back because it is between two units, you should, if possible, move the other unit back so the pivot can be performed. Note that units that are engaged in close combat may never be moved back in this way. On the off chance that neither unit can be moved back, the pivot may not be made.

This rule does not apply to charge moves, as the whole point of charging is to get a unit into base contact with an enemy. Occasionally, a unit will have approached to within 1" of a unit it did not charge as the result of moving into contact with a unit it did charge. This is perfectly acceptable, although players may wish to nudge the units further apart to maintain a suitable degree of clarity.

#namecost("WHEEL", "")

A model may always wheel as part of a normal move.

When performing a wheel, the leading edge of the formation moves forward, pivoting round one of the front corners. The unit swings round like the spoke of a turning wheel and completes the move facing a different direction. During the Remaining Moves sub- phase, wheels are measured as follows:

When a unit is wheeling, you measure the distance moved by the outside corner of the outside model of the front rank. Once the wheel is complete, you may use any movement that the unit has remaining. A unit that is not charging can wheel several times during its move, and indeed can mix forward movement and wheeling, as long as it has enough movement to do so. Units are not allowed to wheel backwards.

#diagram("/assets/figures/rulebook/img-0455.jpg", 0.463)

#note[_To wheel, one corner of the formation is moved forward while leaving the opposite corner stationary to act as a pivot. The unit swings round the wheel and completes the manoeuvre facing a different direction._]

=== MANOEUVRES

*There are three types of manoeuvres to choose from: turn, redress the ranks and reform.*

During its movement, a unit may perform a single manoeuvre.

As with a normal move, a unit cannot carry out a manoeuvre if doing so would ends its move within 1" of another unit.

In addition, none of the models in the unit may move more than twice their Movement rate as a result of a manoeuvre (i.e. models with Movement 4 can move up to 8").

#namecost("TURN", "")

To execute a turn, the whole unit pivots on the spot in any direction of your choice. This uses a quarter of its Movement characteristic.

#namecost("REDRESS THE RANKS", "")

Units can redress the ranks by moving models to or from their rear ranks to decrease or increase the number of models in their front rank. A unit may use half of its Movement characteristic in order to deduct up to five models from its front rank, or to add up to five models to its front rank.

The models in the remaining ranks are then rearranged to match the number of models in the front rank and maintain a correct formation.

#namecost("REFORM", "")

Reforming allows a unit to sacrifice its entire movement in order to both pivot about its centre, and to redress its ranks and files as required to either change its formation, or to adopt a different formation.

A unit that reforms may not fire missile weapons in the Shooting phase.

#diagram("/assets/figures/rulebook/img-0457.jpg", 1.0)

#note[_A unit can either turn (A), redress the ranks (B), or reform (C)._]

== THE MOVEMENT

== PHASE SEQUENCE

*Work your way through the sub-phases shown in the summary below. The units in your army can act in whatever order you wish within each sub-phase, providing that you complete one sub-phase before moving onto the next.*

=== MOVEMENT SUMMARY

*1\. START OF PHASE *_Some models have particular actions they must take at the start of the turn. _*2\. CHARGE *_The player can now attempt to have his units charge into close combat. _*3\. COMPULSORY MOVES *_Sometimes a player has no choice over whether or not or how to move a unit, most commonly when they are fleeing. _*4\. REMAINING MOVES *_As the name suggests, this is where all other movement is resolved._

#namecost("MOVEMENT CHART", "")

Below can be found a summary chart of various types of Movement rules found throughout the game.

#chart((("Movement Type:", "Distance Moved:"), ("Normal", "Movement"), ("Moving backwards or
sideways", "Movement / 2"), ("Marching", "Movement x 2"), ("Charging (Movement 5
and below)", "Movement + 2D6
(choose highest)"), ("Charging (Movement 6
and above)", "Movement + 2D6"), ("Failed Charge
(Movement 5 and
below)", "2D6 (choose highest)"), ("Failed Charge
(Movement 6 and
above)", "2D6"), ("Fleeing", "Movement + D6"), ("Pursuing", "Movement + D6")))

== 1. START OF PHASE

*The player first resolves any actions or rules that must happen at the start of the phase.*

Such rules will be clearly stated in the relevant Warhammer Armies book.

== 2. CHARGE

In this sub-phase, you'll choose one of your units and declare the charge you want it to make. Your opponent will then have the chance to react to the charge, either by holding, standing and shooting, or fleeing.

Once the charge reaction has been resolved, you can nominate another of your units to declare a charge, and so on, until all of your charges have been declared and reacted to – then you get to resolve the charges.

=== DECLARE CHARGE

*The player picks one of their units and announces which enemy unit it will charge. The enemy must make its charge reaction before another charge can be declared.*

Charging is the only way for a unit to engage the enemy in close combat. It is up to the player if they wish to declare a charge or not, unless specified.

To declare a charge you must indicate which of your units is charging, and which enemy unit it is going to charge. You must always measure the distance between the charger and the potential target before declaring the charge to determine if the unit is in range or not.

When you declare a charge, one or more of the models in your unit must be able to trace a line of sight to the enemy unit, and the target must lie at least partially within the charging unit's front arc.

#namecost("CAN I CHARGE?", "")

Not all units can charge. The most common reason for a unit being unable to charge is because it is already fighting in close combat, but other circumstances, such as fleeing, or the effect of a special rule, can also prevent a unit from declaring a charge. These other situations are fairly rare, and they will be clearly explained when you encounter them.

A unit cannot declare an impossible charge – i.e. one that it cannot possibly complete, either because the enemy unit is outside of the chargers' maximum possible charge range, or because intervening obstructions (such as other units or impassable terrain) make it impossible for the unit to make a charge move that allows it to move into contact. Note that if such obstruction is another unit, and there is a chance that the intervening unit will move out of the chargers' way before the charge is completed, the charge is 'possible', and therefore can be declared (remember that you still need to see the target to declare the charge though).

To make such a judgement, you'll need to know how a charge move is completed, which is discussed later.

=== CHARGE REACTION

*An enemy unit that has had a charge declared against it must perform a charge reaction. Once the charge reaction is complete, the charging player can declare a charge with another unit, until they have declared all the charges they wish to.*

As your opponent declares a charge, you can declare a charge reaction for your charged unit. There are four types of charge reaction: Hold, Stand & Shoot, Counter-charge and Flee.

Note that a unit that is already engaged in close combat is not allowed to make any charge reaction besides Hold.

#namecost("HOLD", "")

*If a unit Holds, it stands fast in place to receive the charge.*

A unit will normally elect to Hold if it has no missile weapons. Units that are already in close combat can only Hold. Holding units stay exactly as they are and brace for the charging foe.

#namecost("STAND & SHOOT", "")

*If a unit elects to perform a Stand & Shoot reaction it fires any missile weapons it has against the charging foe. A Stand & Shoot reaction can only be declared if the unit has missile weapons of some kind.*

A Stand & Shoot reaction can only be declared if the distance to the enemy is greater than the charging unit's minimum charge range.

If a Stand & Shoot charge reaction is declared, the unit makes a normal, although out of sequence, shooting attack against the charging unit (see the Shooting chapter for more details on shooting attacks).

To resolve a Stand & Shoot reaction, first roll the charging unit’s charge distance (see Resolve Charges). If the charging unit has enough Movement to enter the maximum range of the holding unit’s weapons, resolve the shooting attacks for each weapon as if the charging unit had just entered that weapon’s range. If the charge fails before reaching that range, the Stand & Shoot reaction for that weapon has no effect.

#namecost("COUNTER-CHARGE", "")

*If a unit Counter-charges, it rushes forward to meet the attacker head-on.*

A unit that is charged to their front may attempt to Counter-Charge the enemy if the distance to the enemy is greater than the charging unit's minimum charge range, and the unit did not fail any charge the turn before.

This is done by taking a Leadership test; if failed the charged unit must choose to Hold. If passed, the unit moves D6" directly towards the enemy unit, wheeling as needed.

Both units are considered to have charged during this turn. If the counter-charging unit cannot complete its move for any reason, it does not count as charging and loses any associated bonuses for it.

#namecost("FLEE", "")

*A Flee reaction means the unit turns and runs rather than receive the charge.*

A Flee reaction is not always voluntary – units that are already fleeing must declare a Flee reaction, and certain models may force the unit to Flee instead of other options.

If a unit chooses a Flee reaction, for whatever reason, use the following procedure:

- Immediately turn the unit about its centre so that it is facing directly away from the centre of the charging enemy unit (ignore other units or impassable terrain). This turn is 'free' and does not reduce the distance the unit will flee.

- After turning, the unit flees the sum of their Movement + D6 in the direction it is facing, as described under Move Fleeing Units in the Compulsory Moves sub-phase.

It should be noted that a Flee reaction does not guarantee escape from oncoming chargers. If the fleeing unit rolls poorly and the chargers roll well, the fleeing unit might yet be caught, as we will discuss later.

#diagram("/assets/figures/rulebook/img-0461.jpg", 0.999)

#note[_(1) The blue unit flees from the red unit. It pivots around its centre until it is facing directly away from the centre of the red unit. (2) It then flees straight forward a distance equal to its Flee! roll (in this case 3+3=6")._]

#namecost("REDIRECTING THE CHARGE", "")

If the target unit declares a Flee reaction, or gets destroyed for any reason, the charging unit now has a choice: it can either attempt to complete the charge against the now-fleeing (or destroyed) unit, or try to redirect its charge by making a Leadership test. If the test is failed, the charging unit must attempt to complete the charge against its original target. If the test is passed, however, the charging unit can declare a fresh charge against another viable target (the charged unit may declare a charge reaction as normal).

If this second unit also flees, you can instead choose to charge the original fleeing unit. If there are no other suitable targets to charge, a charging unit cannot redirect. Each unit can only make one redirect per turn.

#namecost("FLEEING OFF THE BATTLEFIELD", "")

If a fleeing unit touches the edge of the battlefield (or indeed has spilled over it), the entire unit is removed from play and counts as destroyed.

#namecost("CHARGING MORE THAN ONE UNIT", "")

A unit can normally only declare a charge at a single enemy unit. However, if there is no way at all of completing the charge against an enemy unit without touching another (sometimes known as 'clipping') then the charging unit must also declare a charge against the other unit(s). Each target unit must declare and resolve its own charge reaction (in the order chosen by their controlling player).

#namecost("MULTIPLE CHARGE REACTIONS", "")

A unit might well be called upon to make several charge reactions over the course of a Charge sub-phase, if it is charged by several enemy units.

A unit can only Stand & Shoot once in a Charge sub- phase. This is not to say that the Stand & Shoot must be used against the first charging unit – the charged unit can opt to Hold against the first charge and Stand and Shoot against the second charge. It could even then elect to Flee in reaction to a third charge if it wished.

A unit that declares a Counter-charge reaction cannot make any additional charge reactions besides Hold that turn. A unit may only make one actual Counter-charge move once per turn. If the counter-charging unit gets charged by more than one unit, it counts as counter- charging all units to its front.

A unit that declares a Flee charge reaction cannot make any additional charge reactions that turn. A unit may only make one actual Flee move once per turn.

=== RESOLVE CHARGE

With all the charge reactions declared and resolved, it's time to see whether or not the charges were successful.

Work through the charges one at a time, in any order decided by the player whose turn it is, calculating the charge distance for each and resolving the resultant successful or failed charge before moving on to the next unit (the only exception is when several units charge a single target).

#namecost("CALCULATING CHARGE RANGE", "")

*If the charge range is equal to or greater than the distance to the enemy unit, the charge is successful. If the charge range is less than the distance to the enemy, the charge is failed.*

The charge range of a unit is the sum of its Movement value and 2D6 (choose the highest result) if the unit has Movement 5 or less, or its Movement value and 2D6 if the unit has Movement 6 or more.

#note[_For example, a unit with Movement 4 rolls a 2 and 5 for its charge distance, meaning it can charge up to 9" (4+5) this turn. A unit with Movement 8 rolling the same result can charge up to 15" (8+2+5)._]

With the unit's charge range established, measure the distance between the charging unit and its target unit at their closest points in an uninterrupted line between them. If the distance is greater than the charge range, then the charging unit realises that if has insufficient momentum to reach the enemy and instead makes what we call a failed charge. If the distance is less than or equal to the charge range, then the charging unit has reached the enemy and makes a successful charge.

#namecost("DISORDERED CHARGE", "")

In certain situations, a unit’s charge may become disordered, most commonly due to various types of terrain. A unit that makes a disordered charge is not subject to any rules that only apply when a unit charges.

#namecost("FAILED CHARGE", "")

*A unit that makes a failed charge moves directly towards its target a number of inches equal to the dice result rolled for the charge.*

If a unit makes a failed charge it moves directly towards the target a distance equal to the highest score result rolled on the charge roll (for example, if the dice showed 2 and 5, the failed charge move would be 5"), wheeling around impassable terrain and units, both friends and enemies, by the shortest route.

#diagram("/assets/figures/rulebook/img-0463.jpg", 0.463)

#note[_The blue unit has declared a charge against the red unit. The blue unit's has Movement 4, and it manages a roll of 3, for a total charge range of 7". However, the red unit is 8" away — the charge has failed. The blue unit must now move 3" (the highest result of the two dice they rolled), wheeling to face directly towards the red unit._]

#namecost("MOVE CHARGERS", "")

*Successful chargers now move into base contact with the enemy.*

If your charge range was sufficient, it's time to complete the charge and move into base contact with the enemy. A charging unit can move an unlimited amount – it has already been found to be within charge range.

The charge move is subject to an important restriction: the unit must move straight ahead, except that, during this move, it may make a single wheel of up to 90°. You are free to make this wheel in order to place your unit wherever you like against the facing of the enemy unit that is being charged, but remember that you must bring as many models into base contact with the enemy as possible, from both sides. Therefore, this wheel cannot be used to reduce the number of models in base contact, unless of course you have no choice, and you need to wheel for the unit to avoid intervening units and impassable terrain in order to complete the charge.

#namecost("Aligning to the Enemy", "")

On most occasions, moving the chargers in the manner described above will leave the charging unit and the target unit in base contact at a peculiar angle with a gap in between.

Once the charging unit contacts the enemy unit, it must perform a second, bonus wheel if required to bring its front facing into full contact with the facing of the enemy unit that has been charged, maximising the number of models in base contact on both sides.

The only exception to the charger aligning to the target is if a unit with less than Unit Strength 5 is charged by a unit with Unit Strength 10 or more. In this case, the charged unit will align to the charging unit, rather than the other way around.

#diagram("/assets/figures/rulebook/img-0466.jpg", 0.999)

#note[_1\. Declare Charge. 2. Wheel to maximize models in contact. 3. Move in. 4. Close the door._]

#namecost("FLANK AND REAR CHARGES", "")

*Sometimes you may find that your models are able to charge an enemy unit in the flank or rear. This is particularly good because an attack from an unexpected direction gives you an advantage in combat.*

A charging unit's position when the charge is declared determines whether it charges into the front, flank or rear of the enemy unit. If the charging unit is in the target's frontal zone when the charge is declared then it charges into the front.

As units generally begin the game facing each other, this is the most common situation that will arise. However, if the charging unit comes from the flank zone, it charges into the side; if in the rear zone, it charges into the rear. Whether a charger is in the front, flank or rear of its intended target is determined before charges are declared, so make sure you check before charge reactions are declared.

If a charging unit straddles two zones, then the unit is considered to be in the zone where the majority of the models in its front rank are. If there is no clear majority, roll a dice.

#diagram("/assets/figures/rulebook/img-0468.jpg", 0.463)

#note[_1\. This unit is wholly within the blue unit's forward arc, so charge the front of the enemy unit._]

#note[_2\. In this unit, three out of the five models in the front rank are in the blue unit's flank, so the unit charges into the flank._]

#note[_3\. The majority of the models in this unit are in the rear arc of the blue unit, so they make a rear charge._]

#note[_4\. In this case it is hard to tell where the majority of the front rank lies, so it is best to roll a dice to decide between a flank and rear charge._]

In some cases, the enemy unit might have to close the door with the chargers instead. In this situation, the charging unit counts as making a disordered charge against that unit. If no amount of finagling can allow the unit to avoid the obstacle, the charge fails.

There is one important principle that you should always keep in mind when charging: under no circumstances can a unit use its charge move to move into contact with an enemy it has not declared a charge against.

#namecost("UNUSUAL SITUATIONS", "")

Sometimes a charging unit can move into contact with its target, but cannot close the door because something else lies in the way, normally another unit or a piece of terrain. Where this happens, the charging player should attempt to complete the charge in such a manner as to avoid the obstruction. This can normally be achieved by increasing or decreasing the amount the charging unit wheels as it moves, or changing how the charging unit closes the door.

#diagram("/assets/figures/rulebook/img-0470.jpg", 0.999)

#note[_1\. The red unit declares a charge. 2. It wheels to maximise and avoid terrain. 3. It moves into contact with the enemy. 4. The charging unit cannot close the door, because a rock is in the way, so the blue unit does instead. This causes the red unit to make a disordered charge._]

#namecost("CHARGING A FLEEING ENEMY", "")

If, for whatever reason, one or more units complete a charge against a fleeing enemy, move the charging unit(s) into contact with the fleeing enemy as described earlier. The fleeing unit then suffers one Wound with no saves of any kind allowed for each point of Unit Strength the charging unit(s) has. If any models survive, the charging unit then stops 1" behind the remains of the unit.

A charging unit that completely destroys a unit of fleeing troops in this way are allowed to attempt a reform by passing a Leadership test. If the test is failed, they do not have the chance to reform. If the test is passed, the unit immediately makes a reform manoeuvre. In either case, the unit cannot move further during this Movement phase.

#namecost("MULTIPLE CHARGES ON A UNIT", "")

If several units have declared a charge against a single unit, then roll the charge distance of these units at the same time. The charge moves of the charging units must be made as far as possible to equalise the number of models fighting from each charging unit.

Remember, however, that your primary goal is always to maximise the number of models fighting – it is acceptable to have more models fighting from one unit than from another, if to do otherwise would reduce the overall number of models fighting.

If multiple units have declared a charge against a unit that has chosen a Flee Charge response, they can all redirect their charge if there is another viable target in range. The controlling player chooses in which order to move their charging units.

On occasion, exceptional dice rolls from charging units might mean that more units can complete the charge than can fit in base contact with the target. When this happens, the controlling player of the charging units must nominate which units complete the charge. Those units that cannot complete the charge against the target are counted as having made a failed charge.

#diagram("/assets/figures/rulebook/img-0472.jpg", 0.999)
#chart((("", "2. The red player must now use the free wheel and alignment moves
to bring an equal number of models from both his units (or as near
as possible) into contact with the blue unit."), ("1. Both red units have declared charges against the blue unit and
have rolled sufficiently high to complete their charges successfully.", "")))

== 3. COMPULSORY

== MOVES

Generally speaking, a player can move their units however they wish within the confines of the rules governing movement. However, some moves are compulsory, which means the owning player cannot choose to control them.

All compulsory movement is carried out after charges have been resolved, but before other movement takes place. Compulsory movement is done in the following order:

- Rally Fleeing Units
- Move Fleeing Units
- Other Compulsory Moves

=== RALLY FLEEING UNITS

*The player takes Leadership tests for each fleeing unit they have. If the test is passed, the unit stops fleeing and immediately reforms.*

During the Compulsory Moves sub-phase, the player picks any one of their fleeing units and tests to rally it (as explained below). They then proceed to the next fleeing unit and attempt to rally it, and so on, in any order they wish, until all units that are able to make a rally attempt have done so.

If the unit started to flee in this turn it cannot attempt to rally the same turn. Units cannot attempt to rally if enemy units are within 6", unless those units are fleeing, engaged in combat or have less than Unit Strength 10.

A unit attempts to rally by taking a Leadership test. If the fleeing unit has been reduced in size to a quarter (25%) or less of the number of models with which it began the game, its Leadership value is halved (after any other modifiers, special rules or abilities are applied, rounded up).

If the Rally test is failed the unit continues to flee. If the Rally test is successful, the unit stops fleeing and immediately makes a reform manoeuvre. A rallied unit cannot perform further actions during the Movement phase, and loses its opportunity to make a shooting attack in the Shooting phase. Note that a rallied unit can cast spells as normal.

=== MOVE FLEEING UNITS

*Any units that do not rally must immediately flee the sum of their Movement + D6" in the direction they are facing. Every model that flees through an enemy unit or impassable terrain risk taking damage.*

Fleeing troops ignore obstacles of any kind as they retreat. Fleeing troops move through other units (friend or foe) and impassable terrain. If the flee move would result in the fleeing unit ending up 'on top' of or within 1" of another unit, then it carries on fleeing straight forward until it is 1" past the obstruction, and will then halt.

Each fleeing model must pass a Dangerous Terrain test for each area of impassable terrain that it flees through. More information on Dangerous Terrain tests and Impassable Terrain can be found in the Battlefield Terrain chapter.

#diagram("/assets/figures/rulebook/img-0474.jpg", 0.463)

#note[_As the blue unit is fleeing through the impassable terrain, any fleeing models that move through it (marked here in white) must take a Dangerous Terrain test. Two fail and are removed as casualties._]

If the unit flees through a non-fleeing enemy unit, it will suffer one automatic Wound for each point of Unit Strength that the enemy unit(s) has, with no saves of any kind allowed.

Any unit that has a friendly unit with Unit Strength 10 or more flee through it must take a Panic test, as described in the Panic chapter, as soon as the fleeing unit has completed its move.

As soon as a fleeing unit moves into base contact with the battlefield edge it is removed from the game as casualties.

=== OTHER COMPULSORY

=== MOVES

Aside from fleeing troops, units that are forced to move in the Compulsory Moves sub-phase otherwise follow the normal movement rules, unless clearly stated. Any further rules that apply to units that have a compulsory move will be described in their entry in the relevant army book, for example, they will often have to move at a set speed or in a given direction. These compulsory moves can be resolved in any order the controlling player wishes, providing that all Flee moves have already been completed.

== 4. REMAINING MOVES

*During the Remaining Moves sub-phase, units that did not charge, flee, rally or compulsorily move this Movement phase, and which are not engaged in combat, can now move and perform manoeuvres.*

The player picks one of their units and moves it a distance up to the unit's Move value (M) in inches. Once the chosen unit has finished its movement, the player can pick and move another unit, until all the eligible units the player wishes to move have done so.

#namecost("MOVING BACKWARDS", "")

Units can not only move forward, they can also move backwards. A unit that moves backwards moves at half rate, i.e. it counts the distance moved as being double what it actually is.

#namecost("MOVING SIDEWAYS", "")

A unit that moves sideways moves at half rate, i.e. it counts the distance moved as being double what it actually is.

Units may not mix forward, backward and/or sideways movement as part of the same move. Remember that units can only wheel when moving forwards.

=== MARCHING

*Troops can move at double speed. If they start their move within 6" of an enemy, they must pass a Leadership test to do so.*

Marching troops move at twice their normal Movement rate. A unit on the march is not permitted to perform any manoeuvres, move sidewards or backwards.

It is also worth noting that a unit that has marched in the Movement phase cannot shoot missile weapons during the Shooting phase unless specified.

#namecost("NEARBY ENEMIES", "")

If you wish a unit to march when an enemy unit is within 6", it will first have to take a Leadership test. If the test is passed, the unit marches as ordered. If the test is failed, the unit will only be able to move normally. Units do not need to test to march if the enemy units are fleeing, engaged in combat or have less than Unit Strength 10.

=== LONE MODELS AND

=== MOVEMENT

*Units that consist of a single model are mostly moved the same as other units.*

They move, wheel and march just like a larger unit. The one exception is that a single model (except chariots, see the Troop Types chapter) can pivot on the spot as many times as it wishes over the course of its move. It can do so without penalty and so pivoting does not prevent models from marching, or even from shooting later in the turn.

On some occasions, notably when charging, a lone model has to perform a wheel (when charging, a lone model must follow the normal charge rules, which do not allow pivots, only one wheel whilst moving, and another to 'close the door'). In this case, wheel from one of the front corners as you would for other units.

=== MOVING OFF THE BOARD

*Except in the case of fleeing troops (as discussed earlier) and pursuing troops (see Move Pursuers in the Close Combat chapter) units are not permitted to move off the board.*

However, a unit next to the board edge may still pivot or wheel even if this would temporarily take some of it over the board edge, as long as it does not end its movement over the board edge.

=== REINFORCEMENTS

*Sometimes the rules will call for a unit to enter the battle. Where this happens, we refer to the unit entering play as reinforcements.*

Units that enter the battle (also referred to as moving onto the board) as reinforcements are placed in base contact with the board edge (upon which board edge, and where, will depend upon the rule that triggers the reinforcements) facing directly towards the battlefield and with all of its rear rank touching the battlefield edge.

A unit that enters as reinforcements cannot charge but can otherwise participate in the game normally. It's worth bearing in mind that the unit counts as having moved for the purposes of shooting.

In addition, all the models in the unit must be set up so that they are within twice their Movement rate of the battlefield edge that they entered from.

= MAGIC

== WIZARDS & SPELLS

*Models that can cast spells are known collectively as Wizards.*

In Warhammer, we commonly refer to a model able to cast spells as a Wizard. Wizards are specified as such in each army book.

#namecost("WIZARD LEVEL", "")

*Wizards have a level from 1 to 4. The higher a Wizard's level, the more powerful they are.*

A higher-level Wizard will know more spells than a lower-level Wizard. Similarly, they are able to put more power behind their spells and receive higher bonuses when attempting to cast them, as well as channel more power.

#namecost("SPELLS", "")

*Each Wizard may choose a number of spells equal to their level.*

When you chose your army, you must also select which Lore of Magic each of your Wizards is going to use. What lores are available to each Wizard is specified in their Army Book. It could either be one the eight Winds of Magic at the end of this book (known as the Lore of Fire, Metal, Life, Beasts, Heavens, Light, Shadow and Death), or a unique lore available only to the army in question.

Before you start deployment, you need to determine which spells any Wizards in your army know from their chosen Lore of Magic.

The spells a Wizard knows are determined by their Wizard Level and consulting the Lore of Magic in question. This is done openly before you start deployment, so both you and your opponent will be aware of the spells each Wizard has chosen. If your army includes more than one Wizard, you can choose the order in which you choose their spells.

Regardless of the Lore of Magic your Wizard has chosen to use, you will notice that the spells are numbered between Level 1 and Level 4, with Level 1 generally being easier to cast, and Level 4 being more powerful and more difficult to cast. Wizards may only choose spells of their own Level or lower.

Ordinarily, each spell can only be chosen once in the same army. If you have more than one Wizard using the same Lore, you must choose different spells for them. The only exceptions are:

- If a model has no choice over which spell(s) it knows, either because it is fixed by the model's rules, or because it has 'bought' a specific spell as part of army selection (such as Bound Spells, described later).

- If the army book or spell lore clearly states that a model can exchange another spell for the spell in question.

- If all the spells from the same lore are already used by other wizards in the army. Note that in this case, you must distribute any duplicate spells out as evenly as possibly between your wizards.

#namecost("SIGNATURE SPELLS", "")

Most Lores of Magic have Signature spells. Regardless of a Wizard's Level, they always know the Signature spell of a lore in addition to any other spells they have chosen – even if another Wizard in the same army already knows the Signature spell.

Note that a Wizard may only have one Signature spell. If a Wizard can take spells from multiple lores, you must choose which lore you pick that Signature Spells from.

Note that Wizards that do not get to choose their spells, either due to knowing only a few specific spells or having them as Bound Spells, do not get the Signature spell from the Lore(s) they are using.

#namecost("LORE ATTRIBUTE", "")

Most Lores of Magic have something called a 'lore attribute'. This is essentially a grouping of one or more special rules that are applied to certain spells for that lore. A Lore Attribute might give certain spells an extra effect against a particular troop type, or alter the way a spell behaves. Regardless of the detail, a Lore Attribute only has an effect on spells from its own lore.

#namecost("LOSING WIZARD LEVELS", "")

If a Wizard loses one or more Wizard levels, they instantly forget a single spell for each Wizard level lost, starting with their highest-level spells. If they know multiple spells of the same spell level, randomly choose which spell is lost unless specified. A model can lose Wizard levels granted by a magic item. If a Wizard has had their level reduced to 0 they no longer counts as a Wizard and cannot attempt to channel Power and Dispel dice. They can no longer cast any spells or use Arcane Items, except for any Bound spells they might still have.

== SPELL TYPES

Some spells have a type that enforces additional casting restrictions, or waives others. There are seven distinct types of spells: augment, conveyance, direct damage, hex, magical vortex, magic missile and summoning. Some unique spells do not have a type – their text will contain any casting restrictions that apply.

Most spells target a single unit. However, there are two exceptions – aura and area spells.

*Aura* spells affect all units within a radius equal to the spell’s range, measured from the Wizard. If a unit is no longer within range, it immediately loses the effect. Aura spells always affect units engaged in combat, regardless of spell type.

*Area* spells target a point on the battlefield within the spell’s range. Most area spells use one of the templates described earlier in the book. For round templates, the centre must be placed within the spell’s range. After placement, the small round template scatters D3", while the large round template scatters D6". For the line and flame template, the spell itself describes how they are placed.

#namecost("AUGMENT SPELLS", "")

The following applies to *augment* spells:

- The target must be a friendly unit.
- The target does not have to be within the Wizard's forward arc.
- The Wizard does not need line of sight to their target.
- The target must be within the spell's range.
- Wizards can target spells at units engaged in close combat.

If a Wizard casts a spell that targets them and the unit they are with and then leaves the unit, it will only target themselves. If they subsequently join another unit, or rejoin the unit they have left, then they will benefit from the spell while the spell is still in play.

#namecost("CONVEYANCE SPELLS", "")

The following applies to *conveyance* spells:

- The target must be a friendly unit.
- The target does not have to be within the Wizard's forward arc.
- The Wizard does not need line of sight to their target.
- The target must be within the spell's range.
- Wizards cannot target spells at units engaged in close combat.

A unit cannot be affected by the same conveyance spell more than once per turn. If a unit cannot be placed in a legal position through a conveyance spell, it must remain in its original position.

#namecost("DIRECT DAMAGE", "")

The following applies to *direct damage* spells:

- The target must be an enemy unit.
- The target does not have to be within the Wizard's forward arc (unless specified).
- The Wizard does not need line of sight to their target.
- The target must be within the spell's range.
- Wizards cannot target spells at units engaged in close combat (unless specified).

Sometimes a direct damage spell will use a template to determine which models are hit. When this happens, the template cannot be initially placed in such a way that it touches friendly units or enemy units that are in close combat. Ranged direct damage spells that use a template have to target an enemy unit by placing the template over the target enemy unit. When targeting a unit with a small or large round template, the hole in the centre must be placed over an enemy model.

#namecost("HEX SPELLS", "")

The following applies to *hexes*:

- The target must be an enemy unit.
- The target does not have to be within the Wizard's forward arc.
- The Wizard does not need line of sight to their target.
- The target must be within the spell's range.
- Wizards can target spells at units engaged in close combat.

#namecost("MAGICAL VORTEXES", "")

The following applies to *magical vortexes*:

- They do not have a target.
- They must be placed in the caster's front arc.
- They may not be used in such a way that they affect any friendly models or models engaged in close combat when initially placed.
- Models cannot choose to voluntarily move into/through a magical vortex.

A magical vortex uses one of the round templates, which is placed in base contact with the caster and with its centre within the caster's front arc. The player then nominates the direction the magical vortex will move. When initially cast, it moves 12+D6".

Unlike most other spells and other gaming effects that use templates in Warhammer, magical vortexes remain on the battlefield (unless they move off it). At the end of every subsequent Magic phase, each magical vortex travels in a random direction and moves 2D6". If a double is rolled, the magical vortex is removed after completing its movement and resolving any damage.

If a magical vortex ever ends its move over a unit, place it 1" beyond the unit in the direction it was moving. If this is also over a unit it should be placed 1" beyond that unit, repeating the process until it is no longer touching any models. When this happens, models between where the magical vortex ended its move and where the template is placed are not affected by the spell.

Models that are forced to move into or through a magical vortex for any reason suffers the full effects of the spell as soon as the unit makes contact with the Magical Vortex (in the case of a spell that affects all models hit, every model whose base would pass into/through the vortex is affected by the spell). Surviving models are then placed 1" beyond the template and their movement ends.

#namecost("MAGIC MISSILES", "")

The following applies to *magic missiles*:

- The target must be an enemy unit.
- The target must lie within the Wizard's forward arc.
- The Wizard needs line of sight to their target.
- The target must be within the spell's range.
- Wizards cannot target spells at units engaged in close combat.
- Wizards cannot cast magic missiles if they are engaged in close combat.
- Magic missiles always hit their target automatically.

#namecost("SUMMONING SPELLS", "")

The following applies to *summoning* spells:

- They do not have to be within the Wizard's forward arc.
- The Wizard does not need line of sight.
- Summoning spells always target a point on the battlefield unless specified.
- The summoned unit or terrain must be wholly within the spell's range.
- If a summoned unit, models or terrain feature cannot be placed because there is not enough room, they do not enter play at all, though the spell's lore attribute may still apply.
- If you do not have appropriate models for the summoning spell, then that spell cannot be cast.

#namecost("Summoning Terrain", "")

Summoned terrain features can be placed within 1" of or on top of other units, simply place the units in or on the terrain feature without changing their facing or formation.

#namecost("Summoning Units", "")

When placing a summoned unit, it must be wholly at least 1" away from other units. It can be placed facing any direction and in any legal formation. Unless specified, this unit does not have any upgrades or command models, and the unit does not count as having moved this turn. Summoned units do not award victory points under any circumstances.

#namecost("Summoning Models", "")

Some spells can summon models into already existing units. This is done in a strict order. First, any slain command groups models are resurrected in an order of your choosing, displacing rank-and-file models as required. Then rank-and-file models with multiple Wounds are healed to their starting value. Lastly, rank and file models are summoned. The unit formation must be legal after all models are added. If any models cannot be added for any reason, those models are wasted. Any models that are summoned into an existing unit retain any equipment, rules and/or bonuses as the rest of the unit.

== THE MAGIC PHASE

== SEQUENCE

The Magic phase starts with both sides determining how much magical power can be tapped into this turn. The player whose turn it is (the casting player) will be seeking to draw down enough power to cast their spells, whilst their opponent (the dispelling player) will be gathering magical energy to dispel any spells being cast.

=== MAGIC SUMMARY

*1\. ROLL FOR WINDS OF MAGIC *_The Winds of Magic are generated by rolling a number of dice depending on the amount of points played. The strength of the Winds of Magic will determine how many power dice the casting player has, as well as how many dispel dice the dispelling player has._

*2\. CAST *_One of the casting player's Wizards now picks a target and attempts to cast a spell, using power dice._

*3\. DISPEL *_If the spell was cast, one of the dispelling player's Wizards can now attempt to counter the spell using dispel dice. If the dispelling player does not have any Wizards, a dispel can still be attempted._

*4\. SPELL RESOLUTION *_Assuming the spell has been cast and not dispelled its effect is now applied._

*5\. NEXT SPELL *_Repeat steps 2 through 4 until the casting player cannot cast, or no longer wishes to cast, any more spells._

== 1. ROLL FOR THE WINDS

== OF MAGIC

*The strength of the Winds of Magic is based on the size of the game played.*

At the start of each Magic phase, the casting player determines the strength of the Winds of Magic by rolling a number of dice according to the table below:

#chart((("Points Level:", "Number of D3's:"), ("0-1999", "2"), ("2000-2999", "4"), ("3000-3999", "6"), ("4000-4999", "8"), ("5000-5999", "10"), ("Each +1000", "+2")))

=== THE POWER POOL

*The amount of power available to the casting player is equal to the total rolled for the Winds of Magic.*

Take a number of dice equal to the Winds of Magic roll and make up a 'pool' of power dice to represent this reservoir of power. When a Wizard casts a spell, they take a number of dice from the power pool in order to make the attempt. Accordingly, each time a spell is cast, the power pool will shrink a little, thus limiting the number of spells the casting player can attempt each Magic phase.

=== THE DISPEL POOL

*The dispelling player gets a number of dispel dice equal to the top half of the roll of the Winds of Magic dice.*

For example, if the Winds of Magic dice are rolled at and show a 1, 2, 2 and a 3, the casting player will get 8 power dice (the total of the 4 dice) and the dispelling player will get 5 dispel dice (the result of the highest 2 dice). These dice are then placed in a dispel 'pool' in a similar manner to power dice. Each time a Wizard attempts a dispel, they take dice from the dispel pool to do so.

=== CHANNELING DICE

Wizards can attempt to channel additional power or dispel dice each Magic phase. Roll a D6 for each Wizard Level in your army. For each roll of a 5+, add another power or dispel dice to your power or dispel pool.

Fleeing Wizards and Wizards that are not on the battlefield (for whatever reason) are not able to channel.

== 2. CAST

*The casting player's Wizards can attempt to cast each of their spells once during each Magic phase, provided they have enough power.*

Each Wizard can only attempt to cast each spell once per turn (if they have a Magic Item capable of casting that spell as a bound spell, can they still use it to cast the same spell again). Wizards cannot try to cast spells if they are fleeing or not on the battlefield.

To cast a spell, a Wizard nominates one of their spells to cast, and declares the target of the spell. Before choosing, it's worth examining the rules of the spell to determine its maximum range – remember that you can normally measure to see if a target is in range before you try to cast a spell.

=== CHOOSE NUMBER OF POWER

=== DICE

Once the Wizard, spell and target have been chosen, the player then declares how many power dice from their pool the Wizard will use in their attempt to cast the spell. At least one dice must be taken from the power pool. The number of dice each Wizard can use to cast each spell is equal to their Wizard Level plus 2. So, a Level 3 Wizard could use a maximum of 5 dice on each spell.

=== CASTING VALUE

*For a spell to be cast, the total of the dice rolled, must equal or beat the spell's casting value.*

The chosen dice are then taken from the casting player's power pool and rolled. The results are then added together, to give a casting result. Keep the dice in front of you for the moment – you'll need the scores if your opponent attempts a dispel, as we'll discuss later.

Each spell has an associated casting value, any number from 3 upwards. Spells with a higher casting value have greater effect, but require more power.

If the casting result equals or exceeds the spell's casting value, the spell is cast (though it may be subsequently dispelled and neutralised by the opposing player, as we will discuss later).

If the result is less than the casting value, the casting attempt has failed. The spell is not cast.

#namecost("CASTING BONUSES", "")

When casting a spell, there are many sources of casting bonuses that add to the casting value, making it easier to succeed in casting the spell, as well as making it harder to dispel for your opponent.

The most common casting bonus is given by the Wizard itself, and is equal to the Wizard's level divided by half. So a Level 1 and 2 Wizard gains a +1 bonus, whereas a Level 3 and 4 Wizard gains a +2 bonus.

Other casting bonuses can come from magic items, special rules, units or terrain. Note that for whatever reason, no casting attempt may have more than a +5 casting bonus in total.

=== BROKEN CONCENTRATION

If a spell is attempted to be cast using a single power dice from the Power Pool and that dice roll is a 1 or 2, not only is the spell not cast (regardless of any modifiers), but the Wizard is unable to cast spells for the rest of the Magic phase.

=== ULTIMATE POWER

For every natural 6 rolled when casting a spell, you automatically have to roll an additional 'free' power dice to boost the casting value even further. Note that any 6's rolled on these additional dice do not count towards Ultimate Power. These additional power dice are not deducted from the army's power pool, nor are they limited by Wizard level.

=== MISCASTS

*If two or more unmodified 1's are rolled when casting a spell, it has been Miscast. The Wizard has to roll on the Miscast table when the spell has been resolved or dispelled.*

When seeing if a miscast has occurred, always use the actual dice scores, irrespective of bonuses from special rules or magic items. If a Wizard is called upon to re- roll the dice for any reason, it is the second result that stands, as is normal for a re-roll.

All dice rolled count towards miscasts, regardless of whether the dice were power pool dice, or granted as a bonus from Ultimate Power, a special rule or magic item.

After dispelling or resolving the effect of the spell, the Wizard needs to roll a D6 on the Miscast table to see what happens to them.

Add the total number of dice used to cast the spell (including those from Ultimate Power etc.) to the number rolled on the D6 and consult the Miscast table below. So, if a wizard used 4 dice when miscasting, and rolls a 3 on the D6, the result would be 7 on the Miscast table.

#chartlabel("MISCAST TABLE")
#chart((("1-3", "Loss of Power: The Wizard cannot attempt to
cast further spells this phase."), ("4", "Lost Concentration: The opposing player
may immediately cast any one of their own
spells of the same casting value rating or less.
No casting roll is required – the spell is
automatically cast – but it can be dispelled by
the player whose turn it is as normal (by using
power dice in the same way as dispel dice).
They need to beat the basic casting value of
the spell to dispel it."), ("5", "Magical Feedback: The Wizard and every
model on the same side within 12\" that can
channel/generate power or dispel dice suffer a
Strength 4 hit as a result of the magical
backlash. The Wizard cannot attempt to cast
further spells this phase."), ("6", "Power Drain: The casting player loses D3
dice from the power pool."), ("7", "Detonation: The Wizard and all models in
base contact with him suffer a Strength 10 hit."), ("8", "Amnesia: The caster forgets how to cast the
spell and will not be able to cast it again
during this battle."), ("9", "Calamitous Detonation: Centre the small
round template over the Wizard – every
model underneath the template suffers a
Strength 10 hit (including the Wizard – they
do not benefit from Look Out, Sir! in this
case)."), ("10", "Daemonic Possession: The caster suffers one
Strength 10 hit and loses a Wizard level."), ("11", "Dimensional Cascade: Centre the large
round template over the Wizard – every
model underneath the template (including the
Wizard – they do not benefit from Look Out,
Sir! in this case) suffers a Strength 10 hit."), ("12+", "Damned by Chaos: The Wizard is
annihilated and immediately removed as a
casualty, regardless of any protective magic
item or special rule they might have.")))

== 3. DISPEL

*If the Wizard was able to cast their spell the opposing player now has a chance to prevent the spell's effects by attempting to dispel it.*

In order to attempt a dispel, the dispelling player first nominates one of their Wizards to make the dispel attempt. Unlike spells, dispels never require the Wizard to see either the target or the caster. For a Wizard to be able to dispel an enemy spell, they need to be within 24" of the model casting it. Wizards cannot try to dispel spells if they are fleeing.

If the dispelling player does not have an eligible Wizard to attempt a dispel their army can attempt to dispel the spell instead.

=== CHOOSE NUMBER OF DISPEL

=== DICE

When dispelling, a Wizard can use any number of dispel dice. Once the Wizard has been chosen, the player declares how many dispel dice the Wizard will use in their dispel attempt. Unlike casting, there is no upper limit on the number of dice that can be used in a dispel attempt – though you must use at least one dice from the pool if you wish to attempt a dispel.

=== DISPEL VALUE

*The dispelling player can attempt to dispel each enemy spell once during each Magic phase, provided they have enough power.*

The number of dice chosen are taken from the player's dispel pool and rolled. The results are added together, to give a dispel result, exactly as if he were casting a spell.

If the dispel result equals or exceeds the spell's casting result, the dispel is successful and the spell does not take effect. If the result is less than the spell's casting result, the dispel attempt has failed, and the spell will go through.

#namecost("DISPEL BONUSES", "")

When dispelling a spell, there are many sources of dispel bonuses that add to the dispel value, making it easier to succeed in dispelling the spell.

The most common dispel bonus is given by the Wizard itself, and is equal to the Wizard's level divided by half. So a Level 1 and 2 Wizard gains a +1 bonus, whereas a Level 3 and 4 Wizard gains a +2 bonus.

Other dispel bonuses can come from magic items, special rules, units or terrain. Note that for whatever reason, no dispelling attempt may have more than a +5 dispel bonus in total.

=== BROKEN CONCENTRATION

If a spell is attempted to be dispelled using a single dispel dice from the Dispel Pool and that dice roll is a 1 or 2, not only is the spell not dispelled (regardless of any modifiers), but the Wizard is unable to dispel spells for the rest of the Magic phase. Note that the army can always attempt to dispel, regardless of previous failures.

=== ULTIMATE POWER

For every natural 6 rolled when dispelling a spell, you automatically get to roll an additional 'free' dispel dice to boost the dispel value even further. Note that any 6's rolled on these additional dice do not count towards Ultimate Power. These additional dispel dice are not deducted from the army's dispel pool.

== 4. SPELL RESOLUTION

Follow the instructions in the spell's text. If the enemy has failed their dispel attempt (or not even attempted one), the spell is cast successfully and its effect is now resolved. Each spell in Warhammer provides all the information you need. Many spells inflict hits or wounds on your enemies – you can find out how to resolve these in the Shooting chapter.

Remember that if your spell was miscast, you'll need to go back and resolve the result of the miscast as soon as you've finished resolving your spell effect.

Note that if a spell is cast but cannot reach the target for any reason, the spell still counts as being cast, but won't have any effect.

=== SPELLS AND PANIC

Quite a lot of spells inflict damage in one manner or another. As with shooting attacks, if enough damage is caused, can cause the enemy to flee from battle. Damage from magic can provoke Panic tests, as described in the Panic chapter.

=== SPELL DURATION

Most spells are cast instantly and their effect is worked out at once. In this case, the spell has no further effect in the game until cast again. Some spells last for longer than this, for one or more phases, or turns.

#namecost("REMAINS IN PLAY SPELLS", "")

Spells marked 'remains in play' stay in effect indefinitely when cast. They only come to an end when the target is slain, or else the caster is slain (or loses the spell for any reason), chooses to end the spell (which they can do at the start of any Magic phase) or leaves the battlefield. The Wizard can continue to cast other spells, but not the same remains in play spell in subsequent turns.

If they are not dispelled immediately when they are cast, remains in play spells can be dispelled at any time during any subsequent Magic phase, using dispel dice as normal, or dice from the power pool as if they were dispel dice if it is your turn. Wizards need to be within 24" of the spell or its target in order to be able to dispel a remains in play spell in this manner.

A Wizard does not need to beat the original casting dice roll if attempting a dispel in subsequent turns, but rather the minimum casting value listed in the spell's description.

#namecost("SPELLS LASTING MORE THAN ONE", "")
#namecost("TURN", "")

Some spells do not specifically remain in play, but have effects that last one or more turns. Once in play, such spells cannot be dispelled, and remain in effect even if the caster forgets the spell, is slain or leaves the battlefield, unless the spell description specifies otherwise.

=== DUPLICATE SPELLS

You may come upon a situation where the same spell is known by more than one Wizard. Note that for whatever reason, a single unit may never be simultaneously affected by the same remains in play spell or spell that lasts more than one player turn more than once per Magic phase.

== 5. NEXT SPELL

*With the spell resolved, the casting player can now have the same or another of their Wizards attempt to cast another spell.*

Wizards can cast spells in any order, and a player is free to switch between Wizards at any time provided that they do not do so until the casting of the current spell has been resolved.

Remember that, unless specified otherwise, each Wizard can only attempt to cast each spell only once per turn. When the casting player has finished all their casting and dispelling attempts, either because they have run out of power dice or have no remaining or useful spells to cast the Magic phase ends, and the Shooting phase begins.

== BOUND SPELLS

Some magic items and units have the ability to use a form of magic called a 'Bound Spell'. Bound spells can be used even if the bearer has broken their concentration or is not a Wizard at all. Possessing a Bound Spell does not make a model a Wizard – it just have an item that can cast a spell.

A Bound Spell is cast just like an ordinary spell – using dice from the power pool (the model may do so even if it is not a Wizard).

Whenever you attempt to cast a Bound Spell from a Magic Item, you may add one free Power dice to the casting roll. Bound Spells may use a number of power dice equal to the spell's level plus 1 (Signature spells may use two dice). Bound Spells that are not already tied to a spell from a Lore of Magic have their spell level and casting value listed in the description.

Bound spells do not benefit from any casting bonuses or penalties the model might have.

If a Bound Spell is from a Lore of Magic with a Lore Attribute, the successful casting of the Bound Spell will also trigger the Lore Attribute. It is worth noting that some Lore Attribute effects target the Wizard casting the spell. In the case of Bound Spells it will target whoever is casting the spell instead.

Failing to cast a Bound Spell does not break a Wizard's concentration.

If a Miscast is rolled while casting a Bound Spell, the item cannot be used again during the game. Do not roll on the Miscast table.

Bound Spells are dispelled exactly as other spells – the dispelling Wizard must equal or beat the casting result for a successful dispel.

= SHOOTING

This section covers the shooting rules for common weapons and the majority of troop types. War machines and other, more peculiar, devices of destruction are covered in their own chapter. However, even the most colossal trebuchet is governed by many of the same rules as the humble bow and arrow, so it's worth reading through this section before unlimbering your cannon or organ gun.

#namecost("PHASE SEQUENCE", "")

Nominate one of your units that you want to shoot with and select one enemy unit you wish your unit to shoot at. Once you have declared your target, resolve shooting using the rules described.

Then proceed to the next unit that is shooting and continue as above until you have shot with everything able to do so.

=== SHOOTING SUMMARY

*1\. NOMINATE UNIT TO SHOOT*

*2\. CHOOSE A TARGET *_\- Check the shooter can see the target - Check the target is in range of the weapon_

*3\. ROLL TO HIT *_\- Shooting modifiers_

*4\. ROLL TO WOUND*

*5\. TAKE SAVING THROWS*

*6\. REMOVE CASUALTIES*

== 1. NOMINATE UNIT TO

== SHOOT

*During the Shooting phase, a model armed with a missile weapon can use it to make a single shooting attack. Models that have marched, reformed or rallied this turn cannot shoot, nor can those that have made a failed charge, are fleeing or are fighting in close combat.*

A model may not shoot in the following scenarios:

- They marched or reformed in the preceding Movement phase.
- They rallied or declared a charge.
- They are fighting in close combat.
- They are fleeing.
- The model is under the influence of a specific spell or special rule that prevents it from making a shooting attack.

#namecost("WHAT IS A MISSILE ATTACK?", "")

A missile attack is any attack that is performed from a distance, including shots from weapons, but also template weapons as well as magic missiles (but not direct damage spells or magical vortexes).

== 2. CHOOSE A TARGET

*A model can shoot at an unengaged enemy unit that is at least partially within its forward arc, and to which it has an unblocked Line of Sight. The enemy must also be within range of the weapon being used.*

Now you've chosen the unit that will make the shooting attack, you need to choose a target for it to shoot at. All models in the same unit must shoot at the same target, so choose carefully.

=== FIRE IN TWO RANKS

All units in the game may fire with their first two ranks. Models further back than the second rank cannot shoot unless specified, regardless of the Line of Sight value of the target.

=== CHECK THE TARGET IS IN

=== RANGE

All missile weapons have a maximum range that indicates the furthest distance they can shoot. A detailed summary of shooting weapons and their ranges can be found in the Weapons & Armour chapter.

A model can normally only shoot at a target if it lies within the maximum range of the weapon it is shooting with.

=== WE CANNOT ALL FIRE

All models in a unit have to shoot at the same target. Due to the relative positions of the shooting unit and the target, it might happen that some models in a firing unit can shoot the target while other models in the unit cannot (the target may be out of their forward arc or completely obscured by terrain or other models). Sometimes, some models in the shooting unit will be out of range. In these situations, you're free to continue with the shot, but only those models permitted to shoot the target (and that have it within their weapons' range) will fire.

=== SHOOTING INTO FLANK OR

=== REAR

*Sometimes you may find that your models are able to target an enemy unit's flank or rear. This is useful because this can circumvent protection given from shields and other equipment that normally only protect the unit's front.*

A shooting unit's position during the Shooting phase determines whether it shoots into the front, flank or rear of the enemy unit. If the shooting unit is in the target's frontal zone it shoots into the front.

As units generally begin the game facing each other, this is the most common situation that will arise. However, if the shooting unit comes from the flank zone, it shoots into the side; if in the rear zone, it shoots into the rear.

If a shooting unit straddles two zones, then the unit is considered to be in the zone where the majority of the models in its front rank are. If there is no clear majority, roll a dice.

=== SHOOTING INTO COMBAT

Models are normally not permitted to shoot at enemies that are engaged in close combat. The exception is if a unit is within 4" of an unengaged arc of an enemy unit in close combat. However, for each '1' rolled when rolling to Hit, a missile manages to go awry and hit the friendly unit instead. You are only allowed to fire into combat if the target is at Unit Strength 5 or more.

Some war machine weapons, particularly those that use templates, can accidentally hit friends whilst aiming at the enemy. The key word here is 'accidentally' – you cannot purposefully aim a template so that some of your models will be hit. Note that you may never target enemies engaged in close combat with templates, even if they are within 4".

To determine whether you hit, you must make a roll to hit, i.e. you roll a D6 for each model that is shooting. Note that the number of Attacks a model has will not affect the number of shots – each model can shoot only once, unless otherwise specified.

Count how many models in your unit are shooting and roll that number of dice. It is easiest to roll all the dice at once, although you don't have to. If there are a lot of models shooting, you might need to roll several batches of dice. The following table shows the minimum score you will need to hit.

== 3. ROLL TO HIT

*Roll a D6 for each shot fired. The model's Ballistic Skill determines what score they must equal or beat to hit their target after any modifiers have been applied.*

Not all shots have the same chance of hitting. Some warriors are simply better at aiming than others, as reflected in a higher Ballistic Skill (BS). The higher the individual's BS, the greater their chance of hitting.

*Ballistic Skill* 1 2 3 4 5 6 7 8 9 10 *To Hit score* 6 5 4 3 2 1 0 \-1 \-2 \-3

Each dice that rolls a number equal to or greater than the value required has scored a hit. Each dice that rolls less is a miss.

#namecost("7+ TO HIT", "")

If the required To Hit score is 7 or more, it is still possible to hit the target. As it is impossible to roll a 7 or better on a D6, you will first need to roll a 6. Then, for each shot scoring a 6, you need to roll a further score as shown on the chart below. So, for example, in order to score an 8, you must first roll a 6 followed by a 5 or better.

#chart((("To Hit Score", "Requirement to Hit:"), ("7", "6 followed by a 2+"), ("8", "6 followed by a 3+"), ("9", "6 followed by a 4+"), ("10+", "6 followed by a 5+")))
#chartlabel("BALLISTIC SKILL OF 6+")

Troops with a high BS have a To Hit score of 1, 0 or even a negative number (as shown above). If shooting modifiers result in a required score of 1 or less, the model has an increased change to hit the target. If the model first fails To Hit, they may re-roll the result as shown on the chart below:

*Ballistic Skill Requirement to Hit on re-roll: 6* 6 *7* 5+ *8* 4+ *9* 3+ *10* 2+

=== SHOOTING MODIFIERS

Shooting modifiers are applied to the dice rolls before they are compared to the score needed to hit, making the shot either easier or more difficult. The shooting modifiers are cumulative (except when noted otherwise).

#namecost("MOVING AND SHOOTING", "")

Models that moved for any reason (including rallying, reforming, pivoting on the spot or special rule that forces them to move as a compulsory action) during this turn suffer a \-1 to Hit modifier. Lone Models can pivot on the spot and fire in the same turn without suffering this penalty.

#namecost("LONG RANGE", "")

Any shots taken at an enemy that are at long range suffer a \-1 to Hit modifier. This is described for each weapon in the Weapons & Armour chapter.

#namecost("STAND & SHOOT", "")

Models that are making a Stand & Shoot reaction suffer a \-1 to Hit modifier, but ignore penalties from long range.

#namecost("LONE MODEL", "")

Any shots taken at a Lone Model with Unit Strength 2 or less suffer a \-1 to Hit modifier.

#namecost("COVER", "")

If the majority of the models in the target unit are within Line of Sight, but behind models from another unit (friend or enemy) or terrain with half or more as high Line of Sight value as them, then an additional To Hit modifier is applied.

For example, a unit where the majority of the models have a Line of Sight value of 1 in front of a unit where the majority of the models have a Line of Sight value of 2 will provide cover. However, the same unit will not provide cover to a unit whose majority of models have a Line of Sight value of 3 or higher. This works the other way around as well, so a model with a Line of Sight value of 3 will ignore the cover otherwise gained by a model with a Line of Sight value of 2 behind a model with a Line of Sight value of 1.

Models with a Line of Sight value of 0 does not offer any cover to anything with a higher Line of Sight value.

Cover will be classed as either soft or hard cover – see below. It is common for some models in the firing unit to have something in the way, and for others to have a clear shot. Where this happens, simply resolve the two sets of shots (and thus the two sets of To Hit modifiers) separately.

#namecost("Soft Cover", "")

If the majority of a unit is obscured by hedges, fences, forests or other 'soft' terrain, it is said to be in soft cover. Soft cover inflicts a \-1 to Hit modifier.

#namecost("Hard Cover", "")

Hard cover represents cover of a more durable kind, like that offered by stone walls, boulders, buildings and suchlike. We also count intervening units as hard cover. If the majority of a unit is obscured by such 'hard' terrain, it is said to be in hard cover. Hard cover inflicts a \-2 to Hit modifier. Note that the To Hit penalties for hard and soft cover do not stack – in a situation where a target would benefit from both soft and hard cover, simply apply a \-2 to Hit modifier from hard cover.

#namecost("SPECIAL RULES", "")

There are multiple special rules that affect a model's shooting modifier. These are always specified under each special rule, but the most common ones are Multiple Shots, Ponderous and Sniper, which all inflict a \-1 to Hit modifier. For more information about these rules, see the Special Rules chapter.

=== AUTOMATIC HITS

Some unusual attacks (most commonly those made by magic missiles, but also many special rules) hit automatically. Where this is the case, it is exactly how it sounds – do not roll for the attack, it instead automatically causes the number of hits stated within the wording.

In the boxes where there are two values listed, this means that in order to successfully score a Wound, you must first roll a 6, followed by another D6. In situations where the roll might have a modifier to it, this primarily affects the second roll before the first. For example, a Strength 2 Attack with a +1 modifier treats Toughness 5 as only requiring to roll a 6+ To Wound, rather than a 6+ followed by a 2+.

When a unit has multiple toughness values you use the value of the majority or in the case of a tie, the best tied value, unless specified otherwise.

#namecost("Resolving Unusual Attacks", "")

There are several circumstances in Warhammer that call upon you to inflict hits upon an enemy – spells being an obvious example, as well as things like the Impact Hits made by a charging chariot (covered in the Special Rules chapter). Such hits are resolved using steps 4, 5 and 6 of the rules for shooting attacks.

The only exceptions are hits caused by close combat attacks – these are discussed in the Close Combat chapter.

== 4. ROLL TO WOUND

*For each shot that hits, roll again to see if it wounds the target. The score needed is determined by comparing the Strength of the firing weapon with the Toughness of the target.*

To determine whether a hit causes a wound, compare the weapon's Strength (not the Strength of the firer) with the target's Toughness characteristic. Each weapon has a Strength value, given in that weapon's description in the Weapon & Armour chapter.

Pick up all the dice that have hit, and roll them again. Then, consult the To Wound chart, cross-referencing the weapon's Strength (S) with the target's Toughness (T). The number indicated is the minimum score on a D6 needed to convert the hit into a wound. Any dice that equal or beat the score shown on the chart have successfully scored a wound. A To Wound roll of a 1 on a D6 always fails, regardless of any dice modifiers.

#chartlabel("TARGET'S TOUGHNESS")
#chart((("", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"), ("1", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+", "6+/5+", "6+/6+", "n/a", "n/a"), ("2", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+", "6+/5+", "6+/6+", "n/a"), ("3", "2+", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+", "6+/5+", "6+/6+"), ("4", "2+", "2+", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+", "6+/5+"), ("5", "2+", "2+", "2+", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+"), ("6", "2+", "2+", "2+", "2+", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+"), ("7", "2+", "2+", "2+", "2+", "2+", "3+", "4+", "5+", "6+", "6+/2+"), ("8", "2+", "2+", "2+", "2+", "2+", "2+", "3+", "4+", "5+", "6+"), ("9", "2+", "2+", "2+", "2+", "2+", "2+", "2+", "3+", "4+", "5+"), ("10", "2+", "2+", "2+", "2+", "2+", "2+", "2+", "2+", "3+", "4+")))
#chartlabel("ATTACKER'S STRENGTH")

== 5. SAVING THROWS

*Each wound suffered may be cancelled if the controlling player makes a saving throw.*

Models that are wounded still have a chance to avoid damage by 'saving' the wound. The opponent must now roll a number of dice equal to the amount of wounds caused in an attempt to 'save' their models. If they roll equal to or greater than the model's save, a wound has been deflected by its armour or some other form of protection.

Each save will be written like 6+, 5+ and so on, indicating that you need to roll a 6 or higher and a 5 or higher respectively to save the Wound.

All saves from various equipment or special rules are cumulative, so you can combine various types of armour for instance. For each 'point' of a save, you may add +1 to the total save, which means the score it needs to save is reduced by 1.

For example, a model with a 6+ save (or +1) that adds a piece of equipment that gives a 5+ save (or +2), will have a total of a 4+ save (or +3).

Note that a save of any kind can never be better than 2+. This does not prevent a model having items or special rules that would take the save even lower, it simply caps the saving throw at 2+.

#chart((("Save modifier:", "Save:"), ("+1", "6+"), ("+2", "5+"), ("+3", "4+"), ("+4", "3+"), ("+5", "2+")))

=== NEGATIVE ARMOUR SAVE

=== MODIFIERS

Some weapons or creatures are so powerful that they can punch right through armour. Such attacks inflict a modifier on the saving throw, just as shooting modifiers affect the To Hit roll.

An attack of Strength 4 inflicts a save modifier of \-1, with the modifier growing a point higher for each additional point of Strength. Note that this means a model could be hit by an attack whose armour save modifier makes the armour save impossible to pass – in which case, the save is automatically failed.

For example, a model with a 3+ armour save is hit by a Strength 5 Attack with a resulting \-2 modifier. This means the model now only has a 5+ save left to try and save the Wound.

#chart((("Strength:", "Save modifier:"), ("1", "-"), ("2", "-"), ("3", "-"), ("4", "-1"), ("5", "-2"), ("6", "-3"), ("7", "-4"), ("8", "-5"), ("9", "-6"), ("10", "-7")))

=== INVULNERABLE SAVES

Some models have a special save called an invulnerable save, typically as part of their special rules or from certain Magic Items or spells. The value of an invulnerable save will always be shown in a model's entry in the relevant Warhammer Armies book. These work in the same way as armour saves, and may be combined with other invulnerable saves as normal.

The key difference between invulnerable saves and armour saves is that invulnerable saves are never modified by the Strength of the attack. However, no model may have an invulnerable save better than 4+ by combining multiple invulnerable saves regardless of source. For example, a model that has two 6+ invulnerable saves and a 5+ invulnerable save will be limited to a 4+ invulnerable save, though you may choose which invulnerable saves are used in any given situation.

Note that this does not stop single invulnerable saves from being used, such as a model having a listed 2+ or 3+ invulnerable save; the above limitation only applies to combining invulnerable saves.

Sometimes a model has both an armour save and an invulnerable save. Where this is the case, the model takes its armour save as normal. If the armour save is failed (or modified to the point at which the model cannot pass it) then the model takes its invulnerable save.

Some models may be allowed to re-roll an invulnerable save from a specific source. In that case, the re-roll will only apply to that specific invulnerable save, and not the model's total invulnerable save.

=== 'INSTANT KILLS'

Some special attacks don't inflict wounds, but require models to be removed as casualties (after failing a Ld or T test, for example). Where this is the case, not only are no saves of any kind allowed (unless specified otherwise), but the number of wounds on the victim's profile is completely irrelevant – just remove the model from play.

== 6. REMOVE

== CASUALTIES

#note[_Example: A unit of Ogres suffers 5 wounds from arrow fire. Each Ogre model has 3 Wounds. So, 5 wounds equal one model dead (3 wounds) with 2 wounds left over. The wounds left over are not enough to remove another model, so the player must make a note that 2 wounds have been suffered by the unit. If the unit takes another wound from some other attack later in the game, then another Ogre model is removed._]

#namecost("HITS INFLICTING MULTIPLE WOUNDS", "")

Some war machines, spells or magic weapons are so destructive that if a model suffers an unsaved wound from them, the victim doesn't lose only 1 Wound, but 2 Wounds, or a number of Wounds equal to the roll of a D3, D6, etc, as noted in the weapon's rules. In such cases, roll to hit and to wound as normal and then take any armour saves and invulnerable saves that apply. Finally, for each such wound that is not saved, roll the appropriate dice to determine how many wounds are caused. A model cannot suffer more wounds than it has on its profile. Should the model do so, it dies instantly and any excess wounds are wasted.

#namecost("MULTI-WOUND MODELS AND MULTI-", "")
#namecost("WOUND WEAPONS", "")

If a unit of creatures with more than 1 Wound on their profile is hit by a weapon that causes multiple wounds, determine how many wounds are caused on each model individually. Add up all wounds caused on the unit and then remove the appropriate number of models, noting any spare wounds on the unit. This method is also applied if such a unit is attacked by a spell or weapon that causes a hit on every model in the unit.

#note[_For example, a unit of Ogres (3 Wounds each) is hit by a cannon ball, causing 4 Wounds on a single model. This will cause 3 Wounds on the unit, with the fourth wound being discarded as no single model in the unit can suffer more Wounds than there are on their profile. Note that if the unit would have had any wounded rank and file models in it before getting hit by the cannon ball, the cannon ball is always assumed to have hit a rank and file model with their starting number of Wounds for the purpose of resolving casualties._]

*The target unit suffers casualties for any wounds that have not been saved. Casualties are always removed from the rear of a unit.*

For every model that fails its save the target unit suffers an unsaved wound (any saves that were not possible because the modifier was too high also count as having been failed). Most models have only a single Wound on their profile, in which case a single model is removed for each unsaved wound caused. Individual warriors are not necessarily dead, they may just be too badly wounded to fight on. For our purposes, the result is the same, so we treat all casualties as if they were killed and remove them from play.

Although casualties would normally fall amongst the front rank, for the purposes of game play we remove models from the rear rank of the unit. This keeps the formation neat and represents rear rankers stepping forward into gaps formerly filled by fallen comrades. If the unit is deployed in a single rank, then casualties are removed equally from both ends.

=== MODELS WITH MORE THAN

=== ONE WOUND

Some models have more than one Wound on their profile. Should such a unit suffer wounds, you must remove as many whole models as possible. You are not allowed to spread the wounds throughout the unit to avoid suffering casualties.

In this situation, divide the number of wounds caused by the Wounds characteristic of the models in the target unit, removing this number of models from the rear- most rank. Any leftover wounds that were not enough to remove a model are carried over and will be added to the wounds inflicted by any subsequent attacks.

= CLOSE COMBAT

Unlike other phases of the game, the combat phase offers both sides a chance to inflict damage, although it is the player whose turn it is who will be the one choosing the order of the combats.

All close combats must be resolved during this phase – a unit in combat cannot choose not to fight, for whatever reason.

Most combats involve a single unit fighting a single opposing unit, so that's what we will discuss first. Sometimes however, you'll end up with a multiple close combat where there is more than one unit fighting on one or both sides. Multiple close combats have some additional rules, which you will find discussed towards the end of the chapter. As all the rules for a normal close combat also apply to a multiple close combat, you'll probably find it easier (and clearer) if you just work your way through the section.

#namecost("WHAT IS A CLOSE COMBAT ATTACK?", "")

A close combat attack is any attack that is performed against units in base contact during the close combat phase, including Stomps and Impact Hits (see Special Rules section) and other attacks that normally hit automatically.

#namecost("CLOSE COMBAT PHASE SEQUENCE", "")

The player whose turn it is nominates a close combat involving one or more of their units and fights a round of close combat using the rules described. Then proceed to the next close combat and continue until all units have fought. Resolve each combat completely, including any flee and pursue moves, before moving on to the next combat.

=== CLOSE COMBAT SUMMARY

*1\. FIGHT A ROUND OF CLOSE COMBAT *_\- Who can strike? - How many attacks? - Striking order - Roll to hit - Roll to wound - Saving Throws - Remove casualties_

*2\. CALCULATE CLOSE COMBAT RESULT *_\- Combat result bonuses - Who's the winner_

*3\. LOSER TAKES A BREAK TEST *_\- Taking a Break test - Combat reform_

*4\. FLEE AND PURSUE *_\- Restrain or pursue? - Roll flee distance - Roll pursuit distance - Caught! - Move fleeing unit - Restraining units reform - Move pursuers_

== 1. FIGHT A ROUND OF

== CLOSE COMBAT

Just as all eligible units (i.e. those in base contact with the enemy) must fight in close combat, similarly all models that are able to must fight. Models cannot elect not to strike, nor can they normally be prevented from doing so.

#namecost("FIRST ROUND OF CLOSE COMBAT", "")

There are multiple rules in the game that refer to something having an effect "in the first round of close combat". The first round of close combat refers to the first round of close combat that a single unit is involved in without disengaging due to fleeing, pursuing or other effects. This means that if a unit is engaged in combat with one unit and is later engaged by another unit, this only counts as the first round of close combat for the new unit, not any units that were already engaged in the combat.

=== WHO CAN STRIKE?

*Models can fight if they are in base contact with an enemy model when it is their chance to attack, even if the models' bases only touch at the corner.*

Normally, each model can only attack enemy models in base contact. However, a minimum of five models in the front rank may always attack, as long as the unit is in base contact with any model of the enemy unit in that arc. This is what is referred to as the fighting rank.

If a model has more than one Attack and finds itself in base contact with two or more enemies with different characteristic profiles, it must choose which one to attack when its turn to strike comes (before any dice are rolled). If the model is not in direct base contact, it can only direct its attacks against normal rank and file models in the enemy unit.

#diagram("/assets/figures/rulebook/img-0493.jpg", 0.463)

#note[_Models in base contact with an enemy, even just corner-to-corner, can attack (marked white). These two blue models are in contact with both a cavalry and an infantry model, so can choose to direct their attacks at either unit._]

#diagram("/assets/figures/rulebook/img-0494.jpg", 0.463)

#note[_All five models in the fighting rank may attack, even though only four red models are in base contact with the two blue models._]

#namecost("SUPPORTING ATTACKS", "")

*Warriors in the second rank may make supporting attacks.*

A model can make a supporting attack if it is in the second rank and directly behind a friendly model that is itself in base contact with the enemy. Supporting attacks cannot be made to the side or rear or by models that are in base contact with enemies.

The number of maximum supporting attacks each model can make is dependent on their troop type, as explained in in the Troop Types chapter.

Supporting attacks are made against models in base contact with the front rank model that is being fought 'through'.

=== HOW MANY ATTACKS?

*Models in base contact with one or more enemies strike a number of blows equal to their Attacks characteristic.*

For most troops this will normally be 1, although bonuses for additional hand weapons, spells or special rules can raise or lower the total. More powerful models will often have 2, 3, 4 or even more Attacks.

#diagram("/assets/figures/rulebook/img-0496.jpg", 0.999)

#note[_Models (marked with dotted line) can make supporting attacks as they are directly behind a model attacking normally (marked with full line). The models in base contact are fighting to their flank, so no supporting attacks can be made by these two models._]

#diagram("/assets/figures/rulebook/img-0498.jpg", 1.0)

#note[_The models in the incomplete rank are moved to be in contact with their enemies._]

#namecost("INCOMPLETE RANKS", "")

*Gaps where models are missing from a rank do not prevent models from fighting.*

If a unit is fighting to its flank, the models in the incomplete rank are moved into contact with the enemy, there to fight and be fought normally. If the unit is fighting to its rear (or fighting to both flanks) some enemy models might not end up in base contact because of the models in the incomplete rear rank. In this specific situation, the models can fight across the gap, even if not physically in base-to-base contact. Treat these models as being in base contact with the enemy.

#diagram("/assets/figures/rulebook/img-0499.jpg", 0.463)

#note[_Full lines = Attacks normally Dotted lines = Can make a supporting attack If casualties inflicted on the red unit causes the unit to be separated, move the blue unit forward to maximise contact._]

=== STRIKING ORDER

*Blows are struck in Initiative order. If a model is killed before its turn to strike, it does not fight. If Initiative values are drawn, blows are struck simultaneously.*

A model's Initiative characteristic determines who attacks first in close combat (including any bonuses for using certain weapons or spells that might increase the Initiative value). Work your way through the Initiative values of the models, starting with the highest and ending with the lowest. Models make attacks when their Initiative value is reached, assuming of course that they haven't already been killed by a model with a higher Initiative and that there is still an enemy in base contact. Where models have the same Initiative, their attacks are made simultaneously.

Models that charged the same turn add +1 to their Initiative.

#namecost("SPLIT PROFILES AND STRIKING ORDER", "")

*Where a model has Attacks at two or more Initiative values, such as a cavalry models, resolve each set of Attacks in the relevant order.*

If the model is slain before it can finish striking all of its blows (because one set of Attacks is at a lower Initiative than the enemy) then obviously these are lost, just as a model with a single profile would lose all of its Attacks if it were slain before striking blows.

Similarly, on rare occasions, a model with a split profile might be unable to strike some of its blows because all eligible enemies have been slain.

If you look at the chart, you will see that equally matched models hit an enemy on a 4+, but if the attacker's Weapon Skill is greater than that of their target, they will hit on a dice roll of 3+. In cases where the attacker’s Weapon Skill is more than double that of the target, they will hit on a dice roll of 2+. In cases where a target's Weapon Skill is more than double that of the attacker, a 5+ is required for a successful hit. If a model has twice the Weapon Skill plus 3, a 6 is required.

If you roll too low, the Attack has missed, and if you equal or beat the required score, the Attack has hit. Sometimes modifiers apply to these rolls, but a natural dice score of 6 always hits and a natural dice score of 1 always misses.

=== ROLL TO HIT

*Roll a D6 for each attack. Compare the Weapon Skill of the attacker and the defender to determine the score required to hit.*

To determine whether or not hits are scored, roll a D6 for each Attack a model gets to make. The dice roll needed to score a hit on your enemy depends on the relative Weapon Skills of the attacker and the target. Compare the Weapon Skill of the model striking blows with that of the target model and consult the To Hit chart below to find out the minimum score needed to hit.

#chartlabel("TARGET'S WEAPON SKILL")
#chart((("", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"), ("1", "4+", "4+", "5+", "5+", "6+", "6+", "6+", "6+", "6+", "6+"), ("2", "3+", "4+", "4+", "4+", "5+", "5+", "6+", "6+", "6+", "6+"), ("3", "2+", "3+", "4+", "4+", "4+", "4+", "5+", "5+", "6+", "6+"), ("4", "2+", "3+", "3+", "4+", "4+", "4+", "4+", "4+", "5+", "5+"), ("5", "2+", "2+", "3+", "3+", "4+", "4+", "4+", "4+", "4+", "4+"), ("6", "2+", "2+", "3+", "3+", "3+", "4+", "4+", "4+", "4+", "4+"), ("7", "2+", "2+", "2+", "3+", "3+", "3+", "4+", "4+", "4+", "4+"), ("8", "2+", "2+", "2+", "3+", "3+", "3+", "3+", "4+", "4+", "4+"), ("9", "2+", "2+", "2+", "2+", "3+", "3+", "3+", "3+", "4+", "4+"), ("10", "2+", "2+", "2+", "2+", "3+", "3+", "3+", "3+", "3+", "4+")))
#chartlabel("ATTACKER'S WEAPON SKILL")

=== ROLL TO WOUND

*Roll a D6 for each attack that hit. Compare the Strength of the attacker and the Toughness of the defender to find the score required to wound.*

Not all hits are going to harm your enemy – some bounce off tough hide, while others cause only superficial damage. As with shooting, once you have hit your foe, you must roll again to see whether or not each hit inflicts a wound. Pick up all the dice that scored hits and roll them again.

Consult the To Wound chart, cross-referencing the attacker's Strength with the defender's Toughness. Both values appear on the profiles of the creatures that are fighting. The chart indicates the minimum score required on a D6 to cause a wound. In most cases, you use the Strength on the attacker's profile regardless of what weapon they are using. However, some close combat weapons give the attacker a Strength bonus (see the Weapons chapter).

Remember to roll dice separately for models with different Strength values. Sometimes modifiers apply to these rolls, but a natural dice score of 1 always fails.

In the boxes where there are two values listed, this means that in order to successfully score a Wound, you must first roll a 6, followed by another D6. In situations where the roll might have a modifier to it, this primarily affects the second roll before the first. For example, a Strength 2 Attack with a +1 modifier treats Toughness 5 as only requiring to roll a 6+ To Wound, rather than a 6+ followed by a 2+.

#chartlabel("TARGET'S TOUGHNESS")
#chart((("", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"), ("1", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+", "6+/5+", "6+/6+", "n/a", "n/a"), ("2", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+", "6+/5+", "6+/6+", "n/a"), ("3", "2+", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+", "6+/5+", "6+/6+"), ("4", "2+", "2+", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+", "6+/5+"), ("5", "2+", "2+", "2+", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+", "6+/4+"), ("6", "2+", "2+", "2+", "2+", "3+", "4+", "5+", "6+", "6+/2+", "6+/3+"), ("7", "2+", "2+", "2+", "2+", "2+", "3+", "4+", "5+", "6+", "6+/2+"), ("8", "2+", "2+", "2+", "2+", "2+", "2+", "3+", "4+", "5+", "6+"), ("9", "2+", "2+", "2+", "2+", "2+", "2+", "2+", "3+", "4+", "5+"), ("10", "2+", "2+", "2+", "2+", "2+", "2+", "2+", "2+", "3+", "4+")))
#chartlabel("ATTACKER'S STRENGTH")

=== TAKE SAVING THROWS

*The enemy now rolls a D6 for each wound suffered. If the score is equal or greater than the model's saving throw, the wound is discounted.*

As before in the Shooting phase, the enemy player can try to 'save' models that have been wounded by rolling a D6 for each wound suffered by their troops. If they roll equal to or greater than the model's save (after any modifiers have been applied) the wound has been deflected by its armour. See "Saving Throws" of the Shooting Phase if you need a reminder about the different types of save and how they work. Remember that wounds caused by Strength 4 or higher inflict a saving throw modifier on armour saves.

#chart((("Strength:", "Save modifier:"), ("1", "-"), ("2", "-"), ("3", "-"), ("4", "-1"), ("5", "-2"), ("6", "-3"), ("7", "-4"), ("8", "-5"), ("9", "-6"), ("10", "-7")))

=== REMOVE CASUALTIES

*Casualties are removed from the rear rank, just like models killed by shooting attacks. Models that have stepped up to replace the fallen can fight, provided that their Initiative step has not passed.*

With saving throws made or failed, you now need to remove the slain. Close combat casualties are removed in the same way as shooting ones. Casualties will therefore be removed straight from a unit's rear rank. This means that if a unit is big enough, taking a handful of casualties will not reduce the number of Attacks the unit can make back.

It can happen that a model causes more casualties than it has enemies in base contact. The excess casualties are removed as normal from the unit as a whole.

It is a good idea not to immediately remove models that are slain from the table, but instead temporarily place them next to their unit – you will need to know how many casualties have been caused when working out who won the combat.

== 2. CALCULATE

== COMBAT RESULT

*Once all the models engaged in the combat have fought, this concludes what we call a 'combat round' or 'round of close combat'.*

Now you must determine which side has won. Inflicting casualties plays a huge part in seizing victory, but other factors, such as the sheer mass of a unit, the momentum of a charge and fighting downhill, can also prove to be telling.

The winner of a combat is decided by the number of casualties, plus certain other bonuses. To calculate which side has won the combat, we first need to work out each side's combat result score. We determine combat result score by adding up the following bonuses:

#namecost("WOUNDS INFLICTED", "")

*\+1 combat result for each wound inflicted.*

Each side's basic combat result is equal to the Wounds caused in the close combat phase, regardless of source (except wounds that are caused by friendly models). It's important to tally up the number of Wounds, rather than the number of casualties. Note that any Wounds that are saved by armour, invulnerable save or other special rules do not count towards to the result.

#namecost("CHARGE", "")

*\+1 combat result if the unit charged.*

If your unit charged this turn, it receives +1 combat result. This is cumulative with several units charging the same target at once.

#namecost("EXTRA RANKS", "")

*\+1 combat result for each extra complete rank of models, to a maximum of +3. Units that have charged the same turn are limited to a maximum of +2.*

If your unit's formation is in a complete rank, you can claim a bonus of +1 combat result for each extra complete rank behind the fighting rank, at the end of the fight, up to a maximum of +3. Note that this bonus can also be claimed for an incomplete rear rank, as long as there are enough models in it. This number of models is specified in the troop types chapter.

This is cumulative with several units engaged in the same close combat, calculating ranks for each unit, as long as they are engaged in different arcs of the enemy unit (up to a maximum of +3 per arc). If two units engage an enemy unit in the same arc, count only the highest number of ranks from one of the units.

#namecost("Disruption", "")

A unit is disrupted if one or more enemy units are attacking it in the flank or rear, and those enemy units have a combined Unit Strength equal to half or more of that unit.

A unit does not receive combat result points for extra ranks and cannot be Steadfast (see Loser Takes a Break Test further in this chapter) as long as it is disrupted.

Sometimes, an enemy unit will begin the round of close combat with enough Unit Strength to cause disruption, but takes enough casualties so that it has below half Unit Strength compared to their foe. In this case, it can no longer disrupt the unit it is fighting and the extra ranks are counted as normal.

#note[_Example: Unit A has Unit Strength 20 and is flanked by Unit B with Unit Strength 10. Since Unit B has half the Unit Strength of Unit A, Unit A is now Disrupted._]

#namecost("OUTNUMBER", "")

*\+1 combat result for having more Unit Strength than your enemy.*

If your unit has a higher Unit Strength than your enemy, add +1 to the combat result. If multiple units are involved in the same combat, calculate the combined Unit Strength of all units involved on both sides to determine which side might get the Outnumber bonus.

#namecost("STANDARD", "")

*\+1 combat result for a standard bearer.*

If your unit includes a standard bearer, it receives +1 Combat Result. This is cumulative with several units engaged in the same close combat, each with their own standard bearer.

#namecost("Battle Standard", "")

If your unit includes a battle standard, it receives +1 combat result, cumulative with any bonus for a 'normal' standard.

#namecost("FLANK ATTACK", "")

*\+1 combat result if your unit is fighting the enemy unit's flank.*

If one or more of your units are fighting the enemy in its flank, you receive +1 combat result. If the enemy unit is engaged in both flanks, you receive +2 to the combat result instead.

#namecost("REAR ATTACK", "")

*\+2 combat result if your unit is fighting the enemy unit's rear.*

If one or more of your units are fighting the enemy in the rear, you receive +2 combat result.

#namecost("HIGH GROUND", "")

*\+1 combat result if fighting from a higher ground.*

If you are charging or fighting from a higher position than your enemy, for example, your troops are occupying the crest of a hill or charged down from it the same turn, you receive +1 combat result. In the case of a fight involving multiple units, the side that has the fighting rank in the highest position gets the bonus.

#namecost("CHALLENGE", "")

*\+1 combat result if a challenge was refused by your enemy.*

In addition, if a character fighting in a challenge kills their opponent and scores more wounds than their enemy has remaining, then each excess wound scores +1 combat result, up to a maximum of +3.

Challenges are a special type of close combat performed only by characters, and are covered in more detail in the characters chapter.

=== WHO IS THE WINNER?

The unit with the highest combat result score wins the fight.

After adding together all the combat result bonuses, you'll be able to determine the winner, i.e. the side that scored the most. If both sides have the same score, the result is a draw and the combat will continue in the next turn.

The higher the difference between the winner's combat result score and the loser's, the bigger and more decisive the victory.

=== WIPEOUT

Of course, if one side has been completely wiped out in the fight, the other side is automatically the winner. In such cases the unit automatically restrains pursuit and reforms. Alternatively, if the unit charged this turn it can choose to overrun.

== 3. LOSER TAKES A

== BREAK TEST

*The losing unit in a combat must pass a Leadership test or flee. This Break test is modified by the amount by which the unit lost the combat.*

The side that loses a round of close combat must take a test to determine whether it continues to stand and fight, or breaks from the combat and runs away. This is called a Break test.

=== TAKING A BREAK TEST

A Break test is a type of Leadership test. However, before rolling the dice, the difference between the winner's combat result score and the loser's is applied as a penalty to the defeated unit's Leadership. If the total is less than or equal to the loser's modified Leadership, the unit stands its ground and settles in for another round of fighting – this close combat has finished for the turn. If the total is greater than the unit's modified Leadership value then the unit has broken and will flee. Note that this modified Leadership is used only for the Break test and any subsequent attempt to make a combat reform (explained later).

#note[_Example: a unit must take a Break test with a \-3 penalty to their Leadership, because the difference between the scores was 3. The unit has Leadership value (8) but with the extra \-3 penalty their Leadership is reduced to 5 for this test, therefore the player will have to roll 5 or less to stand and fight. The player rolls 2D6 and scores 7 – this is greater than the unit's modified Leadership, so the unit has broken and will flee._]

Note that in case the penalty to the losing unit's Leadership is equal to or greater than their modified Leadership value, no test is taken and the unit will automatically break and flee from combat.

#note[_Example: a unit must take a Break test with a \-5 penalty to their Leadership, because the difference between the scores was 5. The unit has Leadership value (5) but with the extra \-5 penalty their Leadership is reduced to 0 for this test, therefore the unit will automatically break and flee without taking a Break test._]

#namecost("STEADFAST", "")

*If a defeated unit has a higher number of complete ranks after the first than all individual enemy units in base contact, it takes its Break test on its unmodified Leadership.*

Disrupted units cannot be Steadfast.

Steadfast units always take Break tests on their own Leadership characteristic, ignoring any negative close combat resolution modifiers.

=== COMBAT REFORM

At the end of the combat round, each unit can attempt to reform.

#namecost("REFORMING FROM VICTORY", "")

*If your unit wins the close combat but the enemy does not flee, or the combat was a draw, your unit can immediately make a combat reform manoeuvre.*

A combat reform is essentially a standard reform save for the fact that the centre point of the reformed unit does not have to stay in the same place. The most common usage of a combat reform is to allow the unit to turn to face its enemy (if attacked in the flank or rear), although it can also be used to bring more models into the fight by increasing the unit's frontage. There are three special restrictions on a combat reform, however:

- The unit may not reform to get a model (friend or foe) out of base contact with the enemy if it was in contact before the reform was made.

- The unit may not reform in such a way as to contact a different facing on any enemy unit it is in contact with, though the model can be in base contact with a different enemy at the end of the reform if you wish.

- The unit must keep its front arc in base contact with an enemy unit.

#namecost("REFORMING FROM DEFEAT", "")

*If your unit loses the combat, but does not flee, it can still attempt a combat reform.*

In this case, your unit must pass a Leadership test to muster the necessary discipline to alter its formation. Note that this Leadership test is subject to any modifiers from having lost the fight, just like a Break test. If your unit is steadfast the test is taken on the unit's unmodified Leadership. If the test is failed, your unit cannot make a combat reform. If the test is passed, the combat reform can be carried out as described above.

#namecost("UNUSUAL SITUATIONS", "")

If both sides wish to make (or attempt to make) a combat reform, take any Leadership tests required in order to make the reforms, then roll off to determine which side makes all of their reforms first (the winner of the roll-off decides).

If a unit is engaged to more than one facing (say to the front and one flank), it cannot make combat reforms.

In case multiple units are involved in the same combat and one unit flees, any combat reforms attempted are done after all pursuit attempts are finished.

In some cases, most likely because a unit previously engaged in combat has broken off or similar, two units might find themselves only partially engaged in base contact with some models in the front rank not fighting. In these situations, the unit with the lower Unit Strength must be moved sideways until all models in either unit's front rank is in base contact with the other unit. This is done after any other reform has been performed.

== 4. FLEE AND PURSUE

*If a unit fails its Break test it must flee and might be destroyed as it runs.*

=== RESTRAIN OR PURSUE

*The victorious unit can choose to pursue or restrain pursuit. A fleeing and pursuing unit both move the sum of their Movement + D6".*

If the losing unit failed its Break test, it must flee, but the winning unit can choose to either pursue the fleeing unit or restrain.

If you wish your unit to restrain pursuit, it must first take a Leadership test. If the test is passed, the unit can choose to reform once the defeated enemy has fled. If the test is failed, the unit is forced to pursue.

=== CAUGHT!

*If one or more pursuing unit rolls equal to or higher than the fleeing unit, parts of the fleeing unit is destroyed.*

If the victorious unit's pursuit roll is equal to or greater than the Flee roll scored by the fleeing enemy unit, the fleeing unit suffers one Wound with no saves of any kind allowed for each point of Unit Strength the charging unit(s) has, just as when charging a fleeing enemy. If any models survive, the pursuing unit then stops 1" behind the remains of the fleeing unit, just as if they had charged a fleeing enemy. If no models survive, see the "Move Pursuers" section below.

=== MOVE FLEEING UNIT

*Fleeing units turn around to face away from the victor and then move directly forward a number of inches equal to their Flee roll.*

If the fleeing unit rolls higher than the pursuers, or has not been pursued at all, then it has escaped. With a bit of luck, the warriors will come to their senses once the immediate danger has passed, and might yet play a useful part later on in the battle.

To resolve the flee move, turn the unit around about its centre so that it is facing directly away from the enemy unit (rather than the enemy unit's centre).

The unit then flees straight forward a distance equal to the result of the Flee roll. This is otherwise treated exactly the same as a flee move in the Movement phase.

=== RESTRAINING UNITS REFORM

*A unit that does not pursue can perform a reform manoeuvre.*

If your unit elected to restrain and passed the test to do so, or wiped out the enemy and did not overrun, it can now perform a reform manoeuvre, as described in the Movement phase.

#diagram("/assets/figures/rulebook/img-0508.jpg", 0.999)

#note[_1\. The red unit rolls its flee distance and the blue unit rolls its pursuit. The red unit has rolled higher and escape. 3. The red unit then flees directly forwards a number of inches equal to its Flee roll. 2. The red unit pivots around its centre until it is facing directly away from the blue unit. 4. The blue unit then moves directly forward a number of inches equal to their pursuit roll._]

Carry out the charge as you would in the Movement phase, following all the normal restrictions. However, you do not need to roll for the charge range. The charging unit must wheel and close the door in such a way as to maximise contact, as they would with a normal charge. The charged unit is not allowed to take any charge reactions except Hold.

If this enemy unit was already engaged in close combat at the start of the Close Combat phase, and that fight has not been resolved for this turn, then the pursuing unit will get to fight another round of close combat. If a pursuing unit is lucky enough to win a second fight in the same turn, it cannot overrun and automatically restrains pursuit (and can reform!).

If the unit that has been charged as a result of pursuit was not engaged in combat from the beginning of this combat phase, or if it was engaged but that fight has already been resolved in this combat phase, the combat is not resolved straight away, but in the combat phase of the following turn.

In the following turn's combat phase, the pursuers will still count as charging.

This might result in both sides having charging units in the same fight, in which case the charging units on both sides will get the normal bonuses conferred by charging (e.g. causing impact hits, benefiting from a lance's Strength bonus, etc., and other bonuses described later in this Rules section). Also, both sides will get the +1 combat resolution bonus, which will effectively cancel each other out.

=== MOVE PURSUERS

*The pursuing unit pivots to face the centre of the fleeing unit and moves directly forward equal to its pursuit roll. It will stop 1" away from any friendly units or impassable terrain, and will charge an enemy in the way.*

With the final position of the fleeing unit now determined, it's time to move the pursuers. Turn the pursuing unit about its centre (ignoring other units) so that it is facing directly towards the centre of the unit they are pursuing – the pursuers then move straight forward a number of inches equal to the amount rolled on the dice.

Note that pursuers make this move even if the fleeing unit was caught or otherwise destroyed for any reason, as described earlier – the 'pursuit' move in this case represents them surging forward to cut down any stragglers.

#namecost("PURSUIT INTO AN OBSTRUCTION", "")

Unlike fleeing troops, pursuers maintain some manner of order and formation. Therefore, if the pursuit move would take the pursuers into contact with (or through) a friendly unit or area of impassable terrain, they automatically halt 1" away.

#namecost("PURSUIT INTO A NEW ENEMY", "")

If a pursuit move would take the pursuer into contact with an enemy unit, then the pursuers must charge the enemy unit.

#diagram("/assets/figures/rulebook/img-0510.jpg", 0.999)
#chart((("1. The red unit has rolled high enough to escape their
pursuers, and move through a friendly red unit as they
flee.", "2. The blue unit's pursuit move would take them into
contact with the second red unit, so they must charge
this new enemy, wheeling to maximise contact as
normal."), ("", "")))
#chartlabel("PURSUIT INTO FLEEING FOES")

Even if the charged unit was already fleeing, it still cannot take any charge reactions. Move the pursuers into contact with it as you would for a unit completing a charge against a fleeing unit. If the fleeing unit is completely destroyed the pursuing unit is allowed one final reform.

#namecost("OVERRUN!", "")

*If the victorious unit charged into combat and the enemy was wiped out, it can move the sum of their Movement + D6" inches straight forward.*

If a unit charges into combat and, by the end of that round of close combat, all its enemies have been wiped out as the result of the combat or combat result (rather than the pursuit) the unit can choose to make a pursuit move, even with nobody left alive to pursue. This is an Overrun move.

An overrun is essentially a special pursuit move. When making an overrun, the victorious unit moves directly forwards, as if they were pursuing a fleeing enemy to their front. All other rules governing pursuit moves, such as intervening units and terrain, apply to overruns.

If you charge an enemy and they are wiped out before the Close Combat phase (by a spell or template weapon for instance), you can choose to either Overrun or Reform From Victory (unless the unit has made any other moves this turn outside of the Movement phase). This occurs at the start of the Close Combat phase before any blows have been struck.

#namecost("PURSUIT OFF THE BATTLEFIELD", "")

A pursuing unit that moves into contact with the battlefield edge moves off the battlefield. However, unlike fleeing units they are allow them to re-enter the board in their next Movement phase, using the rules for Reinforcements. The unit is placed back as close as possible to the same point from which it left the battlefield, in the same formation. Remember that it needs to face directly towards the battlefield and have all of its rear rank touching the battlefield edge. It is often a good idea to leave a model from such a unit in order to mark the position from which it left the battlefield (a standard bearer is ideal).

== MULTIPLE CLOSE

== COMBATS

*It is possible that more than two units can become involved in the same close combat.*

A multiple combat is a fight that involves more than one unit on either (or even both) sides. Unless otherwise stated, all the rules for a one-on-one close combat also apply to a combat with multiple units on each side.

=== MULTIPLE COMBATS AND

=== BREAK TESTS

In a combat involving multiple units, you will first need to calculate the total combat resolution score for all units involved on both sides to determine the overall winner of that round of combat.

After this, the Break test modifier for each unit on the losing side is to be calculated separately and compared to the combined combat resolution score of only the enemy units they are in base contact with, not any other friendly units involved in the combat. This means that you need to keep a tally on the number of Wounds caused by each unit so you don't lose track of their individual combat resolution score. This is most easily done by keeping the slain enemy models of each unit behind the unit that inflicted the casualties until the final combat result is calculated.

Units on the losing side whose combat resolution score is equal to or higher than the combined resolution score of all the enemy units they are in base contact with do not need to take any break test, but instead counts as fighting to a draw.

In addition, no unit on the losing side will suffer a negative modifier greater than the overall loss of their side, even if that unit itself might have a much lower combat resolution score than the units they are in base contact with.

Note that if a unit is Disrupted from any source, it may not count its rank bonus against any unit it may be in base contact with.

*Example (see diagram to the right): *_A unit of Empire Halberdiers is fighting a unit of Orcs to its front and a unit of Goblins to its flank._

#note[_The Halberdiers inflict 2 Wounds against the Orcs and 4 Wounds against the Goblins, have 3 ranks, Standard and Outnumber, for a total combat resolution score of 11._]

#note[_The Orcs inflict 4 Wounds against The Halberdiers, have 2 ranks and Standard for a total combat resolution score of 7._]

#note[_The Goblins inflict 1 Wound against the Halberdiers and have a Flank bonus for a total combat resolution score of 2._]

#note[_The Orcs and Goblins together have a total combat resolution score of 9, meaning the Halberdiers win the overall combat by 2._]

#note[_The Orcs have a total combat resolution score of 7 against the Halberdiers. The Halberdiers have a total combat resolution score of 7 against the Orcs. The Halberdiers and Orcs count as fighting to a draw, and thus the Orcs do not need to take a Break test this turn._]

#note[_The Goblins have a total combat resolution score of 2 against the Halberdiers. The Halberdiers have a total combat resolution score of 9 against the Goblins. Normally the Goblins would have lost the combat by 7. However, as the overall combat was lost by just 2, the Goblins must take a Break test suffering only a \-2 Leadership Modifier._]

#diagram("/assets/figures/rulebook/img-0518.jpg", 0.463)
#diagram("/assets/figures/rulebook/img-0519.jpg", 0.463)

=== MULTIPLE COMBATS AND

=== PURSUIT

*It can happen that one or more victorious units have defeated several enemies that were engaging them from different sides.*

Where this happens, bear the following in mind:

#namecost("PURSUIT", "")

Units on the winning side are each only permitted to pursue a single enemy unit that they are in base contact with (declare this before any Flee rolls are made). In addition, they cannot choose to pursue if one or more of the units they are in base contact with pass their Break tests. This is quite realistic – your warriors are hardly likely to go haring off after a broken enemy if there are still fresh and eager foes to face. If there is more than one pursuing unit, the controlling player can choose the order in which they move, after rolling their pursuit distance.

#namecost("FLEE!", "")

Fleeing units must roll greater than the scores rolled by all of their pursuers in order to get away. If one or more of their pursuers equals or beats the fleeing unit's score, then the fleeing unit suffers casualties, following the rules for charging fleeing enemies.

#namecost("DIRECTION OF FLIGHT", "")

Where there is a choice of foes to flee from, warriors will always be more determined to avoid the most numerous enemy. The controlling player decides the order in which units flee.

Each fleeing unit pivots about its centre (ignoring enemy units) so that it is facing directly away from the enemy with the highest Unit Strength (select a unit randomly if there is a tie). It then flees straight forward in this direction as described earlier.

You may find that this involves the fleeing unit turning so that it overlaps one or more other units in the fight. If this happens, simply estimate the unit's new position as best you can by holding it above the rest of the units in the fight.

#diagram("/assets/figures/rulebook/img-0521.jpg", 0.463)

#note[_The red unit turns to face directly away from the enemy unit with the largest Unit Strength, and flee. As the unit has fled through an enemy unit with Unit Strength 10 it suffers 10 Wounds with no saves, so the red unit would get destroyed as a result._]

#diagram("/assets/figures/rulebook/img-0523.jpg", 0.463)

#note[_The red unit has lost the combat and failed its Break test. It has rolled high enough to escape, and make its flee move of 7". The blue player decides to move his smaller unit first. The unit pivots to face the fleeing red unit and starts its pursuit move of 6". Because of its position, this move would bring it back into contact with the red unit, so it has to stop 1" away. The larger blue unit then makes its pursuit move, but must stop 1" away from its comrades._]

#namecost("DIRECTION OF PURSUIT", "")

Once all flee moves have been resolved, resolve any pursue moves one at a time. In an order chosen by the controlling player, each pursuer pivots about its centre (ignoring other units) so that it is facing directly towards the centre of the fleeing unit of its choice, and then pursues, as described earlier. Note that this will sometimes lead to a pursuing unit 'catching up' with a fleeing unit that has rolled high enough to escape. In this case, the pursuing unit must stop 1" away.

=== SHRINKING UNITS AND

=== MULTIPLE FIGHTS

Occasionally, a situation can arise when one or more units are no longer in base contact with the enemy, but at least part of the enemy unit is still alive. This normally occurs when an enemy has been charged in the rear – as casualties come from the rear rank first, this would in theory leave the attackers stranded from their foe. Clearly this is wrong, just as warriors on a real battlefield would push on to continue the fight, and would not stop fighting if the enemy was standing a few paces away, so must warriors on the miniature battlefield.

Whenever a unit becomes stranded in this manner, the winning unit is immediately nudged (by as small an amount as possible) to bring it back into contact with the foe. This move cannot be used to alter the facing the attacker is in base contact with, nor is it an opportunity to change the attacker's formation or charge a unit not engaged in the fight. If the winning unit cannot be moved in this manner, then the losing unit is moved instead.

=== NO MORE FOES

In multiple combats it can sometimes happen that at the end of a round of close combat some units are no longer engaged with any enemy unit (normally because the unit they were engaged with has been completely destroyed). Such units are out of combat for all purposes and can move normally from then on. Any combat result points that unit would have added to the fight for wounds inflicted are still counted for the fight's overall combat resolution, but other bonuses are not. Note that such a unit cannot cancel out Steadfast in an enemy, nor add their Unit Strength towards the total Unit Strength of the units involved in the combat.

= PANIC

=== PANIC TESTS

A Panic test is simply a Psychology test. If the test is passed, everything is fine, but if the test is failed the unit will immediately flee as described further down.

Note that a unit only needs to take one Panic test in each phase (Movement, Magic, Shooting and Close Combat) even if there are multiple reasons to take Panic tests. Some Panic tests are taken immediately, and in larger games you will find it helpful to mark units that have already taken Panic tests, in order that you do not end up mistakenly taking another as the phase goes on.

If two or more units from the same army have to take Panic tests at the same time, the controlling player chooses the order in which tests are made.

It is worth noting however that there are three circumstances under which units are not forced to take Panic tests:

- A unit does not take Panic tests if it is in close combat.

- A unit does not take a Panic test if that unit is already fleeing.

- A unit does not take a Panic test if it has already passed one earlier in the phase.

Assuming a unit is not subject to the circumstances described above, the most common circumstances under which it must take a Panic test are:

#namecost("HEAVY CASUALTIES", "")

*A unit must take a Panic test immediately if it loses 25% or more of the Unit Strength with which it started the phase.*

This test will most commonly be taken as a result of shooting attacks or damage caused by enemy spells, but can also be triggered by other factors that cause casualties, such as miscasts, misfires, Dangerous Terrain tests or other special rules. Rather than having a series of very specific triggers for a Panic test, we use this as a 'catch-all' to cover units that suffer high casualties for any reason.

If a unit fails its charge and suffers Heavy Casualties from a Stand & Shoot reaction, it must take a Panic test after completing its Movement.

#namecost("NEARBY FRIEND ANNIHILATED", "")

*If a unit that started the phase with Unit Strength 10 or more is destroyed for any reason, all friendly units within 6" must immediately test for panic.*

This covers situations such as when a unit is wiped out by missile fire, magic, close combat, pursuit or indeed any other occurrence. Leave the annihilated unit in place until the tests are taken in order to give a point to measure from.

#namecost("NEARBY FRIEND BREAKS", "")

*If a unit that started the phase with Unit Strength 10 or more breaks from close combat, all friendly units within 6" must immediately test for panic.*

Measure from the unit's position before it makes any flee move.

#namecost("FLED THROUGH", "")

*A unit must immediately test for panic if fleeing friends with Unit Strength 10 or more move through it.*

Resolve the movement of the fleeing friends before taking and resolving the Panic test.

This is the most destructive form of panic, as one unit can panic and flee through another unit, which in turn might panic and flee through a further unit, and so on until your battleline is reduced to tatters.

=== DIRECTION OF FLIGHT

If a unit fails a Panic test:

- *Brought about by heavy casualties.* Pivot the unit on the spot (ignoring other units) so that it is fleeing directly away from the unit/terrain that caused the most casualties in that phase – it then flees as normal. If there is nothing to flee from (for example, the damage caused by a miscast from a Wizard in the unit). Pivot the unit on the spot (ignoring other units) so that it is facing directly away from the closest enemy unit.
- *Brought about by any other reason.* Pivot the unit on the spot (ignoring other units) so that it is facing directly away from the closest enemy unit, and then flees as normal.

Providing that the panicked unit doesn't carry itself off the board with its first flee move, you'll have a chance to rally it in later turns.

#diagram("/assets/figures/rulebook/img-0527.jpg", 1.0)

#note[_The middle blue unit has been destroyed in close combat. All friendly units within 6" must immediately test for Panic — the destroyed unit is left in place until the tests are made to ensure an accurate measurement._]

= SPECIAL RULES

Unless stated otherwise, a model does not have a special rule. Most special rules are given to a model by the relevant entry in its Warhammer Armies book. In addition, a model's attacks can gain special rules because of the equipment it is using. Similarly, a model might get special rules as the result of a spell that has been cast upon it or perhaps even as the result of it being in a particular type of terrain. Where this is the case, the rule that governs the equipment, spell or terrain feature in question will make this clear.

Most of the more commonly used special rules in Warhammer are listed here, but many troop types have their own unique abilities laid out in their Warhammer Armies book. Certain special rules partly consist of other special rules, all mentioned in the following pages.

Unless otherwise noted, the effects of different special rules are cumulative. However, unless otherwise stated, a model gains no additional benefit from having the same special rule multiple times. This also applies to unique special rules in the various Warhammer Armies books that might contain special rules that are normally cumulative.

Some special rules have an effect at the beginning of the battle, or before the game starts. These effects take place after both armies are deployed and any Deployment special rules have occurred but before the roll for first turn.

Some special rules, especially in the Warhammer Armies books, will affect models of a certain type (typically listed after each unit's troop type). Note that special rules and spells such as this only ever affect friendly units from their own army, and will not affect enemy or allied units that happen to be in range.

Eventually you are likely to come upon situations where two opposing special rules are in play. In these cases, the two special rules will simply cancel each other out either partially or completely, and neither will have an effect.

=== ALWAYS STRIKES FIRST

Models with this special rule always strike first in close combat, regardless of Initiative. If a model with this rule is fighting an enemy with the same ability, the model with the higher Initiative will strike first.

In addition, if the model's Initiative is higher than their enemy's when it is their turn to attack, they can re-roll failed To Hit rolls when striking in close combat.

=== ALWAYS STRIKES LAST

A model with this special rule always strikes last in close combat, regardless of Initiative. If a model with this rule is fighting an enemy with the same ability, the model with the higher Initiative will strike first. If a model has both this rule and Always Strikes First, the two cancel out and neither applies so use the model's Initiative.

In addition, if the model's Initiative is lower than their enemy's when it is their turn to attack, they must re-roll successful To Hit rolls when striking in close combat.

=== ANIMATED CONSTRUCT

Animated Constructs have the Unbreakable special rule (explained later in this chapter). However, they may not march.

=== ARMOUR PIERCING

Wounds caused by a model with this special rule (or who is attacking with a weapon that has this special rule) inflict a further negative armour save modifier as indicated by the number in the brackets, in addition to those for Strength. Unless specified, Armour Piercing only applies to close combat attacks. This rule is cumulative with other sources of Armour Piercing.

If a model has a weapon with the Armour Piercing special rule, only attacks made or shots fired with the weapon are Armour Piercing.

=== AQUATIC

Models with the Aquatic special rule can move within any area of water on the battlefield, including rivers and even deep water that players may have deemed impassable to other models, as if it were open ground. However, they are still subject to any special effects that specific terrain may have (e.g. they are not exempt from the dangers of marshes).

In addition, models with this special rule can march, claim rank bonus and be steadfast when in water. Furthermore, if every model in a unit has the Aquatic special rule, and the majority of the unit is within water terrain, enemies shooting at that unit suffer an additional \-1 To Hit penalty.

=== BREATH WEAPONS

A model with a Breath Weapon can use it to make a special attack once per shooting or close combat phase. A model with two or more different Breath Weapons must choose which one they want to use. The form that this special attack takes depends on whether or not the creature is in close combat. In the event that a model has more than one Breath Weapon attack, it is permitted to attempt to use only one in a single turn.

However, after each Breath Weapon has been used the first time, roll a D6 before attempting to use it again in later rounds. On 4+, it may be used as normal. On a 1- 3, the model is literally out of breath, and cannot use its Breath Weapon this round. It may choose to attack normally in close combat instead. This does not apply to temporary Breath Weapons from magic items or spells.

Note that Breath Weapons are not physical attacks, and certain models may be Immune to the effects of some Breath Weapons.

#namecost("Breath Weapon Shooting Attack", "")

Provided the model is not in close combat, it can use its Breath Weapon during its Shooting phase. A Breath Weapon shooting attack can be made even if the model marched or reformed during the same turn, but it cannot be used as a Stand and Shoot charge reaction.

To perform the attack, place the flame template so that it lies entirely within the model's forward arc, with the narrow end touching the model's base, and so that it is not touching any friendly units or enemy units that are in close combat. All models that are even partially under the template are automatically hit, following the normal rules for the flame template. The Strength and any special effects of the creature's Breath Weapon will be covered in its rules.

#diagram("/assets/figures/rulebook/img-0530.jpg", 0.463)

#note[_The teardrop-shaped template is placed with the thin end at the model's base and the wide end over the target unit. In this example 9 models are under the template and so are hit automatically._]

#namecost("Breath Weapon Close Combat Attack", "")

If the model with this special rule is in close combat, it can use the Breath Weapon instead of using its normal attacks. A model that makes a breath weapon attack in this way inflicts 2D6 automatic hits (resolved like shooting) on a single enemy unit in base contact – if there is more than one enemy unit in base contact with the model, the controlling player chooses which enemy unit suffers the hits. As with breath weapon attacks made in the Shooting phase, the Strength and any special effects of the creature's Breath Weapon will be covered in its rules, any other special rules do not apply.

=== COLD-BLOODED

Whenever a unit where the majority of the models have this special rule takes a Psychology or Break test, it rolls an additional dice and discards the highest result.

=== CUMBERSOME

Models or weapons with the Cumbersome special rule cannot be used to Stand and Shoot.

=== DEVASTATING CHARGE

Models with this special rule have +1 Attack during a turn in which they charge into combat.

=== DODGE

Models with this rule gain an invulnerable save against attacks in their front arc (including templates, Stomps and Impact Hits) as indicated in the brackets. This is cumulative with other sources of Dodge. This cannot be used against Magical Attacks that Hit automatically (such as spells or certain special rules), or that have the Always Strikes First special rule, nor can it be used if the model is subject to the Always Strikes Last special rule.

=== DISCIPLINED

Whenever a unit where the majority of the models have this special rule takes a Leadership test that is not a Psychology or Break test, it rolls an additional dice and discards the highest result.

=== ETHEREAL

Ethereal creatures treat all terrain as Open Terrain for the purposes of movement. They may not finish their movement inside Impassable Terrain. They are also never slowed by any special rule, spell or item that would otherwise reduce their movement or stop them from moving completely.

Models with this rule have the Magical Attacks, Magical Ward (3+) and Unstable special rules (described later in this chapter).

Characters that are not themselves Ethereal are not permitted to join units that are (even if they become temporarily Ethereal for some reason).

=== EXPENDABLE

Models with this special rule do not cause Panic to friendly units that are not Expendable themselves. Characters may not join a unit with this rule, unless specified. Likewise, an Expendable character may not join a unit that is not Expendable.

For every Core unit with the Expendable special rule in your army, you are required to include at least one other Core Unit without the Expendable rule. For more information on this, see the Choosing Your Army chapter.

=== FEAR

A unit containing one or more Fear-causing models gains +1 to its Combat Resolution score. If the Unit Strength of all Fear-causing models is double or more that of the total Unit Strength of all enemy units in base contact, the Combat Resolution score is increased by +2. Note that the bonus from Fear is otherwise not cumulative for having multiple units with the Fear special rule involved in the same combat.

If a model has the Fear special rule from two or more different sources (such as a combination of different special rules, spells or magic items), it instead gains the Terror special rule (described later).

If the majority of the models in a unit cause Fear, they also gain the Immunity (Fear) special rule (described later), and thus the Combat Resolution bonus of their Fear-causing enemies is ignored for that unit.

=== FIGHT IN EXTRA RANKS

If a unit has this special rule then supporting attacks can be made by one more rank than normal for each number indicated in the bracket. This rule is cumulative with other sources of Fight in Extra Ranks.

=== FLAMING ATTACKS

Models with Flaming Attacks cause Fear in War Beasts, Cavalry, Chariots and Flammable creatures. Any Panic test taken by any of these troop types from a Flaming Attack suffer \-1 to their Leadership when taking the test.

Unless otherwise stated, a model with this special rule has both Flaming shooting and close combat attacks (though any spells cast by the model or special attacks are unaffected).

=== FLAMMABLE

If a model with the Flammable rule is attacked with a Flaming Attack, all failed To Wound rolls made by the attackers may be re-rolled.

=== FRENZY

Frenzied troops gain +1 Attack and the Immunity (Psychology) special rule (explained later).

If a model has the Frenzy special rule from two or more different sources (such as a combination of different special rules, spells or magic items), it gains an additional +1 Attack. However, they must always pursue, with no chance to restrain.

#namecost("Berserk Rage", "")

A unit that includes one or more Frenzied models can never choose Flee as a Charge Reaction, and must pass a Leadership test if it wishes to choose a charge reaction other than Counter-charge. If this test is failed, the unit must declare a Counter-charge instead as per the normal rules for it.

If, during the Charge sub-phase, a unit that includes one or more Frenzied models does not declare a charge, then it must do so unless a Leadership test is passed. If the Leadership test is failed, the Frenzied unit must declare a charge against the nearest viable enemy.

A unit that includes one or more Frenzied models that attempts to restrain pursuit if it beats a foe in close combat suffer a Leadership modifier equal to the result they won the combat against that unit by. For example, if the Frenzied unit won the combat by 3 and the enemy unit flees, the Frenzied unit suffers \-3 to its Leadership if it attempts to restrain from pursuing. Note that in case the enemy unit was completely wiped out, the Frenzied unit can choose whether to overrun or not as normal.

#namecost("Losing Frenzy", "")

Unlike other special rules, Frenzy can be lost as the game goes on. Models retain their Frenzy for the entire game unless beaten in combat, at which point the Frenzy (together with all associated rules) is lost.

=== HATRED

A model striking a hated foe in close combat re-rolls all failed To Hit rolls during the first round of combat. Sometimes a model will only Hate a specific foe. Where this is the case, the type of foe will be expressed in the special rule. In the case an enemy hates a certain faction, they have the Hatred rule against all models from that army book.

In addition, model must also re-roll successful rolls to restrain from pursuit against enemies they have Hatred against. If a unit would gain Hatred in a round of close combat after the first for any reason, treat this as the first round of combat for that purpose.

If a model has the Hatred special rule from two or more different sources (such as a combination of different special rules, spells or magic items), it may re-roll failed To Hit rolls in every turn against that foe, not just the first. However, they must always pursue, with no chance to restrain.

=== HIDDEN

Hidden models can choose to deploy ‘hidden’ within another friendly ranked unit, either the unit it belongs to (determined in each army list) or in other separate units (the army book in question will state which units) – make a note of which unit is concealing the hidden model(s).

A hidden model is not placed on the table during deployment, but is revealed later during the game. If the concealing unit is wiped out or flees from the battlefield before the hidden model is revealed, the hidden model counts as a casualty. There is no other way a hidden model can be harmed before they are revealed.

Hidden models may be revealed at the beginning of any of your Movement phases, or at the start of any Close Combat phase. Declare that the unit contains a hidden model and place the model in the front rank of that unit, displacing models as you normally would if a character had joined the unit (see Characters and Units in the characters chapter).

A model with this special rule cannot be your Army General. Furthermore, other units can never use their Leadership value.

=== HOLD YOUR GROUND

A model with Hold Your Ground allows all friendly units within a distance equal to the number in the brackets to re-roll failed Panic and Break tests. This ability cannot be used if the model with Hold Your Ground is also fleeing.

This rule is cumulative with other sources of Hold Your Ground. If the model has a Line of Sight value of 4 or more, then the range of their Hold Your Ground rule is increased by 6.

=== ICE ATTACKS

Models with the Ice Attacks special rule cause all enemy models in base contact with them to be subject to the Always Strikes Last special rule. Spells or missile attacks that are Ice Attacks cause the enemy unit to be subject to the Always Strikes Last special rule until the start of your next turn if they are successfully cast or Hit. Models with Ice Attacks have Immunity (Ice Attacks) (see Immunity special rule).

Unless otherwise stated, a model with this special rule has Ice Attacks for both shooting and close combat, (though any spells cast by the model or special attacks are unaffected).

=== IGNORES ARMOUR SAVES

Wounds caused by a model with this special rule (or who is attacking with a weapon that has this special rule) ignore all armour saves regardless of value. Unless specified, Ignores Armour Saves only applies to close combat attacks.

=== IMMUNITY

Models with the Immunity rule ignore the effects of the rule(s) in the brackets. Examples include Killing Blow, Poisoned Attacks, Flaming Attacks, Ice Attacks, Lightning Attacks and so on. Note that the model only ignores the effects of the rule itself unless the attack is also listed as being non-physical. The physical attack still causes damage as normal.

Immunity can also include Panic, Fear and Terror. If the majority of the models in a unit have the Immunity (Panic, Fear or Terror) rule, the unit ignores the effects of Panic, Fear or Terror and any such tests it would otherwise had to take.

Models that are Immune to all three above effects have the Immunity (Psychology) rule. This also includes automatically passing any Psychology tests they might need to take (such as many spell effects or special rules that would otherwise force a unit to take a Psychology test).

=== IMPACT HITS

The number of Impact Hits caused is shown in brackets after the special rule. If a unit contains more than one model that inflicts a random amount of Impact Hits (such as D6), always roll separately for each model.

Impact Hits are only made on the turn the model makes a successful charge into close combat, and only against the unit the model has charged. Impact Hits are resolved at the very beginning of the close combat, before challenges are issued and attacks of any other kind are made. They hit a unit in base contact and are randomised as Automatic Hits. If the model is in base contact with more than one unit, distribute the Impact Hits between them as evenly as possible. If the model with Impact Hits is not in base contact with the enemy, no Impact Hits are inflicted.

Impact Hits roll to wound using the Strength of the model making the Impact Hits. Any armour saves taken are done using the close combat value of the armour.

Unless specified, any special rules or bonuses that apply to the model’s normal attacks do not apply to its Impact Hits.

=== INDEPENDENT

A character with this special rule cannot join a unit without this special rule. A unit with this special rule cannot be joined by a character without this special rule.

In addition, they may never use the Inspiring Presence or Hold Your Ground special rules. Note that Characters, ridden models and Mixed Units that still have their Handlers ignore this special rule, unless specified.

=== INSPIRING PRESENCE

A model with Inspiring Presence allows all friendly units within a distance equal to the number in the brackets to use their Leadership instead of their own, unless specified (such as having to use their own unmodified Leadership). This rule cannot be used if the model with Inspiring Presence is also fleeing.

This rule is cumulative with other sources of Inspiring Presence. If the model has a Line of Sight value of 4 or more, then the range of their Inspiring Presence rule is increased by 6.

If a unit taking a Leadership test has a modifier to its Leadership, this modifier still applies if the unit uses the Inspiring Presence.

If a unit is Steadfast, it may use the Leadership of the model for Break tests if it is higher than their own Leadership after applying all negative modifiers from combat resolution. Otherwise, they will use their own Leadership.

#note[_Example: a Steadfast unit with Leadership 7 has lost the combat by 1 but is within the Inspiring Presence range of the Army General who has Leadership 9. In this case, the unit can use the Army General's Leadership value and will test on Leadership 8. However, if they instead had lost the combat by 3, the unit will test on their own Leadership of 7, as this would be higher than using the Army General's Leadership value of 6 after combat resolution modifiers._]

=== KILLING BLOW

If a model with the Killing Blow special rule rolls a 6 To Wound, they automatically slay their opponent – regardless of Toughness or the number of Wounds on the victim's profile. Armour saves and Regeneration (explained later) saves cannot be taken against a Killing Blow. Other invulnerable saves may be taken as normal.

Killing Blow is only effective against Infantry, Cavalry and War Beasts. Against other troop types, a successful Killing Blow only inflicts one Wound which Ignores Armour Saves and Regeneration.

Note that if a Killing Blow attack wounds automatically, then the Killing Blow special rule does not come into play. Unless otherwise specified, Killing Blow only applies to close combat attacks.

For the purposes of combat resolution, successful Killing Blows score the same amount of Wounds as the slain model had remaining until the point of the Killing Blow was inflicted.

If a model has the Killing Blow special rule from two or more different sources (such as a combination of different special rules, spells or magic items), its effect will take place on the To Wound roll of a 5+ rather than a 6.

#namecost("Heroic Killing Blow", "")

Heroic Killing Blow functions exactly like a normal Killing Blow, except it works on any troop type except for Swarms. Models with Immunity (Killing Blow) treat Heroic Killing Blow as normal Killing Blow.

=== LIGHTNING ATTACKS

Lightning Attacks have the Ignores Armour Saves special rule against all armour types except Natural Armour (explained later).

Unless otherwise stated, a model with this special rule has both Lightning shooting and close combat attacks (though any spells cast by the model or special attacks are unaffected).

=== LOREMASTER

A Wizard with the Loremaster special rule knows all the available spells from their chosen Lore (limited by their Wizard level as normal). The lore in question is normally given in brackets as part of the Loremaster special rule. If a model knows spells from multiple Lores, then Loremaster only applies to one of the Lores normally available to them (player's choice).

=== MAGICAL ATTACKS

Models with this special rule inflict a \-1 penalty to Magical Wards. Unless otherwise stated, a model with this special rule has both Magical shooting and close combat attacks (though any special attacks are unaffected).

All attacks made by spells and magic items are Magical Attacks. Shots fired from magical items are also considered to be Magical Attacks, unless their description specifically states otherwise. Hits inflicted by rolls on the Miscast table are treated as Magical Attacks. Note that spells are never considered to be physical attacks.

=== MAGICAL WARD

Models with this rule gain an invulnerable save as indicated in the brackets.

=== MAGIC RESISTANCE

Enemy spells that target a unit containing one or more models with Magic Resistance suffer a casting penalty equal to the number as indicated in the brackets. So, Magic Resistance (1) would give a \-1 casting penalty, Magic Resistance (2) would give a \-2 casting penalty, and Magic Resistance (3) would give a \-3 casting penalty, and so on.

This casting penalty also applies to aura and area spells, if the model would be within the aura's range or under the area's effect when initially cast.

In addition, models with Magic resistance gain an invulnerable save against all spells based on the number in the brackets. So, Magic Resistance (1) would give a 6+ invulnerable save, Magic Resistance (2) would give a 5+ invulnerable save, and Magic Resistance (3) would give a 4+ invulnerable save, and so on. Note that Magic resistance does not offer protection against Miscasts.

Note that this special rule is not cumulative. If two or more models in a unit have this special rule, use the highest modifier.

=== MARCH & SHOOT

Models or weapons with this special rule can shoot even if they marched this turn.

=== MIGHTY BLOW

Models with this rule gain a Strength bonus to all their close combat attacks (including Impact Hits and Stomps) equal to the number in the brackets in the first round of close combat they are involved in. Note that any attack made with a weapon that gives Mighty Blow only applies to attacks made with the weapon itself. This rule is cumulative with other sources of Mighty Blow.

If a unit would gain Mighty Blow in a round of close combat after the first for any reason, treat this as the first round of combat for that purpose.

=== MIXED UNIT

A Mixed Unit often consist of two different troop types, with one or more handlers that drive the rest of the unit forward. The handler(s) must be deployed in the rear rank(s) of the unit, as centrally as possible. Mixed Units cannot be joined by characters, unless specified. If a character is allowed to join a Mixed Unit, they may choose if they want to be placed in the front or rear rank.

If a Mixed unit is required to take a characteristic test, this is done using the characteristics of the unit itself, not the handlers. The only exception is Leadership tests, which are taken using the unit’s highest Leadership value. When the models in a unit with the Mixed Unit special rule have different Movement allowances, the handlers' Movement value is ignored, unless they are the only models remaining. Any special rules or upgrades that the unit might have do not apply to the Handlers unless specified. Note that if the unit has the Expendable, Swiftstride or Vanguard special rules, this also applies to the Handlers.

As long as the unit (but not the handlers) have a Unit Strength of 5 or more, any missile hits are resolved against the unit itself. At less than Unit Strength 5, there is a chance that any handlers in the unit could be hit – the controlling player decides who is hit, but must allocate one hit on each model before they can add a second hit on a model; they must allocate two hits on each model before they can allocate a third, and so on. Hits from templates are resolved against the handlers as normal. In close combat, the handlers can only be attacked by models who are in base contact with them.

=== MOVE OR FIRE

A model or weapon with the Move or Fire special rule cannot fire a weapon or be fired (respectively) in the Shooting phase if the model moved earlier in the turn, including rallying, reforming and pivoting on the spot. This even applies if the model in question was forced to move as the result of a spell or other such compulsory action.

=== MULTIPLE SHOTS

A weapon with this special rule enables its wielder to fire several shots at a time, rather than a single shot. The number of shots the weapon can fire is normally given as part of its description in the brackets. Such weapons can either fire once without penalty, or as many times as indicated in their rules with a \-1 To Hit penalty (in addition to any other modifiers To Hit).

All models in the unit (excluding characters) must fire either single or Multiple Shots – the player cannot choose to fire single shots with some and Multiple Shots with others.

=== MULTIPLE WOUNDS

Each wound inflicted by an attack with the Multiple Wounds special rule (after saves) is multiplied into more than one wound (remember that a model cannot suffer more wounds than it has on its profile). The exact number of wounds caused will vary from model to model and weapon to weapon, but will normally be shown in brackets as part of the special rule. For example, Multiple Wounds (2) would mean that each unsaved wound would multiply to 2 wounds, whilst Multiple Wounds (D6) would mean that each unsaved wound would multiply to D6 wounds. If a model is granted two sets of Multiple Wounds (like D3 and D6), use only the highest possible set before rolling.

Where the number of Multiple Wounds is generated by a dice roll, roll a dice separately for each unsaved wound and use the total of all the dice rolled for the final number of wounds inflicted.

Unless otherwise specified, Multiple Wounds only apply to close combat attacks.

=== NATURAL ARMOUR

Models with this rule have an armour save value equal to the number in the brackets. Natural Armour can be combined with other armour as normal, including other sources of Natural Armour.

=== PARRY

Models with this rule gain an invulnerable save in close combat as indicated in the brackets. This is cumulative with other sources of Parry. It cannot be used against attacks made against the model's flank or rear, nor can it be used against attacks that Hit automatically, attacks that are made at +3 Strength over the model's own Strength value.

=== POISONED ATTACKS

A model with the Poisoned Attacks special rule gets a +1 modifier to its To Wound rolls. Armour saves are modified by the Strength of the attack as normal.

Unless otherwise stated, a model with this special rule has both Poisoned shooting and close combat attacks (though any spells cast by the model or special attacks are unaffected).

If a model has the Poisoned Attacks special rule from two or more different sources (such as a combination of different special rules, spells or magic items), it may also re-roll failed To Wound rolls.

=== PONDEROUS

Weapons with this rule suffer an additional \-1 To Hit penalty if they move and shoot in the same turn, and when choosing Stand & Shoot as a charge reaction.

=== QUICK SHOT

Models or weapons with this special rule ignore penalties for Moving & Shooting (unless they also March). In addition, they can always Stand & Shoot or Fire & Flee (see Formation Special rules), even if that enemy would normally be too close for such a charge reaction to be declared.

Furthermore, Quick Shot may be used once per turn when declaring a charge, immediately after rolling for your charge distance. If the charging unit has enough Movement to enter the maximum range of its missile weapons, resolve the shooting attacks for each weapon as if the charging unit had just entered that weapon’s range. If the enemy unit chose to Stand & Shoot or Fire & Flee, both units will fire at the same time. Any shots fired in this manner suffer a \-1 To Hit penalty, but ignore penalties to long range. This may cause a Panic test following the rules for Heavy Casualties as normal.

=== RANDOM ATTACKS

Models with the Random Attacks special rule do not have a normal number for their Attacks characteristic, but rather a dice roll, such as D3, D6 or D6+1. Each time a model with this special rule comes to strike blows, roll the indicated dice, adding any modifiers shown, to determine the number of attacks that the model will make, then roll to hit as normal. If a unit contains more than one model with this special rule, always roll separately for each model.

=== RANDOM MOVEMENT

Models with the Random Movement special rule do not have a normal Movement characteristic, but rather a dice roll, such as D6, 2D6 or 3D6 (as indicated in the brackets). This is the distance they use for all their movement (regardless of other special rules). Note that certain Random Movement rolls can result in the model having a Movement value higher than 10 – this is an exception to the usual maximum.

Models with Random Movement cannot declare charges, can only choose Hold as a charge reaction, and must always move in the Compulsory Moves sub- phase. When the model moves, first pivot it about its centre to face the direction in which you wish it to travel. Then, roll the dice shown in the Random Movement brackets. Finally, move the model directly forwards a number of inches equal to the total rolled by the dice. No other pivots can be made.

There's a chance that the model's peculiar movement will cause it to come into contact with an enemy, so measure the distance in a straight line before the model is moved. If the move is found to take the unit’s front arc into contact with an enemy, then it counts as charging, and this is resolved using the normal rules for charges and using the distance rolled as its charge range. Charge reactions cannot be declared against enemies with the Random Movement special rule.

If the random move brings the unit to within 1" of a friendly unit or Impassable Terrain, it stops immediately and cannot move further during that Movement phase.

A Random Move counts as a ‘normal’ move for triggering a Dangerous Terrain test, unless the model is making a charge, pursuit or flee move, in which case it counts as a move of the appropriate type.

A character with this special rule cannot join a unit without this special rule. A unit with this special rule cannot be joined by a character without this special rule. If a character in the unit has a different Random Movement value, use the slowest for the entire unit.

=== RAPID FIRE

Models or weapons with this special rule do not suffer the usual \-1 To Hit penalty for firing Multiple Shots.

=== REGENERATION

A model with the Regeneration special rule gains an invulnerable save (indicated by the number in the brackets). This is cumulative with other sources of Regeneration. Regeneration may not be used against Flaming Attacks, successful Killing Blows (including Heroic Killing Blow) or wounds caused due the unit being Unstable.

=== REQUIRES TWO HANDS

If a weapon has this rule, it is not possible for a model to use a shield or buckler alongside it in close combat (although a shield can still be used against wounds caused by shooting or magic). In addition, missile weapons with this special rule cannot use Quick Shot when charging.

=== SNIPER

A model with the Sniper special rule can make a special Sniper shot instead of shooting normally (though it can be used in combination with the Multiple Shots rule as normal). A Sniper shot suffers an additional \-1 To Hit penalty, in addition to any other modifiers, but can be aimed with great precision. Unless making a Stand and Shoot Charge Reaction, a model making a Sniper shot can shoot at a different target from the one chosen by their unit. A hit from a Sniper shot is not distributed in the same manner as other shooting attacks. The Sniper can shoot at any model they can see, including characters within a unit. "Look Out, Sir!" cannot be used. Sniper cannot be used when firing weapons that use a template.

=== STOMP

A model with this special rule can make a Stomp in addition to its other close combat attacks (including Breath Weapons). A Stomp has the Always Strikes Last special rule and inflicts a number of automatic hits as indicated in the brackets. These are resolved at the model's Strength against a single enemy unit that consists of models with a Line of Sight value of 1 or less. If the model is a Monster, it may also Stomp models with a Line of Sight value of 3 or less.

Unless specified, any special rules or bonuses that apply to the model’s normal attacks do not apply to its Stomp.

=== STRIDER

Models with the Strider special rule are rare – normally, they will have a subset of Strider, such as Hill, Forest, Marshland or River Strider and the rule only applies in terrain of the specified type. Models with the Strider rule treat that piece of terrain as Open Ground, meaning they ignore any combat and movement penalties or Dangerous Terrain tests otherwise caused by it.

=== STUBBORN

A unit is considered Stubborn if the majority of the models in a unit have this special rule. A Stubborn unit is always Steadfast, whether or not they have more ranks than their enemy or are disrupted.

If a model has the Stubborn special rule from two or more different sources (such as a combination of different special rules, spells or magic items), it may also re-roll failed Break tests.

=== STUPIDITY

Provided that they are not engaged in close combat, a unit that contains one or more models with the Stupidity special rule must roll a D6 at the start of its Compulsory Movement sub-phase and consult the table below to see what effect it has until the start of your next turn:

#chart((("D6", "Result"), ("1", "Me Head Hurts: The model and any unit
they are with must move directly forwards
using the Random Movement (D6) special
rule, can only choose Hold as a charge
reaction and cannot use combat reform. In
addition, the model gains the Immunity
(Psychology) special rule, may not cast spells
or channel dice, shoot or use any other
optional special rules. Note that in case only
a mount has Stupidity, the rider is not
affected by the penalties to shooting, casting
or channelling."), ("2-3", "Unfocused: The model suffers a -1 penalty to
its Weapon Skill, Ballistic Skill, Leadership,
casting and dispelling, and only channel dice
on the roll of a 6. This does not affect any
riders if only the mount has Stupidity."), ("4-6", "Clear-headed: The model acts as normal.")))

=== SWIFTSTRIDE

When charging, fleeing and pursuing, units entirely made of models with the Swiftstride special rule may re-roll 1's when determining the result of the distance they move.

=== TERROR

Models that cause Terror also cause Fear. In addition, the following rules apply. Fear-causing models or models with Immunity (Fear) treat Terror-causing monsters as causing Fear, rather than Terror – this is an exception to the rule that makes Fear-causing creatures immune to Fear. Terror-causing models have the Immunity (Fear/Terror) special rule.

#namecost("Run for Your Lives!", "")

If a Terror-causing creature declares a charge, the target unit must immediately take a Psychology test. If the test is passed, all is well and the unit can declare charge reactions normally. If the test is failed, the unit must make a Flee! charge reaction. Note that, if the target unit is not allowed to take any charge reaction (if, for example, the Terror-causing unit charged as a result of a pursuit or a random move), then the target does not take this test.

If a unit wishes to declare a charge against an enemy that causes Terror, it must pass a Psychology test first. If the test is failed, it may not declare the charge against the Terror-causing unit, but may choose to declare a charge against another unit following the rules for Redirecting a Charge, or choose to not declare a charge at all.

=== UNBREAKABLE

Models with this special rule have the Immunity (Psychology) special rule and pass Break tests automatically. However, they may never choose Flee as a Charge Reaction.

Characters that are Unbreakable may only join units that are also Unbreakable, and characters that are not Unbreakable are not permitted to join units that are Unbreakable (even if a character is Unstable – explained below – or was to become temporarily Unbreakable for some reason).

=== UNSTABLE

Unstable units are Unbreakable, and suffer one extra Wound for every point they have lost the round of combat by, with no saves of any kind permitted against these wounds. If an Unstable unit would normally be eligible to be Steadfast, they instead suffer 1 less Wound than they would normally do.

If an Unstable unit also contains Unstable characters, the controlling player first allocates wounds to the unit, then divides any remaining wounds (if any) as equally as possible amongst the characters.

=== VOLLEY FIRE

Weapons with this rule allow a unit to fire with all ranks that are within range in the Shooting Phase, rather than only the first two ranks.

A unit cannot use Volley Fire if the target is within the weapon’s effective range, if the unit moved earlier in the turn, or when making a Stand and Shoot charge reaction.

=== WEAPON TEAM

If a model with this special rule is hit by a missile attack and is within 3" of a friendly unit consisting of five or more rank and file models of the same troop type within 3", roll a D6. On a roll of 4+, the hit is transferred to a model in the friendly unit (if there is more than one eligible unit within 3", the controlling player can decide which). Otherwise, the hit is resolved against the Weapon Team as normal.

== DEPLOYMENT SPECIAL

== RULES

=== AMBUSHERS

Before starting deployment, a unit with the Ambushers special rule can choose to not deploy at the start of the battle. Instead, at the start of the Remaining Moves sub-phase of Turn 2 the controlling player rolls a D6 for each of their units of Ambushers. On a 3+, the unit arrives. If the unit does not arrive on Turn 2, roll another D6 at the start of the Remaining Moves sub- phase of Turn 3. On a 2+, the unit arrives. If the unit does not arrive on Turn 3, it will automatically arrive at the start of the Remaining Moves sub-phase of turn 4.

Arriving Ambushers enter the battlefield from any point on any battlefield edge, and move on using the rules for reinforcements.

Note that a Character may only join a unit deploying with the Ambushers special rule if they also have this special rule.

In addition, for every Core unit that deploys as Ambushers in your army, you are required to include at least one other Core Unit that is not Expendable and that does not deploy using the Ambushers rule (for more information, see the Choosing Your Army chapter).

=== SCOUTS

Before starting deployment, a unit with the Scouts special rule can choose to not deploy at the start of the battle. Scouts are set up after all other units from both armies have been deployed, and do not count toward determining who finished deploying their army first. They can be set up either in their controlling player's deployment zone as normal, or anywhere on the battlefield. However, this cannot be used to deploy a unit within 12" of the enemy. Units that deploy this way cannot declare a charge in the first turn if their army goes first.

Note that a character may only join a unit deploying with the Scouts special rule if they also have the same rule.

If both players' armies contain Scouts, players should roll off. The players then alternate deploying their scouting units one at a time, starting with the player who won the roll-off.

=== VANGUARD

When starting deployment, all units that choose to Vanguard must be deployed first. The players take it in turns to place their vanguards until they are finished. After this, all other units may be deployed as normal.

Models with this special rule may deploy up to a distance equal to their Movement characteristic (or 2D6" in case they have Random Movement) beyond their deployment zone. However, this cannot be used to deploy a unit within 12" of the enemy. Units that deploy this way cannot declare a charge in the first turn if their army goes first.

Note that a character may only join a unit deploying with the Vanguard special rule if they also have the same rule.

== FORMATION SPECIAL

== RULES

=== FAST CAVALRY

Fast Cavalry have the following rules:

#namecost("Vanguard", "")

Fast Cavalry automatically have the Vanguard deployment special rule.

#namecost("Swift Manoeuvre", "")

Fast Cavalry may turn without losing any movement, redress the ranks for a quarter of their movement and reform for half their movement. In addition, they may perform two manoeuvres during their move (even while marching), and still shoot after reforming.

#namecost("Fire & Flee", "")

A unit of Fast Cavalry armed with missile weapons that chooses Flee as a Charge Reaction can choose to fire their weapons first (unless they are within the enemy's minimum charge range or Ponderous). If it chooses to do so, the unit will first fire upon the target. After this, the unit makes a flee move.

Any shots fired in this manner suffer a \-1 To Hit penalty. This may cause a Panic test following the rules for Heavy Casualties as normal.

#namecost("Feigned Flight", "")

A unit of Fast Cavalry that chooses Flee or Fire & Flee as a charge reaction does not cause Panic from fleeing through friendly units and may re-roll failed Rally tests in its next Compulsory Movement Phase (unless it is forced to Flee again from another source). In addition, it is then also free to move during the remaining moves part of the Movement phase. The unit is also free to shoot as normal (but always counts as having moved).

#namecost("Characters", "")

A Character that joins a unit of Fast Cavalry gains the Fast Cavalry special rule as long as they stay with the unit. Characters may only join Fast Cavalry with the same troop type (explained in the troop types chapter) as them.

#namecost("Armour Saves", "")

Units containing one or more models with an unmodified close combat armour save better than 5+ cannot use Fire & Flee or Feigned Flight. If the armour save is better than 4+, the unit cannot use the Fast Cavalry rule at all.

=== SKIRMISHERS

Skirmishers have the following rules:

#namecost("Loose Formation", "")

Skirmishers are deployed in a 'loose' formation, where the models are not placed in base contact, but are positioned roughly 1/2" apart. The models in the unit must still face the same direction and the unit will still have a front, two flanks and a rear.

All shots aimed at a unit of two or more Skirmisher models with an individual Unit Strength of 2 or less suffer an additional \-1 To Hit penalty.

#diagram("/assets/figures/rulebook/img-0541.jpg", 0.463)
#namecost("Skirmishers & Combat", "")

If skirmishers declare a charge (or a charge reaction that does not involve fleeing) they tighten their loose formation into a 'normal' formation after the charge distance is rolled and the chargers are moved. This happens 'for free' at the moment both units move into base contact. The unit immediately forms up in base contact around the centremost model in the front rank (the Skirmishers' controlling player can choose which if the front rank has an even number of models) that is also in base contact with the enemy.

The number of ranks, files and the formation's facing do not alter as the Skirmishers tighten up – all that happens is that models that were previously spaced out are now in base contact with one another. This has the effect of rendering the Skirmishers' loose formation into a regular shape so that other units can fight them in the normal way.

If the Skirmishers are not in base contact with an enemy in the Remaining Moves sub-phase, the controlling player must move them apart so that they readopt their loose formation.

Skirmishers gain no bonus from their ranks (such as rank bonus or Steadfast) in the first round of close combat.

#diagram("/assets/figures/rulebook/img-0544.jpg", 0.463)

#note[_1\. Skirmishers form up to make or receive a charge as soon as they get into base contact with the enemy. 2. After ranking up, resolve the combat as normal._]

#namecost("Vanguard", "")

Skirmishers have the Vanguard deployment special rule.

#namecost("Swift Manoeuvre", "")

Skirmishers may turn without losing any movement, redress the ranks for a quarter of their movement and reform for half their movement. In addition, they may perform two manoeuvres during their move (even while marching), and still shoot after reforming.

#namecost("Fire & Flee", "")

A unit of Skirmishers armed with missile weapons that chooses Flee as a Charge Reaction can choose to fire their weapons first (unless they are within the enemy's minimum charge range or Ponderous). If it chooses to do so, the unit will first fire upon the target. After this, the unit makes a flee move.

Any shots fired in this manner suffer a \-1 To Hit penalty. This may cause a Panic test following the rules for Heavy Casualties as normal.

#namecost("Feigned Flight", "")

A unit of Skirmishers that chooses Flee or Fire & Flee as a charge reaction does not cause Panic from fleeing through friendly units and may re-roll failed Rally tests in its next Compulsory Movement Phase (unless it is forced to Flee again from another source). In addition, it is then also free to move during the remaining moves part of the Movement phase. The unit is also free to shoot as normal (but always counts as having moved).

#namecost("Characters", "")

A Character model that joins a unit of Skirmishers gains the Skirmishers special rule as long as they stay with the unit. Characters may only join Skirmishers with the same troop type (explained in the troop types chapter) as them.

#namecost("Armour Saves", "")

Units containing one or more models with an unmodified close combat armour save better than 5+ cannot use Fire & Flee or Feigned Flight. If the armour save is better than 4+, the unit cannot use the Skirmishers rule at all.

=== FLY

Units made up entirely of models that can Fly can choose to either use their normal Movement, or instead choose to Fly (including when using Vanguard). The distance the model can fly is listed in the brackets. Any modifiers to the model's Movement also affects its Fly move.

A unit that flies can move over other units and terrain as it does so, treating the entire move as taking place over open ground. It may not finish the move on top of another unit or in Impassable Terrain. Models that Fly can make a flying charge over intervening units and terrain as long as they can draw Line of Sight to their target as normal. Flying units may march as normal.

In addition, flying units containing two or more models follow the following rules for Skirmishers: Loose Formation, Skirmishers & Combat, Swift Manoeuvre.

= TROOP TYPES

In most cases it will be fairly obvious which troop type category a model falls into, but as troop type is essentially an extension of the characteristic profile, you'll find that information in the relevant Warhammer Armies book. Most units in Warhammer conform to one of the following types.

#namecost("CHARACTERS", "")

In addition to their troop type, some models might also be noted as being characters. We're not going to worry about characters here, however – characters are such a powerful and important part of Warhammer that they have a chapter all to themselves later in the book.

#namecost("COMPLETE RANKS", "")

There are multiple instances where the rules will mention a "complete rank of models". What constitutes as a complete rank of models varies for each troop type, and is specified for each of them in this chapter. Note that if the unit has an incomplete rear rank, but that rear rank still has the minimum number of required models according to its troop type, that rank still counts as being complete.

#namecost("UNIT STRENGTH & LINE OF SIGHT", "")

The values listed in this chapter are the default for each troop type. However, there may be some exceptions to this in the various Warhammer Armies book.

#namecost("MODELS AND BASE SIZES", "")

Each model should be mounted on a base to determine the width and depth of the unit. Each troop type has different generally approved base sizes, which are listed in each army book. War machines however, may choose to either be mounted on a base, or be placed on the board as is.

In some cases, you might be using a model that requires a larger base than described. This is completely fine, as long as you try to keep it as close as possible to the normal approved base sizes. However, you may never have a base size that is smaller than the approved base sizes listed.

== INFANTRY

The following rules apply to Infantry:

#namecost("RANKS", "")

A unit of Infantry is required to be five or more models wide in order to have a complete rank.

#namecost("SUPPORTING ATTACKS", "")

An Infantry model may make up to one supporting attack.

#namecost("UNIT STRENGTH", "")

Infantry have a Unit Strength of 1.

#namecost("LINE OF SIGHT", "")

Infantry have a Line of Sight value of 1.

== MONSTROUS

== INFANTRY

The following rules apply to Monstrous Infantry:

#namecost("RANKS", "")

A unit of Monstrous Infantry is required to be three or more models wide in order to have a complete rank. In addition, their fighting rank is three models rather than five.

#namecost("SUPPORTING ATTACKS", "")

A Monstrous Infantry model may make up to three supporting attacks.

#namecost("SPECIAL RULES", "")

Monstrous Infantry are subject to the following special rules:

- Fear

#namecost("UNIT STRENGTH", "")

Monstrous Infantry have a Unit Strength of 2.

#namecost("LINE OF SIGHT", "")

Monstrous Infantry have a Line of Sight value of 2.

== CAVALRY

The following rules apply to Cavalry:

#namecost("SPLIT PROFILE", "")

Although a cavalry model has two sets of characteristics, one for the rider and one for the mount, it is treated in all respects as a single model – the rider cannot dismount. When moving, the cavalry model always uses the Movement characteristic of the mount, and never that of the rider.

The rider and mount use their own Weapon Skill, Strength, Initiative and Attacks characteristics when they attack. Each can attack any opponent that the cavalry model is in base contact with.

The mount's Leadership is never used, unless a spell or special rule states otherwise.

If the rider has a missile weapon, they always use their own Ballistic Skill, rather than that of their mount.

When attacking a Cavalry model, always use the highest Weapon Skill, Toughness and Wounds value from either the rider or the mount.

If the rider and the mount both have armour saves or invulnerable saves these may be combined as normal.

Any equipment or magic items the model might otherwise have only apply to the rider, not the mount (unless specified).

Unless specified, any effect that would modify the model's characteristics or their dice rolls affect both the rider and mount.

In some cases, you may find Cavalry models that do not have a split profile. The model counts as mounted for the purpose of using certain weapons, as described in the Weapons and Armour chapter.

#namecost("RANKS", "")

A unit of Cavalry is required to be five or more models wide in order to have a complete rank.

#namecost("SUPPORTING ATTACKS", "")

A Cavalry model can make one supporting attack from the rider. Mounts are not allowed to make supporting attacks. Cavalry without a split profile can make up to one supporting attack.

#namecost("SPECIAL RULES", "")

Cavalry are subject to the following special rules:

Any special rules listed for Cavalry units only apply to the rider, unless they specifically mention the mount. There are, however, a few exceptions. If either the rider or the mount has one of the following special rules, then the whole model has it:

- Always Strikes Last
- Ambushers
- Berserk Rage (see Frenzy)
- Ethereal
- Fast Cavalry
- Fear
- Fly (\*)
- Immunity (\*)
- Regeneration (\*)
- Scouts
- Stupidity
- Stubborn
- Terror
- Vanguard

#namecost("TERRAIN", "")

Cavalry have to take Dangerous Terrain tests if they march, charge, flee or pursue over anything other than open ground or hills – see Battlefield Terrain for more details.

#namecost("UNIT STRENGTH", "")

Cavalry have a Unit Strength of 2.

#namecost("LINE OF SIGHT", "")

Cavalry have a Line of Sight value of 2.

== MONSTROUS

== CAVALRY

All the Cavalry rules apply to Monstrous Cavalry. In addition, the following rules apply:

#namecost("RANKS", "")

A unit of Monstrous Cavalry is required to be three or more models wide in order to have a complete rank. In addition, their fighting rank is three models rather than five.

#namecost("SUPPORTING ATTACKS", "")

A Monstrous Cavalry model can make one supporting attack from the rider. Mounts are not allowed to make supporting attacks. Monstrous Cavalry without a split profile can make up to three supporting attacks.

#namecost("SPECIAL RULES", "")

Monstrous Cavalry are subject to the following special rules:

- Fear

#namecost("UNIT STRENGTH", "")

Monstrous Cavalry have a Unit Strength of 3.

#namecost("LINE OF SIGHT", "")

Monstrous Cavalry have a Line of Sight value of 3.

== SWARMS

The following rules apply to Swarms:

#namecost("RANKS", "")

A unit of Swarms is required to be three or more models wide in order to have a complete rank.

In addition, their fighting rank is three models rather than five.

#namecost("SUPPORTING ATTACKS", "")

A Swarm model may make up to five supporting attacks.

#namecost("SPECIAL RULES", "")

Swarms are subject to the following special rules:

- Expendable
- Independent
- Unstable
- Vanguard

Any Swarm base that is hit by a template attack suffers Multiple Wounds (D6) rather than 1.

#namecost("UNIT STRENGTH", "")

Swarms have a Unit Strength of 3.

#namecost("LINE OF SIGHT", "")

Swarms have a Line of Sight value of 0.

== WAR BEASTS

The following rules apply to War Beasts:

#namecost("RANKS", "")

A unit of War Beasts is required to be five or more models wide in order to have a complete rank.

#namecost("SUPPORTING ATTACKS", "")

A War Beast model may make up to one supporting attack.

#namecost("SPECIAL RULES", "")

War Beasts are subject to the following special rules:

- Expendable
- Independent
- Vanguard

#namecost("CHARACTER MOUNT", "")

Some characters can ride War Beasts, in which case the model uses the rules for Cavalry.

#namecost("UNIT STRENGTH", "")

War Beasts have a Unit Strength of 1.

#namecost("LINE OF SIGHT", "")

War Beasts have a Line of Sight value of 1.

== MONSTROUS BEASTS

The following rules apply to Monstrous Beasts:

#namecost("RANKS", "")

A unit of Monstrous Beasts is required to be three or more models wide in order to have a complete rank. In addition, their fighting rank is three models rather than five.

#namecost("SUPPORTING ATTACKS", "")

A Monstrous Beast model may make up to three supporting attacks.

#namecost("SPECIAL RULES", "")

Monstrous Beasts are subject to the following special rules:

- Fear
- Independent

#namecost("CHARACTER MOUNT", "")

Some characters can ride Monstrous Beasts, in which case the model uses the rules for Monstrous Cavalry.

#namecost("UNIT STRENGTH", "")

Monstrous Beasts have a Unit Strength of 2.

#namecost("LINE OF SIGHT", "")

Monstrous Beasts have a Line of Sight value of 2.

== MONSTROUS

== CREATURES

The following rules apply to Monstrous Creatures:

#namecost("SPECIAL RULES", "")

Monstrous Creatures are subject to the following special rules:

- Independent
- Stomp (D3)
- Terror

#namecost("CHARACTER MOUNT", "")

Some characters can ride Monstrous Creatures. If a character has a ridden Monstrous Creature, the whole model is treated as having the troop type Monstrous Creature and thus follows all the rules for both characters and Monstrous Creature models including the Split Profile rules for Cavalry. A character on a ridden Monstrous Creature cannot join other units.

#namecost("UNIT STRENGTH", "")

Monstrous Creatures have a Unit Strength of 4. Ridden Monstrous Creatures add the number of riders to their Unit Strength.

#namecost("LINE OF SIGHT", "")

Monstrous Creatures have a Line of Sight value of 3. Ridden Monstrous Creatures have a Line of Sight value of 4.

== MONSTERS

The following rules apply to Monsters:

#namecost("SPECIAL RULES", "")

Monsters are subject to the following special rules:

- Independent
- Stomp (D6)
- Terror

#namecost("SPLIT PROFILE", "")

Ridden Monsters follow all the Split Profile rules for Cavalry. The riders can shoot and cast magic missiles in 360° around them, rather than only firing at targets within their front arc. However; any artillery weapons can only fire in the model's forward arc as normal, unless specified. Any crew member that chooses to fire an artillery weapon cannot fire their own weapon in the same turn.

#namecost("ARMOUR SAVES", "")

Many Monsters have an armour save detailed in their army list entry, which is combined with any armour the riders might have.

#namecost("CHARACTER MOUNT", "")

Some Characters can ride Monsters. If a character has a ridden Monster, the whole model is treated as having the troop type Monster and thus follows all the rules for both characters and Monster models including the Split Profile rules above. A character on a ridden Monster cannot join other units.

If the Monster includes any riders in addition to the character, their armour saves are ignored when calculating the overall armour save of the model – only the character's own armour save is used.

#namecost("UNIT STRENGTH", "")

Monsters have a Unit Strength of double their original starting number of Wounds. Ridden Monsters add the number of riders to their Unit Strength.

#namecost("LINE OF SIGHT", "")

Monsters have a Line of Sight value of 5.

== CHARIOTS

The following rules apply to Chariots:

#namecost("SPLIT PROFILE", "")

All the Split Profile rules for Cavalry rules apply to Chariots. In addition, the following rules apply:

When moving, the chariot model always uses its own Movement characteristic. However, it may not pivot on the spot like other lone models without Reforming.

Unlike cavalry, chariot mounts can only fight enemies to the front.

The riders can shoot and cast magic missiles in 360° around them, rather than only firing at targets within their front arc. However; any artillery weapons can only fire in the model's forward arc as normal, unless specified. Any crew member that chooses to fire an artillery weapon cannot fire their own weapon in the same turn.

#namecost("ARMOUR SAVES", "")

Many chariots have an armour save detailed in their army list entry, which is combined with any armour the crew might have.

#namecost("CHARACTER MOUNT", "")

Some characters can ride chariots. If a character has taken a chariot as a mount, the whole model is treated as having the troop type 'Chariot' and follows all the rules for both characters and chariot models. If the chariot includes any crew in addition to the character, their armour saves are ignored when calculating the overall armour save of the model – only the character's own armour save is used.

#namecost("RANKS", "")

A unit of Chariots is required to be three or more models wide in order to have a complete rank. In addition, their fighting rank is three models rather than five.

#namecost("SUPPORTING ATTACKS", "")

Chariots cannot make supporting attacks. However, Chariots in the second rank add +D3 Impact Hits to the chariots in the first rank.

#namecost("SPECIAL RULES", "")

Chariots are subject to the following special rules:

- Impact Hits (D6)

Some chariots are equipped with scythes which add +1 Impact Hits. This will be specified in their entry.

Just as with cavalry, we assume that special rules that apply to the mounts do not normally also apply to the chariot or its crew, and vice versa. Remember though that there are exceptions, as detailed under the rules for cavalry.

#namecost("TERRAIN", "")

Chariots have to take Dangerous Terrain tests if they march, charge, flee or pursue over anything other than open ground or hills – see Battlefield Terrain for more details.

#namecost("UNIT STRENGTH", "")

Chariots have a Unit Strength equal to their starting number of Wounds (unless specified) and add the number of additional crew and/or mounts purchased to their Unit Strength.

#namecost("LINE OF SIGHT", "")

Chariots have a Line of Sight value of 2.

== SHRINES

The following rules apply to Shrines:

#namecost("SPLIT PROFILE", "")

All the Split Profile rules for Cavalry rules apply to Shrines. In addition, the following rules apply:

Unlike most other units, a shrine may join other units of Infantry (except Skirmishers) following the rules for Characters and Units in the characters chapter. However, they may choose in which rank they wish to be placed, rather than being required to being in the front rank.

When moving, the shrine model uses its own Movement characteristic.

The riders can shoot and cast magic missiles in 360° around them, rather than only firing at targets within their front arc.

#namecost("ARMOUR SAVES", "")

Some shrines have an armour save detailed in their army list entry, which is combined with any armour the crew might have.

#namecost("CHARACTER MOUNT", "")

Some characters can be mounted upon shrines. If a character has taken a shrine as a mount, the whole model is treated as having the troop type 'Shrine' and follows all the rules for both characters and Shrine models. If the Shrine includes any crew in addition to the character, their armour saves are ignored when calculating the overall armour save of the model – only the character's own armour save is used.

#namecost("TERRAIN", "")

Shrines have to take Dangerous Terrain tests if they march, charge, flee or pursue over anything other than open ground or hills.

#namecost("UNIT STRENGTH", "")

Shrines have a Unit Strength equal to their starting number of Wounds.

#namecost("LINE OF SIGHT", "")

Shrines have a Line of Sight value of 1.

== WAR MACHINES

The following rules apply to War Machines:

#namecost("SPECIAL RULES", "")

War Machines are subject to the following special rules:

- Cumbersome
- Move or Fire

Unless specified, any special rules a war machine might have apply to both the war machine and the crew. For further information on war machines, see the War Machines chapter.

#namecost("UNIT STRENGTH", "")

War machines have a Unit Strength equal to their current number of crew.

#namecost("LINE OF SIGHT", "")

War machines have a Line of Sight value of 1.

= WAR MACHINES

War machine models that do not have bases do not use the usual convention of measuring to the model's base. When measuring to and from the war machine, measure to or from the body of the machine, by which we mean the central part of the chassis or the weapon itself.

#namecost("SPLIT PROFILE", "")

War machines have two profiles, one for the war machine itself, and one for the crew.

You always use the Movement, Weapon Skill, Ballistic Skill, Strength, Wounds, Initiative, Attacks and Leadership of the crew. The Toughness of the war machine is used against ranged attacks and the majority Toughness of the crew is used against close combat attacks. The crew's armour save (if any) is used against both ranged and close combat attacks. Once all the crew are slain, the war machine is removed as a casualty.

Any Characteristic tests are resolved against the characteristics value of the crew.

#namecost("THE CREW", "")

A war machine unit comprises the machine itself, plus its crew. As the crew aren't really a combat unit, per se, we ignore them for most gaming purposes, treating the war machine itself as the extent of the unit. Once all the crew have been removed, the war machine itself is removed from play. Similarly, if the war machine is removed as a casualty, all remaining crew are also removed. All crew should be placed within 1" of the war machine.

The crew cannot be charged, attacked or otherwise affected separately from their war machine – if they are found to be blocking movement or line of sight, the controlling player simply alters their position, just as you would for any other battlefield marker or counter.

#namecost("MOVEMENT", "")

The war machine can move using the rules for lone models. Use the crew's Movement characteristic to determine how far the war machine can move. Remember that all distances are measured from the war machine model itself – move the war machine and then place the crew within 1" of it.

War machines can never charge or march. If charged, a war machine can only choose to Hold. If forced to flee (because of a failed Break test for example) the war machine is destroyed. War machines treat all terrain other than open ground and hills as Impassable Terrain. That said, a war machine is permitted to deploy in a building or terrain, but if it does, it cannot move during the game except to pivot on the spot.

#namecost("CHARGING A WAR MACHINE", "")

Even though some war machines do not have bases, units charging a war machine must still attempt to 'close the door' to align to the centre of the war machine's body.

#diagram("/assets/figures/rulebook/img-0553.jpg", 0.463)

#note[_The red unit has charged so they are touching the war machine and so can fight it in the ensuing combat._]

#namecost("SHOOTING AT WAR MACHINES", "")

When shooting at a war machine (including spells and template attacks), resolve the attack as normal, using the Toughness value of the war machine. The crew's armour save is still used to attempt to prevent any wounds inflicted.

In case the crew of the war machine is made up of models with different profiles, such as a character or other unique crew model; allocate the hits between the crew as you would for shooting at characters in a unit (see the Characters and Units part of the characters chapter).

#namecost("SHOOTING WITH WAR MACHINES", "")

When firing a war machine's weapon, ranges are measured from the muzzle of the gun (in the case of a cannon, volley gun or similar) or the crossbar (in the case of a stone thrower or similar catapult). If your war machine is particularly unusual and does not have any of these features, you should choose a suitable point from which you will measure all your shooting attacks, so long as you are consistent.

Line of sight is always taken from the chosen firing point (i.e. its muzzle or crossbar, in the same way as for its range). Unlike other lone models, pivoting the war machine during the Movement phase counts as moving for war machines, and thus they cannot fire in turns they do so. Before you fire the war machine, pivot it to face your chosen target in the Shooting phase so the war machine faces it directly in a straight line – note that the target must be within the war machine's forward arc as normal.

For war machine weapons that require Ballistic Skill, use the highest Ballistic Skill amongst the crew to resolve the shot.

#diagram("/assets/figures/rulebook/img-0555.jpg", 0.463)

#note[_Unit A is outside of the cannon's line of sight and therefore cannot be targeted unless it moves during the Movement phase, but then cannot fire this turn. Unit B is within line of sight and thus the cannon can pivot on the spot in the shooting phase and still fire on them this turn._]

#namecost("WAR MACHINES IN CLOSE COMBAT", "")

Enemies charging a War Machine lose all charge bonuses (including bonus from special rules).

At the start of the Close Combat phase, before any blows are struck, the player whose unit(s) are attacking the war machine must choose models worth up to Unit Strength 10 who will fight in the combat. This is regardless of the number of units that are fighting the war machine. Note that you may always allocate a minimum of one model to fight, regardless of their actual Unit Size.

All models chosen for the fight are considered to be in base contact with the war machine. Models that are in base contact with other enemies cannot be chosen to attack the war machine. If a war machine has crew with two or more different profiles, you must choose how you wish you allocate your attacks against them.

The combat is otherwise resolved normally. In particular, casualties are taken from the 'back' of the unit as normal. All surviving crew models fight as normal using their Weapon Skill, Strength, Initiative and Attacks. Enemy models strike against the crew normally, resolving their attacks against the crew's Weapon Skill and Toughness. The crew can then take any saves they might have.

A war machine does not have any flanks or a rear for the purposes of combat results. If a war machine manages to win its combat, it is not allowed to pursue and restrains pursuit automatically. The crew always hold their ground. If the war machine loses the combat and fails its Break test it is destroyed.

#namecost("WAR MACHINES AND LEADERSHIP", "")

If a war machine fails a Panic or Terror test, it does not flee, but it cannot shoot in their next Shooting phase. However, this does not prevent the crew clearing various misfire results.

= WEAPONS & ARMOUR

All physical models in a unit should as much as possible be armed with the same weapon and armour type for ease of distinguishing their armament. Some variation is acceptable, but it should be clear to the opponent what sort of equipment a unit has. In case it might not be apparent at first glance, this should be clearly declared upon deploying the unit.

If a model has more than one weapon, they must choose which weapon they want to use before resolving their attack. A model cannot choose to use two different weapons in the same shooting phase or close combat unless clearly specified. However, if the model has multiple crew or riders (like chariots or ridden monsters), each crew or rider may use one weapon each as normal. Whichever weapon they select must then be used for the entire close combat, unless the weapon they are using is somehow destroyed.

=== WEAPON PROFILES

Each weapon confers a number of abilities onto the warrior wielding it. This will sometimes be a bonus to their characteristic profile or perhaps grant the wielder one or more special rules, as detailed in the weapon's rules.

Each weapon has its own characteristic profile. There are three sections to a weapon's profile: Range, Strength and Special Rules.

*Range:* The range tells you at what distance the weapon can be used. If a weapon's range is 'combat' then it can only be used in close combat. If the range is a number of some kind, it is a missile weapon.

Missile weapons typically have two ranges, such as 16/24". The first number represents the weapon's effective range and the second its maximum range. Shots fired beyond the weapon's effective range count as long range. Profiles that only have one range listed ignore penalties for long range.

Artillery weapons instead often have a minimum range, such as 12\-48". This means that the weapon cannot target units closer than 12", and must pick a target between 12\-48" instead.

*Strength:* A weapon's Strength can take three forms. If the Strength is shown as a modifier, for example +1, then this is the modifier the weapon applies to the wielding model's Strength when attacking. If a weapon's Strength is shown as 'as user' then attacks made with the weapon use the wielder's own Strength. Alternatively, if a weapon has a fixed Strength, then all attacks made with that weapon use the Strength value shown – the wielder's Strength is ignored.

*Special Rules:* Many weapons confer special abilities on the attacks made by the wielder, which are explained in the weapon profile. Note that any characteristics bonuses or penalties from weapons normally apply when the model actually attacks – they cannot be used for characteristic tests or spell effects etc. When a weapon does not say when the characteristic bonus applies, then it only applies when striking, or being struck, in close combat.

== CLOSE COMBAT

== WEAPONS
#namecost("HAND WEAPON", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "-"))

#note[_If a model is armed with another close combat weapon besides their hand weapon, they must use this at all times (unless specified)._]

#namecost("TWO/ADDITIONAL HAND WEAPONS", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Parry (6+), Requires Two Hands"))

#note[_A model with two hand weapons gains +1 Attack._]

#namecost("POLEARM", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user +1", "Requires Two Hands"))

#note[_A model with a polearm gains +1 Initiative in the first round of close combat._]

#namecost("GREAT WEAPON", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user +1", "Mighty Blow (1), Requires Two Hands"))

#note[_A model with a great weapon suffers \-2 Initiative._]

#namecost("FLAIL", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Mighty Blow (2), Requires Two Hands"))
#namecost("SPEAR", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Fight in Extra Ranks (1), Mighty Blow (1)*, Requires Two Hands*"))

#note[_Model on foot only. A model with a spear gains +1 Initiative in the first round of close combat._]

#note[_\*Only applies in turns the model is charged to its front, chose either Hold or Stand & Shoot as a charge reaction and the model chooses to use Requires Two Hands. Mighty Blow does not apply towards Infantry, Swarms and Shrines._]

#namecost("PIKE", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Fight in Extra Ranks (3), Mighty Blow (1)*, Requires Two Hands"))

#note[_Model on foot only. A model with a pike gains +2 Initiative in the first round of close combat._]

#note[_\*Only applies in turns the model is charged to its front and chose either Hold or Stand & Shoot as a charge reaction. Mighty Blow does not apply towards Infantry, Swarms and Shrines._]

#namecost("LIGHT LANCE", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Mighty Blow (1)*"))

#note[_\*Mounted model only. A model with a light lance gains +1 Initiative and Mighty Blow in turns that the model charges, and only against the unit they charged._]

#namecost("HEAVY LANCE", "")
#minitable(("Range", "Strength", "Special Rules"), ("Combat", "As user", "Mighty Blow (2)*"))

#note[_\*Mounted model only. A model with a heavy lance gains +2 Initiative and Mighty Blow in turns that the model charges, and only against the unit they charged._]

== MISSILE WEAPONS
#namecost("SHORTBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("16/24\"", "3", "March & Shoot, Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not marched. Cannot be used as a charge reaction._

#namecost("LONGBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "3", "Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not moved. Cannot be used as a charge reaction._

#namecost("GREATBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("28/42\"", "As user +1", "Multiple Shots (2)*, Volley Fire"))

\*_Only applies in turns the model has not moved. Cannot be used as a charge reaction._

#namecost("CROSSBOW", "")
#minitable(("Range", "Strength", "Special Rules"), ("24/36\"", "4", "Ponderous"))
#namecost("HANDGUN", "")
#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Ponderous"))
#namecost("SLING", "")
#minitable(("Range", "Strength", "Special Rules"), ("15/30\"", "3", "Armour Piercing (1), Volley Fire"))
#namecost("JAVELINS", "")
#minitable(("Range", "Strength", "Special Rules"), ("10/15\"", "As user", "Armour Piercing (1), March & Shoot, Quick Shot"))
#namecost("BLOWPIPE", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "2", "March & Shoot, Multiple Shots (3), Poisoned Attacks"))
#namecost("PISTOL", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "5", "Multiple Shots (2)*, Quick Shot"))

#note[_\*Requires a brace of pistols._]

#namecost("BLUNDERBUSS", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/12\"", "4", "Multiple Shots (3), Rapid Fire, Quick Shot"))

#note[_Blunderbusses do not suffer a penalty To Hit for using Stand & Shoot as a charge reaction._]

#namecost("GRENADES", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "4", "Armour Piercing (1), March & Shoot, Quick Shot"))

#note[_Each Hit from a grenade is multiplied into D3 Hits._]

#namecost("THROWING WEAPONS", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "As user", "March & Shoot, Multiple Shots (2), Quick Shot"))
#namecost("THROWING AXES", "")
#minitable(("Range", "Strength", "Special Rules"), ("6/9\"", "As user +1", "March & Shoot, Quick Shot"))

== ARMOUR

You will notice that there are two values in two categories below. "Combat" indicates the armour save the model will receive against close combat attacks, templates and direct damage spells, and "missile" indicates the armour save the model will receive against normal shooting attacks and magic missiles. The first value indicates the armour save modifier each piece of armour gives to the model’s total armour save, whereas the second value is the basic armour save given to the model by that particular piece of equipment.

#namecost("LIGHT ARMOUR", "")
#minitable(("Combat", "Missile", "Special Rules"), ("+1/6+", "+1/6+", "-"))
#namecost("MEDIUM ARMOUR", "")
#minitable(("Combat", "Missile", "Special Rules"), ("+2/5+", "+2/5+", "-"))
#namecost("HEAVY ARMOUR", "")
#minitable(("Combat", "Missile", "Special Rules"), ("+3/4+", "+3/4+", "-"))
#namecost("SHIELDS", "")
#minitable(("Combat", "Missile", "Special Rules"), ("+1/6+", "+1/6+*", "Parry (6+)**"))

#note[_\*Models on foot armed with shields get an additional +1 to their armour save against missile attacks to their front. Shields do not add any armour against missile attacks to the rear. \*\*Only applies if used with a hand weapon._]

#namecost("BUCKLER", "")
#minitable(("Combat", "Missile", "Special Rules"), ("+1/6+", "+1/6+*", "Parry (6+)**"))

#note[_\*Only applies to models on foot against missile attacks to the front. \*\*Only applies if used with a hand weapon._]

#namecost("BARDING", "")
#minitable(("Combat", "Missile", "Special Rules"), ("+1/6+", "+1/6+", "-"))

#note[_Mounts with barding suffer \-1 to their Movement characteristic._]

== ARTILLERY

Below you will find rules for the most common types of artillery pieces in the game. Most of these are attached to war machines, but some might be part of a chariot or carried by infantry.

=== BOLT THROWERS

There are two different kinds of bolt thrower profiles, representing regular bolt throwers and repeater bolt throwers. Repeater bolt throwers can always choose to fire like regular bolt throwers if they wish.

#namecost("BOLT THROWER", "")
#minitable(("Range", "Strength", "Special Rules"), ("32/48\"", "6", "Armour Piercing (1), Cumbersome, Multiple Wounds (D3)"))
#namecost("REPEATER BOLT THROWER", "")
#diagram("/assets/figures/rulebook/img-0565.jpg", 0.463)

#note[_Up to four models can be killed by the shot of this bolt thrower. The Strength that each rank is hit at is shown next to it._]

#minitable(("Range", "Strength", "Special Rules"), ("32/48\"", "4", "Armour Piercing (1), Cumbersome, Multiple Shots (6), Rapid Fire"))
#namecost("Firing a Bolt Thrower", "")

To fire a bolt thrower, select a target according to the normal rules for shooting. Roll to hit using the crew's Ballistic Skill, just as you would for a normal missile weapon.

#namecost("Resolving Hits", "")

If the target is a unit of five or more ranked-up models, the bolt will always strike a regular trooper (as opposed to a character in the unit) in the unit's first rank if the bolt thrower is in the unit's front arc, or the last rank if the bolt thrower is in the unit's rear arc. If the bolt thrower is in the target unit's flank, the target's files count as ranks for the purposes of resolving the shot.

If the shot hits, resolve damage against the target using the bolt thrower's full Strength of 6. The bolt then hits one of the warriors in the rank behind with \-1 Strength (normally Strength 5). A model in the next rank is hit at \-2 Strength (normally Strength 4) and so on, until the unit runs out of ranks or the hit is reduced to Strength 0.

Note that repeating bolts do not pierce ranks.

#note[_As the bolt thrower is in their flank arc, up to five models can be killed by its shot. The bolt thrower can see the cavalry unit, and so it can fire against them (with the hard cover modifier). If it hits, it will skewer the flank of the unit, as shown in the diagram, as it is in the knights' flank arc._]

=== CANNONS
#minitable(("Range", "Strength", "Special Rules"), ("12-60\"", "10", "Cumbersome, Multiple Wounds (D6/D3)"))
#namecost("Firing a Cannon", "")

To fire a cannon, first pivot to face the target following the normal rules for war machines. Then, nominate a model or building within the cannon's line of sight.

When you have chosen your target, place a small marker over the centre of your target as a reminder of where the shot is intended to land.

Once the marker has been placed, roll for scatter using a scatter dice and an artillery dice. Assuming that you didn't roll a misfire on the artillery dice, it's now time to find out whether or not your shot was on target. If a hit is rolled on the scatter dice, the shot has landed on target. In this case, we ignore the number shown on the artillery dice – the hit is all we need.

If an arrow is rolled, the shot has missed its original target and scatters off elsewhere. Move the marker a distance in inches equal to the result of the artillery dice divided by half, in the direction shown on the scatter dice.

Using your tape measure, extend a 'shot' line from the cannon's barrel all the way to the marker – this is the direction the cannonball travels straight forward. If you roll a misfire, roll on the Black Powder Misfire chart below. Regardless of the result rolled, the cannon does not shoot this turn.

#namecost("BLACK POWDER MISFIRE CHART", "")

*D6 Result 1\-2 Destroyed:* The war machine is destroyed. *3\-4 Malfunction:* The war machine cannot fire this turn or in the controlling player's next turn. Place a marker of some kind to indicate this. *5\-6 May not Shoot:* The war machine is unharmed and can shoot as normal again in the controlling player's next turn.

#diagram("/assets/figures/rulebook/img-0567.jpg", 0.999)
#chart((("The cannon targets the model, as marked by the dot. After
that, the player rolls the artillery and scatter dice to find out
whether or not the shot lands on target.", "The artillery dice did not roll a 'Hit'; and as such the
cannonball scatter the distance (divided by half) shown in the
artillery dice; in this case, 2\" in the direction of the scatter
dice."), ("", "")))

#note[_Initial position_]

#chart((("Position after scatter", ""), ("", "")))
#chartlabel("Bounce")

Assuming that the cannon did not misfire, then hopefully the cannonball will bounce straight forward and crush any targets in its path.

To determine how far the cannonball bounces, roll the artillery dice again. If the result is a misfire then the cannonball does not bounce – it thuds into the ground and comes to rest. Any model under the spot where the cannonball comes to rest is hit, but they are the only victim!

Assuming you don't roll a misfire, then the cannonball bounces the distance rolled – extend your tape measure a distance equal to the roll of the dice. If the cannonball bounces into impassable terrain that would, in reality, stand in the way of the shot, such as a sheer cliff, it stops immediately.

The bounce of the cannonball is determined using the line template. On most occasions, any model whose base is between the point where the cannonball first strikes the ground and where it eventually comes to land is hit automatically. Note that a maximum of one model per rank struck can be hit. If the cannon is in the target's flank, the target's files count as ranks.

#namecost("Direct Hit", "")

Damage is resolved differently depending on whether or not the cannon ball hits a model directly or not. Normal Cannons have both the Multiple Wounds (D6) and (D3) special rules. It inflicts D6 Wounds only if the cannon ball lands directly on a model (that is, where the marker is placed after the first artillery and scatter dice are rolled), models hit by the bounce only suffer D3 Wounds. If a cannon only has one value of Multiple Wounds listed, it causes that damage on both direct hits and the bounce.

#diagram("/assets/figures/rulebook/img-0569.jpg", 0.999)

#note[_Initial position The cannonball lands right on target. The following bounce goes through all three ranks of the unit, scoring 3 hits. Initial position The cannonball strikes the large model and then go through the unit behind it._]

#namecost("GRAPESHOT", "")

Instead of firing normal shot, cannon crew can opt to fire grapeshot using the following profile:

#minitable(("Range", "Strength", "Special Rules"), ("12\"", "5", "Cumbersome, Rapid Fire"))
#namecost("Firing Grapeshot", "")

To fire grapeshot, select a target according to the normal rules for shooting. With the target chosen, roll an artillery dice and a D6 to find out how many shots are fired. If the artillery dice result is a misfire, roll a D6 on the Black Powder War Machine Misfire chart to find out what has gone wrong.

Assuming that a misfire did not occur, roll to hit the target with a number of shots equal to the number rolled on the artillery dice plus the D6, resolving any successful hits using the grapeshot profile.

=== FIRE THROWERS
#minitable(("Range", "Strength", "Special Rules"), ("-", "4", "Cumbersome, Flaming Attacks"))
#namecost("Firing a Fire Thrower", "")

Place the teardrop-shaped template with its narrow end touching the fire thrower barrel and the large end aimed at any enemy model or building in line of sight. Roll the artillery dice and move the template directly forward the number of inches indicated. Some fire throwers might also have a range value. In this case, place the template with its narrow end anywhere within this range, measured from the fire thrower barrel as normal.

All models underneath the template are hit automatically. A unit suffering any casualties must take a Panic test. Fire throwers are not physical attacks.

If a misfire is rolled, roll immediately on the Black Powder Misfire chart.

=== ORGAN GUNS
#minitable(("Range", "Strength", "Special Rules"), ("12/24\"", "5", "Cumbersome, Multiple Shots (Artillery Dice + 3D6), Rapid Fire"))
#namecost("Firing an Organ Gun", "")

To fire an organ gun, select a target according to the normal rules for shooting. Roll 3D6 and the Artillery Dice; the result is the number of shots fired. Roll to hit using the crew's Ballistic Skill, just as you would for a normal missile weapon.

If a misfire is rolled, roll immediately on the Black Powder Misfire chart.

=== TRAJECTORY WEAPONS

There are three different kinds of trajectory weapon profiles, representing stone throwers, mortars and rocket launchers.

#namecost("STONE THROWER", "")
#minitable(("Range", "Strength", "Special Rules"), ("12-48\"", "4(8)", "Cumbersome, Multiple Wounds (D3),"))

Stone throwers use the small round template by default.

#namecost("MORTAR", "")
#minitable(("Range", "Strength", "Special Rules"), ("12-60\"", "3(6)", "Armour Piercing (1), Cumbersome, Multiple Wounds (D3)"))

Mortars use the large round template by default.

#namecost("ROCKET LAUNCHER", "")
#minitable(("Range", "Strength", "Special Rules"), ("12-60\"", "4", "Cumbersome, Flaming Attacks"))

Rocket launchers use the large round template by default. They always count as firing indirectly (see next page).

#namecost("Firing a Trajectory Weapon", "")

Nominate a model or building within the model's line of sight (ignoring other models within the same unit). Then, take the round template and place it with the centre directly over the target.

The template cannot be initially placed over friendly models, or enemy models from a unit that is engaged in combat.

#namecost("Scatter", "")

Once the template has been placed, roll for scatter using a scatter dice and an artillery dice. If a misfire is rolled on the artillery dice, roll on the Stone Thrower Misfire chart if the weapon is a stone thrower, or the Black Powder Misfire chart if the weapon is a mortar or rocket launcher. Regardless of the result rolled, the weapon does not shoot this turn.

#chartlabel("STONE THROWER MISFIRE CHART")
#chart((("D6", "Result"), ("1", "Destroyed: The war machine is destroyed."), ("2-3", "Disabled: The stone thrower suffers a
wound, with no armour saves allowed. The
stone thrower cannot fire this turn or in the
controlling player's next turn. Place a marker
of some kind to indicate this."), ("4-6", "May not Shoot: The stone thrower is
unharmed and can shoot as normal again in
the controlling player's next turn.")))

Assuming that you did not roll a misfire on the artillery dice, it is now time to find out whether or not your shot was on target.

If a hit is rolled on the scatter dice, the shot has landed on target. In this case, we ignore the number shown on the artillery dice – the hit is all we need.

If an arrow is rolled, the shot has missed its original target and scatters off elsewhere. Move the template a distance in inches equal to the result of the artillery dice, in the direction shown on the scatter dice.

#namecost("Damage", "")

Regardless of whether or not your shot landed exactly where you intended, it's time to see who's been hit by it.

The model (if there is one) under the template's central hole take an automatic hit at the higher of the weapon's two Strengths (if they have one listed). If the template has scattered, there's a good chance the centre hole will lie over two or more models. Nonetheless, only one can be hit by the higher Strength, so select one randomly.

Other models wholly or partially beneath the template are hit automatically at the weapon's lower Strength.

The weapon's Multiple Wounds (D3) special rule applies only to the high-Strength hit caused against the model under the template's central hole – unsaved wounds from the low Strength hit are not multiplied.

#diagram("/assets/figures/rulebook/img-0572.jpg", 0.463)

#note[_As the rock blocks line of sight to the centre of the unit, the template is instead placed to the side of the unit. Here, 11 models are hit, with the model under the hole suffering a Strength 8 hit rather than Strength 4._]

#namecost("Firing Indirectly", "")

If you wish to fire indirectly, declare that you will do so before taking the weapon's shot. An indirect shot does not require line of sight but is otherwise treated as a normal shot and has the usual requirements (the target needs to be in range and outside the minimum range of the stone thrower).

If an arrow is rolled on the scatter dice, resolve the scatter as normal. If however, you roll a Hit! on the scatter dice, the shot does not land on target but merely scatters less – how much less depends greatly on the skill of the crew. The distance travelled is equal to the score shown on the artillery dice minus the crew's Ballistic Skill characteristic (to a minimum of 0).

Other than the aforementioned inaccuracy of the scatter, an indirect shot from a trajectory weapon is treated exactly according to the rules given for normal shots given above.

Note that a trajectory weapon that moves and fires the same turn is always considered to fire indirectly.

= COMMAND GROUPS

#namecost("FIELDING COMMAND GROUPS", "")

Many units can include a command group of some kind, dictated on the whole by the miniatures that are available, and detailed in the relevant Warhammer Armies book. Most units can take what we refer to as 'full command' – a leader, standard bearer and musician – whilst others will only be able to take perhaps one or two of these options. Command group models are always chosen as upgrades to normal rank-and-file models, and always counts as being equipped the same as the rest of the unit. Players should attempt to ensure that these models are visually distinct from the other members of the unit, so it is clear what command group models it has.

#namecost("POSITION WITHIN A UNIT", "")

*Command groups must be placed in the unit's front rank and move automatically if the unit reforms.*

Any models that make up a unit's command group must be placed in the front rank of the unit, unless there is not enough room for them to fit. Where this happens, as many command group models as possible must be placed in the front rank and any remaining models are placed in the rank behind.

If the unit changes formation, then the command group automatically pushes its way back to the front. Accordingly, when a unit reforms, the models of the unit's command group must be repositioned into the unit's new front rank as described above (regardless of the distance).

#namecost("COMMAND GROUPS AND CASUALTIES", "")

Command group models cannot normally be removed as casualties unless there are no other rank-and-file members of their unit left. This applies even if the model is the target of an effect that affects only a single model, such as a Dangerous Terrain test, or an attack made with the Sniper special rule. Instead, normal rank and file models are removed first.

When no rank-and-file models remain, the controlling player chooses the order in which the command group models are removed.

#namecost("LEADERS", "")

A unit that is accompanied by a Leader may re-roll failed Leadership tests when Counter-charging, Redirecting a Charge, Reforming from Defeat after losing a round of close combat, and Restraining from Pursuit.

Some Leaders also have the option to take specialised equipment. If this is the case, it is clearly stated in their entry in each separate army book. Note that when resolving attacks against a Leader, treat them as being armed as the rest of the unit.

#namecost("STANDARD BEARERS", "")

If a unit includes a Standard Bearer, it adds +1 to its combat result.

#namecost("MUSICIANS", "")

The side that has a Musician in its front rank of one or more of its units wins any drawn close combat by 1, unless the opposing side has a Musician also, in which case they cancel each other out.

A unit that is accompanied by a Musician may re-roll failed Leadership tests when attempting to march within 6" of enemy units and rallying. Fast Cavalry and Skirmishers that have fled using Feigned Flight automatically rally.

= CHARACTERS

Characters are a special type of unit that can either operate on their own or join another unit from the same side.

== CHARACTERS AND

== UNITS

Most characters are allowed to join certain types of units over the course of the battle. A character is normally permitted to join units made up of Infantry, Cavalry, Monstrous Infantry, Monstrous Beasts or Monstrous Cavalry. However, a character is not allowed to join a unit made up of a troop type with a higher Unit Strength than their own troop type, unless specified.

Unless otherwise stated, a character cannot join other Lone Models, a unit of flyers (unless they are also a flyer of the same troop type), a unit of Chariots (unless they are also a Chariot), a unit of Monstrous Creatures (unless they are also a Monstrous Creature), a unit of Swarms or a War Machine. A character that is itself a Chariot, War Machine, Monstrous Creature or Monster cannot join other units, unless specified. A character cannot join a unit that is already engaged in close combat or is fleeing.

#namecost("JOINING A UNIT", "")

To join a unit a character must move into base contact with it during the Movement phase. Once a character has joined a unit in this way, neither character nor unit can move further, so it's a good idea to plan your moves in the correct order.

As a unit can move only before the character joins, it's better to move the unit first and then have the character move to join it. A unit which has been joined by a character in the Movement phase only counts as having moved if it has itself moved, not if a character has moved to join it.

#namecost("POSITION IN THE UNIT", "")

When characters join a unit, they are placed in the front rank (regardless of distance). Rank-and-file models (including the command group) are moved to the second rank to make room for the characters. If there is no more room in the front rank, the characters may not join the unit until the unit reforms to make it wide enough.

#namecost("CHARACTERS IN FLEEING UNITS", "")

If the character has joined a unit and this later flees, they will count towards working out if the unit is still at or above 25% of its initial numbers for the purposes of Rally tests.

#namecost("DIFFERENT SIZED BASES", "")

Most of the time, a character is mounted on the same size of base as the unit they decide to join. In this case, the character can simply be added to the front rank, displacing another model as described above. Naturally, this gets a little more involved if the character has a different-sized base to the members of the unit. Here we have to use a little common sense to make everything work.

If a character's base is larger than one model, but has exactly the same size area (or 'footprint') as two or more models, simply displace those models to the back rank and position the character in their place.

If your character(s) fit into the unit in this manner, work out the unit's ranks (and therefore its rank bonus) as if the space was filled with rank-and-file troops.

If a character's footprint does not fit neatly into a unit, place them on the edge of the unit, beside the front rank, facing the same direction as the rest of the unit. In this case we do not assume the character's footprint to be filled by rank-and-file troops.

=== COMBINED UNITS

Whilst a character is part of a unit, both they and the unit (including any other characters that have joined that unit) are treated as a single combined unit for all rules purposes, save for the exceptions listed here.

#namecost("MOVEMENT", "")

A unit always moves at the same rate as the slowest model, so when the unit moves, charges, flees or pursues, always use the lowest Movement characteristic and rules of the slowest troop type. Similarly, if the character is subject to any movement restrictions, then those restrictions apply to whole combined unit whilst the character remains part of it, and vice versa.

Characters can change position inside a unit as part of a normal move, as long as they end up in the front rank of the unit. It is also worth remembering that even if only the character moves the whole unit will count as moving that turn. Having a belligerent officer barge their way through the unit is not conducive to a good round of shooting!

If a unit containing one or more characters has had its Movement Allowance altered, this will affect a character leaving the unit, including if they try to charge out of it, but for that move only.

#diagram("/assets/figures/rulebook/img-0577.jpg", 0.463)

#note[_This model is riding on a mount and has a 25mm x 50mm footprint. He can still join the infantry unit, but will displace two models as the infantry models have a 25mm x 25mm footprint. The two infantry models that are displaced are moved to the rear rank. All the units shown below have three complete ranks, and therefore a rank bonus of +2. This character's base footprint does not fit neatly into the unit, so it is placed at the side instead. The character is ignored for the purpose of calculating rank bonus._]

#namecost("SPELLS", "")

When a character joins a unit that is under the effect of a spell that affects the entire unit, the character only benefits or suffers from the effects of the spell whilst they remain in the unit. Similarly, if a character is the subject of a spell that is capable of affecting a unit, the effect will also apply to any unit they join, for as long as they remain part of it, and the spell lasts.

#namecost("SHOOTING", "")

Missile attacks (except templates) cannot hit a character in a combined unit if there are five or more rank and file models from the same troop type (excluding other characters) left in the unit. We assume that the enemy cannot pick the character out. All hits are allocated onto the unit's rank and file models.

However, if the character has a different troop type with a higher Unit Strength than the rest of the unit, it is possible to target that model separately from the rest of the unit. If so, roll a D6 for each successful Hit on the character; on a 4+, that Hit is allocated to the unit it is with instead. This applies even if the unit can only draw Line of Sight to the character, but not the unit they are with.

If there are fewer than five rank-and-file models left in the unit before resolving the hits, there is a chance that any characters in the unit could be hit – the controlling player decides who is hit, but must allocate one hit on each model before they can add a second hit on a model; they must allocate two hits on each model before they can allocate a third, and so on.

#namecost("\"Look Out, sir!\"", "")

If a character in a unit is hit by a template weapon or spell that uses a template, a friendly model suffers the hit themself instead. This happens automatically, and no roll is required, nor is this considered as a "save" for rules purposes.

"Look Out, Sir!" cannot be used if there are less than five rank-and-file models (including command group) left in the unit. This only applies to characters with the same troop type and/or Unit Strength as the unit.

#namecost("CLOSE COMBAT", "")

In the Close Combat phase, enemy models in base contact with both the character and one or more models from the character's unit can choose to attack the character or the unit, or split their attacks between them. You need to declare where attacks are being allocated before they are rolled. If the character is slain, any excess wounds do not carry over onto the rest of the unit but are simply lost.

#namecost("Make way!", "")

At the start of the combat (before Impact Hits are resolved), if a character's unit is in combat, but the character is not in base contact with the enemy, the controlling player can swap his position with another model that is in base contact. You can exchange him with rank-and-file model(s), including the command group, that are in base contact with the enemy. If there are one or more stranded characters on both sides, the players roll off and the winner decides which character makes his Make Way! first. Players then alternate choosing characters to do their Make Way! moves. Only characters whose footprint is compatible with the unit's rank and file can do this.

Note that Make Way can only be used to move the character to another position in the front rank; it cannot be used to move the character to a rank in the flank or rear.

#diagram("/assets/figures/rulebook/img-0580.jpg", 0.463)

#note[_The character is not in base contact with the enemy at the start of the combat, and so is allowed to perform a Make Way move to get into contact._]

#namecost("LEADERSHIP TESTS", "")

As already mentioned, Leadership tests are always taken using the highest value present in the unit. In the case of a combined unit, this will normally be the character, but might occasionally prove to be the rank and file of the unit themselves.

#namecost("SPECIAL RULES", "")

Unless otherwise noted in the text of the rule itself, a special rule applying only to a character does not apply to the unit, and vice versa. On the other hand, many spells and magic items bestow special rules and other effects on units. In this case, everyone (including the character) in the combined unit will be affected. If a character has a special rule or magic item that affects any unit they join, that effect only applies to the unit for as long as the character remains part of it.

=== LEAVING A UNIT

A character can charge out of a unit, by declaring a charge in the relevant phase – in which case, they will move and their unit will stay still – it is not permitted to declare a charge of its own, though it can move during the Remaining Moves phase. If a unit contains multiple characters, only one of them may charge out of the unit per turn.

If a Stand and Shoot reaction is declared against a character charging out of a unit, the shots are fired at the character as if they were a separate target – they do not gain the same protection as being inside a unit, but they do get a 4+ "Look Out, Sir!" if the unit they are leaving is the same troop type as they are.

Alternatively, any character can leave their unit during the Remaining Moves sub-phase by moving away from the unit before that unit makes its own move. If the unit cannot move in this phase for any reason, the character may not leave the unit. A character may not leave a unit on the same turn that they join it.

If the character itself cannot move, the unit may choose to leave them behind. Mark the spot where the character is and move the unit as normal, then place the character back in that spot. If the unit cannot move far ahead of the character model for any reason, it cannot leave the character behind. For example, a character cannot leave if:

- Their unit is fleeing.
- The character's unit is not permitted to move by a spell or other effect.
- If the unit is in combat.
- If the unit has made a failed charge.

When leaving a unit, the character reverts to their normal rules for movement. The distance of their move is worked out from their actual position in the unit before the unit moves. they can even join another unit as part of the same move if their controlling player wishes, and the character has enough movement, although the unit they join cannot move if it hasn't done so already.

#namecost("UNIT CASUALTIES", "")

As soon as the last model from the unit has been removed, any remaining characters will count as a new unit. Note that this will cause Panic tests to all friendly units within 6" (including the newly formed unit of character(s)) as the unit has been destroyed.

#diagram("/assets/figures/rulebook/img-0582.jpg", 0.999)
#chart((("1. The character charges out of the unit in the Charge sub-
phase, or moves out of the unit in the Remaining Moves sub-
phase.", ""), ("", "2. The unit then moves off in the Remaining Moves sub-
phase.")))

== LONE CHARACTERS

Characters that have not joined another unit are treated as a separate unit of the appropriate type for all rules purposes. They move, shoot and fight as described in the relevant section of the rules. For ease of reference, we will call such models 'lone characters'.

Characters that are Infantry follow the rules for Skirmishers. Characters that are Cavalry follow the rules for Fast Cavalry.

#namecost("SHOOTING AT LONE CHARACTERS", "")

If a lone character is hit by a missile attack (remember the modifier for shooting at Lone Models) a "Look Out, Sir!" roll can be attempted, provided there is a friendly unit consisting of five or more rank and file models of the character's troop type within 3". Roll a D6. On a roll of 4+, the hit is transferred to a model in the friendly unit (if there is more than one eligible unit within 3", the controlling player can decide which). Otherwise, the hit is resolved against the character as normal.

#diagram("/assets/figures/rulebook/img-0584.jpg", 0.463)

#note[_1\. This model has a different troop type than the unit, and therefore receives no protection from the unit. 2. This model is too far away to gain any benefit from near the unit. 3. This model has the same troop type as the unit and is close enough to receive a 4+ "Look Out, Sir!" against missile attacks._]

== CHALLENGES

Challenges are issued at the start of the combat round, before any blows are struck (but after Impact Hits). Only one challenge can be issued per close combat – the side whose turn it is has the opportunity to issue a challenge first. If that side chooses not to, then the other side can issue a challenge.

#namecost("ISSUING A CHALLENGE", "")

The player issuing the challenge nominates one of their character models to issue the challenge. If they do not have a suitable model in the fight, a challenge cannot be issued. Similarly, if there are no characters in the enemy units, a challenge cannot be issued.

To issue a challenge, choose one of your characters in one of your units in the combat – this is the model that issues the challenge. Once one challenge has been made, further challenges cannot be issued in that combat.

#namecost("ACCEPTING A CHALLENGE", "")

If your opponent has issued a challenge, you can now accept it with one of your characters whose unit is in base contact with the unit containing the issuer of the challenge. Note that a character does not have to be in base contact with an enemy to accept or issue a challenge, just part of a unit that is. The two models will now fight, as described in Fighting a Challenge, below.

#namecost("REFUSING A CHALLENGE", "")

If no enemy character steps forward to meet the challenge, one of them may be chosen to retire. This character is chosen by the challenger (though they may not choose a character that could not have accepted the challenge). The retiring character is not allowed to attack that round – move the model into a rank where they are not in base contact with the enemy. Another model will step up and fight in their place, just as if they had been slain. Furthermore, the model's Leadership cannot be used for any Leadership tests that take place that turn, nor can any other bonuses from special rules or magic items. The character may return to the front rank in the next round of combat if you wish or stay where they are until the unit reforms.

Once a challenge has been refused, the issuer can fight normally in that round of combat.

A character cannot refuse a challenge if their model cannot be placed so that they are not in base contact with an enemy model. This most commonly happens if a lone character is the subject of a challenge, if their unit is small and engaged on all fronts, so that every model in the unit is in base contact with an enemy, or if they are fighting from a Shrine which is in the front rank of the unit.

#namecost("FIGHTING A CHALLENGE", "")

If a character accepts the challenge, move them into base contact with the challenger. If, for whatever reason, this is not possible, assume that the two models are in base contact (this might require a little gumption to work out, so it's best to move the model if you can). These two characters must direct all of their attacks (except Breath Weapons, Impact Hits and Stomps – these are directed at the unit as normal) against each other – they cannot be attacked by any other model for that round of close combat. However, note that they may still be affected various special rules and abilities that normally affect models in base contact.

#namecost("Overkill", "")

If one model slays the other, then any excess wounds they inflicted above and beyond those needed to slay the opponent, up to a maximum of +3, are counted towards their side's total number of wounds for close combat resolution.

Note that this is an exception to the rule stating that a model can only suffer as many wounds as it has on its profile. This time you need to add up all of the wounds inflicted on the victim, even those from a weapon causing multiple wounds, or by repeated Killing Blows (each successful Killing Blow scores the same number of wounds the slain character has on its profile), etc. In addition, should one of the combatants be slain before either the opposing character or their mount has had the chance to fight, they may still make their full amount of attacks for the purposes of Overkill.

#namecost("Further Rounds", "")

If both competitors survive a challenge, and the combat continues, then they will continue to fight in the next round of close combat. Further challenges cannot be issued in that combat until the existing challenge has been resolved.

= BATTLEFIELD TERRAIN

== OPEN GROUND

Open ground covers things such as plains, deserts, steppe, hills etc.

Open terrain is the most prevalent type of battlefield terrain and thus the 'default' setting – any terrain not specifically classed as something else is to be treated as open ground. All the rules as presented thus far assume that your game is being played on open terrain. It offers neither bonuses or penalties to models moving over it.

== IMPASSABLE TERRAIN

Impassable terrain covers such things as mountains, buildings, lava pits, steep cliffs etc.

Units cannot voluntarily deploy in, enter, move or cross through impassable terrain – they must go around. Remember that units can flee through impassable terrain, although they will have to take Dangerous Terrain tests if they do so. Impassable terrain has a Line of Sight value of 5, unless otherwise specified.

== DANGEROUS TERRAIN

Dangerous Terrain covers things like forests, rivers, marshes, etc.

When a model marches, charges, flees, overruns or pursues into or through an area of Dangerous Terrain, it is called upon to take a Dangerous Terrain test – roll a D6. If a 1 is rolled, the model suffers a wound with no armour saves allowed.

Cavalry, Monstrous Cavalry, Chariots and Shrines treat all terrain other than open ground as being Dangerous Terrain, as described above. A Chariot or Shrine that fails a Dangerous Terrain test suffers D6 Wounds instead of 1.

#namecost("DEADLY TERRAIN", "")

Models moving through Deadly Terrain must always take Dangerous Terrain tests, even when making normal moves.

When a model marches, charges, flees, overruns or pursues into or through an area of Deadly Terrain, it fails the test on a roll of 1\-2 rather than 1.

Cavalry, Monstrous Cavalry, Chariots and Shrines treat what is normally Dangerous Terrain as being Deadly Terrain.

== HILLS

A hill has a Line of Sight value of 2 for each 'level' it has. Models standing on top of a hill level add this to their Line of Sight value.

A unit with the majority of its models fighting uphill does not gain any bonus from ranks.

Below is a selection of different hills that you can choose to include in your games:

#namecost("ESCARPMENT", "")

The rocky side of an escarpment counts as impassable terrain to all units with a Line of Sight value lower than 4.

#namecost("ROCKY HILL", "")

Any unit at least partially on top of a rocky hill suffer a \-1 penalty to their Movement value.

#namecost("ROLLING HILL", "")

Rolling hills counts as open ground.

#namecost("SCREE SLOPE", "")

Models charging, marching, fleeing, pursuing or overrunning up, down or through a scree slope must take a Dangerous Terrain test.

== MARSHLAND

If a unit is at least partially within marshland, it suffers a \-1 penalty to its Movement value. Marshland is Dangerous Terrain for all units, other than those with the Skirmish special rule.

A unit with the majority of its models fighting in marshland does not gain any bonus from ranks.

Below is a selection of different marshlands that you can choose to include in your games:

#namecost("EARTHBLOOD MERE", "")

Any unit with the majority of its models within the mere has Regeneration (6+).

#namecost("KHEMRIAN QUICKSAND", "")

Models moving through Khemrian Quicksand treat it as Deadly Terrain.

#namecost("MIST-WREATHED SWAMP", "")

If the majority of a unit's models are wholly within a mist-wreathed swamp, the unit counts as being in hard cover.

== FORESTS

A forest has a Line of Sight value of 5. Models in or behind forests cannot see or be seen through it if there is more than 3" of forest between them and the enemy. If it is less than 3", they can see and be seen through it for all purposes, as long as you can draw a Line of Sight to them as normal. The ‘base’ of the forest is otherwise not considered to block line of sight.

Models with the Fly special rule that begin or end a flying move in a forest, must take a Dangerous Terrain test.

A unit in a forest counts as being in soft cover provided that the majority of its models are within the forest. Similarly, if a model in a shooting unit has to trace its line of fire through a forest (because it's shooting at a target beyond the forest), then the target benefits from soft cover. This applies even if during the game you rearranged a forest's trees around a unit, or even removed them – just imagine the trees are still in their original position. This penalty does not apply if the shooting model is drawing a line of sight out of a forest it is in.

A unit with the majority of its models fighting in a forest does not gain any bonus from ranks.

Below is a selection of different forests that you can choose to include in your games:

#namecost("ANCIENT FOREST", "")

Any unit at least partially within the Ancient Forest suffer a \-1 penalty to their Movement value.

#namecost("ABYSSAL WOOD", "")

A unit with the majority of its models within an Abyssal Wood suffer \-1 to their Leadership. This has no effect on models with Immunity (Psychology).

#namecost("BLOOD FOREST", "")

Whenever a spell is successfully cast by (or at) a model in a blood forest, all units wholly or partially within it suffer D6 Strength 4 hits as the trees go into a feeding frenzy. When any hits have been resolved, the Blood Forest moves 2D6" in a random direction, moving around any intervening terrain features by the shortest route. This does not move the models that were in the Blood Forest, it simply 'walks' off, and leaves them behind.

#namecost("FUNGUS FOREST", "")

Any unit at least partially within the Fungus Forest is subject to the rules for Stupidity. Any Forest Goblin unit at least partially within the Fungus Forest is also Stubborn.

#namecost("VENOM THICKET", "")

Any model in a Venom Thicket has the Poisoned Attacks special rule (applies to close combat attacks only). However, any model moving through a Venom Thicket must take a Dangerous Terrain test.

#namecost("WILDWOOD", "")

Roll for any unit at least partially within the Wildwood at the end of the Movement phase. On a 4+, the unit suffers D6 Strength 4 hits.

== RIVERS

Models in rivers and streams halve their movement value (rounding up) while moving through them. A unit that is at least partially in a river does not gain any bonus from ranks.

Most rivers have at least one place at which they can be crossed, such as a bridge or a ford. Such crossing points should normally be treated as open terrain, but only if the unit attempting to use the crossing point is in a narrow enough formation to fit across, otherwise treat the entire unit as being in the river. The width of the bridge or ford should be determined upon placing the terrain feature.

Below is a selection of different rivers that you can choose to include in your games:

#namecost("BOILING FLOOD", "")

Any model at least partially in the boiling flood at the end of any turn suffers a Strength 4 hit with no armour saves allowed. Models with (Immunity) Flaming Attacks do not suffer from this effect.

#namecost("NECROTIC OOZE", "")

Necrotic ooze counts as Dangerous Terrain for all models. Additionally, a unit that moves through necrotic ooze gains the Poisoned Attacks special rule until the end of the following player turn.

#namecost("RAGING TORRENT", "")

A raging torrent is Deadly Terrain.

#namecost("RIVER OF BLOOD", "")

A unit that moves or charges through a River of Blood is counted as causing Fear until the end of the following player turn, so ghastly is their blood-slicked appearance.

#namecost("RIVER OF LIGHT", "")

When a unit enters a River of Light, it is immediately the target of a randomly chosen Level 1 Light Magic spell (see the Lores of Magic). The spell is automatically cast and cannot be dispelled.

== OBSTACLES

This category covers all long and narrow terrain types, such as fences, walls and hedges.

Obstacles do not otherwise impede movement. If a unit ends its move with some of its ranks or files on different sides of the obstacle, simply place the models appropriately on both sides of the obstacle – the unit suffers no ill-effects.

#namecost("OBSTACLES AS COVER", "")

An obstacle offers a greater measure of protection against missile fire to models hiding behind it. An obstacle has a Line of Sight value of 0. If a firer is shooting at a model that is behind an obstacle and in base contact with it, the target model counts as in cover (of the appropriate type). We assume that the warrior takes shelter behind the obstacle. When firing against a unit, the majority of its models must be behind the obstacle in order to benefit from this additional protection.

Firing models that are themselves in base contact with an obstacle may ignore it for the purposes of line of sight, just as if the obstacle was not there – they will lean over it as they fire.

#namecost("OBSTACLES AND COMBAT", "")

If one of your units is charging an enemy who is touching the other side of an obstacle, the obstacle counts as 'defended'. Measure the charge distance to the obstacle, rather than the enemy unit. Similarly, if the charge is successful, move your unit into contact with the obstacle rather than the unit itself.

Essentially, we assume the enemy push forward to fight over the obstacle – your models count as being in base contact with the enemy behind the obstacle, as if it wasn't there, and must charge in such a way as to maximise the number of models from both sides that can fight, using the normal rules for charging.

To represent the formidable defensive position offered by the obstacle, any models from a charging unit that are in base contact with an obstacle will suffer penalties depending on the type of obstacle. This modifier only applies when the unit charges, not in subsequent rounds of the combat.

If the charged unit is not in contact with the obstacle, treat it just as you would for the purposes of movement. If there isn't room for a rank of charging models to fit between the obstacle and the charged unit, it is perfectly acceptable to remove the obstacle whilst the combat goes on (put it back again as soon as possible).

Models charging a unit behind an obstacle counts as making a disordered charge.

Below is a selection of different obstacles that you can choose to include in your games:

#namecost("BLAZING BARRICADE", "")

Blazing barricades grant soft cover to units behind them. If a unit completes a charge against a defended blazing barricade, it immediately suffers one Strength 4 Hit with the Flaming Attack special rule on each of its models in contact with the obstacle.

#namecost("BLESSED BULWARK", "")

Blessed bulwarks are obstacles that grant hard cover to units behind them, and a \-1 To Hit modifier to charging models in base contact with them. In addition to this, models from the Forces of Destruction (see Allied Armies chapter) that are in base contact with the obstacle must halve their Initiative.

#namecost("FENCES AND HEDGES", "")

Fences are obstacles that grant soft cover to units behind them, and a \-1 To Hit modifier to charging models in base contact with them.

#namecost("GHOST FENCE", "")

Ghost Fences are obstacles that grant soft cover to units behind them. A unit that is defending a Ghost Fence causes Fear in the first round of any close combat.

#namecost("WALL", "")

Walls are obstacles that grant hard cover to units behind them, and a \-1 To Hit modifier to charging models in base contact with them.

== MYSTICAL

== MONUMENTS

This is essentially a catch-all category for things that don't fit comfortably in other sections. Mystical Monuments are best treated as impassable terrain for the purposes of movement. They should be given a suitable Line of Sight value agreed upon by both players. Particularly large or complex Mystical Monuments might be made up of several terrain elements, such as hills or obstacles.

Below is a selection of different obstacles that you can choose to include in your games:

#namecost("ALTAR OF KHAINE", "")

All units within 6" of an Altar of Khaine have the Frenzy special rule.

#namecost("ANVIL OF VAUL", "")

Any unit within 6" of an Anvil of Vaul gains the Flaming Attacks and Magical Attacks special rule.

#namecost("ARCANE RUINS", "")

Any Wizard within 6" of an arcane ruin may re-roll failed attempts to channel power and dispel dice.

#namecost("BANE STONE", "")

Hits made against units within 6" of a Bane Stone have a +1 bonus To Wound.

#namecost("BAD MOON LOONSHRINE", "")

Night Goblin units within 6" of a Bad Moon Loonshrine automatically add D6 additional models to their unit at the end of their Movement phase. Added models must go into the units front or rear rank in order for the unit to retain a legal formation. If additional models cannot be placed, they are not added. This has no effect on units consisting of lone models.

#namecost("CHARNEL PIT", "")

All units within 6" of a Charnel Pit suffer a \-1 penalty to their Leadership, unless they have Immunity (Psychology). Undead units within 6" of the Charnel Pit have the Regeneration (6+) special rule.

#namecost("ELVEN WAYSTONE", "")

Any Wizard within 6" of an Elven Waystone adds +1 to their channelling attempts.

#namecost("FECULENT GNARLMAW", "")

Models within 6" of the Feculent Gnarlmaw at the start of end of their Movement must pass a Toughness test or suffer a Wound which Ignores Armour Saves. This has no effect on followers of Nurgle or Clan Pestilens.

#namecost("GNAWHOLE", "")

Once per turn, any Skaven unit that moves within 1" of a Gnawhole in the Remaining Moves sub-phase may be picked up and moved to within 1" of another Gnawhole on the battlefield, facing any direction and in any in legal formation you wish.

#namecost("HERDSTONE", "")

Beastmen units within 6" of a Herdstone have the Armour Piercing (1) special rule.

#namecost("IDOL OF GORK (OR POSSIBLY MORK)", "")

Units that start the turn within 6" of the Idol can re-roll a failed charge distance roll.

#namecost("MAGIC CIRCLE", "")

Units within 6" of the Magic Circle have the Magic Resistance (2) special rule.

#namecost("SINISTER STATUE", "")

At the start of each player turn, roll a dice for every unit within 6" of the Sinister Statue. On a 4 or more, nothing happens. On a 1\-3, the unit suffers D6 Strength 4 hits.

#namecost("SORCEROUS PORTAL", "")

At the start of the Magic phase, after power and dispel dice have been generated, but before spells are cast, the sorcerous portal casts a spell with a 12" range that causes D6 Strength 4 Hits. The spell does not need line of sight, always targets the closest unit (regardless of range, if the unit is in combat and so on), is automatically cast and cannot be dispelled.

#namecost("TEMPLE OF SKULLS", "")

Any Chaos character within 6" of a Temple of Skulls may re-roll failed rolls To Hit.

#namecost("WYRDING WELL", "")

Providing it is not in combat, a unit within 3" can drink from the well at the end of its Movement phase. Roll a D6 on the following table to discover the outcome of the unit's incautious imbibing:

#chart((("D6", "Result"), ("1", "Magical Poisoning: Models in the unit
cannot make any voluntary action (including
shooting, casting spells, channelling, using
magic items and so on) until the start of the
following turn, whilst copious vomiting
ensues."), ("2-4", "Ailments Banished: The unit immediately
recovers 2D6 wounds' worth of models, as
described for the Lore of Life Regrowth spell
(see the Lores of Magic section)."), ("5-6", "The Gift of Oblivion: The unit is subject to
the rules for Stupidity and is Unbreakable for
the remainder of the game.")))

== ARCANE

== ARCHITECTURE

A piece of arcane architecture can either be treated as a building or as impassable terrain. They should be given a suitable Line of Sight value agreed upon by both players.

Below is a selection of different arcane architecture that you can choose to include in your games:

#namecost("ACROPOLIS OF HEROES", "")

Units within 6" of the Acropolis of Heroes are Stubborn. A unit garrisoning the Acropolis of Heroes gets +1 to hit in close combat.

#namecost("BALEWIND VORTEX", "")

A Wizard on or within 6" a Balewind Vortex gains a +1 casting and dispelling bonus.

#namecost("DREADFIRE PORTAL", "")

A character on or within 6" a Dreadfire Portal can roll a D6 at the end of their Remaining Moves sub-phase if they are not in combat. On a 1\-2 they suffer a Wound which Ignores Armour Saves. On a 3+ they gain the Terror special rule for the rest of the game.

#namecost("DREADSTONE BLIGHT", "")

A character on or within 6" a Dreadstone Blight can declare they are making a sacrifice at the end of their Remaining Moves sub-phase if they are not in combat. The character suffers a Wound with no saves allowed, but can re-roll all failed rolls To Hit and To Wound (not including mounts) for the rest of the game.

#namecost("DWARF BREWHOUSE", "")

All units within 6" of a Dwarf Brewhouse have the Immunity (Psychology) and Stubborn special rules. Dwarf units within 6" of the brewhouse are Unbreakable, but must first pass a Leadership test with a \-3 modifier if they want to move out of range of the building's effects.

#namecost("ETERNITY STAIR", "")

Units within 6" of an Eternity Stair must re-roll 6's To Hit in close combat and with missile weapons.

#namecost("GARDEN OF MORR", "")

Wizards using the Lore of Death within 6" of a Garden of Morr gain a +1 casting bonus. Wizards using the Lore of Necromancy within 6" of a Garden of Morr may re-roll the amount of Skeletons or Zombies raised.

#namecost("GRAIL CHAPEL", "")

All units belonging to an army from the Forces of Order within 6" of a Grail Chapel have the Regeneration (6+) special rule. Bretonnian units within 6" of a Grail Chapel also have the Stubborn special rule.

#namecost("HAUNTED MANSION", "")

At the end of the Shooting phase, all units within 6" of the Haunted Mansion suffer D6 Strength 1 hits which Ignores Armour Saves. This has no effect on models with the Undead special rule. A unit inside the haunted mansion causes Fear.

#namecost("MAGEWRATH THRONE", "")

A character within 6" of a Magewrath Throne gains the Inspiring Presence (6) special rule.

#namecost("NEHEKHARAN SPHYNX", "")

At the start of each player turn, the player whose turn it is can choose one of their characters within 6" of the Nehekharan Sphynx to take an Initiative test. If the test is failed, the model suffers a Wound which Ignores Armour Saves. If the test is passed, the challenger receives one of the following special rules, determined randomly, for the rest of the game: Devastating Charge, Heroic Killing Blow or Loremaster (Death) – the latter has no effect on non-Wizards.

#namecost("SIGMARITE SHRINE", "")

Any models belonging to an army from the Forces of Destruction (see the Allied Armies chapter) must re- roll successful invulnerable saves if they are within 6" of the Sigmarite Shrine.

#namecost("TOWER OF BLOOD", "")

Units within 6" of the Tower of Blood have the Hatred special rule. Units from the Forces of Destruction within 6" of the Tower of Blood also have the Frenzy special rule – as soon as a unit moves out of range, the Hatred/Frenzy is lost.

#namecost("WIZARD'S TOWER", "")

A Wizard who is within 3" of the tower at the start of the Magic phase gain the Loremaster special rule for that phase.

== BUILDINGS

As with other terrain elements, players should identify at the start of the game all pieces of terrain for which they are going to make use of the building rules given here. This is important, as during the game these rules may give a clear advantage to some units.

As with any terrain pieces, a small amount of common sense will go a long way when dealing with buildings. Players may agree to treat some buildings as impassable. Similarly, players may want to divide very large buildings into several parts, each of which counts as a separate building for the purposes of the following rules.

=== BUILDINGS AND LINE OF

=== SIGHT

For Line of Sight purposes, a building has a Line of Sight value of 4 for each floor it has. Models add +4 to their Line of Sight value for every floor they are on above the first one.

=== BUILDINGS AND MOVEMENT

For the most part, buildings act as impassable terrain. That said, units are allowed to enter buildings and 'garrison' them.

#namecost("GARRISONING A BUILDING", "")

A unit can enter and garrison an unoccupied building if it can move into base contact with the building during the Movement phase. Unless differently specified, only infantry, war beasts and swarms can garrison a building. War machines can be deployed in buildings, but only if there is space to deploy the model on the top floor. Units cannot garrison a building in the same turn in which they have made a reform.

It is perfectly acceptable to place a representative model from the unit in, on or next to the building to remind you that the unit is inside (standard bearers are ideal), and place the rest of the unit aside from the battlefield.

#namecost("ONLY ROOM FOR ONE", "")

Each building can hold a single unit of any size and any characters that have joined it – once garrisoned, no other units can enter the structure unless the previous tenants have left (or been driven out). Note that characters can join a garrison unit by moving into base contact with the building.

#namecost("ABANDONING A BUILDING", "")

A garrison unit can exit a building in their Remaining Moves sub-phase, though not in the same turn that it garrisoned the structure. Place the unit in any desired legal formation, with at least one model of the rear rank 1" away from the building and no model within 1" of the building. Note that no model may be placed more than double their movement value away from the building. The unit may not march in a turn that it exits

a building. This is the only way a garrison can voluntarily leave a building – it cannot charge out of a building, for example.

A unit that is Frenzied, or is otherwise forced to charge, still cannot do so if it is in a building – it must instead exit the building as close as possible to the enemy instead of charging.

=== BUILDINGS AND MAGIC

Buildings do not offer any additional protection against magic missiles, spells that affect the entire unit, that target individual models, etc. Spells that use templates and damage inflicted by Miscasts will follow the rules given later for templates, hitting D6 models. Wizards inside a building may cast spells as normal following the rules for line of sight and range given below.

=== BUILDINGS AND SHOOTING

A garrison unit can shoot in the Shooting phase, tracing line of sight from any point on the building. The forward arc of the garrison unit is assumed to be 360° . The range for a garrison's shooting attacks is always measured from the closest point of the building. Note that War Machines must still pivot on the spot as normal.

#namecost("FIVE PER FLOOR", "")

When a garrison unit shoots, there are only so many vantage points to shoot from. We normally assume only five models can shoot per floor of the building, although you may want to agree a different number with your opponent before the game begins.

#namecost("SHOOTING AT A GARRISON UNIT", "")

Enemy models can shoot at the building's garrison, provided that they can trace line of sight to the building and that it lies within their forward arc. The garrison is treated as being in hard cover – shots are otherwise resolved normally. Attacks that normally pierce ranks will only hit one model.

#namecost("TEMPLATE WEAPONS", "")

Weapons that use a template, such as a stone thrower or cannon, inflict D6 hits on any unit in a building that is touched by the template. If a building is hit by a trajectory weapon, these hits are resolved at the higher Strength only if the centre of the template lies over the building, otherwise the lower Strength is used instead. However, no single model can suffer more than one hit from any template weapon.

For example, a building is hit by a cannonball. The unit inside suffers D6 Strength 10 hits. As the cannon has the Multiple Wounds (D6) special rule, all unsaved wounds will multiply to D6.

=== ASSAULTING A BUILDING

The only way to take an occupied building is by assault it with one of your units. Each occupied building may be assaulted by a single unit during each Movement phase. The assaulting unit must declare a charge against the unit in the building (in which case, you need to have Line of Sight to the building itself, not the models within). There can be no multiple assault charges against a building, as the assaulting unit is imagined to surround it. If multiple units are forced to declare a charge against an enemy-occupied building, only one can complete the charge – the controlling player decides which one will do so after rolling the charge distances. The other units automatically fail their charges.

An assault charge is resolved just as if the building were the target unit. If the unit's charge distance is equal to or greater than the distance to the building, it is successful, otherwise the charge is failed as normal. A unit that is assaulting the building is not allowed to charge another target at the same time – it must wheel to bring as many models as possible into contact with the building and close the door in such a manner that it does not contact any enemy units when the charge is completed.

If a unit that is assaulting a building is itself charged, the assault on the building is abandoned (move the unit that was assaulting the building backward 1") The two units outside the building are now engaged in combat instead and will fight a round of combat this turn.

Troop types that cannot garrison buildings may still assault them (except chariots). Should the assault successfully drive the defender out of the building, the models cannot garrison the structure in their place. In the case of cavalry and monstrous cavalry, only the riders may attack in close combat.

#namecost("CHARGE REACTIONS", "")

A garrison unit can only choose to Hold or Stand and Shoot. If normally forced to Flee for any reason, they will instead choose to Hold.

#namecost("FIGHTING THE ASSAULT", "")

An assault isn't resolved in the same manner as a regular combat, as the two units involved are not in base contact with one another. Rather, we assume that a swirling melee takes place around the building's door, windows and other entryways, with the best fighters from either side pushing their way forwards into the fray.

Models assaulting a building count as making a disordered charge.

#namecost("Who Can Strike?", "")

At the start of the Close Combat phase, before any blows are struck, both players must choose Unit Strength 10 worth of models (with a minimum of 1 model regardless of Unit Strength) from their unit to form the courageous assault party that will fight in the assault (if the unit numbers less than Unit Strength 10, there is no choice). The attacking player will pick their assault party first.

A character that was not one of the models chosen to take part in a building assault cannot be one of the models that step up to replace casualties suffered in the assault.

#namecost("Allocating attacks", "")

Blows are struck in Initiative order as normal and, unless the player specifies otherwise, are directed against any rank-and-file models involved in the assault. If characters or other models that can normally be singled out if they are in base contact are involved in the assault, then up to half the enemy models can choose to attack them.

Note that casualties are taken from the 'back' of the unit as normal, so all models will get to fight, assuming there are enough left to do so.

#namecost("Challenges", "")

A single challenge may be issued and accepted as normal, but only models chosen as part of the two sides' assault parties can issue, accept and refuse challenges – you cannot use the challenge to increase the number of models fighting.

#namecost("Special Attacks", "")

For special attacks (such as stomps) and items that affect models in base contact, a model fighting in a building is assumed to be in base contact with one enemy model nominated by the enemy player unless fighting in a challenge.

#namecost("COMBAT RESOLUTION", "")

The victor of an assault is calculated as for a normal close combat, however combat result points can only be scored by inflicting wounds (including overkill wounds scored in a challenge, if there are any). Standards, ranks, flank and rear bonuses, and so on do not apply (the last two primarily because a unit in a building cannot really be said to have a flank or rear). A musician will still win a drawn combat, however. Otherwise, the close combat result is based purely on casualties.

#namecost("Defender Loses", "")

If the attacker wins, the defender must take a Break test. Note that units garrisoning buildings are always considered steadfast.

If the defender fails the Break test, then the garrison unit is placed outside, directly opposite the assaulting unit, as described for a unit abandoning a building. If this cannot be done, place it as near as possible to this position. It then makes its fleeing move as normal. The attacker cannot pursue, but can enter the building if its controlling player wishes (and is of a troop type that is permitted to enter the building). If the unit does not enter the building it is moved directly backwards 1".

#namecost("Other Outcomes", "")

If the garrison does not flee the building, either because they've held the attacker to a draw or beaten them, or have lost the combat but passed their Break test, then the attacker must withdraw from the assault, and is nudged directly backward 1". The close combat ends, and the attacker must launch a new assault next turn (which they may regardless of whose turn it is) if they wish another attempt at driving the garrison out. Note that a unit that attacks or defends a building in two or more consecutive turns does not count as fighting a new first round of combat. The assaulting unit does not have to take a Break test if the combat was lost.

#namecost("Sally Forth!", "")

In case the attacking unit chooses to not attack the building after a failed assault, the defending unit may instead choose to sally forth (Frenzied units must pass a Leadership to restrain). This is treated just like assaulting a building, excepting that the now-defending unit is not automatically considered steadfast and will flee as normal if they fail their break test.

=== BUILDINGS AND PANIC

Units garrisoning buildings take Panic tests normally – measure distances to the edge of the building. If the test is failed, they flee as described for units that break from combat.

In the same way, a unit that breaks from combat in a building, is destroyed while garrisoning a building, and so on, can trigger Panic tests in friendly units as normal.

=== MULTIPART BUILDINGS

The rules given here assume that your building is of a fairly small size (less than 6" x 6") and composed of a fairly homogenous structure (i.e. is made out of the same kinds of materials). None of this is to say that you cannot use bigger or more complicated buildings in your games, but you will probably want to break them down into several sections, each to be treated as its own building, which can be occupied and assaulted separately.

= CHOOSING YOUR ARMY

=== POINTS VALUES

*Every model in Warhammer has been assigned a points value, given in the relevant army list. Points values reflect a model's worth within its army.*

Most models have a basic cost that increases as you upgrade their equipment and abilities, giving you a wide range of options that you can choose to spend your points on.

By adding together all the points costs of the warriors you have selected you can find out the points value of your army. Most games of Warhammer take place between armies of an equal points value.

=== SIZE OF GAME

*To play a game of Warhammer, you and your opponent will need to decide the size of battle to fight - the larger the game you want to play, the larger the total points values of your armies. The total points value determines the maximum points you can spend on your army.*

For example, you may decide to play a 3,000-point game, in which case the total points value of all models in each players' army must come to 3,000 points or less. Normally, this will mean that the armies will actually be a shade less than 3,000 points, as it's quite hard to spend every last point.

=== THE ARMY LIST

*With the points total agreed, players need to pick their forces using the army list in the relevant Warhammer Armies book, and the system presented here.*

Unless both players agree to show their army lists to each other before the battle starts, things like Magic Items, hidden units and the like are not disclosed until they are used or appear on the battlefield. Other things that would appear visible on the model such as equipment or specific unit upgrades must be disclosed upon deployment.

Always make sure to make it clear to your opponent what unit is which, and what equipment they have if necessary. Note down what additional Magic Items and equipment each unit might have, along with chosen spells other upgrades and where any hidden units might be deployed so this is not forgotten during the battle.

#namecost("THE ARMY GENERAL", "")

*An army must always include at least one character to be its Army General.*

The Army General has the Inspiring Presence (12) special rule.

Some books might have several characters that must be the Army General. In this case, only one of them may be included in your army.

#namecost("THE BATTLE STANDARD BEARER", "")

*An army may include a character to be its Battle Standard Bearer.*

Every army may have a Battle Standard Bearer. This is option is explained in each Warhammer Armies book. Some books might have the option for several characters to the Battle Standard Bearer. In this case, only one of them may be nominated.

Unless specified, the Battle Standard Bearer may not be the Army General.

The Battle Standard Bearer has the Hold Your Ground (12) special rule.

If a Battle Standard Bearer is in a unit and Refuses a Challenge it is subsequently moved to the rear of its unit and loses the Hold Your Ground special rule until the end of the turn.

Like a normal standard, a Battle Standard adds +1 combat resolution.

Unlike normal standards, the Battle Standard is lost if the bearer is slain – other models cannot pick it up, even if they are in the same unit.

#namecost("UNIT CATEGORIES", "")

Each army list divides the forces available into several categories. In a standard game, players are limited as to how many of their points can be spent from any particular category.

#namecost("CHARACTERS", "")

You can spend up to 35% of your points on Characters.

#namecost("CHARACTER MOUNTS", "")

Many characters can take different mounts as listed in each separate book. Character mounts cannot be taken as units on their own, but are always part of the characters they are bought with.

#namecost("CORE UNITS", "")

You must spend a minimum of 25% of your points on Core units.

Unlike other types of units, there is no maximum to the proportion of your points that you can spend on Core units.

For every Core unit with the Expendable special rule in your army, you are required to include at least one other Core Unit without the Expendable rule.

#namecost("SPECIAL UNITS", "")

You can spend up to 50% of your points on Special units.

#namecost("RARE UNITS", "")

You can spend up to 25% of your points on Rare units.

#namecost("WIZARDS AND SPELL LORES", "")

Some characters are Wizards, and have access to one or more spell lores.

Although you will not choose the spells that your Wizards know until you start to play your game you do need to make a note in your army roster of which spell lore each of your Wizards will use. The spells themselves are chosen after you know which army you will be facing, but before rolling to choose sides to deploy on.

#namecost("SPECIAL CHARACTERS", "")

Special characters are exceptional individuals but, more importantly for our army selection purposes, they are unique – each can be included in an army only once.

#namecost("LIMITED CHOICES", "")

Some units are incredibly rare to the point where there is a set limit on the number of them you can include in your army. Where this is the case, they will be listed as something like 0\-1 or 0\-2 etc. This means you may at most have a number of these units in your army equal to the number given in the army list, unless specified.

#namecost("COST LIMIT", "")

No single character or unit in your army may cost more than 25% of your total points.

#namecost("DUPLICATE CHOICES", "")

There is a limit on how many duplicates of each Special and Rare unit you can include in your army. This limit does not apply to the total number of Special and Rare units overall. Note that this limit applies to the basic unit type and is not dependent on the size of the unit or optional equipment. If a character has a Monstrous Creature, Monster, Chariot, Shrine or War Machine mount that is available as a Special or Rare choice, then these will also count towards the limit of duplicate choices.

#chart((("Points Level:", "Special Units:", "Rare Units:"), ("0-999", "1", "1"), ("1000-1999", "2", "1"), ("2000-2999", "3", "1"), ("3000-3999", "4", "2"), ("4000-4999", "5", "3"), ("Each +1000", "+1", "+1")))

#note[_Example: if you play a 2500 points game; you may choose three of the same special unit in your army, but only one of each rare unit. At 3000 points, you may choose up to four of the same special unit, and two of the same rare unit._]

#namecost("UNIT SIZES", "")

In each army book is listed a unit size for each entry that consists of more than one model, such as 10\-30. In this case, 10 is the minimum of models that must be included in that unit, and 30 is the maximum number. The listed points cost is multiplied by each model.

In the case of Mixed Units, the listed unit size does not include any handlers. The number of Handlers is always specified separately.

#namecost("EQUIPMENT", "")

Most units have access to some form of equipment, and can often upgrade them. Note that unless specified, every single model in the unit is armed with the same equipment, and any upgrades taken must be bought for every model in the unit.

Note that a model can only have one suit of armour; such as light, medium or heavy. For example; if they have light armour by default and upgrade to medium armour, the light armour is discarded.

#namecost("UPGRADES", "")

Some units have access to specific upgrades, typically special rules or other unique equipment. These are listed separately and may be included according to the unit's options in each army book.

= ALLIED ARMIES

While games of Warhammer typically take place between two people, there is nothing stopping you from playing games with allies. To forge your alliances, split the players into two teams. The teams do not need to have the same number of players, but if you are playing a game that uses points values it is best to give a little thought to the relative sizes of the players' collections when assigning teams, so that you can be happy that the balance of the game is as you wish it to be. The players can now pick their armies and begin to play.

Alternatively, if both players agree, you could choose to pick your force from two different armies. Ideally this should be done by both sides so that each player is given an equal chance to build an allied force.

Regardless of the number of players, each army must have their own Army General.

=== ALLIANCE & ALIGNMENT

Each Warhammer army belong to either the Forces of Order, Forces of Destruction or Non-Aligned Forces. This determines how easily each of these armies are likely to ally with each other during the game.

*The Forces of Order are:*

- _Albion_
- _Amazons_
- _Bretonnia_
- _Cathay_
- _Dwarfs_
- _The Empire_
- _Estalia_
- _Halflings_
- _High Elves_
- _Kingdoms of Ind_
- _Kislev_
- _Lizardmen_
- _Nippon_
- _Wood Elves_

*The Forces of Destruction are:*

- _Beastmen_
- _Chaos Dwarfs_
- _Daemons of Chaos_
- _Dark Elves_
- _Orcs & Goblins_
- _Skaven_
- _Vampire Counts_
- _Warriors of Chaos_
- _Zombie Pirates of the Vampire Coast_

*The Non-aligned Forces are:*

- _Araby_
- _Dogs of War_
- _Hobgoblins_
- _Norsca_
- _Ogre Kingdoms_
- _Pirates of Sartosa_
- _Tomb Kings_

=== BOUND BY BLOOD

Units chosen from the same faction (that is, if they are from the same Warhammer Armies book or Expansion to the same Warhammer Armies book) are considered to be Bound by Blood, and are treated as 'friendly units' from all points of view.

This means that, to give some examples, Bound by Blood units:

\- _Can be joined by allied characters,_

\- _Can use an allied Army General's Inspiring Presence special rule._

\- _Can use an allied Battle Standard's Hold Your Ground special rule._

\- _Cause Panic tests in allies when they are destroyed, flee through allies, and so on._

\- _Are counted as being 'friendly' units from the point of view of targeting spells, abilities and so on. E.g. they can be targeted by augment spells, but not hex, direct damage or magic missile spells, and so on._

=== TRUSTED ALLIES

Units from different armies, but which share the same alignment (i.e. either Order or Destruction – non- aligned units are always treated as being suspicious allies, as detailed later) are considered to be Trusted Allies when they fight in an alliance.

Trusted Allies follow the rules for Bound by Blood except that they:

\- _Cannot be joined by allied characters._

\- _Cannot use an allied Army General's Inspiring Presence special rule._

\- _Cannot use an allied Battle Standard's Hold Your Ground special rule._

=== SUSPICIOUS ALLIES

Units from the non-aligned forces are always considered to be suspicious allies.

Suspicious Allies work exactly like Trusted Allies, except that they:

\- _Are not counted as 'friendly' units from the point of view of targeting spells or other special rules._

#namecost("MAGIC", "")

If the alliance contains only Trusted or Suspicious Allies, power and dispel dice generated by the Winds of Magic can be split between the allied armies as the controlling players wish, but this must be done before any spellcasting is attempted. Dice generated by channelling must only be used by the channelling Wizard's army, as must any dice generated by magic items, special abilities and so on.

=== DESPERATE ALLIANCES

Order and Destruction only find common cause in the most desperate of circumstances. Units from the Forces of Order always treat units from the Forces of Destruction as being desperate allies, and vice versa.

Desperate Allies work exactly like Suspicious Allies, except that they:

\- _Have to take Dangerous Terrain tests when fleeing through allies._

\- _Are counted as 'enemy' units from the point of view of targeting spells or special rules._

\- _Are treated as Expendable by their allies._

#namecost("MAGIC", "")

If the alliance contains one or more desperate allies, the power and dispel dice generated by the Winds of Magic must be split as equally as possible between the various allied armies as long as both of them contains at least one Wizard. If the dice cannot be split equally, roll off to allocate any spare dice. Dice generated by channelling must only be used by the channelling Wizard's army, as must any dice generated by magic items, special abilities and so on. Note that Wizards are not permitted to dispel an enemy spell that targets only desperate allies.

=== FRAGILE ALLIANCES

An alliance that includes Dark Elves, Hobgoblins or Skaven is automatically a fragile alliance.

All relations in a fragile alliance start out normally, according to the various alignments. However, each player in a fragile alliance must roll a D6 at the start of their turn – on a roll of 1\-3, all of that player's alliances immediately become one step worse for the rest of the game (unless they're already desperate allies).

= VICTORY CONDITIONS

=== VICTORY POINTS

Many pitched battles use victory points as convenient shorthand for calculating the winner of a battle. Victory points are, first and foremost, awarded for destroying enemy units, but other pivotal actions, such as slaying the enemy General, or capturing their standards are also assigned victory point values, to represent their effect on the battle's outcome. Essentially, anything that enheartens your army or demoralises your opponent's curs is worth victory points. At the end of the game, you are awarded victory points for the following achievements:

#namecost("DECIMATED", "")

Each enemy unit that has half or less of their starting Unit Strength left at the end of the battle is worth a number of victory points equal to 50% of the number of points it cost to include the unit in the army.

#namecost("BROKEN", "")

Each enemy unit that has more than half of their starting Unit Strength left and that is fleeing but is still on the table at the end of the battle is worth a number of victory points equal to 50% of the number of points it cost to include the unit in the army.

#namecost("SHATTERED", "")

Each enemy unit that has half or less of their starting Unit Strength left and that is also fleeing but is still on the table at the end of the battle is worth a number of victory points equal to 75% of the number of points it cost to include the unit in the army.

#namecost("DEAD OR FLED", "")

Each enemy unit that has been destroyed or has fled off the table is worth a number of victory points equal to 100% of the number of points it cost to include the unit in the army.

#namecost("WOUNDED", "")

Each character or other lone models that has half or less of their starting number wounds remaining at the end of the battle is worth a number of victory points equal to 50% of the number of points it cost to include the unit in the army.

#namecost("THE KING IS DEAD", "")

If the enemy General is slain or has fled the table, you score an additional 100 victory points.

#namecost("SEIZED STANDARDS", "")

You score an additional 25 victory points for every enemy standard bearer that was removed as a result of a successful pursuit move or slain in combat. If the enemy Battle Standard Bearer is slain under these circumstances, their death instead scores an additional 100 victory points.

Note that if a standard bearer of any kind is killed by a shooting attack, spell or anything else outside of close combat, these extra victory points are not scored (the enemy is assumed to whisk their prized banner away before your troops can get hold of it).

#namecost("SCENARIO SPECIAL RULES", "")

Some scenarios use unique special rules that confer extra abilities, restrictions or effects onto your games. We group all such elements into the Scenario Special Rules section, where they can be fully explained.

#namecost("WHAT'S IN A UNIT?", "")

When we are talking about Victory Points scored for a unit, this includes the unit's basic cost as well as any upgrades bought for it like Command Group models, weapon/armour upgrades, mounts and Magic Items.

Some army books allow certain units to buy additional models for them that operates like their own unit, such as Night Goblin Fanatics or Skaven Weapon Teams. In this case, Victory Points are rewarded separately for these additional models and the main unit they were bought with.

=== VICTORY POINTS CHART

In order to calculate the result, sum up the final Victory Points of both players and subtract the lower result from the higher. Then divide the difference with the size of the battle itself, and consult the chart below to determine the result of the battle.

#chart((("Points Difference (%)", "Result"), ("0-9", "Draw"), ("10-24", "Marginal Victory"), ("25-49", "Solid Victory"), ("50+", "Massacre!")))

For example, in a 2500 points battle where Player 1 scores 1000 Victory Points vs Player 2's 1500 Victory Points gives a difference of 500 points. Dividing 2500 with 500 gives a result of 0.2 (20%), and thus Player 2 has won a Marginal Victory!

If a player concedes, the opponent automatically scores a 'Massacre!'.

= SCENARIOS

The scenarios given on the following few pages represent pitched battles, where the armies are of roughly the same size and the situation gives neither side a particular advantage. They are each designed to give both sides an equal chance of winning, and have few, if any, scenario special rules.

There are two ways that you can choose which pitched battle to use. The first is to pick randomly; by rolling on the Pitched battle table shown below:

*D6 Pitched Battle 1* Battleline *2* Dawn Attack *3* Battle for the Pass *4* Blood and Glory *5* Meeting Engagement *6* The Watchtower

The second method is to discuss the matter with your opponent and agree which battle you both want to fight. This gives the maximum amount of choice and ensures that you don't end up in a scenario that neither of you wants to play.

Each pitched battle contains the information you need to get set up and playing, broken down into the following categories:

- The Armies (this will normally be two armies of equal points value)
- The Battlefield
- Deployment
- First Turn
- Game Length, Victory Conditions
- Scenario Special Rules

This format governs all Warhammer scenarios – not just the ones found in this volume.

== BATTLELINE
#namecost("THE ARMIES", "")

Each player chooses their force using the army list from a Warhammer Armies book, to an equal points value agreed before the game.

#namecost("THE BATTLEFIELD", "")

Set up terrain as described under the “Fighting a Battle” chapter.

#namecost("DEPLOYMENT", "")

Roll off to see which player picks the half of the table they will deploy in. The opponent will deploy in the other half.

Players then take it in turn to place units on the table, using the alternating units method of deployment. Units may be placed anywhere in their deployment zone that is more than 12" from the centre line.

#namecost("FIRST TURN", "")

Roll off after deployment to see which player takes the first turn.

#namecost("GAME LENGTH", "")

The battle will last for six game turns, or until a time limit agreed by the players is reached, whichever comes first.

#namecost("VICTORY CONDITIONS", "")

Use victory points to determine the winner of the battle.

#namecost("SCENARIO SPECIAL RULES", "")

None.

#diagram("/assets/figures/rulebook/img-0601.jpg", 0.762)

== DAWN ATTACK
#namecost("THE ARMIES", "")

Each player chooses their force using the army list from a Warhammer Armies book, to an equal points value agreed before the game.

#namecost("THE BATTLEFIELD", "")

Set up terrain as described under the "Fighting a Battle" chapter.

#namecost("DEPLOYMENT", "")

Roll off to see which player picks the half of the table they will deploy in. The opponent will deploy in the other half.

The player that won the roll off must deploy their entire army first. Before deploying each unit, roll a dice and refer to the Deployment table to see where the unit must deploy.

Units with the Scouts special rule do not roll on the table, and deploy using their own special rules after normal deployment is complete. Characters may either deploy on their own, rolling on the table like any other unit, or deploy as part of a unit they are allowed to join (state that the character will join the unit before rolling to see where the unit and character will deploy).

Once the first player has deployed, their opponent must do likewise, rolling for each unit as described above.

#namecost("DEPLOYMENT TABLE", "")

*D6 Result: 1 Left Flank.* The entire unit must be placed in the player's half, more than 12" from the centre line, and within 18" of the narrow table edge on the player's left. *2 Right Flank.* The entire unit must be placed in the player's half, more than 12" from the centre line, and within 18" of the narrow table edge on the player's right. *3\-5 Centre.* The entire unit must be placed in the player's half, more than 12" from the centre line, and more than 18" from either narrow table edge. *6 Choose.* The entire unit must be placed in the player's half, anywhere more than 12" from the centre line.

#namecost("FIRST TURN", "")

After deployment, the player that set up second rolls a dice. On a roll of 6 they can choose who has the first turn. On a roll of 1\-5 the player that set up first chooses who has the first turn.

#namecost("GAME LENGTH", "")

The battle will last for six game turns, or until a time limit agreed by the players is reached, whichever comes first.

#namecost("VICTORY CONDITIONS", "")

Use victory points to determine the winner of the battle.

#namecost("SCENARIO SPECIAL RULES", "")

None.

#diagram("/assets/figures/rulebook/img-0603.jpg", 0.754)

== BATTLE FOR THE PASS
#namecost("THE ARMIES", "")

Each player chooses their force using the army list from a Warhammer Armies book, to an equal points value agreed before the game.

#namecost("THE BATTLEFIELD", "")

Set up terrain as described under the “Fighting a Battle” chapter. It's worth keeping in mind when setting up the terrain that the battle will be fought down the length of the table, in a narrow pass with impassable mountains just off each of the long table edges.

#namecost("DEPLOYMENT", "")

Roll off to see which player picks the half of the table they want to deploy in. The opponent deploys in the other half. Note that in this pitched battle the game is fought down the length of the table rather than across its width, as shown on the deployment map below.

Units may be placed anywhere in their half that is more than 12" from the centre line.

Players take it in turn to place units on the table, using the alternating unit method of deployment.

#namecost("FIRST TURN", "")

Roll off after deployment to see which player receives the first turn.

#namecost("GAME LENGTH", "")

The battle will last for six game turns, or until a time limit agreed by the players is reached, whichever comes first.

#namecost("VICTORY CONDITIONS", "")

Use victory points to determine the winner of the battle.

#namecost("SCENARIO SPECIAL RULES", "")

*Bottleneck:* The long table edges count as impassable terrain. Following the normal rules, fleeing units can force a way through the impassable terrain and disappear from the table. Other units (including reinforcements) may not enter or leave via a long table edge unless they are Ethereal or a Flyer. This means that pursuing or overrunning units, other than Ethereals and Flyers, must stop 1" away from the long table edges.

#diagram("/assets/figures/rulebook/img-0605.jpg", 0.759)

== BLOOD AND GLORY
#namecost("THE ARMIES", "")

Each player chooses their force using the army list from a Warhammer Armies book, to an equal points value agreed before the game.

#namecost("THE BATTLEFIELD", "")

Set up terrain as described under the "Fighting a Battle" chapter.

#namecost("DEPLOYMENT", "")

Roll off to see which player chooses the half of the table they will deploy in. The opponent will deploy in the other half. Players then take it in turns to place units on the table, using the alternating units method of deployment.

Units may be placed anywhere in their half of the table that is more than 9" from the centre line, and more than 9" away from either narrow table edge.

#namecost("FIRST TURN", "")

Roll off after deployment to see which player receives the first turn.

#namecost("GAME LENGTH", "")

The game ends at the end of the 6th game turn or as soon as an army breaks. An army immediately breaks when its Fortitude is equal to or less than its Breaking Point (see below).

#namecost("VICTORY CONDITIONS", "")

The first army to break the enemy wins the battle (see above). If neither army has broken by the end of the game, or if both were to break simultaneously, use victory points to determine the winner.

#namecost("SCENARIO SPECIAL RULES", "")

*Breaking Point:* An army's breaking point is equal to one for every thousand points in the army, rounding any fractions up. So, an army of up to 1,000 points has a breaking point of one, an army worth 1,001 to 2,000 points has a breaking point of two, etc.

*Fortitude:* Any army's fortitude is equal to the current number of standards in the army (including the battle standard), plus two for the General. Fleeing units and units that are only temporarily off-table still count.

For example, a 2,000 point army (breaking point 2) has three unit standards, a battle standard, and a General, giving it a starting fortitude of six (3 + 1 + 2=6). It would break as soon as its fortitude was reduced to two.

#diagram("/assets/figures/rulebook/img-0607.jpg", 0.75)

== MEETING ENGAGEMENT
#namecost("THE ARMIES", "")

Each player chooses their force using the army list from a Warhammer Armies book, to an equal points value agreed before the game.

#namecost("THE BATTLEFIELD", "")

Set up terrain as described under the “Fighting a Battle” chapter.

#namecost("DEPLOYMENT", "")

In this scenario the table is divided into two halves from corner to corner, as shown on the deployment map. The players roll off and the winner chooses the two opposite corners to be used and which half of the table each player will deploy in.

The player that won the roll-off must deploy their entire army first. Before deploying the army, roll a dice for each separate unit, including each individual character and war machine. On a roll of 1 the unit must be held back as reserves (see the special rules for Reserves on the right). After all units have been rolled for, those that are not reserves can be deployed in their side's deployment zone, anywhere that is more than 6" away from the centre line.

Once the first player had deployed, their opponent does likewise, in exactly the same manner.

#namecost("FIRST TURN", "")

After deployment, the player that set up second rolls a dice. On a roll of 6 they can choose who has the first turn. On a roll of 1\-5 the player that set up first chooses who has the first turn.

#namecost("GAME LENGTH", "")

The battle will last for six game turns, or until a time limit agreed by the players is reached, whichever comes first.

#namecost("VICTORY CONDITIONS", "")

Use victory points to determine the winner of the battle.

#namecost("SCENARIO SPECIAL RULES", "")

*Reserves:* Reserves are not deployed at the start of the battle. Instead they can enter play on any turn of their player's choosing, using the reinforcements rules. They may enter at any point on the long table edge of their deployment zone.

#diagram("/assets/figures/rulebook/img-0609.jpg", 0.762)

== THE WATCHTOWER
#namecost("THE ARMIES", "")

Each player chooses their force using the army list from a Warhammer Armies book, to an equal points value agreed before the game.

#namecost("THE BATTLEFIELD", "")

Set up the watchtower as described below, and then set up any remaining terrain using the method described under the “Fighting a Battle” chapter. The watchtower counts as the first of the terrain pieces that must be set up.

A building must be set up at the centre of the table. Any building model can be used, but a Warhammer Watchtower is ideal. If you don't have a building model, use any other terrain feature of your choice.

#namecost("DEPLOYMENT", "")

Roll off to see who controls the watchtower at the start of the battle. The player that controls the tower may deploy a single Core infantry unit of no more than 20 models in the tower if they wish to do so. The unit is not allowed to voluntarily leave the tower until after the first game turn of the battle has been completed. The opposing player then picks the half of the table they will deploy in. Players then take it in turn to place units on the table, starting with the player that doesn't control the watchtower, using the alternating units method of deployment. Units may be placed anywhere in their half that is more than 12" from the centre line.

#namecost("FIRST TURN", "")

The player that does not control the watchtower receives the first turn.

#namecost("GAME LENGTH", "")

Roll a D6 at the end of each game turn, starting with the end of game turn 4. Add the turn number to the dice roll. If the score is 10 or more, then the battle ends immediately. If the total is less than 10 then the battle continues for at least one more game turn.

#namecost("VICTORY CONDITIONS", "")

At the end of the battle, the side that controls the watchtower is the winner. The watchtower is controlled by calculating the amount of Unit Strength of all units within 6" of it that are not fleeing on each side. Any unit garrisoning Watchtower counts as double their Unit Strength (to a maximum of +20) for this purpose. The side with the highest Unit Strength is the winner. In the unlikely event that neither player can claim to control the watchtower, use victory points to determine the winner of the battle.

#namecost("SCENARIO SPECIAL RULES", "")

None.

#diagram("/assets/figures/rulebook/img-0611.jpg", 0.756)

= MAGIC ITEMS

=== SELECTING MAGIC ITEMS

Each Warhammer Armies book describes in detail the many different kinds of magic items that each army can use. Here we shall examine the magic items that are commonly used by all races. Where a model has the option of choosing one or more magic items, it will be clearly stated in their army list entry, as will any restrictions on the magic items they can take.

In addition to any specific restrictions noted in the relevant Warhammer Armies book, there are rules that govern the selection of all magic items, regardless of the bearer's allegiance. These can be summarised as follows:

=== UNIQUE & COMMON

Magic items are considered to be unique – you can only have one of each in your army. However, any magic item marked with an asterisk (\*) is considered to be common, and thus can be taken in multiples in your army.

=== BALANCE OF POWER

Each model can normally only carry one of each type of magic item. Magic items are divided into six categories: Magic Weapons, Magic Armour, Talismans, Enchanted Items, Arcane Items and Magic Standards. A model can only ever choose one item from each category, unless specified.

== MAGIC WEAPONS

Unless otherwise stated, a magic weapon is treated as a hand weapon (replacing the model's regular hand weapon), and follows the rules for such. This means that a magic weapon can be used with both an additional hand weapon or shield/buckler following their normal rules. In the case of non-magical additional hand weapons, the +1 Attack does not benefit from any special rules from the magic weapon.

In order for a model to be able to choose a particular piece of weapon (such as great weapon, polearm or two hand weapons) they must be able to pick this as a mundane option or have it as part of their default equipment, unless it is specified. Note that magic weapons that count as normal hand weapons may be taken by any model that can choose magic weapons.

A character that has a magic close combat weapon cannot use any other close combat weapons. If a character has more than one magic weapon, they must choose which one to use at the start of the combat (unless a rule specifies that both can be used at the same time) – the chosen weapon must be used for the duration of the combat.

#namecost("GIANT BLADE", "45 points")

The wielder gains +3 Strength.

#namecost("SWORD OF BLOODSHED", "45 points")

The wielder gains +3 Attacks.

#namecost("SWORD OF POWER", "30 points")

The wielder gains +2 Strength.

#namecost("SWORD OF STRIFE", "30 points")

The wielder gains +2 Attacks.

#namecost("SWORD OF SWIFT SLAYING", "25 points")

The wielder gains the Always Strikes First special rule.

#namecost("PARRYING BLADE", "20 points")

The wielder gains the Parry (5+) special rule.

#namecost("BLADE OF SEA GOLD", "15 points")

The wielder gains the Armour Piercing (3) special rule.

#namecost("OGRE BLADE", "15 points")

The wielder gains the Multiple Wounds (D3) special rule.

#namecost("HEADSMAN'S AXE", "15 points")

The wielder gains the Killing Blow special rule.

#namecost("SWORD OF STRIKING*", "15 points")

The wielder gains +1 To Hit.

#namecost("SWORD OF MIGHT*", "15 points")

The wielder gains +1 Strength.

#namecost("SWORD OF BATTLE*", "15 points")

The wielder gains +1 Attack.

#namecost("SHRIEKING BLADE", "15 points")

The wielder gains the Fear special rule.

#namecost("BERSERKER SWORD", "10 points")

The wielder gains the Frenzy special rule and can never lose their Frenzy.

#namecost("BLADE OF SLICING", "10 points")

The wielder gains the Armour Piercing (2) special rule.

#namecost("VENOM SWORD", "10 points")

The wielder gains the Poisoned Attacks special rule.

#namecost("BITING BLADE*", "5 points")

The wielder gains the Armour Piercing (1) special rule.

#namecost("BURNING BLADE*", "5 points")

The wielder gains the Flaming Attacks special rule.

== MAGIC ARMOUR

Except where otherwise stated, magical suits of armour (light, medium or heavy) and bucklers/shields follow the same rules as mundane ones, but keep in mind that a model can only have one suit of armour and one buckler/shield, so if you give a model a magical suit of armour or a magical shield, it replaces any mundane equivalent already worn by the model.

In order for a model to be able to choose a particular piece of armour (such as heavy armour or a shield) they must be able to pick this as a mundane option or have it as part of their default equipment.

Magic armours that are not specified as suits or shields (such as helmets, gauntlets and so on) can always be worn by models that are allowed to wear any non- magical armour.

#namecost("ARMOUR OF DESTINY", "60 points")

Heavy armour. The wearer gains the Magical Ward (4+) special rule.

#namecost("ARMOUR OF RESILIENCE", "40 points")

Heavy armour. The wearer gains +1 Toughness.

#namecost("ARMOUR OF SILVERED STEEL", "40 points")

Heavy armour. The wearer gains a 2+ armour save.

#namecost("ARMOUR OF FORTUNE", "35 points")

Medium armour. The wearer gains the Magical Ward (5+) special rule.

#namecost("TRICKSTER'S HELM", "30 points")

Infantry, Monstrous Infantry or Cavalry only. The helmet gives the wearer a 6+ armour save. Any successful roll To Wound made against the wearer of the Trickster's Helm must be re-rolled.

#namecost("GLITTERING SCALES", "25 points")

Light armour. Enemy models suffer \-1 To Hit the wearer in close combat.

#namecost("SEAMLESS ARMOUR", "25 points")

Medium armour. This armour ignores negative modifiers to its save, meaning it cannot be reduced below 5+.

#namecost("ALLEVIATING ARMOUR", "20 points")

Medium armour. The bearer gains the Regeneration (6+) special rule.

#namecost("GAMBLER'S ARMOUR", "20 points")

Light armour. The wearer gains the Magical Ward (6+) special rule.

#namecost("BEDAZZLING HELM", "20 points")

The helmet gives the wearer a 6+ armour save. Enemy models targeting the wearer in close combat must re- roll 6's To Hit against them.

#namecost("SHIELD OF THE WARRIOR TRUE", "15 points")

Shield. The bearer gains the Magical Ward (5+) special rule against missile attacks.

#namecost("DRAGONHELM", "10 points")

The helmet gives the wearer a 6+ armour save and the Immunity (Flaming Attacks) special rule.

#namecost("ENCHANTED SHIELD*", "10 points")

Shield. The bearer gains an additional +1 to their armour save against attacks to the front arc.

#namecost("CHARMED SHIELD*", "5 points")

Shield. One use only. The first hit suffered by the bearer is ignored on a roll of 2+.

== TALISMANS

The Talismans category includes items that offer protection for the bearer.

#namecost("TALISMAN OF PRESERVATION", "40 points")

The bearer gains the Magical Ward (4+) special rule.

#namecost("OBSIDIAN LODESTONE", "30 points")

The bearer and any unit they join gain the Magic Resistance (3) special rule.

#namecost("TALISMAN OF ENDURANCE", "25 points")

The bearer gains the Magical Ward (5+) special rule.

#namecost("OBSIDIAN AMULET", "20 points")

The bearer and any unit they join gain the Magic Resistance (2) special rule.

#namecost("DAWNSTONE*", "15 points")

Infantry, Monstrous Infantry or Cavalry only. The bearer may re-roll 1's when taking armour saves.

#namecost("OPAL AMULET*", "15 points")

One use only. The bearer gains the Magical Ward (2+) special rule against the first unsaved wound suffered by the bearer.

#namecost("OBSIDIAN TRINKET*", "10 points")

The bearer and any unit they join gain the Magic Resistance (1) special rule.

#namecost("SEED OF REBIRTH*", "10 points")

The bearer gains the Regeneration (6+) special rule.

#namecost("TALISMAN OF PROTECTION*", "10 points")

The bearer gains the Magical Ward (6+) special rule.

#namecost("LUCKY TRINKET*", "5 points")

One use only. The bearer may re-roll a single failed armour or invulnerable save.

== ARCANE ITEMS

Only a character with a Wizard level can carry Arcane Items. Unlike other magic item types, Wizards may take several Arcane Items, chosen from the categories below. A Wizard may not take more than one item from the same category.

*Staffs* cover things like wands, staves, rods and sceptres, and usually provide bonuses to casting or dispelling.

*Charms* include scrolls, stones and gems, and provide temporary effects with a limited number of uses.

*Relics* include tomes, cloaks, rings and familiars, and provide magical abilities or utility effects.

#namecost("WAND OF THE WINDS", "40 points")

Staff. The bearer of this item may re-roll one D3 when determining the Winds of Magic in each Magic phase.

#namecost("DESTROY MAGIC SCROLL", "35 points")

Charm. One use only. When an enemy cast a spell, the bearer may immediately counter its effects by using this item instead of attempting to dispel the spell by using dispel dice. This gives them 6 free dispel dice to attempt to dispel the spell, which cannot be combined with any other dispel dice (Ultimate Power applies as normal). In addition, roll a D6. On a 4+, the spell is destroyed and the enemy caster loses access to the spell for the rest of the game.

#namecost("FEEDBACK SCROLL", "35 points")

Charm. One use only. When an enemy spell has been cast, the bearer can use this item instead of attempting to dispel the spell. The spell is cast as normal, but, after the spell has been resolved, roll a dice for every dice used to cast the spell. The casting Wizard suffer 1 Wound which Ignores Armour Saves for every result of 5+ rolled.

#namecost("DISPEL SCROLL", "25 points")

Charm. One use only. When an enemy spell has been cast, the bearer can use it instead of attempting to dispel the spell by using dispel dice. This gives them 6 free dispel dice to attempt to dispel the spell, which cannot be combined with any other dispel dice (Ultimate Power applies as normal). This may also be used to dispel spells that Remains in Play.

#namecost("SCROLL OF LEACHING", "25 points")

Charm. One use only. When an enemy spell has been cast, the bearer can use this item instead of attempting to dispel the spell. The spell is cast as normal, but, after the spell has been resolved, the bearer of the scroll adds a number of dispel dice to his pool equal to the number of dice used to cast the spell.

#namecost("POWER FAMILIAR", "25 points")

Relic. The Familiar adds one Power Dice in each of your Magic phases.

#namecost("WAND OF JADE", "25 points")

Staff. The bearer gains +6" casting range to their spells (excluding auras).

#namecost("WAND OF JET", "25 points")

Staff. The bearer gains +6" dispel range.

#namecost("CHANNELLING STAFF", "20 points")

Staff. The bearer rolls one additional dice whenever they attempt to channel power or dispel dice.

#namecost("FORBIDDEN ROD", "20 points")

Staff. One use only. The Forbidden Rod adds +D6 dice to the power pool at the start of the caster's own Magic phase. However, it also inflicts 1 Wound which Ignores Armour Saves on the bearer.

#namecost("WAND OF ONYX", "20 points")

Staff. The bearer gains a +1 casting bonus.

#namecost("SCEPTRE OF STABILITY", "20 points")

Staff. The bearer gains a +1 dispel bonus.

#namecost("ARCANE FAMILIAR*", "15 points")

Relic. The bearer can choose one Signature spell as an additional spell from any of the eight Winds of Magic in this book, even if they normally cannot choose that lore.

#namecost("EARTHING ROD*", "15 points")

Staff. One use only. If the bearer suffers a miscast, they do not add the number of power dice used to the result.

#namecost("POWER SCROLL*", "15 points")

Charm. One use only. This item can be used before the bearer makes a casting attempt. During that casting attempt, any roll of a double (except 1's) counts as a 6 for the purpose of resolving Ultimate Power.

#namecost("LUCKSTONE*", "10 points")

Charm. One use only. The bearer can re-roll all of the dice rolled to cast or dispel a spell. This can effectively cancel a miscast result, and cause Ultimate Power or a miscast.

#namecost("POWER STONE*", "10 points")

Charm. One use only. The bearer can declare that they are using the power stone immediately before casting a spell. If they do so, +D3 dice are added to the power dice that they are going to roll (you still need to roll at least one dice from the power pool). This allows a Wizard to use more than they are normally allowed to.

#namecost("SCROLL OF SHIELDING*", "10 points")

Charm. One use only. This item can be used when an enemy attempts to cast a spell targeting one of your units within dispel range. The target is granted Magic Resistance (3) against the spell.

#namecost("SPELL FAMILIAR*", "10 points")

Relic. The bearer knows one additional spell from those normally allowed to them.

== ENCHANTED ITEMS

The Enchanted Items category includes items that typically offer a utility ability for either the bearer or any unit they are with.

#namecost("RUBY RING OF RUIN", "35 points")

Bound spell. The Ruby Ring of Ruin contains the _Fireball_ spell from the Lore of Fire.

#namecost("BOOTS OF FLIGHT", "20 points")

Infantry only. The Boots of Flight give the wearer the Movement 10 and the Strider special rule.

#namecost("CROWN OF COMMAND", "20 points")

The Crown of Command gives the bearer and any unit they join the Disciplined special rule for as long as the bearer remains with the unit.

#namecost("HEALING POTION*", "15 points")

One use only. The Healing Potion can be drunk at the start of the controlling player's turn. The model immediately recovers D3 Wounds (ignoring any additional Wounds from mounts) up to their starting value.

#namecost("POTION OF STRENGTH*", "10 points")

One use only. The Potion of Strength can be used at the start of any phase. The character gains +D3 Strength until the end of the turn.

#namecost("POTION OF TOUGHNESS*", "10 points")

One use only. The Potion of Toughness can be used at the start of any phase. The character gains +D3 Toughness until the end of the turn.

#namecost("POTION OF SPEED*", "10 points")

One use only. The Potion of Speed can be used at the start of any phase. The character gains +D3 Attacks until the end of the turn.

#namecost("POTION OF FOOLHARDINESS*", "5 points")

One use only. The Potion of Foolhardiness can be drunk at the start of any phase. The character gains the Frenzy special rule until the end of the turn.

#namecost("WARRIOR FAMILIAR*", "5 points")

The model gains an additional Strength 3 Attack. This does not benefit from any weapon, item or special rule used by the character. You may still take another Enchanted Item in addition to the Warrior Familiar, and it also does not count against the maximum points limit of magic items normally allowed for the character.

== MAGIC STANDARDS

Some units are allowed to carry magic banners, as detailed in their army list entry. The only character permitted to carry a Magic Standard is the army's battle Standard Bearer.

Standards can only be carried by a standard bearer, as shown in the army list in the relevant Warhammer Armies book.

#namecost("BANNER OF DEFIANCE", "25 points")

A unit with this standard gains the Stubborn special rule.

#namecost("BANNER OF IRON RESOLVE", "25 points")

A unit with this standard gains the Immunity (Psychology) special rule.

#namecost("RAMPAGER'S STANDARD", "25 points")

A unit with this standard can re-roll its charge distance dice.

#namecost("BANNER OF SWIFTNESS", "25 points")

A unit with this standard gains the Swiftstride special rule.

#namecost("RAZOR STANDARD", "25 points")

A unit with this standard gains the Armour Piercing (1) special rule.

#namecost("RANGER'S STANDARD", "20 points")

A unit with this standard gains the Strider special rule.

#namecost("BANNER OF ETERNAL FLAME", "15 points")

A unit with this standard gains the Magical Attacks and Flaming Attacks special rules.

#namecost("STANDARD OF DISCIPLINE", "15 points")

A unit with this standard has +1 Leadership, but cannot use the Inspiring Presence special rule. If a model with this special rule joins this unit, other units using their Inspiring Presence do not benefit from the +1 Leadership.

#namecost("STANDARD OF SHIELDING", "15 points")

A unit with this standard gains the Magical Ward (6+) special rule against missile attacks.

#namecost("WAR BANNER*", "15 points")

A unit with this standard adds +1 to combat resolution.

#namecost("LICHBONE PENNANT*", "10 points")

A unit with this standard gains the Magic Resistance (1) special rule.

#namecost("GLEAMING PENNANT*", "5 points")

One use only. A unit with this standard can re-roll one failed Leadership test.

#lore("THE LORE OF FIRE")[

#spell("KINDLEFLAME", "Lore Attribute")[All of the spells in the Lore of Fire are Flaming Attacks. In addition, if a spell from the Lore of Fire inflicts hits on an enemy unit that has already been hit by a spell from the Lore of Fire in the same Magic phase (even if the spell was cast by a different Wizard) the spell inflicts an additional D3 Strength 4 hits on the unit.]

#spell("FIREBALL", "Signature Spell", cast: "6+")[_Fireball_ is a *magic missile* with a range of 30" that causes D6 Strength 4 hits.]

#spell("CASCADING FIRE-CLOAK", 1, cast: "5+")[Remains in play. _Cascading Fire-Cloak_ is an *augment* spell with a range of 18". Each enemy unit in base contact with the target unit suffers 2D6 Strength 4 hits at the end of each Magic phase.]

#spell("BREATHE FIRE", 1, cast: "6+")[_Breathe Fire_ is a *direct damage* spell. The caster makes a Breath Weapon attack. This may be cast in close combat, following the normal rules for Breath Weapons. All models Hit suffer a Strength 4 hit.]

#spell("FLAMING SWORD OF RHUIN", 1, cast: "6+")[_Flaming Sword of Rhuin_ is an *augment* spell with a range of 18". The target unit (except mounts) has a +1 bonus when rolling To Wound with all shooting and close combat attacks until the start of the caster's next Magic phase. The target unit also counts as having both the Magical Attacks and Flaming Attacks special rules.]

#spell("FIRES OF U'ZHUL", 2, cast: "6+")[_Fires of U'Zhul_ is a *magic missile* with a range of 18" and causes D6 Strength 5 hits.]

#spell("SWELTERING HEAT", 2, cast: "7+")[Remains in play. _Sweltering Heat_ is a *hex* spell with a range of 24". Whenever the target charges, pursues or flees, it rolls an extra D6 and discards the highest result. While the spell is active, it suffers D6 Strength 3 hits at the end of each Magic phase.]

#spell("THE BURNING HEAD", 2, cast: "9+")[_The Burning Head_ is a *direct damage area* spell that uses the line template. Place it 12" in length, with its starting point anywhere within 18" from the caster's front arc. Each model in the way suffers a Strength 4 hit. A unit that suffers one or more casualties from the spell must take a Panic test.]

#spell("FIERY BLAST", 3, cast: "9+")[_Fiery Blast_ is a *direct damage area* spell with a range of 24" that uses the small round template. All models under the template suffer a Strength 4 hit.]

#spell("PIERCING BOLTS OF BURNING", 3, cast: "10+")[_Piercing Bolts of Burning_ is a *magic missile* with a range of 30" and causes D3 Strength 5 hits. Each hit pierces ranks in the same way as a Bolt Thrower.]

#spell("FULMINATING FLAME CAGE", 3, cast: "11+")[_Fulminating Flame Cage_ is a *hex* spell with a range of 24". The target unit immediately suffers D6 Strength 4 hits. In addition, if the target unit moves during the Movement phase, flees or pursues, every model in the unit suffers an immediate Strength 4 hit and the spell ends. If the unit does not move during the Movement phase, flees or pursues, Fulminating Flame Cage automatically ceases at the start of the caster's next Magic phase.]

#spell("CONFLAGRATION OF DOOM", 4, cast: "12+")[_Conflagration of Doom_ is a *direct damage* spell with a range of 30" that causes D6 Strength 4 hits. Roll a D6, on a 2+ the unit suffers an additional D6 hits and you may roll a D6 again. Every time you roll an additional D6 the requirement increases by +1, so you require to roll a 3+ the second time, a 4+ the third time and so on (a 6 always succeed). Proceed to keep rolling a D6 until you fail, and then resolve all the Hits suffered.]

#spell("FLAME STORM", 4, cast: "13+")[_Flame Storm_ is a *direct damage area* spell with a range of 18" that uses the small round template. Once placed, the template moves D6" in a random direction determined by the scatter dice. All models touched by the template from its starting point to its end point suffer a Strength 4 hit.]

#spell("MAGMA STORM", 4, cast: "15+")[Remains in play. _Magma Storm_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move suffers a Strength 5 hit with the Multiple Wounds (D3) special rule.]
]
#lore("THE LORE OF METAL")[

#spell("METALLIC ATTRACTION", "Lore Attribute")[A Wizard casting a spell from the Lore of Metal gains +1 to cast if the majority of the models in the target unit have a close combat armour save of 4+ or better (excluding Natural Armour). Roll a D6 in case of a tie.]

#spell("GLITTERING ROBE", "Signature Spell", cast: "5+")[_Glittering Robe_ is an *augment* spell with a range of 18". The target unit gains a 6+ armour save until the start of the caster's next Magic phase.]

#spell("SEARING DOOM", 1, cast: "5+")[_Searing Doom_ is a *magic missile* with a range of 24" that causes D3 hits with the Ignores Armour Saves and Flaming Attacks special rules. The To Wound score is equal to the unmodified close combat armour save of the target (excluding Natural Armour). Models without an armour save cannot be wounded.]

#spell("LAW OF GOLD", 1, cast: "6+")[_Law of Gold_ is a *hex* with a range of 24". The opposing player must reveal all Magic Items in the unit (if any). The casting player may then nominate one of these. Roll a D6; on 1\-4 that Magic Item cannot be used until the start of the caster's next Magic phase. On a 5+ that Magic Item cannot be used for the remainder of the game and will counts as a mundane item of its type.]

#spell("PLAGUE OF RUST", 1, cast: "6+")[_Plague of Rust_ is a *hex* with a range of 24". The target's armour save (excluding Natural Armour) is lowered by one point for the rest of the game. Plague of Rust can be repeatedly cast on the same target, reducing its armour save by a further \-1 each time.]

#spell("COMMANDMENT OF BRASS", 2, cast: "7+")[_Commandment of Brass_ is a *hex* with a range of 24". If the target is a War Machine or a Chariot, they cannot move (unless it fails a break test) until the start of the caster's next Magic phase. If the target has an artillery weapon it cannot use this until the start of the caster's next Magic phase.]

#spell("SILVER ARROWS OF ARHA", 2, cast: "7+")[_Silver Arrows of Arha_ is a *magic missile* with a range of 24" and causes 2D6 Strength 3 hits with the Armour Piercing (1) special rule.]

#spell("ENCHANTED BLADES OF AIBAN", 2, cast: "8+")[_Enchanted Blades of Aiban_ is an *augment* spell with a range of 18". The target unit (except mounts) gains +1 To Hit, Armour Piercing (1) and the Magical Attacks special rules with all shooting and close combat attacks until the start of the caster's next Magic phase.]

#spell("GEHENNA'S GOLDEN HOUNDS", 3, cast: "8+")[_Gehenna's Golden Hounds_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). The target suffers D6 Strength 4 hits.]

#spell("TRANSMUTATION OF LEAD", 3, cast: "9+")[_Transmutation of Lead_ is a *hex* with a range of 24". The target suffers \-1 To Hit in close combat and with missile weapons, \-1 Movement and \-1 Initiative until the start of the caster's next Magic phase.]

#spell("THE GILDED CAGE", 3, cast: "11+")[_The Gilded Cage_ is a *hex* with a range of 24" that can be cast on an unengaged unit. Until the start of the caster's next Magic phase, the target gains the Unbreakable special rule, cannot move and is treated as impassable terrain for the purpose of movement.]

#spell("METEORIC IRONCLAD", 4, cast: "13+")[_Meteoric Ironclad_ is an *augment* spell with a range of 18". The target unit gains the Magical Ward (4+) special rule until the start of the caster's next Magic phase.]

#spell("QUICKSILVER SWORDS", 4, cast: "13+")[_Quicksilver Swords_ is an *augment* spell with a range of 18". The target unit gains the Ignores Armour Saves and Magical Attacks special rules until the start of the caster's next Magic phase.]

#spell("FINAL TRANSMUTATION", 4, cast: "15+")[_Final Transmutation_ is a *direct damage* spell with a range of 18". All models in the unit must roll a D6 per Wound on their profile – for each roll of a 5+ they suffer a Wound which Ignores Armour Saves and Regeneration.]
]
#lore("THE LORE OF LIFE")[

#spell("LIFEBLOOM", "Lore Attribute")[When a spell from the Lore of Life is successfully cast, the Wizard (or another friendly model within 6") instantly recovers a single Wound lost earlier in the battle.]

#spell("EARTH BLOOD", "Signature Spell", cast: "5+")[_Earth Blood_ is an *augment* spell with a range of 18". The target gains the Regeneration (6+) special rule until the start of the caster's next Magic phase.]

#spell("SHIELD OF THORNS", 1, cast: "5+")[Remains in play. _Shield of Thorns_ is an *augment* spell with a range of 18". While the spell is in effect, any enemy model who attempts to strike the target in close combat suffers a Strength 3 hit whenever they fail To Hit. Any Wounds caused count towards Combat Resolution.]

#spell("AWAKENING OF THE WOOD", 1, cast: "6+")[_Awakening of the Wood_ is a *direct damage* spell with a range of 24" and causes D6 Strength 4 hits. If the target is within 6" of a forest, the number of hits is increased to 2D6.]

#spell("THE CLOAK OF DAIN", 1, cast: "7+")[_The Cloak of Dain_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, the first D3 hits that the target suffers each Shooting and Close Combat phase are ignored. Roll to determine how many hits are ignored once the target suffers any hit that phase.]

#spell("FLESH TO STONE", 2, cast: "7+")[_Flesh to Stone_ is an *augment* spell with a range of 18". The target gains +1 to its Toughness value until the start of the caster's next Magic phase.]

#spell("LEAF FALL", 2, cast: "7+")[_Leaf Fall_ is an *augment aura* spell with a range of 6". All missile attacks targeting the affected units suffer a \-1 To Hit penalty until the start of the caster's next Magic phase.]

#spell("GIFT OF LIFE", 2, cast: "8+")[_Gift of Life_ is an *augment* spell with a range of 18" that can be cast on a single model. The target instantly recovers D3 Wounds suffered earlier in the battle.]

#spell("THRONE OF VINES", 3, cast: "8+")[
Remains in play. _Throne of Vines_ is an *augment* spell cast upon the Wizard. While the spell is in effect, the Wizard's castings of the following spells have the benefits given below instead of their normal values (it does not change the effects of spells that have already been cast):

- Earth Blood grants Regeneration (5+).
- Shield of Thorns causes Strength 4 hits.
- Awakening of the Wood Hits causes Strength 5 hits.
- Flesh to Stone grants +2 Toughness.
- The Cloak of Dain ignores the first D6 hits.
- Gift of Life restores D3+1 Wounds.
- Barkskin grants Natural Armour (4+).
- Regrowth restores 2D6 Wound's worth of models.
]

#spell("BARKSKIN", 3, cast: "9+")[_Barkskin_ is an *augment* spell with a range of 18". The target gains the Flammable and Natural Armour (5+) special rules until the start of the caster's next Magic phase.]

#spell("MISTRESS OF THE MARSH", 3, cast: "9+")[_Mistress of the Marsh_ is a *hex* with a range of 24". Any movement by the target unit counts as moving through marshland until the start of the caster's next Magic phase.]

#spell("PARANOTH'S PATHWAY", 4, cast: "10+")[_Paranoth’s Pathway_ is a *conveyance* spell with a range of 18". The target is immediately picked up and may be moved to any point on the battlefield within 12" of its original position, just like a summoning spell.]

#spell("REGROWTH", 4, cast: "11+")[_Regrowth_ is an *augment* spell with a range of 24". The target unit instantly recovers D6+1 Wounds' worth of models slain earlier in the battle, just like a summoning spell.]

#spell("THE DWELLERS BELOW", 4, cast: "15+")[_The Dwellers Below_ is a *direct damage area* spell with a range of 18" that uses the large round template. All models under the template must pass a Strength test per Wound on their profile or suffer a Wound which Ignores Armour Saves and Regeneration.]
]
#lore("THE LORE OF BEASTS")[

#spell("WILDHEART", "Lore Attribute")[A Wizard casting a spell from the Lore of Beasts gains +1 to cast if the target(s) contains one or more War Beast, Cavalry, Monstrous Beast, Monstrous Cavalry, Monstrous Creature, Monster, Chariot (Chariots that are not drawn are not included), Swarm, or Beastman.]

#spell("WYSSAN'S WILDFORM", "Signature Spell", cast: "5+")[_Wyssan's Wildform_ is an *augment* spell with a range of 18". The target unit may re-roll failed rolls To Wound in close combat until the start of the caster's next Magic phase.]

#spell("THE FLOCK OF DOOM", 1, cast: "5+")[_The Flock of Doom_ is a *magic missile* with a range of 24" that causes 3D6 Strength 2 hits.]

#spell("THE OX STANDS", 1, cast: "6+")[_The Ox Stands_ is an *augment* spell with a range of 18". The target gains the Immunity (Psychology) and Stubborn special rules until the start of the caster's next Magic phase.]

#spell("PANN'S IMPENETRABLE PELT", 1, cast: "6+")[_Pann's Impenetrable Pelt_ is an *augment* spell with a range of 18". The target gains the Natural Armour (6+) special rule until the start of the caster's next Magic phase. This armour save can never be lowered below 6+ from modifiers while the spell is in effect.]

#spell("THE EAGLE'S CRY", 2, cast: "7+")[_The Eagle's Cry_ is a *hex* spell with a range of 24". The target must take a Panic test. If passed, the unit suffers \-2 to their Movement characteristic until the start of the caster's next Magic phase.]

#spell("HUNTER'S MOONS", 2, cast: "7+")[Hunter's Moons is an *augment aura* spell with a range of 12". All affected units gain the Swiftstride special rule and may re-roll any failed charge or pursuit roll until the start of the caster's next Magic phase.]

#spell("THE VENGEFUL HOOD", 2, cast: "8+")[_The Vengeful Hood_ is an *augment* spell with a range of 18". The target gains the Magical Ward (6+) special rule in close combat until the start of the caster's next Magic phase. For each successful Magical Ward save roll of 6, the attacking model/unit suffers a Wound themselves which Ignores Armour Saves.]

#spell("THE CURSE OF ANRAHEIR", 3, cast: "9+")[_The Curse of Anraheir_ is a *hex* spell with a range of 30". The target unit suffers a \-1 penalty to its To Hit rolls with both missile and close combat attacks until the start of the caster's next Magic phase. In addition, the unit treats all terrain (other than Impassable Terrain) as Dangerous Terrain. Models already in Dangerous Terrain counts it as Deadly Terrain.]

#spell("THE SAVAGE BEAST OF HORROS", 3, cast: "10+")[_The Savage Beast of Horros_ is an *augment* spell with a range of 18" that is cast on a Character, Monstrous Creature or Monster, which can be the Wizard itself. The target model gains +3 Strength and +3 Attacks until the start of the caster's next Magic phase. If a Character is mounted, you must choose if the rider or the mount is affected by the spell. For other ridden Monsters, the riders are never affected.]

#spell("THE BEAST COWERS", 3, cast: "11+")[_The Beast Cowers_ is a *hex* spell with a range of 24". If the target contains any models mentioned in Wildheart, those models suffer \-1 to their Attack characteristic in close combat (only mounts are affected in the case of ridden models) and cannot voluntarily move until the start of the caster's next Magic phase.]

#spell("THE AMBER SPEAR", 4, cast: "12+")[_The Amber Spear_ is a *magic missile* with a range of 30". It inflicts a single Strength 7 hit with the Ignores Armour Saves and Multiple Wounds (D6) special rules that penetrates ranks in the same manner as a shot from a bolt thrower.]

#spell("THE WOLF HUNTS", 4, cast: "13+")[_The Wolf Hunts_ is a *conveyance* spell with a range of 18". The target immediately moves towards the nearest enemy unit within Line of Sight using the Random Movement (2D6) special rule – if no enemy units are within Line of Sight, they will move directly forward instead.]

#spell("MERCIW'S MONSTROUS REGIMENT", 4, cast: "15+")[_Merciw's Monstrous Regiment_ is an *augment* spell with a range of 18". The target gains +1 Strength, Toughness and Attacks until the start of the caster's next Magic phase.]
]
#lore("THE LORE OF HEAVENS")[

#spell("FANTASTIC FORESIGHT", "Lore Attribute")[When a Lore of Heavens spell is successfully cast, roll a D6; on a 4+ the Wizard can re-roll one dice to either change the casting result (including a miscast) or the number of Hits inflicted by a spell when they are casting further spells for the remainder of this Magic phase.]

#spell("HARMONIC CONVERGENCE", "Signature Spell", cast: "6+")[_Harmonic Convergence_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, the target unit re-rolls all To Hit, To Wound and armour save rolls of 1.]

#spell("AZURE BLADES", 1, cast: "5+")[Remains in play. _Azure Blades_ is an *augment* spell with a range of 18". Any enemy unit in base contact with the target suffers 3D6 Strength 3 hits at the end of each Magic phase.]

#spell("STAR TIDES EBB", 1, cast: "5+")[_Star Tides Ebb_ is a *hex area* spell with a range of 24". Until the start of the caster's next magic phase, all spell casting attempts within this range that are not from the Lore of Heavens suffer a \-2 casting penalty.]

#spell("CERULEAN SHIELD", 1, cast: "6+")[_Cerulean Shield_ is an *augment* spell with a range of 18". The target gains the Magical Ward (4+) special rule against non-magical missile attacks until the start of the caster's next Magic phase.]

#spell("SIGN OF AMUL", 2, cast: "6+")[_Sign of Amul_ is an *augment* spell that targets the Wizard itself. You may re-roll any one of your dice until the start of the caster's next magic phase. This bonus is lost if the Wizard is slain before the re-roll is used.]

#spell("CRYSTAL PRISON", 2, cast: "8+")[Remains in Play. _Crystal Prison_ is a *hex* spell with a range of 24". Choose a single enemy character, even in a unit. While the spell is in effect, the target cannot be harmed by any means and is Unbreakable. However, they also cannot move, shoot, fight in close combat or cast spells. If they are in a unit, the unit may still break and flee as normal, while the target remains in combat.]

#spell("PORTENT OF DOOM", 2, cast: "8+")[_Portent of Doom_ is a *hex* spell with a range of 24". The target must re-roll all 6's when rolling To Hit, To Wound and armour saves until the start of the caster's next Magic phase.]

#spell("THE SAPPHIRE ARCH", 3, cast: "8+")[_The Sapphire Arch_ is a *conveyance* spell with a range of 24". The target is immediately picked up and removed from the battlefield. The unit will then emerge anywhere on the table at the start of your next Magic phase, just like a summoning spell.]

#spell("STORM OF CRONOS", 3, cast: "9+")[_Storm of Cronos_ is a *direct damage* spell that targets all enemy units within 18" of the Wizard's front arc. Each target suffers D6 Strength 4 hits.]

#spell("URANNON'S THUNDERBOLT", 3, cast: "9+")[_Urannon's Thunderbolt_ is a *magic missile* with a range of 24" that causes D6 Strength 5 hits with the Lightning Attacks special rule.]

#spell("COMET OF CASANDORA", 4, cast: "12+")[_Comet of Casandora_ is a *summoning area* spell with a range of 36". Place a suitable marker over the target. Once cast, the comet cannot be dispelled. For as long as the spell lasts, the player rolls a D6 at the start of each player's following Magic phase. On a score of 1\-3 nothing happens, but place another marker on the first. On the score of a 4\-6 the comet strikes the spot. All units from either side that are within 2D6" of the marker take 2D6 Strength 4 Hits. Add the number of markers on the comet to the distance, hits and Strength. After the comet has struck, the markers are removed and the spell ends.]

#spell("CHAIN LIGHTNING", 4, cast: "13+")[_Chain Lightning_ is a *direct damage* spell with a range of 24" that causes D6 Strength 5 hits with the Lightning Attacks special rule. Once the damage has been resolved, roll a D6; on a 2+, another enemy unit within 6" of the initial target also suffers D6 hits. Keep rolling for further enemies within 6" of the previous unit. Every time a new unit is struck the requirement increases by +1, so you require to roll a 3+ the second time, a 4+ the third time and so on. Proceed to keep rolling a D6 until you fail (a 6 always succeeds) or there are no more viable targets. A unit can only be the target of Chain Lightning once per Magic phase.]

#spell("THORSEN'S THUNDERSTORM", 4, cast: "15+")[Remains in play. _Thorsen's Thunderstorm_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move suffer a Strength 4 hit with the Lightning Attacks special rule.]
]
#lore("THE LORE OF LIGHT")[

#spell("FOCUS ENERGY", "Lore Attribute")[If a Wizard using spells from the Lore of Light is not in close combat and has not moved during this turn, they gain +1 to cast. In addition, any damage caused by spells from this Lore has a +1 bonus To Wound against Daemons, Undead and Vampires.]

#spell("SHEM'S BURNING GAZE", "Signature Spell", cast: "5+")[_Shem's Burning Gaze_ is a *magic missile* with a range of 24" that causes D6 Strength 4 hits with the Flaming Attacks special rule.]

#spell("DAZZLING BRIGHTNESS", 1, cast: "6+")[_Dazzling Brightness_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, the target's Movement is halved (rounded up), and it suffers \-1 to its Weapon Skill and Ballistic Skill.]

#spell("HEALING ENERGY", 1, cast: "6+")[_Healing Energy_ is an *augment* spell with a range of 36" that can be cast on a single model. The target instantly recovers 1 Wound suffered earlier in the battle.]

#spell("PHA'S PROTECTION", 1, cast: "6+")[_Pha's Protection_ is an *augment* spell with a range of 18". All attacks against the target unit (shooting or close combat) suffer a \-1 penalty To Hit until the start of the caster's next Magic phase. Shooting attacks that do not use Ballistic Skill must roll 4+ on a D6 before firing, or the shot(s) is lost.]

#spell("BIRONA'S TIMEWARP", 2, cast: "8+")[_Birona's Timewarp_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, all of the target unit's Movement value is doubled and it gains the Swiftstride special rule. This can take their Movement value above 10.]

#spell("THE CLAW OF APEK", 2, cast: "8+")[_The Claw of Apek_ is a *direct damage* spell with a range of 18". Choose a single enemy model, even a character in a unit ("Look Out, Sir!" cannot be used). The target suffers D6 Attacks with Weapon Skill 4, Strength 4 and the Ignores Armour Saves special rule. These are resolved like close combat attacks.]

#spell("THE SPEED OF LIGHT", 2, cast: "8+")[_The Speed of Light_ is an *augment* spell with a range of 18". The target unit gains the Always Strikes First special rule until the start of the caster's next Magic phase.]

#spell("CLEANSING FLARE", 3, cast: "9+")[_Cleansing Flare_ is a *direct damage* spell that targets all enemy units within 12" of the Wizard's front arc. Each target suffers D6 Strength 5 hits.]

#spell("LIGHT OF BATTLE", 3, cast: "9+")[_Light of Battle_ is an *augment* spell with a range of 18". If fleeing, the target unit rallies immediately. Additionally, the target unit will pass all Leadership tests (including Break tests, regardless of modifiers) until the start of the caster's next Magic phase.]

#spell("BANISHMENT", 3, cast: "9+")[_Banishment_ is a *magic missile* with a range of 24" that causes 2D6 hits. The Strength of the hits is equal to 4 plus the number of Wizards that know spells from the Lore of Light within 12" of the caster (not counting the caster themself). Each additional Wizard added adds +2 to the casting difficulty.]

#spell("NET OF AMYNTOK", 4, cast: "10+")[_Net of Amyntok_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, every time the target attempts to move in the Movement phase, shoot or cast one or more spells the target suffers D6 Strength 4 hits and must then pass a Strength test (using the Strength of the majority of models in the unit). If the test is passed, the target acts normally. If the test is failed, the unit is unable to perform the desired action, remaining in place.]

#spell("TIME AMOK", 4, cast: "14+")[_Time Amok_ is an *augment* spell with a range of 18". The target unit may perform all their shooting attacks or close combat attacks twice this turn. Resolve the first round of attacks completely before performing the second one.]

#spell("PILLAR OF RADIANCE", 4, cast: "15+")[_Pillar of Radiance_ is a *direct damage area* spell with a range of 24" that uses the large round template. All models under the template suffer a Strength 4 hit.]
]
#lore("THE LORE OF SHADOW")[

#spell("STEED OF SHADOWS", "Lore Attribute")[After a spell from the Lore of Shadow is successfully cast and resolved, the caster can choose to immediately make a normal move using the Fly special rule as if it were the Remaining Moves sub-phase. The Fly move is equal to 10 minus the model's Line of Sight value.]

#spell("MELKOTH'S MYSTIFYING MIASMA", "Signature Spell", cast: "5+")[_Melkoth's Mystifying Miasma_ is a *hex* spell with a range of 24". The target unit's Weapon Skill, Ballistic Skill, Initiative or Movement (you choose which) is reduced by D3 (to a minimum of 1) until the start of the caster's next Magic phase.]

#spell("CREEPING DARKNESS", 1, cast: "5+")[_Creeping Darkness_ is a *magic missile* with a range of 24" that causes 2D6 Strength 1 hits with the Ignores Armour Saves special rule.]

#spell("THE ENFEEBLING FOE", 1, cast: "6+")[Remains in play. _The Enfeebling Foe_ is a *hex* spell with a range of 24". While the spell is in effect, all models in the target unit have their Strength reduced by 1 (to a minimum of 1).]

#spell("CLOAK OF MIDNIGHT", 1, cast: "6+")[_Cloak of Midnight_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, all missile attacks against the target unit can only hit on a natural 6, and any templates that use scatter dice automatically scatter, even if a Hit is rolled.]

#spell("HORN OF ANDAR", 2, cast: "7+")[_Horn of Andar_ is a *hex aura* spell with a range of 12". Each affected unit suffers a \-1 penalty to its Leadership until the start of the caster's next Magic phase.]

#spell("THE WITHERING", 2, cast: "7+")[Remains in play. _The Withering_ is a *hex* spell with a range of 24". While the spell is in effect, all models in the target unit have their Toughness reduced by 1 (to a minimum of 1).]

#spell("THE DANCE OF DESPAIR", 2, cast: "8+")[Remains in play. _The Dance of Despair_ is a *hex* spell with a range of 24". While the spell is in effect, the target must move straight forward using the Random Movement (2D6) special rule.]

#spell("CROWN OF TAIDRON", 3, cast: "9+")[_Crown of Taidron_ is a *direct damage aura* spell with a range of 12". Each affected unit suffers D6 Strength 4 Hits.]

#spell("UNSEEN LURKER", 3, cast: "10+")[_Unseen Lurker_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, units can only draw Line of Sight to the target if they are within 8", though the unit still blocks Line of Sight as normal.]

#spell("BRIDGE OF SHADOWS", 3, cast: "12+")[_Bridge of Shadows_ is a *conveyance* spell with a range of 12". The target is immediately picked up and may be moved to any position on the battlefield within 18" of their original position, just like a summoning spell.]

#spell("OKKAM'S MINDRAZOR", 4, cast: "12+")[_Okkam's Mindrazor_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, the target unit (except mounts) gain the Magical Attacks special rule and use their Leadership instead of Strength when rolling To Wound with all close combat attacks (any Strength bonuses from weapons are ignored). Armour saves are taken and modified by the Attack's actual Strength value.]

#spell("THE PENUMBRAL PENDULUM", 4, cast: "13+")[_The Penumbral Pendulum_ is a *direct damage area* spell that uses the line template. Place it 18" in length, directly away from the caster's front arc. Each model in the way suffers a Strength 10 Hit with the Multiple Wounds (D3) special rule.]

#spell("PIT OF SHADES", 4, cast: "15+")[_Pit of Shades_ is a *direct damage area* spell with a range of 24" that uses the small round template. All models under the template must roll a D6 per Wound on their profile – for each roll of a 4+ they suffer a Wound which Ignores Armour Saves and Regeneration.]
]
#lore("THE LORE OF DEATH")[

#spell("LIFE LEECHING", "Lore Attribute")[When a Lore of Death spell is successfully cast, roll a D6 for each unsaved wound caused by the spell this turn. For each 6+ rolled on these additional dice, the Wizard immediately adds a dice to their army's power pool (to a maximum of +3 dice per spell).]

#spell("DARK HAND OF DEATH", "Signature Spell", cast: "6+")[_Dark Hand of Death_ is a *magic missile* with a range of 18" that causes D6 Strength 3 hits with the Ignores Armour Saves special rule.]

#spell("DEATH DEALER", 1, cast: "5+")[_Death Dealer_ is an *augment* spell with a range of 18". Until the start of the caster's next Magic phase, the target unit gains the Fear special rule. In addition, any model in the target unit that is slain in close combat may immediately make an additional Attack, even if they have already attacked this turn.]

#spell("THE CARESS OF LANIPH", 1, cast: "6+")[_The Caress of Laniph_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). The target must take D6 Strength tests. Each failed Strength test causes a Wound which Ignores Armour Saves.]

#spell("SPIRIT LEECH", 1, cast: "7+")[_Spirit Leech_ is a *hex* spell with a range of 18" that targets a single enemy Monstrous Creature, Monster or character (even in a unit). Both caster and target roll a D6 and add their respective Leadership values. For each point the caster scores higher, the target suffers a \-1 penalty to their Strength and Toughness (to a minimum of 1) for the remainder of the battle.]

#spell("THE CHOKING FOE", 2, cast: "8+")[Remains in play. _The Choking Foe_ is a *hex* spell with a range of 24". At the end of each Magic phase, the target must take a Leadership test, suffering a Wound which Ignores Armour Saves for every point by which the test is failed. Each subsequent test has a \-1 penalty which is cumulative, so the third test has a \-2 penalty, and so on.]

#spell("WIND OF DEATH", 2, cast: "8+")[_Wind of Death_ is a *magic missile* with a range of 18" that causes 2D6 Strength 4 hits.]

#spell("DRAIN LIFE", 2, cast: "9+")[_Drain Life_ is a *direct damage aura* spell with a range of 12". Each affected unit suffers D6 Strength 2 Hits with the Ignores Armour Saves special rule. For every unsaved To Wound roll of 6, the caster may restore 1 Wound lost earlier during the game.]

#spell("SCYTHE OF SHYISH", 3, cast: "9+")[_Scythe of Shyish_ is a *direct damage* spell with range of 18". Each model in the unit's front rank suffers a Strength 5 Hit ("Look Out Sir!" may still be used).]

#spell("DOOM AND DARKNESS", 3, cast: "10+")[Remains in play. _Doom and Darkness_ is a *hex* spell with a range of 24". The target suffers a \-3 penalty to its Leadership.]

#spell("ASHES AND DUST", 3, cast: "11+")[_Ashes and Dust_ is a *direct damage area* spell with a range of 18" that uses the small round template. All models under the template must roll a D6 per Wound on their profile – for each roll of a 4+ they suffer a Wound which Ignores Armour Saves and Regeneration.]

#spell("THE FATE OF BJUNA", 4, cast: "12+")[Remains in Play. _The Fate of Bjuna_ is a *direct damage* spell with a range of 12" that targets a single enemy model (even a character in a unit). While the spell is in effect, the target suffers a number of hits equal to the model's current number of Wounds at the end of each of Magic phase. Each hit Wound on a 4+ with the Ignores Armour Saves special rule.]

#spell("SOULBLIGHT", 4, cast: "12+")[_Soulblight_ is a *hex* spell with a range of 24". The target has \-1 Strength and \-1 Toughness (to a minimum of 1) until the start of the caster's next Magic phase.]

#spell("THE PURPLE SUN OF XEREUS", 4, cast: "15+")[Remains in play. _The Purple Sun of Xereus_ is a *magical vortex* that uses the small round template. Any model touched by the template at any point during its move must roll a D6 per Wound on their profile – on a 4+ they suffer a Wound which Ignores Armour Saves and Regeneration.]
]
