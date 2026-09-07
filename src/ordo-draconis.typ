// The Ordo Draconis - an Army of Infamy for Vampire Counts 3.0.
//
// Ours, and a book of its own rather than an edition of Vampire Counts. It
// began as the single proposal in src/vampire-counts-proposal.typ and was made
// house-official on 2026-08-28; that file and editions/proposal/vampire-counts.toml
// went in the same commit, which is what the proposal edition's own header says
// happens once a proposal is agreed.
//
// It is self-contained on purpose: an Ordo Draconis is played from this book
// and no other. The chapters it shares with Vampire Counts 3.0 - the army
// special rules, the Lore of Necromancy, the Vampiric Powers, the Magic Items,
// and the twelve unit entries, three character entries and four mounts the list
// keeps - are Mathias Eliasson's text, copied verbatim from src/vampire-counts.typ
// and then altered only where this list removes an option. Every one of those
// alterations is set out in WHAT WAS CHANGED at the back.
//
// THAT COPY DOES NOT TRACK. A correction to src/vampire-counts.typ does not
// reach this file and nothing will tell you: both have to be edited.
//
// Ours: the Order chapter, the list rules, the reduced Blood Knight profile,
// the Blood Guard, the Sworn, the Blood Wyrms, the Elder Wyrm, the Great Wyrm,
// Emmerich,
// Ankhara, the six Ordo items, the four Ordo powers and the closing two
// chapters. See the colophon.

#import "template.typ": *

#book-meta(
  slug: "ordo-draconis",
  army: "The Ordo Draconis",
  version: "2026.1",
  layout: "army",
  align: "destruction",
  shelf: "house",
  authored: true,
)

#show: book.with(title: "The Ordo Draconis — an Army of Infamy for Vampire Counts 3.0")

#cover(
  title: "The Ordo Draconis",
  subtitle: "An Army of Infamy for Vampire Counts 3.0 · House Rules 2026.1",
  art: none,
)

#colophon((
  "This book is not the Warhammer Armies Project's. The Ordo Draconis is an Army of Infamy of our own, written for Vampire Counts 3.0 and played as part of our house rules.",
  "It is self-contained, so the chapters it shares with that book are reproduced from it, and several of the entries in them have been altered where this list removes an option. Those alterations are listed under What Was Changed and are not marked in the body. Do not take a rule here to be the author's wording without checking that chapter.",
  "The underlying work is the Warhammer Armies Project, written and freely distributed by Mathias Eliasson. All rules text, army design and points values not named as ours are his; the Ordo Draconis and everything written for it are ours alone, made for our own table, and carry no endorsement from him.",
  "Warhammer, Warhammer Fantasy Battle and all associated names, races and places are trademarks of Games Workshop Limited. This document is unofficial and unaffiliated, and no challenge to their status is intended.",
  "Typeset with Typst. Not for sale.",
))

#outline(title: [Contents], depth: 2)

= THE ORDER

The Ordo Draconis is the household of a single vampire lord, and it does not stay anywhere. It has no lands that appear on a map and no seat that can be visited twice. What it has is a keep that arrives, a household living inside it, a dozen scattered agreements it honours, and a habit of turning up in Bretonnia at moments when Bretonnia would rather it did not. Every account of it that has been written down was written by vampires, and every one of them calls its lord Emmerich.

#runin[The pass]

He was born Aymeric of Montfort, in a duchy whose reason for existing is a pass, and never took the Questing Vow. He looked at the Grail path, which sends a knight out alone for years on the chance of a vision, and took service instead with the Ordo Draconis, a Sigmarite order holding the pass at Blood Keep. His countrymen thought this heresy at best. His view, then and since, was that the Ordo was holding a pass and the Questing Knights were holding nothing.

Twenty years of holding it taught him the arithmetic he has never revised. A pass is held by mortal knights until the mortal knights run short, and the shortfall is always paid for below, in villages, by people nobody asked. Bretonnian armies win their battles with peasants standing in front of the knights, and Bretonnian chivalry is arranged so that no knight need feel the loss. A lord who accepts that is not protecting his people. He is spending them.

So he went and found the Blood Dragons on purpose. He wanted a garrison that would not age, and Walach Harkon gave him the blood, which makes his the coldest motive on record for seeking vampirism: he did it as a logistics decision. Then the Keep was going to fall, and he came back and offered the blood to his brothers while there was still time to choose. The ones who took it are his household still. The rest are Wights and march behind them.

The pass held.

He has never claimed this was a good thing to have done. He says only that the alternative was an open pass, and an open pass is paid for in villages.

What came out of the Keep afterwards went two ways. Most of it became a Sylvanian military power under Walach, took a new name for its new purpose, and calls itself the Knights of the Blood Dragon. The remainder left with the man who had made them, on the grounds that nobody had released the Ordo from its oath to the valleys beneath the Keep. That is why they still use the old name: it is a claim about who kept the promise. Sylvania tells the story more simply, and says that Walach Harkon took Blood Keep and founded the order. The vampire counts have little appetite for crediting a lord who will not feed on peasants, will not take land and will not join anything, so the version that survives is the one where the Grand Master did all of it. He gave the blood, so there is something in it. The Ordo has stopped correcting them.

#runin[His names]

His own name went the same way. He was Aymeric of Montfort until Bretonnia first proclaimed him damned, and then he stopped using it, because Bretonnia attaints houses along with men and there were people in Montfort still living inside that name. Since then he has answered to whatever he is called. Sylvania writes and peasants do not, so the accounts that survive give the Imperial wear on the same name and call him Emmerich. The few knights still standing who were at the Keep say Aymeric, and a man of the Ordo can be dated by which of the two he uses.

The other two names were given to him. The villages of six duchies call him the Black Drake, off the banner, and nobody decided it. Bretonnia's proclamations damn the Unblessed and take care to use no name at all, since naming him would concede that he was ever one of theirs. He has corrected none of it. The order's name means the dragon's, and styling a man for the order he serves is older than the order itself. The usage has attached to other lords since, and to at least one who came by it a good deal less honestly.

He signs himself Marshal of the Ordo Draconis. It is the rank he was appointed to before any of the rest of it, and it is not the Master's chair, which he has never claimed and which Sylvania assumes he wants.

#runin[The domain]

Bretonnia has repeated the proclamation twice a generation since. Sylvania decided he was no use. He could have held a keep against either. He could not hold one against both, so the keep stopped standing still. It appears where he requires it, with no approach and no passage, and nobody who has watched it happen has managed to describe it usefully. His household went with it. The domain stayed behind, in eleven or twelve separate pieces.

He holds perhaps a dozen places, scattered on purpose. No two adjoin. Upland hamlets, a fishing village on a bad coast, two valleys in the Grey Mountains, a handful of holdings in duchies that would deny all knowledge of them. A dozen separate arrangements across six duchies draw far less notice than one province would, and none of the parties involved wants notice. What the places have in common is that their own lords cannot reach them in time and have stopped pretending otherwise. Those lords have known it for generations. He was the first to act on it.

The arrangement is the same everywhere and he invented very little of it. A lord takes tribute and gives protection; that is what a lord is for. The Bretonnian version takes coin, grain, labour, a tenth of everything that grows, and the young men when the levy is called. His version takes blood. Once a season, from adults, by measure, and written down, and no coin, no harvest, no labour and no young men. The villages keep everything they make.

The reason the arrangement holds is bookkeeping. Grain does not come back once it is eaten. A son does not come back at all. Blood comes back in a month. He is the only lord these places have ever dealt with whose tribute costs them nothing they will still be missing next year. The first visit is never paid for either: he deals with whatever is killing the place, and leaves, and if the village wants him a second time the terms are read out. Several have declined. He has not returned to those, and nothing is known to have happened to them.

#runin[The mountain]

The keep was built the way anything is built, and the building is in the ledger. It went up above one of the two valleys he holds in the Grey Mountains, which were the first two things he held. Masons were hired and paid, the byres were cut, and every season of it survives as an expenses column in the usual hand.

What the masons found when they cleared the crag is in the ledger too, because a foundation already dressed is a saving and he entered it as one. Courses of old stone squared by nobody, set deeper than anyone cared to dig. The one description of them in writing is the master mason's invoice, which charges double for dressing stone that would not take his marks. The Dam laired in the upper works then, and the bats were over it then. He took the mountain from nobody. It was nobody's, and it had been nobody's for long enough that no duchy had a word for it.

The keep stood still on that footing until it could not, for the reason already given. How the household learned it could do otherwise depends on who is telling it. One version has a wight standing at a gate that faced the wrong way at dawn. Another has the Dam leaving first and the keep following her. The knights who were there tell neither. The ledger records a season of stores accounted at a place the keep had never been.

Two things have been noticed since. Every ground the keep has ever stood on had old stone in it before the keep came — a ring, a marker, a course laid before the duchies had names — and the herdsmen will tell anyone that the drakes graze badly near such stones. And the hold nearest the first valley keeps books older than Bretonnia, and its roads have bent around that mountain since they were laid. Nobody in the order has asked what the books say. If an answer is written anywhere, it is written there, filed under the mountain and not under him.

#runin[The porter]

The gate is where it is because of what stood in it. The foundation's one doorway held a figure of the same stone, man-shaped the way a mountain is man-shaped, with a blade of it in its hands, and the masons' attempt on it is in the ledger as day-wages, hired oxen and two broken shear-legs. The gatehouse was built to fit it instead, which was cheaper.

It is in no book. Not the tally, because the herdsmen count what eats. Not the tithe, because it owes nothing. Not the roll, because the roll is names put down by their owners, and it has none. It is the only thing in the order's service with no entry anywhere, and the household, who name things in Bretonnian, settled it sideways: the man who keeps a gate is a porter. The joke is old enough now to be the name.

When the household rides out it comes down from the gate and walks with them, and it has never once been anywhere the keep was not. Nobody commands it and nobody has needed to. Whether it is a fixture or a tenant has been argued in the household's hearing by two knights who do not agree, and the argument is not close to over. The necromancers do not work within sight of the gate. Asked why, two of them gave three answers, and none has been checked.

Asked whether it came with the mountain, he said what he says about the Dam.

#runin[The signal]

The keep works a circuit. Between visits there is a way of asking for it that the villages do not discuss with outsiders. A fire is lit on a hilltop, behind a board cut to the order's device. On a night with low cloud the drake stands on the underside of it, black on grey, and can be read from the next valley. It arrives, the thing that could not be stopped is stopped, and it goes. The peasants of six duchies know the shape of it on the horizon. They do not mention it to visiting knights.

Travellers who have seen the signal from a distance say flatly that the shape is a bat. The villages say drake, because a drake is what is on the banner. The argument has run two hundred years in six duchies with neither side conceding, and nobody has thought to put it to the household.

#runin[The reasons]

The keep does not move because it can. The household can give a reason for every journey it has made, and the ledger sets them out in the order they occur.

Most often it answers the signal. A fire on a hilltop, a village that has run out of other ideas, and the thing that could not be stopped is stopped.

Next, and more often each century, it goes out to meet something before that something reaches a holding. This is the arithmetic again. A warband broken in open country costs him knights. The same warband broken in a village costs him knights and the village, and the village is the thing he is paid in. He would sooner fight anything a week early and forty miles away, and says so in terms the household have learned to repeat.

Third, it is seen. The keep stands a day within sight of somebody who was considering something, and then it is not there. Nothing is fought and nothing is said. He holds no border and cannot garrison a dozen scattered places at once, so the ability to arrive is the only defence any of them has, and a lord who has watched it arrive somewhere else tends to revise his plans. The household consider this the dullest duty in the order. He considers it the cheapest thing they do.

Fourth and rarely, one of the scattered agreements is called in.

Beneath all four is the reason it began. A keep that stands still can be besieged, and he could not hold one against Bretonnia and Sylvania at once.

#runin[The agreements]

What the agreements are with is better attested than what they say. The villages hold that one of the dozen is a dwarf hold, which would account for a road that bends where no dwarf road should. Sylvania's version names a king in the south, owed something once and paid in full. A third account, Bretonnian, has the oldest of them predating the order and coming down to him with the mountain, made by nobody now alive to keep. No two of the three fit together, and the ledger, which prices everything the order owes, carries no page for any of them.

#runin[The Green Knight]

The comparison Bretonnia will not make aloud is with the Green Knight. Gilles le Breton is also dead, is also kept past his time in the service of something, also appears where the land is being despoiled, and also fights duels as a matter of function. He is in the songs and the poetry. The other one is declared damned. The difference is agreed on all sides to be important, and nobody has explained it satisfactorily.

The Green Knight appears where evil defiles the land. He has never appeared for the Ordo Draconis. In Bretonnia this is held to prove nothing.

There is a smaller thing that the knights of both realms know and neither says aloud. A Bretonnian holds the Lady's blessing only while he neither flees nor refuses a challenge; break either and it leaves him. The Ordo Draconis is bound to both conditions and to nothing else. Its knights do not choose flight, cannot decline a duel, and have kept those two terms unbroken for two hundred years without a drop of anything descending on them for it. Emmerich has never remarked on the arithmetic. His household has, at length, and not where he can hear.

#runin[The household]

The Ordo fights as an order of knights and nothing else. Its vampires ride, walk in armour, or take to the air, and the dead march behind them in whatever numbers the season requires. There is no militia. There are no archers, no crossbows, no artillery train. Its lord will not use a weapon that kills at a distance, and the order has lost battles because of it. He accepts every challenge offered him and requires the same of his household, which has cost him two knights he could not replace.

He offers the blood to knights and to nobody else. A man who has fought well in his service may be asked once, and may refuse without consequence. Those who accept join the household. Those who refuse are asked a second question at the end of their lives, and most of them say yes to that one. Dying is a thing a Bretonnian is brought up to do well. Being of no further use afterwards is not. They are the Wights, and they march behind the men who took the other offer. He does not turn peasants, and a vampire of his own household who is killed stays where he falls. He has never given a reason for the second of those.

#runin[The roll]

Nobody in the six duchies owes the order anything but blood, and a body is not blood. The muster roll is a separate page in the same hand, and it is not part of the terms. A man puts his own name on it while he is alive, at a visit, in front of whoever is doing the writing. Nothing is remitted for it. Nothing is asked of a village that puts nobody down.

Two of the dozen have put nobody down at all.

When the man dies the order comes for him or it does not, according to the season and the need, and if it comes the household read the name off the roll before they lift him. That is the whole of the ceremony. The order is aware that a body cannot object, and has decided that the writing is what makes the difference.

What it costs is the grave. A man on the roll gives up the Lady's rites, which are the one thing the realm has ever given a peasant without charging him for it, and the priests are clear about what that makes him. The villages sign anyway. They do not raise the subject with visiting knights.

The reasons are various and mostly practical. A man who has watched the keep arrive four times in his life puts his name down the way he leaves a tool to his son. A man whose village was saved and whose family was not puts his name down for a different reason and does not always give it. The keep's own herdsmen are on the roll almost to a man, which is why some of the levy rides. Forty years in the byres teaches a man to sit a horse, and the order has never found a reason to waste it.

What comes up on the day is a harder thing, and the order does not pretend otherwise. A holding that has been overrun has dead who were alive that morning, and names that were read out last season, and no time in which to be careful about either. Those are raised where they lie. The ledger gives the engagement and not the number.

Bretonnia reads the roll as a second tribute, and the proclamations say so: that he takes their dead as well as their blood. The villages say they signed. The only copy is in the keep and neither side has seen it.

He does not defend it as mercy. Asked, he gives the arithmetic. A village with thirty names on the roll is a village he can hold with thirty fewer knights, and knights are the thing he cannot replace. He is aware of what that makes his line of battle. A Bretonnian host puts peasants in front of its knights, which is the arrangement he left, and so does he.

He has never argued that the difference is large. He says only that his are already dead, and that nobody's harvest is short for it.

#runin[The drakes]

The drakes are live stock and always have been. The byres are cut into the keep's own rock and the herd goes where the keep goes, and the herdsmen are paid in sheep for the loss of sheep. The oldest of them predates the order, is a dragon where her get are wyrms, and carries nobody but her lord. Vampires who arrive expecting a Zombie Dragon are frequently surprised, and the Ordo has never troubled to find a word for a Nightmare that is alive.

She is in the tally book as the Dam, which is what a stockman writes, and every drake the order owns is hers and a lesser breed than she is. It is the only document in the world that names her. He does not name animals. Asked once, he said she came with the mountain, and he has held to that for two centuries in a way the household find trying. The villages have never separated her from the rest of it. To them the Black Drake is a man, a device on a banner, a shape on the cloud and an animal, and nobody in six duchies has needed to tell the four apart.

The household name their own mounts, in Bretonnian, after the manner of warhorses. The herdsmen decline to use the names, on the grounds that the animals are numbered. Neither side has given ground, and the argument is older than most of the knights having it.

Somebody has to raise the dead as well, and he regards that as a chore. He learned enough of it himself to avoid depending on anyone, and the necromancers in his service are kept, paid and not consulted. Blood Dragons hold sorcery in contempt. He holds it in contempt and uses it anyway, drawing a distinction the rest of the Bloodline does not: the vow is against seeking power by it, not against being good at it. Two centuries of needing the thing done have made him better at it than he cares to be told.

#runin[The sky]

The bats are not stock and are not in the tally book. The herdsmen hold that an animal which cannot be counted cannot be kept, and as far as the byres are concerned that settles it; the bats have never applied for the position. They are over the keep regardless, thicker there than anywhere in the six duchies, and they are over it again on the morning after a march that put the keep somewhere else. Whether the bats follow the keep or the keep goes where the bats already are has been argued twice in the household's hearing, and the two men who argued it did not agree.

The bats come in sizes, and the six duchies have never agreed whether that is one animal at five ages or five animals. The small kind swarms. The middling kind hunts the passes in dozens. The large kind is the size of a horse and flies like a thrown coat, and the household have learned to put it where the fighting will be rather than ask it to arrive anywhere quickly. Past that the wings stop answering: the extra-large kind walks, the villages call it the fourth size anyway, and the tally book calls it a beast the order keeps. And the huge kind is alive — in Sylvania they den in caves and take horse and rider together — but a thing that size drinks by the horse-load and hunts what it pleases, and the order's entire arrangement rests on blood taken by measure. The one in the order's service is therefore dead. It drinks nothing, and it is the only bat the order has ever raised.

What nobody disputes is that he knows what has crossed the pass before the riders come in to tell him. The necromancers in his service have a theory and have not been asked for it. It is not sorcery, which is the whole of why he will use it: a Blood Dragon may not stoop to a spell, and no oath yet written forbids a man to look up.

The villages have never counted them at all. Weather is not a thing one reports to a duke.

#runin[Other vampires]

Other vampires do not know what to make of him. The von Carsteins have decided he is sentimental and will be dealt with in due course; the phrase is attributed to three different counts across a century and a half, and the dealing has yet to begin under any of them. The Lahmians have three times tried to place someone in his household. The Strigoi are said to find him funny. Walach Harkon has never called him back to Blood Keep and has never said why.

#namecost("THE FIELD", "")

The order keeps a record of its engagements, because it keeps a record of everything. It is not a chronicle. It is a ledger, in the same hand as the tally book, giving the place, the season, what was fought and what it cost in knights. Six duchies appear in it constantly. A few other places appear once.

#runin[The extract]

The ledger dates from its own first page.

*Year 1 — the first valley.* Beastmen, down on the valley in a bad year. Dealt with for nothing, and the terms read out the following spring — blood, by measure, once a season, and nothing else. Taken.

*Year 6 — the crag.* Masons by the season, at day-rates; double for stone that would not take the mason's marks. Moving the figure in the foundation's gate was priced at day-wages, hired oxen and two broken shear-legs, and the gatehouse was built to fit it instead.

*Year 31 — the first proclamation.* Bretonnia proclaims the lord damned, naming nobody. He stops using the name he was born under the same year; there are people in Montfort still living inside it.

*Year 44 — a season of stores.* Stores for a full season accounted at a place the keep had never been. No other record of the journey was made, and none of how.

*Year 52 — the first field.* Bretonnia puts an army in the way, and the battle collapses into its middle, as every one since has. No pursuit is entered, there having been none to enter.

*Year 96 — an orc came down.* The shortest entry in the book: the place, the season, and _settled_.

*Year 117 — under the upland holding.* Four knights, against a great many rats and not the one that mattered. Entered as a defeat, in his own hand.

*Year 139 — the desert.* Four drakes off their feed for a month and the byres rewetted daily, costed in full and filed as a stores complaint. Underneath, in a different hand: the season, and the place.

*Year 163 — a winter.* No engagements are entered. The stores page is in his hand, which is not how stores are kept.

*Year 178 — the bad coast.* Norscans ashore, the third year having come round again. Their champion issued before the lord did, correctly. Entered as ordinary.

*Year 187 — a winter.* The entry is the same.

*Year 200 — the eleventh field.* The same collapse into the middle. Eleven times, and not once a pursuit.

#runin[The realm]

Bretonnia has put an army in his way eleven times, and eleven times the same thing has happened. A Bretonnian host is arranged with peasants in front of the knights, which is the arrangement he left. A Bretonnian knight cannot decline a challenge and remain one, which is the arrangement he kept. So the battle collapses into its middle: the knights come forward because they must, the levy stands where it was put, and the two lines that were meant to grind each other never meet.

He has never given an order to spare the peasants and has never needed to. The household ride past them because the men worth fighting are behind them, and from the other side of the field that is indistinguishable from mercy. The Ordo has not corrected that either.

What the realm has never managed to fit into a proclamation is that he beats them by their own rules and stops the moment they break off.

Eleven times, and not once a pursuit.

#runin[The other realm]

The Empire's dealings with the order are mostly clerical, which suits both parties. The Cult of Sigmar's rolls list the Ordo Draconis as destroyed at Blood Keep, with honour, in the year the Keep fell. The thing that answers signal fires across the mountains is carried in a separate file, as an imposture trading on a martyred name. The two entries do not refer to one another, and both are maintained.

Twice a witch hunter has crossed the pass to reconcile them. One returned and filed that the imposture rides in the old order's true harness and answers to its true ranks, and was retired the following spring. The other did not file.

What the office cannot do is what Bretonnia did, and proclaim him damned. The order's charter is lawful, the rank on it was lawfully conferred, and the seal on the conferral is the temple's own. The realm that made the order has to hold it destroyed, because the alternative is that it is still in service.

#runin[The herds]

Most of the ledger is beastmen. That is what comes down on an upland hamlet in a bad year, and dealing with it is the whole of what the arrangement buys. There is little to record. The household arrive, the herd is broken, the drakes are fed, and the village is told what it already knew about the woods.

The one line worth reading is that a Doombull has never once declined. His oath binds him to issue and to accept, which against most enemies is a liability and has cost him two knights he could not replace; against beastmen it costs nothing, because the beastman wants the same thing he does and will come through his own herd to get it. He has called them the only enemy the Ordo has that is entirely straightforward.

#runin[The greenskins]

The greenskins of the Grey Mountains keep the only account of the order that approves of it. An orc that comes down on the keep's ground gets what no other enemy is promised: the lord comes out. Every time, in person, at the front, because the oath leaves him no other answer, and the fight is worth the walk. Warbosses have gone past richer ground to get it, and more than one has come back for another go. The ledger enters these engagements in fewer words than any other kind, there being little to say about a thing that went exactly as both sides intended.

The levy they hold to be a swindle. A skeleton neither fears nor tires nor fights back with any conviction, and breaking one is work, not sport. The goblin account calls the household the best scrap in the mountains and the rest of the army a cheat, and the household has heard worse filings from better record-keepers.

#runin[What will not stand]

The order has lost battles, and the ledger is candid about which. Nearly all of them were to things that shoot and will not stand.

Skaven do both. Their warlords will not meet a challenge, having no notion why they should and no rule anywhere obliging them, so his knights wait at the front of a formation to be met and are shot instead. Under one of the upland holdings the household lost four knights, killed a great many rats, and never found the one that mattered, which by his arithmetic is a defeat: the rats were replaceable and the knights were not.

He has not revised the prohibition on missile weapons and does not argue for it. Asked, he says he has stood on the other side of a volley aimed at a village. That is not an answer to the tactical question and it is the only one he gives.

#runin[The other pass]

Two of the holdings are valleys in the Grey Mountains, so twice he has stood on ground a hold also claims. Neither time came to much. Dwarfs understand a pass held by counting, hold their own by the same arithmetic, and keep books of their own; whether he appears in the better half of anybody's is not a thing he has asked.

They shot at him regardless, thoroughly and at range, and the household have never established whether that was policy or a grudge older than the question. He declined to take it badly. A people who will not spend their own for an easier answer, he said, may shoot at him as much as they like.

#runin[The bad coast]

The fishing village on the bad coast appears in the ledger more often than any holding of its size, a bad coast being one that people arrive on. Norscans come ashore roughly every third year, which the villagers regard as weather and the ledger records as engagements.

These are the only battles in which the Ordo is not the strangest thing on the field. A war-party that has seen the keep on the headland does not usually leave and does not usually run, and their champions issue before he does. The household consider them the best fighting they get. The ledger has no column for that and enters them as ordinary.

#runin[The desert]

Once, and it is known exactly where and why, the keep arrived in Nehekhara.

A ship bringing plunder home from the crusades came apart on the bad coast long before he held anything there. What it carried worked inland by the usual routes and finished in a valley he would not hold for another two centuries. The king it had been taken from woke, in the way that kings there do, and wanted two things: the goods returned, and the place that had them answered for.

Emmerich returned the goods, and that settled nothing. In Nehekhara the offence is the taking, and giving a thing back does not undo having taken it. The claim stood, and it stood against the valley.

So he carried the valley's answer to the king rather than wait for the king to come and collect it. That is the second reason at its longest range. The reckoning happened in a desert, and the valley never learned there had been one.

How the keep got there is the part the order cannot explain, and the only record of the season and the place is a stores complaint. The herdsmen filed that the drakes would not fly in the heat, that four were off their feed for a month, and that the byres wanted rewetting daily at a cost they set out in full. Somebody has written the season and the place underneath. The furthest the Ordo Draconis has ever travelled is documented as a livestock matter.

They were there long enough to be met. A king came out to them in gold, with an army drawn up in ranks that had been drawn up that way before Bretonnia existed, and issued through a herald, correctly, at the proper distance. Emmerich accepted, that being the whole purpose of the journey: he had come to answer for the valley in person, and the king had come to be answered. Neither would break and neither could finish it, and the household's account says the two of them stopped by agreement and did not speak, having no language between them. The order has argued about it ever since, the argument being whether the king had understood who he was fighting; the two knights who stood closest took opposite views and are both still in the household.

He has said only that it was the most courteous army he has ever fought, and that he does not expect to be asked back.

#runin[Lustria]

There is one more record, and the order does not know it exists. In Lustria, where the oldest things keep the oldest books, the mountain has an entry. It has had one since before men, and it is not about the keep. What is recorded is the stone underneath: one course of a work laid across the world before the world had anyone to ask, tended in some places, lost in others, holding at the mountain. Whatever sits on it is noted the way weather over a field is noted, and the present notation, rendered approximately, is that the ground is kept and the keeping asks nothing. The slann do not tolerate the dead. They tolerate what tends the stones, and they have never once distinguished between doing a thing and knowing what it is one does.

He has stood on it for two centuries, priced its footing as a saving, and never learned that there is anywhere in the world his ledger is the smaller book.

#namecost("THE LAHMIAN", "")

The Lahmians have tried three times to place someone in his household, and all three times it was the same woman. Lahmia files her as Ankhara. Bretonnia, where she has worked for two centuries under whatever name the duchy required, knows her by the first cover she ever used and by nothing else: the Widow of Gisoreux. It is the only one of her names that stuck, and it was never hers.

#runin[The assignment]

The assignment cannot be completed, and the reason is structural. A Lahmian is placed beside power that has a location: a court, a seat, a succession, a household with rooms in it. He has no lands that appear on a map and no seat that can be visited twice. There is nothing to be near. She has reported as much three times. Lahmia sends her back, because the alternative is to concede that the assignment was never possible.

#runin[The encounters]

She arrived the first time in the third year of a protectorate in Gisoreux, as a widow with a claim, which is the correct approach to a Bretonnian lord and the wrong one to him. He read the claim, found it sound, and settled it in her favour. She stayed four months. What she could report at the end of it was that he had no court, no succession and no vices, and that the tribute was written down. Lahmia found the report insolent.

She came back as somebody else. He greeted her by the previous name, which was either courtesy or the most pointed thing he has ever done, and there is no way to tell which.

They first fought in a valley in the Grey Mountains, on opposite sides of a war belonging to neither of them. He had her. He put up his sword and said that killing her meant Lahmia sending someone he did not know, and that this one he could predict. Two of his knights heard him say it. Neither has repeated it in his hearing.

A thing came off the moors above a fishing village on a bad coast, and they dealt with it from opposite ends without a word passing between them. She was there because it had eaten the household she was working through, which is to say her cover. They left in opposite directions. That village believes to this day that it was saved twice in one night by two separate parties.

She left a report where he would find it. She has maintained ever since that she was careless.

Lahmia eventually stopped asking for placement and asked for his death. She accepted the commission and has carried it for sixty years, which is well within her orders, since the instruction was to get close to him first.

She took the warrant of his appointment from his own table, in a year he does not discuss. He has never asked for it back. His knights raise it a great deal more often than he does.

In every meeting where a challenge was possible he has issued one, because he must, and she has refused it, because she may. He has issued four times. She has refused four times. The rules of both their orders permit exactly this and nothing else, and neither has ever been asked to explain why they keep arranging to be in a position to observe them.

#runin[The count]

The Lahmian archive records nine occasions. His household can account for eleven. Neither figure has been corrected. The two that appear in one record and not the other are, inevitably, the two anybody would want.

#runin[What is not written down]

There is more, and none of it is written anywhere that can be read. He keeps ledgers; that is the whole of him. One is the tithe, every village and every season and every measure. One is the byre tally, where the Dam is an entry with a number and a note on temperament. There is a third book. It is neither of those, nobody in the household has read it, nobody has asked to, and it is thicker than the other two together.

In two hundred years there are two winters in which the Ordo cannot account for its lord and Lahmia cannot account for its agent. They are the same two winters. Both records were checked once, side by side, by a Lahmian clerk with an eye for symmetry, who did not file the observation. Lahmia audits its agents. Twice, her filed expenses cover months her reports do not. The discrepancy was queried both times and answered both times, and both answers are in the file, and they are not the same answer.

The keep has more rooms than the household uses, which is unremarkable in a keep.

One of them is kept aired.

The knights will discuss the warrant, the count and the four refusals, cheerfully and at length. They will not discuss the winters. Nobody made that a rule.

Bretonnia has no view, because Bretonnia does not know. Sylvania has a view and it is wrong. The Ordo stopped correcting them about the order's own name, and it is not going to start with this.

_Blood Keep, the Ordo Draconis and its black drake on a red field, Walach Harkon's remaking of the order, and the Green Knight all belong to the setting. What is ours is the lord and his four names, his arithmetic, the scattered agreements, the signal fire, the Dam and her herd, the keep that will not stand still and the mountain it was built on, the Porter in its gate, the ledger and every engagement in it, the files other realms keep on him, the sky in five sizes, the Lahmian and everything unwritten between them, and the Ordo's claim to its own name. That last one is deliberately a dispute: the surviving account credits Walach with taking the Keep and founding the order, and this book holds that the account is the one told by the vampires who inherited it. Walach gave the blood, so nothing printed in *Vampire Counts* 3.0 is contradicted._

= CHOOSING AN ORDO DRACONIS

An *Army of Infamy* is a second way to build a force from a book that already exists. What changes is which category a unit is chosen from, what the list refuses you, and one or two rules laid over the whole army. This one goes a step further in a single place: the knights it puts in Core are a lesser draft of the Blood Knight *Vampire Counts* prints, sold at that entry's price, and the printed profile is bought back as an upgrade that leaves Core behind.

The Ordo Draconis is the army *Warhammer Armies Project: Vampire Counts* is named after and cannot field: a vampire aristocracy that fights in its own person. Its knights ride and its household walks, its lord is a feudal protector rather than a butcher, and the dead are still raised as fodder, and no longer as the backbone. It gives up twenty-three of that book's thirty-three units to do it.

An Ordo Draconis is chosen from this book and no other. Both players should know which composition is in use before deployment, as _Choosing Your Army_ requires of any Army of Infamy.

#namecost("THE LEGION", "")

- *The army's General must be a Blood Dragon Vampire character.*
- You may include *one character who is not a Blood Dragon for each Blood Dragon Vampire character* in the army. The only characters in this book are his brothers, the brothers who did not survive the offer, and the men he keeps, pays and does not consult.
- *Only units with the Vampire or Chiropter keyword count towards the minimum points an army must spend on Core units.* The bats are the lord's own creatures and count as his household does. The Skeleton Warriors, the Skeleton Horsemen and the Zombies may be taken in any number Core permits, and buy you nothing towards the quarter.
- *A unit upgraded to the Sworn is a Special choice rather than a Core one.*
- *No model in the army may take a missile weapon*, and no Magic Item, upgrade or effect may give one to a model that does not have it. Death Shrieks and Breath Weapons are untouched: neither is a missile weapon, and a scream is not a volley.
- *Emmerich, Marshal of the Ordo Draconis* may only be taken in an Ordo Draconis. *Ankhara, the Widow of Gisoreux* may be taken here or in any army chosen from *Vampire Counts* 3.0.
- *No other Special Character may be taken.* The von Carsteins intend to deal with him in due course, Lahmia has spent two centuries trying to get inside his household, the Strigoi find him funny, and Walach Harkon has never called him back to Blood Keep. None of them is going to stand in his line.
- The mounts a Vampire may take are *not Undead*. The Nightmare, the Hellsteed and the Abyssal Terror are living things bound to their riders, and are printed here without that special rule. The Skeletal Steed is what a Wight rides and is left as *Vampire Counts* has it.

_The Generals of Undeath still applies, so an army that takes its fodder still owes a Necromancy Wizard for the privilege, which is the cost of the fodder, and is why it did not need a cap on top. With characters rationed one non-Blood-Dragon to a Blood Dragon, that Necromancer is bought with the same allowance a Wight King would have wanted, and a lord who wants both must be two lords._

_The mounts clause changes almost nothing at the table, and is worth having anyway. The book already says mounted characters ignore the Undead special rule of their mount, so a Vampire on a Hellsteed was never riding a corpse in any way that touched a die roll. What it settles is the sentence above it: The Generals of Undeath asks for a Necromancy Wizard if the army contains any Undead units and, unlike Slain General, does not say excluding mounts, so whether a regiment of Blood Knights owed a Necromancer on account of its horses was genuinely unclear. In a Legion it does not._

#namecost("WHAT THIS BOOK LEAVES OUT", "")

Ten of *Vampire Counts*' thirty-three unit entries survive the choice, along with three of its thirteen character entries and none of its fifteen special characters. Those are the entries printed here, and an entry that is not printed is not available.

No unit may be *Ghoul* and none may be *Spirit*: the ghoul-courts are Strigoi business and the ghosts are Sylvanian sorcery, and he has kept clear of both. No unit may be *Human*, though characters may be, because he forbids mortals dying in his line rather than mortals serving him. No unit may be a *Chariot*, a *Shrine* or a *War Machine*, an order of knights keeping neither an artillery train nor a rolling reliquary. The Flesh Golems and the Necrofex Colossus are stitched work and the Zombie Dragon is a corpse, and the Ordo keeps a byre. The *Vargheists* of that book are the feral get of the Bloodlines, and whoever keeps those, the Ordo does not: an order may keep a beast, and may not put a rank of the get in its line and call it a household, which is why the Varghulf stays and the get does not. The Vargheists printed here are a different animal wearing the name — the large kind of the keep's own bats — and vampires who arrive expecting the other thing are frequently surprised. The Dire Wolves go for the reason the mounts clause already gives: the animals of this order are alive, and it keeps no dead ones it did not first bury as men.

_What Was Changed_, at the back of this book, sets the whole of it out beside *Vampire Counts* 3.0.

#namecost("MAGIC ITEMS AND VAMPIRIC POWERS", "")

Both chapters are reproduced from *Vampire Counts* 3.0, less the parts of them an Ordo Draconis cannot buy. Every Vampire in this list is a Blood Dragon, so the powers belonging to the other four Bloodlines are gone and the Bloodline headings with them: there is one list of powers and every Vampire may take from it. The Magic Items go the same way. An item gated to another Bloodline is gone, and so is one that asks for a character of another Bloodline behind it. An item gated to a Ghoul, a Spirit or a Cairn Wraith is gone, this book fielding none of the three. And the Asp Bow is gone, since no model in this army may carry a missile weapon.

Where a gate still does work it is still printed. A Wight Lord is not a Blood Dragon and a Necromancer is neither, so an item that names one of the three goes on naming it. What is printed is what can be taken.

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

Models with this special rule have a Thirst value, tracked separately for each unit and for each character. It begins the battle at 0, and can never fall below 0 or rise above 3.

At the end of each Close Combat phase, a unit's Thirst value increases by 1 if one or more enemy models were slain by models with this special rule during that phase, and decreases by 1 if none were. While the value is 1 or more, those models have the Regeneration special rule: Regeneration (6+) at 1, Regeneration (5+) at 2 and Regeneration (4+) at 3. This is not cumulative with any other source of Regeneration.

Models slain that are Animated Constructs, Daemons, Forest Spirits or Vampires do not count for this.

#namecost("THE OATH OF THE KEEP", "")

The lord holds his lands by his own hand and answers for them in person. Every vampire in the order swore it, and every vampire this list permits carries *Martial Honour* already, that being the Blood Dragon rule: they must always issue and accept challenges when possible. The oath adds nothing to it and never had to.

- A Vampire character who slays an enemy character in a challenge immediately recovers a Wound, up to its starting value.
- No unit in the army may choose Flee as a Charge Reaction.
- Models slain while Fleeing or during a Pursuit do not increase a unit's Thirst value. Blood taken from the routed does not count.

#note[_The clause about Flee is narrower than it reads, and it is worth knowing which half of the army it lands on. Unbreakable models may never choose Flee as a Charge Reaction in any case, and every Undead unit in this list is Unstable and therefore Unbreakable. So the oath binds the vampires, the bats and the living mounts and nothing else, which is to say it binds exactly those who swore it, and asks nothing of the dead that the dead were not already doing._]

#namecost("DREAD, NOT SLAUGHTER", "")

The point of a vampire is not how many he kills.

- No unit in the army may pursue a fleeing enemy. A unit that wins a close combat restrains without taking the Leadership test to do so, and may reform as though it had passed it. This overrides any rule that would compel a pursuit, Frenzy included. Overrunning is untouched: an enemy that has been wiped out has not fled.
- A unit in the army that completes a charge against a fleeing enemy catches it as normal in every respect but one: the fleeing unit suffers none of the Wounds it would otherwise suffer for the chargers' Unit Strength.
- Enemy units in base contact with one or more Vampire characters suffer a \-2 penalty to their Leadership. This penalty is cumulative with any other modifiers, the Hell Banner included.

#note[_What is given up is the killing, and it is given up twice over because the rulebook sells it twice. A pursuit that catches its quarry inflicts a Wound with no saves of any kind for every point of the pursuer's Unit Strength, and a charge completed against a fleeing enemy inflicts exactly the same, which is where a Warhammer army does most of its destroying; a Legion forgoes both and takes the ground instead. Without the second clause the first would have cost a turn rather than a massacre. The charge itself is untouched and still worth making. A unit that is already fleeing must declare a Flee reaction when it is charged, so charging one costs it another Movement plus D6 in the wrong direction before the knights arrive, and the battlefield edge removes a fleeing unit entire. Some of it comes back as certainty. Restraining normally requires a passed Leadership test and a failed one forces the pursuit, so a unit that never pursues is never dragged into a fresh combat or out of the line it was holding, and it reforms every time._

_Nothing in this list can buy the Aura of Dark Majesty, that power being von Carstein's, so the stacking to watch is with the Hell Banner. It does much the same work at 40 points, on Line of Sight rather than in base contact, and the two together put an enemy at \-3 for as long as it stands in front of a Vampire character. The banner has no effect on models with Immunity (Psychology) and this rule has no such exemption, which is where the two part company. The book is inconsistent about it; a Leadership penalty reaches Break tests, which are not Psychology tests, so the reading without the exemption is the one that makes sense. Spiritual Vortex is a third \-1, within 6" of its template, for a Level 4 caster who has something better to do._]
]

#lore("THE LORE OF NECROMANCY")[

#spell("THE CURSE OF UNDEATH", "Lore Attribute")[When a spell from the Lore of Necromancy is successfully cast, all Undead units (excluding mounts) within 6" of the caster regain 1 Wound (Core Units regain D3 Wounds) following the rules for _Invocation of Nehek._]

#spell("INVOCATION OF NEHEK", "Signature Spell", cast: "6+")[_Invocation of Nehek_ is a *summoning* spell with a range of 18" that targets Undead (excluding mounts). The target immediately regains a number of Wounds as follows: Core Units gain 2D6 Wounds; Special Units (except Cavalry) gain D6 Wounds. Characters, Special Units that are Cavalry and Rare Units regain D3 Wounds per successful casting. Models gained are distributed as a summoning spell. Any characters in a unit can only be healed if targeted separately from the rest of the unit, in which case only they are healed.]

#spell("HAND OF DUST", 1, cast: "5+")[Remains in play. _Hand of Dust_ is an *augment* spell that is cast on the Wizard itself. While the spell is in effect, the caster gains an additional special attack in close combat that does not benefit from any other magic items or special rule. If this Attack Hits, the target suffers an automatic Wound with the Ignores Armour Saves and Multiple Wounds (D6) special rules.]

#spell("VANHEL'S DANSE MACABRE", 1, cast: "5+")[_Vanhel's Danse Macabre_ is a *conveyance* spell with a range of 24" that targets Undead (including mounts). The target can immediately make a normal move as if it were the Remaining Moves sub-phase (including any Characters in the unit).]

#spell("HELLISH VIGOUR", 1, cast: "7+")[_Hellish Vigour_ is an *augment* spell with a range of 18". All Undead models (including mounts) in the unit gain the Always Strikes First special rule and may re-roll failed To Hit rolls in Close Combat until the start of the caster's next Magic phase.]

#spell("FOUNTAINS OF BLOOD", 2, cast: "7+")[_Fountains of Blood_ is a *hex* spell with a range of 24". Until the start of the caster's next Magic phase, all failed To Wound rolls made against this unit may be re-rolled. In addition, a unit with The Red Thirst that slays one or more models in this unit increases its Thirst value by 2 rather than 1.]

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

*In this section you will find powers that can be bought for your Vampires. You cannot buy multiples of the same power for a single Vampire, but different Vampires in the same army can have the same powers if you wish.*

#namecost("RED FURY", "30 points")

For each unsaved Wound caused by the model in close combat, it can immediately make an additional Attack (to a maximum of +3 Attacks). These additional Attacks do not benefit from Red Fury.

#namecost("FEAR INCARNATE", "20 points")

All enemy units in base contact with the model must pass a Leadership test at the start of each round of close combat or suffer \-1 To Hit this round.

#namecost("FLYING HORROR", "20 points")

Model on foot only. Thе model gains the Fly (10) special rule and may join units of Fell Bats.

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

#namecost("HONOUR OR DEATH", "5 points")

After issuing or accepting a challenge with a model with this power, the enemy character must take a Leadership test. If failed, the enemy model will automatically refuse the challenge following the normal rules.

#entry("THE ORDO'S POWERS")
Five Vampiric Powers available only to a Vampire in an army chosen as an Ordo Draconis.

#namecost("KEPT GROUND", "25 points")

_A lord who cannot garrison a dozen places learned long ago to be the garrison._

The model has the Hold Your Ground (6) special rule.

#namecost("ON THE TALLY", "20 points")

_A knight fights differently when his deeds are being entered, and stops the day the hand stops._

May not be the army's General. For as long as the army's General is alive, the model adds +1 to the combat resolution of any close combat they are part of.

#namecost("THE LONG WALK", "15 points")

_He has stood on the far side of a volley once, and has been crossing that field ever since._

The model has the Hatred special rule against any enemy unit containing one or more models armed with a missile weapon.

#namecost("DRINK DEEP", "15 points")

_The tithe is taken by measure. The field is the one place the measure is waived._

Roll a D6 at the end of each Close Combat phase in which one or more models was slain by the model. On a 5+, the model recovers a single Wound, up to their starting value (excluding additional Wounds from mounts). This does not work against Animated Constructs, Daemons, Forest Spirits or Vampires.

#namecost("OLD ENOUGH", "10 points")

_The blood finished with him long ago; a lucky stroke finds nothing left to end._

The model gains the Immunity (Killing Blow, Multiple Wounds) special rule.

#magic-item-chapter(intro: [This section contains the rules for some of the most iconic and powerful magical artefacts used by the Vampire Counts. These may be used in addition to the magic items found in the Warhammer rulebook.])

#magic-item-section("weapon", first: true)[
#magic-weapon("FROSTBLADE", 60)[The wielder gains the Ice Attacks and Multiple Wounds (D6) special rules.]

#magic-weapon("SKABSCRATH", 40)[The bearer has the Devastating Charge and Frenzy special rules, and all close combat attacks made by the bearer have the Flaming Attacks special rule. In addition, the bearer of Skabscrath gains the Death Shriek special rule.]

#magic-weapon("SLAKING BLADE", 40)[The wielder of this weapon gains +1 Strength and Attacks at the end of each close combat phase in which they have inflicted at least 1 unsaved Wound (up to a maximum of +3). This bonus lasts for the remainder of the game.]

#magic-weapon("DREADLANCE", 35, type: "Heavy lance")[All attacks with this weapon automatically Hit.]

#magic-weapon("SLITTER", 25, type: "Additional hand weapon")[This adds one special attack after the wielder has made their normal attacks. Roll a D3; if the result is higher than the remaining number of Wounds of the target, the target is instantly slain with no saves allowed.]

#magic-weapon("SWORD OF KINGS", 15, only: "Wight Kings")[This item makes the model's Killing Blow special rule take effect on a 5+.]

#magic-weapon("THE BALEFIRE SPIKE", 15, type: "Heavy lance")[This item gives the wielder the Devastating Charge and Flaming Attacks special rules.]

#magic-weapon("SHADOW'S EDGE", 10)[For every natural 6 rolled To Hit with this weapon, that Attack has the Ignores Armour Saves and Multiple Wounds (D3) special rules.]
]

#magic-item-section("armour")[
#magic-armour("THE FLAYED HAUBERK", 45, only: "Model on foot", type: "Heavy armour")[This item gives the wearer a 2+ armour save that cannot be improved by any means.]

#magic-armour("HELM OF COMMANDMENT", 25)[This item gives the wearer a 6+ armour save. If the wearer is not engaged in close combat at the start of the Close Combat phase, one friendly Undead unit (including mounts) within 12" may use the wearer's unmodified Weapon Skill instead of their own that round.]

#magic-armour("THE SCABBING PLATE", 35, type: "Heavy armour")[The wearer of this armour automatically restores 1 Wound lost during the battle at the end of each round of close combat in which it has inflicted one or more unsaved Wounds.]

#magic-armour("THE ACCURSED ARMOUR", 30, type: "Heavy armour")[This item gives the wearer +1 Toughness, but makes them suffer \-1 Weapon Skill and Initiative.]

#magic-armour("THE ARMOUR OF BLOOD", 20, only: "Blood Dragon", type: "Heavy armour")[The wearer must have the Drink Deep Vampiric Power. This item allows the wearer to automatically regain Wounds through it, rather than on a 5+.]

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

#talisman("WRISTBANDS OF BLACK GOLD", 25)[The Wristbands of Black Gold gives the wearer a Magical Ward (3+) against all missile attacks.]
]

#magic-item-section("arcane", columns: 2)[
#arcane-item("THE DERMAL ROBE", 70, type: "Relic")[The wearer gains a +1 casting and dispel bonus. In addition, they gain +1 to their channelling rolls.]

#arcane-item("SCEPTRE DE NOIROT", 40, type: "Staff")[The bearer of this item may re-roll one dice of their choice when determining the number of Zombies or Skeletons raised with the _Invocation of Nehek_ and _Raise Dead_ spells from the Lore of Necromancy.]

#arcane-item("BOOK OF ARKHAN", 35, type: "Relic", bound: true)[This item casts the _Vanhel's Danse Macabre_ spell from the Lore of Necromancy.]

#arcane-item("THE CURSED BOOK", 35, type: "Relic")[At the beginning of the bearer's Magic phase, the bearer may choose to sacrifice one power dice from the pool. If they do so, roll a D6 on the following chart. Assuming there is a viable target for the indicated spell, that spell is automatically cast at its minimum casting value, requiring no power dice. A dispel attempt can be made as normal.

#chart((("D6", "Spell Cast"), ("1", "Melkoth's Mystifying Miasma (Lore of
Shadow)"), ("2", "The Enfeebling Foe (Lore of Shadow)"), ("3", "The Withering (Lore of Shadow)"), ("4", "Portent of Doom (Lore of Heavens)"), ("5", "Doom and Darkness (Lore of Death)"), ("6", "Soulblight (Lore of Death)")))
]

#arcane-item("ROD OF FLAMING DEATH", 35, bound: true)[Staff. This item casts the _Fulminating Flame Cage_ spell from the Lore of Fire.]

#arcane-item("STAFF OF DAMNATION", 35, type: "Staff", bound: (level: 2, cast: "8+"))[If cast successfully, this item casts an *augment* spell. All Undead models (including mounts) in friendly units within 6" of the bearer gain +1 Attack until the start of the bearer's next Magic phase.]

#arcane-item("BLACK PERIAPT", 30, type: "Relic")[The Black Periapt allows the bearer to save up to two of his army's unused power dice or dispel dice at the end of any Magic phase, and then add them to his side's power or dispel dice pool at the start of the next Magic phase.]

#arcane-item("BLASPHEMOUS TOME", 30, type: "Relic")[The bearer of this item gains a +2 casting bonus when using the Lore of Necromancy. However, if they Miscast, they must roll on additional D6 on the Miscast table and discard the lowest result.]

#arcane-item("WYCHLIGHT LANTERN", 30, type: "Charm", one-use: true)[This item can be used during any of your Magic phases. Once used, it allows the bearer to cast one of their spells automatically without using any power dice, at its minimum casting value.]

#arcane-item("MIDNIGHT TOME", 20, type: "Charm", one-use: true)[This item can be used when the wearer successfully casts a spell with a casting value of 10 or less. When used, the opponent cannot attempt to dispel it.]

#arcane-item("STAVE OF SUFFERING", 15, type: "Staff")[The bearer of this item gains a +1 casting bonus for each spell that has successfully inflicted one or more unsaved Wounds the same Magic Phase. This bonus is cumulative.]
]

#magic-item-section("enchanted", columns: 2)[
#enchanted-item("MIDNIGHT AMULET", 40, one-use: true)[This item can be used in any of your Magic phases. Pick one enemy unit within 12"; that unit suffers D6 Strength 4 Hits multiplied by the number of the current game turn.]

#enchanted-item("THE CASKET OF AGES", 35, bound: (level: 1, cast: "6+"))[The Casket of Ages contains a *direct damage* spell that targets one enemy model in base contact. The target model suffers one Wound which Ignores Armour Saves. If the Wound is not saved, the victim must pass a Toughness test or suffer an additional Wound with no saves allowed.]

#enchanted-item("TALON OF DEATH", 35)[All enemy models in base contact with the bearer must pass a Toughness test or suffer a Wound which Ignores Armour saves at the start of each round of combat.]

#enchanted-item("DREADBOLT RING", 30)[For each unsaved Wound the bearer of this item inflicts in close combat, one enemy unit in base contact suffer D3 Strength 3 Attacks with the Flaming Attacks special rule after they have resolved their normal attacks.]

#enchanted-item("FRAGMENT OF THE KEEP", 25, only: "Blood Dragon")[The bearer gains the Always Strikes First special rule.]

#enchanted-item("LIGHTSHARD OF THE HARVEST MOON", 25, one-use: true)[This item can be used at the start of any close combat phase. The bearer and any unit they are with may re-roll failed rolls To Hit for the duration of the turn.]

#enchanted-item("PENDANT OF THE FELL WIND", 25)[The character and any unit they are with gain +1 Movement.]

#enchanted-item("THE SACCHARINE GOBLET", 25, only: "Vampire")[This item can be used at the start of any round of close combat. When used, the bearer gains +1 To Hit and To Wound. However, for each of their Attacks that does not inflict an unsaved Wound, they must pass a Toughness test or suffer one Wound with no saves allowed at the end of the combat (before Break tests are taken).]

#enchanted-item("THE FURIOUS CROWN", 20)[In any turn in which the bearer of this item makes a successful charge, they gain +1 Attack for every enemy model in base contact, up to a maximum of +3.]

#enchanted-item("GRAVE-SAND SHARD", 20, only: "Blood Dragon", one-use: true)[This item can be used in any of your Magic phases. Once used, it automatically restores Wounds to any unit they are with following the rules for _Invocation of Nehek_ from the Lore of Necromancy.]

#enchanted-item("BLOOD RIVER CHALICE", 15, only: "Vampire", one-use: true)[This item can be used at the start of the controlling player's turn. The model immediately recovers all lost Wounds (ignoring any additional Wounds from mounts) up to their starting value.]

#enchanted-item("MIRROR OF ECHOING FAILURES", 15)[Any Wizard within 18" of the bearer that fails a spellcasting attempt (not including dispels) suffers one Wound which Ignores Armour Saves.]

#enchanted-item("NATHMAR'S SKULL", 15, only: "Master Necromancer or Necromancer")[All friendly units of Skeletons and Zombies within 12" of the bearer may March despite being Undead.]

#enchanted-item("RUBY VIAL", 15, only: "Vampire", one-use: true)[This item can be used at the start of any of your turns. Until the start of your next turn, all enemy units within 18" of the bearer suffer \-1 to their Movement.]

#enchanted-item("TALISMAN OF THE LYCNI", 10, only: "Vampire")[Model on foot only. The bearer of this item gains +4 to their Movement value and the Swiftstride special rule.]

#enchanted-item("HEART OF THE GIANT FEAST", 10, only: "Vampire", one-use: true)[This item can be used at the start of any close combat phase. The bearer can re- roll failed To Wound rolls for the duration of the turn.]

#enchanted-item("SHARD OF NIGHT", 5, only: "Vampire", one-use: true)[This item may be used at the start of any round of Close Combat. When it is, the bearer suffers 1 Wound with no saves allowed. In exchange, they gain +2 Strength for the duration of this round of close combat.]
]

#magic-item-section("standard")[
#magic-standard("THE FLAG OF BLOOD KEEP", 45, only: "Blood Knights")[May only be taken if your army includes a Blood Dragon Vampire Character. The unit carrying this standard gains a Magical Ward (4+) against missile attacks.]

#magic-standard("BANNER OF THE BARROWS", 40)[All Wights in the same unit as this standard receive +1 To Hit in close combat. This does not apply to mounts.]

#magic-standard("HELL BANNER", 40)[All enemy units with Line of Sight to this standard suffer a \-1 penalty to their Leadership. This standard has no effect on models with Immunity (Psychology).]

#magic-standard("CURSED PENNANT OF MOUSILLON", 35, only: "Blood Dragon, Skeletons, Wights or Blood Knights")[May only be taken if your army includes a Blood Dragon Vampire Character. Any enemy unit that is in base contact with the unit carrying this standard must re-roll 6's when rolling To Hit, To Wound and when taking armour saves.]

#magic-standard("BANNER OF DOOM", 25)[All Undead models (excluding mounts) in the unit carrying this standard gains the Regeneration (5+) special rule against missile attacks.]

#magic-standard("BANNER OF THE DEAD LEGION", 25)[All Undead models (including mounts) in the unit carrying this standard counts as having twice their actual Unit Strength in close combat.]

#magic-standard("BANNER OF HELLFIRE", 25, bound: true)[This banner contains the _Flaming Sword of Rhuin_ spell from the Lore of Fire. It can only be cast on the unit carrying this standard.]

#magic-standard("INFERNAL STANDARD", 25, only: "Wight Lord with Battle Standard")[The model carrying this standard gains the Hold Your Ground (6) special rule.]

#magic-standard("THE SCREAMING BANNER", 25)[Enemy units on base contact with the unit carrying this standard must pass a Leadership test at the start of each close combat phase. If failed, they require 6’s To Hit for the duration of the phase.]

#magic-standard("ICON OF VENGEANCE", 20)[Any Undead model (including mounts) in the unit carrying this standard that is slain in close combat may immediately make an additional Attack, even if they have already attacked this turn.]

#magic-standard("BANNER OF THE ENDLESS NIGHTMARE", 10)[The unit carrying this standard counts as having one more rank than normal for the purpose of combat resolution.]

#magic-standard("STANDARD OF EVERLASTING DEATH", 10)[The unit carrying this standard suffers one fewer Wound than they normally would due to the Unstable special rule.]
]

#entry("THE ORDO'S ITEMS")
Seven Magic Items available only to an army chosen as an Ordo Draconis, each following the rules for its own kind of item.

#namecost("WEATHER OVER THE KEEP", "15 points")

_The bats have never applied for a position, and keep station over one man anyway._

Enchanted Item. Ordo Draconis only. Friendly units with the *Chiropter* keyword within 12" of the bearer may use the bearer's Leadership.

#namecost("THE SIGNAL FIRE", "30 points")

_A fire behind a cut board, read a valley away off the underside of the cloud — and what answers does not use the roads._

Enchanted Item. Ordo Draconis only. One friendly unit with the *Draconid* keyword may deploy using the *Ambushers* special rule.

#namecost("THE MUSTER ROLL", "15 points")

_A name a man put down himself holds better than anything a necromancer says over him._

Enchanted Item. Ordo Draconis only. Friendly units with the *Undead* special rule within 12" of the bearer suffer one fewer Wound than they normally would due to the Unstable special rule, or following the death of the army's General. This is not cumulative with the Battle Standard.

#namecost("THE WITNESSED OATH", "25 points")

_An oath sworn before witnesses binds both ways: he keeps the terms, and in a challenge the terms keep him._

Talisman. Ordo Draconis only. Vampire only. While the bearer is fighting in a challenge, they have a Magical Ward (5+).

#namecost("THE ROAD BEHIND", "20 points")

_There is no outrunning a thing that arrives instead of travelling._

Talisman. Ordo Draconis only. No enemy unit that the bearer, or a unit the bearer has joined, declares a charge against may choose Flee as a Charge Reaction.

#namecost("THE BANNER OF THE", "")
#namecost("FIRST SWORN", "35 points")

_The men who follow it took the blood at the Keep, while there was still time to choose, and nothing that has happened since has been new to them._

Magic Standard. Ordo Draconis only. The Sworn only. May only be taken if your army includes a Blood Dragon Vampire Character. The unit carrying this standard gains +1 Weapon Skill and +1 Initiative.

#namecost("THE STANDING RATION", "25 points")

_Once a season, by measure, written down — the household does not run short._

Magic Standard. Ordo Draconis only. The unit carrying this standard never reduces its Thirst value.

= CHARACTERS

#unit("BLOOD DRAGONS",
  first: true,
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
  - Blood Wyrm +125 points
  - Elder Wyrm +140 points
  - Great Wyrm (Lord only) +215 points
- One Kastellan may carry the Battle Standard +25 points
- A Kastellan may take Vampiric Powers and/or Magic Items up to a total of 50 points
- A Lord may take Vampiric Powers and/or Magic Items up to a total of 100 points
  ],
  notes: [
- The Battle Standard Bearer can have a Magic Standard with no points limit in addition to any other Magic Items they might have.
  ],
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
- May be mounted on a Skeletal Steed +12 points
- One Wight Lord may carry the Battle Standard +25 points
- A Wight Lord may take Magic Items up to a total of 50 points
- A Wight King may take Magic Items up to a total of 100 points
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
  - Abyssal Terror (Master Necromancer only) +125 points
- A Necromancer may take Magic Items up to a total of 50 points
- A Master Necromancer may take Magic Items up to a total of 100 points
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
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
  options: [
- May take barding +5 points
  ],
)

#unit("HELLSTEED",
  compact: true,
  profiles: (
    (name: "Hellsteed", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 2, i: 2, a: 2, ld: 3, points: "-"),
  ),
  troop-type: "War Beast (Equine)",
  base-size: "25x50 or 30x60",
  special-rules: "Fly (9)",
)

#unit("ABYSSAL TERROR",
  profiles: (
    (name: "Abyssal Terror", m: 6, ws: 4, bs: 0, s: 5, t: 5, w: 4, i: 2, a: 3, ld: 4, points: "-"),
  ),
  troop-type: "Monstrous Creature (Chimeric)",
  base-size: "50x50",
  special-rules: "Fly (8)",
  upgrades: (
    rule("Poisonous Tail")[The Abyssal Terror gains the Poisoned Attacks special rule.],
    rule("Sword-claws")[The Abyssal Terror gains the Armour Piercing (1) special rule.],
  ),
  options: [
- May take Poisonous Tail +10 points
- May take Sword-claws +5 points
  ],
)

#unit("GREAT WYRM",
  before: [
The byres are cut into the keep's own rock, and a drake that outgrows its byre
has to have a new one cut. The ledger records the expense, which is the only
reason anybody can say how many there are. The Dam never had a byre; she came
with the mountain.

#profile(
  (name: "Great Wyrm", m: 6, ws: 4, bs: 0, s: 6, t: 6, w: 5, i: 3, a: 4, ld: 5, points: "-"),
)
  ],
  troop-type: "Monster (Draconid)",
  base-size: "50x100 or 60x100",
  special-rules: "Fly (8), Natural Armour (4+)",
  special-rules-body: [
#note[_A wyrm is not a small dragon; it is a dragon that never learned to breathe and was never anything but an animal. The chassis here is the High Elf Sun Dragon's, which is Toughness 5 with 5 Wounds at Weapon Skill 5 and Leadership 7. This one trades the Weapon Skill and most of the Leadership for a point of Strength and a point of Toughness, gives up Fiery Breath entirely, and carries a worse armour tier than any dragon of Ulthuan. The difference between the two kinds is temperament and breath, and has never been size._]
  ],
)

= CORE UNITS

#unit("BLOOD KNIGHTS",
  first: true,
  before: [
The knights of the household as the Ordo fields them, which is not as the Bloodlines remember them. Most of a man's power is the years he has had it, and these are the ones who took the blood this century.

#profile(
  (name: "Blood Knight", m: 6, ws: 5, bs: 3, s: 5, t: 4, w: 1, i: 4, a: 1, ld: 8, points: 36),
  (name: "Nightmare", m: 8, ws: 3, bs: 0, s: 4, t: 4, w: 1, i: 2, a: 1, ld: 3, points: ""),
)
  ],
  unit-size: "5-15",
  troop-type: "Cavalry (Vampire)",
  mount: "Nightmare (Equine)",
  base-size: "25x50 or 30x60",
  equipment: "Heavy lance, heavy armour, shield, barding",
  special-rules: "The Red Thirst, Vampiric",
  options: [
- May be upgraded to the Sworn +8 points/model
- May upgrade one Blood Knight to a Leader +5 points
- May upgrade one Blood Knight to a Musician +5 points
- May upgrade one Blood Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 75 points
  ],
)

#unit("BLOOD GUARD",
  before: [
The household on foot, who fight that way because the walls are behind them. The same offer, the same century, and no horse.

#profile(
  (name: "Blood Guard", m: 6, ws: 5, bs: 3, s: 5, t: 4, w: 1, i: 4, a: 1, ld: 8, points: 22),
)
  ],
  unit-size: "10-30",
  troop-type: "Infantry (Vampire)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon, heavy armour, shield",
  special-rules: "The Red Thirst, Vampiric",
  options: [
- May be upgraded to the Sworn +5 points/model
- May replace shields with two hand weapons free
- May upgrade one Blood Guard to a Leader +5 points
- May upgrade one Blood Guard to a Musician +5 points
- May upgrade one Blood Guard to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#note[_Two builds, and the swap is free. With the shield it is a 3+ save with Parry (6+) and it holds a line. Two hand weapons instead give +1 Attack behind a 4+ save, which is the whole of what it does on the attack. There is deliberately no two\-handed option: the Depth Guard can buy polearms for Strength and Initiative, and the Blood Guard cannot buy Strength at any price, which keeps it a household guard rather than a hammer._]
  ],
)

#unit("SKELETON WARRIORS",
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
- May take light lances +1 point/model
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

#unit("FELL BATS",
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

= SPECIAL UNITS

#entry("THE SWORN", first: true)
The ones who have had it long enough for it to have finished with them. There is no ceremony and no promotion; a knight is simply older one year than he was the last, and at some point the household stops correcting men who assume he was always like that.

- A unit of *Blood Knights* may be upgraded to the *Sworn* at +8 points per model.
- A unit of *Blood Guard* may be upgraded to the *Sworn* at +5 points per model.
- The Sworn have Weapon Skill 6, Initiative 5 and 2 Attacks.
- A unit of the Sworn is a *Special* choice rather than a Core one.

#unit("GRAVE GUARD",
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

#unit("VARGHEISTS",
  before: [
The large kind of the keep's own bats, horse-sized and ill-tempered, that the household puts where the fighting will be rather than asking it to arrive anywhere in a hurry. They are not the feral get of the Bloodlines that the rest of the world files under the name, and the order has never seen a reason to say so before the charge goes in.

#profile(
  (name: "Vargheist", m: 2, ws: 3, bs: 0, s: 5, t: 4, w: 3, i: 4, a: 3, ld: 5, points: 30),
)
  ],
  unit-size: "3-9",
  troop-type: "Monstrous Beast (Chiropter)",
  base-size: "40x40",
  special-rules: "Fly (8)",
  special-rules-body: [
#note[_The parent book's Vargheist is Monstrous Infantry (Vampire) at 50: Frenzy, The Red Thirst, Vampiric, Weapon Skill 4, Leadership 7 and a walking pace of six. This is what is left when the Blood is taken out of the entry — the animal's Strength, Wounds and wings, a beast's Weapon Skill and Leadership, and a bat's gait, the family walking at one and two and living in the air. Monstrous Beasts carry Fear and Independent on their own account, and Not in the Tally already speaks to the second: the sky answers to Emmerich and nobody else. The working is in the design chapter._]
  ],
)

#unit("VARGHULF",
  profiles: (
    (name: "Varghulf", m: 8, ws: 5, bs: 0, s: 5, t: 5, w: 4, i: 4, a: 5, ld: 7, points: 110),
  ),
  troop-type: "Monstrous Creature (Vampire)",
  base-size: "50x50 or 50x100",
  special-rules: "Hatred, The Red Thirst, Vampiric",
  special-rules-body: (
    rule("Bestial Fury")[For the purposes of calculating combat result bonuses, a Varghulf counts as having no flanks or rear.],
  ),
)

= RARE UNITS

#unit("BLOOD WYRMS",
  first: true,
  before: [
The Grand Master's own wing. Where a Blood Knight is given a horse, the knights of the inner circle are given something older, and the wyrms are alive.

#profile(
  (name: "Wyrm Knight", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 85),
  (name: "Blood Wyrm", m: 6, ws: 4, bs: 0, s: 5, t: 4, w: 4, i: 3, a: 3, ld: 4, points: ""),
)
  ],
  unit-size: "3-6",
  troop-type: "Monstrous Cavalry (Vampire)",
  mount: "Blood Wyrm (Draconid)",
  base-size: "50x75",
  equipment: "Heavy lance, heavy armour, shield",
  special-rules: "Devastating Charge, Fly (8), The Red Thirst, Vampiric",
  options: [
- May upgrade one Wyrm Knight to a Leader +5 points
- May upgrade one Wyrm Knight to a Musician +5 points
- May upgrade one Wyrm Knight to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points
  ],
  notes: [
- A Blood Wyrm taken as a character mount is a *Monstrous Beast*, so the character becomes *Monstrous Cavalry* and may join a unit of Blood Wyrms.

#note[_No breath weapon, deliberately: the Legion does not shoot, and six of them would have been a battery. Devastating Charge and Fly (8) are the whole unit, and the book already has both. Note which half of the model each reaches: Fly is one of the rules the rulebook extends from rider to mount and Devastating Charge is not, so the wyrm flies and the knight alone gains the Attack on the charge: six between them, not seven._

_Two things follow from the troop type rather than from anything written here, and both matter. Monstrous Cavalry causes Fear by default and Vampiric causes Fear as well, and the rulebook turns two sources of Fear into *Terror*, so a Blood Wyrm causes Terror without this entry saying so, exactly as the Blood Heralds do. That is a reading rather than a certainty: the Fear rule says two or more different sources and illustrates them with special rules, spells and magic items rather than with troop types. If it is the wrong reading then neither entry causes Terror, so it wants settling once for both. And attacks against a Monstrous Cavalry model use the highest Toughness and Wounds from either rider or mount, so every model in the unit has four Wounds behind a 3+ save._]
  ],
)

#unit("ELDER WYRM",
  before: [
One of the Dam's oldest get, old before the Bloodlines were, and the knight who talked it into service rather than breaking it. The Dam herself is not this entry and never will be; she carries one man and appears in his.

#profile(
  (name: "Wyrm Knight", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 210),
  (name: "Elder Wyrm", m: 6, ws: 4, bs: 0, s: 6, t: 5, w: 4, i: 3, a: 4, ld: 5, points: ""),
)
  ],
  troop-type: "Monstrous Creature (Vampire)",
  mount: "Elder Wyrm (Draconid)",
  base-size: "50x75 or 50x100",
  equipment: "Heavy lance, heavy armour, shield",
  special-rules: "Devastating Charge, Fly (8), The Red Thirst, Vampiric",
  notes: [
- An Elder Wyrm has a Unit Strength of 5 and a Line of Sight value of 4.
- An Elder Wyrm taken as a character mount is a *Monstrous Creature*, and a character riding one may not join any unit.

#note[_Terror and Stomp (D3) are not written here because the troop type already grants them, and a ridden Monstrous Creature is treated as a Monstrous Creature throughout. Vampiric then adds Fear on top of Terror, which does nothing at all: the model already has the better of the two._]
  ],
)

#unit("BLOOD HERALDS",
  before: [
The Sworn the household puts in the air. A keep that arrives where it likes keeps no couriers, and an order that will not shoot has no other reach. So the shops that blacken the plate make wings as well. Only a knight the blood has finished with is measured for a set, which is why there are never many.

#profile(
  (name: "Blood Herald", m: 6, ws: 6, bs: 3, s: 5, t: 4, w: 1, i: 5, a: 2, ld: 8, points: 45),
)
  ],
  unit-size: "3-6",
  troop-type: "Monstrous Infantry (Vampire)",
  base-size: "40x40",
  equipment: "Two hand weapons, heavy armour",
  special-rules: "Fly (8), The Red Thirst, Vampiric",
  options: [
- May replace the two hand weapons with a hand weapon and shield free
- May upgrade one Blood Herald to a Leader +5 points
- May upgrade one Blood Herald to a Musician +5 points
- May upgrade one Blood Herald to a Standard Bearer +10 points
  - May take a Magic Standard worth up to 50 points

#note[_Three Attacks behind a 4+ save, or two behind a 3+ with Parry (6+) if the shield goes back on. They are the Blood Guard's own two builds, lifted off the ground. Monstrous Infantry is the troop type, not a modelling convenience. A rank of it is three models wide rather than five, which is the only way a 40mm base ranks up at all. The Fear it carries meets the Fear on Vampiric to make Terror, by the reading the Blood Wyrms already rest on._

_Forty-five is a Sworn Blood Guard at 27, plus Terror, plus what flight costs elsewhere in the corpus. A Nightmare is 15 and a Hellsteed 25; a Knight of the Realm is 25 and a Pegasus Knight 50. It sits under the Vargheist that the parent book prices at 50, which is the right way round. Better Weapon Skill, Initiative and Leadership, and a save, against one Wound where the beast has three. No entry in any of the thirty-one books is Monstrous Infantry with a single Wound. This one is, and that is the fair objection to it._]
  ],
)

#unit("THE PORTER",
  before: [
It stood in the gate of the foundation before there was a keep on it, and the gatehouse was built to fit it, because moving it was priced and declined. When the household rides out it comes down and walks with them, and nobody commands it. The men of the six duchies who have seen it in the line say the keep sent its door.

#profile(
  (name: "The Porter", m: 6, ws: 4, bs: 0, s: 6, t: 7, w: 6, i: 1, a: 5, ld: 10, points: 280),
)
  ],
  troop-type: "Monster (Animated Construct)",
  base-size: "50x75, 60x100 or 100x150",
  equipment: "Polearm, heavy armour",
  special-rules: "Animated Construct, Regeneration (6+), Unstable",
  special-rules-body: (
    rule("Granite")[The Porter has +1 to its armour save and the Immunity (Multiple Wounds) special rule.],
    rule("Obsidian")[The Porter has the Magic Resistance (2) special rule. In addition, enemy Wizards within 12" suffer a \-1 casting penalty.],
  ),
  notes: [
- There is one Porter. No army may include more than one.
- The Porter is not Undead. The Lore of Necromancy cannot mend it, the battle standard does not lessen what it loses to Unstable, and it owes no Necromancer under The Generals of Undeath.
- An Animated Construct may never march, and the Porter is no part of the dead, so the General's presence does not lift the restriction.

#note[_Terror, Stomp (D6) and a Line of Sight value of 5 are not written here because the Monster troop type grants all three. This is Grand Cathay's Terracotta Sentinel, printed at that book's prices with the granite and the obsidian bought in and the Yang rule left behind with the army rules that define it. Immunity (Multiple Wounds) is the granite doing what granite does: a cannon that finds it takes a chip rather than a D6 of Wounds, which is the only way something that covers six inches a turn survives owning the ground it stands on. The working is in the design chapter._]
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

= SPECIAL CHARACTERS

#unit("EMMERICH",
  solo: true,
  first: true,
  before: [
Marshal of the Ordo Draconis, and the lord the Order chapter is about. He may only be taken in an Ordo Draconis, and he is the only model in this book who may be given the Dam.

#profile(
  (name: "Emmerich", m: 6, ws: 8, bs: 3, s: 6, t: 5, w: 3, i: 7, a: 5, ld: 10, points: 370),
  (name: "The Dam", m: 6, ws: 5, bs: 0, s: 7, t: 7, w: 6, i: 2, a: 5, ld: 6, points: 320),
)
  ],
  troop-type: "Infantry (Special Character, Vampire, Blood Dragon)",
  mount: "The Dam (Draconid)",
  base-size: "20x20 or 25x25, or 50x100 on the Dam",
  equipment: "Hand weapon, heavy armour, shield",
  magic: "Emmerich is a Level 2 Wizard who uses both of the following Lores of Magic:",
  magic-body: [
- Necromancy
- Shadow
  ],
  magic-items: (
    rule("The Marshal's Blade")[Magic Weapon. Hand weapon. While Emmerich is fighting in a challenge, the Marshal's Blade has the Heroic Killing Blow special rule. Outside a challenge it is an ordinary hand weapon and does nothing at all.],
    rule("The Hauberk of the Ordo")[Magic Armour. Heavy armour. This item gives the wearer a Magical Ward (6+).],
  ),
  vampiric-powers: "Blademaster, Dread Knight",
  special-rules: "Martial Honour (see Blood Dragons), The Red Thirst, Vampiric",
  special-rules-body: (
    rule("The Marshal")[Emmerich must be the army's General. He has the *Inspiring Presence (6)* special rule.],
    rule("Not in the Tally")[Friendly units with the *Chiropter* keyword may use Emmerich's Inspiring Presence and Hold Your Ground special rules, which the Independent special rule would otherwise forbid them.],
    rule("The Pass Held")[Emmerich, and any unit he has joined, may re-roll failed Break tests.],
    rule("The Arithmetic")[Emmerich may never join a unit with the *Undead* special rule.],
  ),
  options: [
- May be mounted on one of the following:
  - Nightmare +20 points
  - Hellsteed +25 points
  - Abyssal Terror +125 points
  - Blood Wyrm +125 points
  - Elder Wyrm +140 points
  - Great Wyrm +215 points
  - The Dam +320 points
  ],
  notes: [
- The Dam is a Great Wyrm, and the oldest of them. She is that entry in every respect but the profile printed here, so a mounted Emmerich is a Monster and everything else follows from it.

#note[_Two lores at once is Mannfred's wording, and it needs no special pleading here: a Blood Dragon may already choose Death, Necromancy or Shadow, so both of these are in the Bloodline as printed. What it buys is not raw power at Level 2 but a second way to play him, and the rulebook supplies that without a line of flavour text. Shadow's Lore Attribute, Steed of Shadows, lets the caster make a Fly move after any Shadow spell resolves, equal to 10 minus the model's Line of Sight value. On foot his value is 1 and the move is nine inches: he casts and is gone. On a Nightmare or a Hellsteed it is two and eight, on a Blood Wyrm three and seven, on the Abyssal Terror or an Elder Wyrm four and six, and on a Great Wyrm or the Dam, where he is a Monster, five and five. The foot build vanishes and the heavy builds do not, and no rule here says so._

_Being a Level 2 who uses Necromancy, he also answers The Generals of Undeath in his own person, which is the fiction's claim that he learned enough of it to avoid depending on anyone, costing nothing to write. The same goes for leaving his own dead in the ground: Invocation of Nehek targets Undead excluding mounts, and his household are Vampires, so it could never have raised them._

_The Marshal is the book's own grammar for a general and is written the way four other books write it. Malekith must be the Army General and has Inspiring Presence (6); so, in their own wording, do Khalil al\-Zahir, Salâh ad\-Dîn and Louen of Bretonnia, and two books sell the same effect as a 25\-point Magic Item restricted to the Army General. Inspiring Presence is cumulative, so his own 12" as General and this 6" make eighteen. The rulebook then adds another six inches to any model whose Line of Sight value is 4 or more, which a ridden Monstrous Creature is and a Monster is, so every mount in his list except the horses and the Blood Wyrm puts him at twenty\-four. That is worth knowing before any of them is bought._]
  ],
)

#unit("ANKHARA",
  solo: true,
  before: [
The Widow of Gisoreux. Sent three times to place herself in a household with no rooms to be placed in, and she has never once reported that the thing cannot be done.

#profile(
  (name: "Ankhara", m: 6, ws: 6, bs: 5, s: 4, t: 4, w: 2, i: 8, a: 3, ld: 9, points: 160),
)
  ],
  troop-type: "Infantry (Special Character, Vampire, Lahmian)",
  base-size: "20x20 or 25x25",
  equipment: "Hand weapon",
  magic: "Ankhara is a Level 1 Wizard who uses the Lore of Shadow.",
  magic-items: (
    rule("The Marshal's Warrant")[Enchanted Item. The document appointing Emmerich to the rank he still uses, taken from his own table. Any friendly unit within 12" of Ankhara may use the Leadership of the army's General as though the General were within 12" of it.],
  ),
  vampiric-powers: (
    rule("Night Creature")[While Ankhara is a lone character, she may not be targeted by enemy missile attacks or spells from further than 12" away.],
    rule("Swiftness")[Ankhara has Movement 10 and the Swiftstride special rule.],
  ),
  special-rules: "Dodge (6+), The Red Thirst, Vampiric",
  special-rules-body: [
- *She Never Swore It:* The Oath of the Keep does not apply to Ankhara. In addition, she may refuse a challenge without the usual penalty. She is moved as the rules for Refusing a Challenge require, but the enemy gains no combat result bonus for the refusal, and she keeps the use of her Leadership and of every special rule and Magic Item she carries for that turn.
- *The Fourth Attempt:* If Emmerich is also in the army, Ankhara is deployed after every other unit of both armies, anywhere on the table more than 12" from an enemy model.

#note[_Two rules written weeks apart collide here, and the collision is the entry. Every Vampire character this list permits carries Martial Honour in its own right, being a Blood Dragon, so all of them must issue and accept challenges whenever they can. She never swore it, three attempts having failed to place her in the household that did. He cannot refuse and she cannot be made to accept, which is the whole of the relationship expressed in rules that were not written for it. Refusing normally costs the round's attacks, hands the enemy a point of combat result, and denies the refuser the use of her Leadership and of every bonus she carries; hers costs the attacks and nothing else._

_She is chosen from the Characters section like anybody else and counts against the ration of one non\-Blood\-Dragon to a Blood Dragon, which is most of what she costs a list. An Ordo Draconis that brings her and one Blood Dragon has spent its allowance and has no Necromancer, so it must find the Necromancy Wizard that The Generals of Undeath asks for in the Blood Dragon himself, or field no Undead at all. The bloodline clause is the one thing she is excepted from, and a permission is not an allowance._

_What the Oath exemption covers is worth setting out, since Martial Honour is not in it. Blood Dragons carry that rule in their own right, so the collision needs no help: he cannot refuse and she cannot be made to accept. What she gives up is the Wound recovered for winning a challenge. What she gains is the right to Flee as a Charge Reaction in an army that has given it up, and to feed her Thirst on the routed. A Lahmian withdrawing while the household holds is what both orders would have predicted of her._

_She may be taken in an Ordo Draconis and in any other army chosen from *Vampire Counts* 3.0, which is the asymmetry the fiction asks for. He belongs to one place and she belongs nowhere, and Lahmia goes on sending her wherever it likes. The Fourth Attempt is the only thing on her that needs him, and it does nothing at all when he is absent._]
  ],
)

= WHAT WAS CHANGED

This book is self-contained, so the chapters it shares with *Warhammer Armies Project: Vampire Counts* 3.0 are reproduced from it rather than referred to. Most of that text is untouched. Where this list removes an option, the option is gone from the entry rather than forbidden in a footnote, which makes the book playable straight through and makes the difference invisible in the body. This chapter is where a reader finds it.

#namecost("THE ENTRIES THAT WERE ALTERED", "")

#chart((
  ("Entry", "What was done to it"),
  ("Blood Knights", "Weapon Skill 6 to 5, Initiative 5 to 4, Attacks 2 to 1, at the printed price of 36 points. Core rather than Rare, no longer capped at one unit, and the Sworn upgrade added. The Nightmare loses the Undead special rule"),
  ("Skeleton Horsemen", "The option to replace shields with bows is removed. Light lances become an option in their own right rather than one of two"),
  ("Blood Dragons", "The Zombie Dragon mount option is removed. The Blood Wyrm, the Elder Wyrm and the Great Wyrm are added as mounts, the last of them a Lord's purchase"),
  ("Necromancers", "The Corpse Cart mount option is removed"),
  ("Wight Lords", "The Barrow Chariot mount option is removed, leaving the Skeletal Steed as a single option rather than one of two"),
  ("Nightmare, Hellsteed, Abyssal Terror", "The Undead special rule is removed, and the keyword with it"),
  ("Varghulf", "Regeneration (4+) removed, and 135 points to 110. Special, as in that book"),
  ("Grave Guard, Black Knights, Terrorgheist", "Reproduced unchanged"),
  ("Skeleton Warriors, Zombies, Fell Bats, Bat Swarms", "Reproduced unchanged"),
  ("Skeletal Steed", "Reproduced unchanged"),
  ("The Lore of Necromancy", "Reproduced entire, and one clause of one spell is altered: Fountains of Blood now adds to a Thirst value rather than to a roll"),
  ("Vampiric Powers", "Thirty-nine of the fifty-two are removed and the Bloodline headings with them, leaving one list of thirteen that every Vampire in this army may take from, with the Ordo's own five added at the end of the chapter"),
  ("Army Special Rules", "Reproduced entire but for The Red Thirst, which is rewritten as a Thirst value that rises and falls with the feeding, with the Oath of the Keep and Dread, not Slaughter added at the end of the chapter. Dread, not Slaughter denies the Wounds a completed charge inflicts on a fleeing enemy, as well as the pursuit"),
  ("Magic Items", "Twenty-five of the eighty-six are removed, the Infernal Standard is corrected from Wight King to Wight Lord, the Armour of Blood is repriced from 30 points to 20 and made to require Drink Deep, and the Talisman of the Lycni loses the clause letting it join Dire Wolves. The Ordo's own seven are added at the end of the chapter"),
))

#namecost("THE POWERS AND ITEMS THAT WERE REMOVED", "")

Two chapters lost whole entries rather than lines, and one rule accounts for most of it: a power or an item this army has nobody to give to is not printed. Every Vampire the list lets you buy is a Blood Dragon, so the four other Bloodlines take their powers away with them, and the headings go too. Thirty-nine of the fifty-two powers went on that ground alone, and the thirteen left are one list.

The Magic Items lose twenty-five of eighty-six, and there it is worth being exact about which gate did the work, because three of the four are not the Bloodline clause.

#chart((
  ("Why it went", "How many", "Which"),
  ("Gated to a Bloodline this list cannot field", "17", "Armour of Night, Chiropteran Cloak, Morbheg's Claw, the Sigil of the Sanguine Throne, Keening Bone, Splintervane Broach, Carrion Wand, the Grim Garland, Medal of Madness, the Signet of the First Court, the Bilious Decanter, the Flayed Pennant, the Staff of Raukhamon, Breath of the Void Maw, Amulet of Screams, the Crimson Gem of Lahmia, the Orb of Enchantment"),
  ("Asks for a character of one behind it", "3", "The Drakenhof Banner, the Royal Standard of Strigos, the Standard of Hellish Vigour"),
  ("Gated to a unit this book does not field", "4", "Reaper of Sorrows, the Cloak of the Waxing Moon, the Soulfire Ring, the Brazier of Nagashizzar, all four of them Cairn Wraith items"),
  ("A missile weapon", "1", "The Asp Bow"),
))

The Keening Bone would have gone twice over, being Strigoi's and a throwing weapon.

One item was corrected rather than removed. The Infernal Standard is for a Wight King carrying the Battle Standard, and in that book as in this one no Wight King may carry it: the Wight Lords entry gives the Battle Standard to a Wight Lord. It is printed here with the rank the rule plainly meant.

What stayed is what somebody in this army can still be handed. A gate naming a Vampire, a Blood Dragon, a Wight King, a Wight Lord or a Necromancer is printed as it was, this book fielding all five, and an item that names one of them is refusing the other four.

#namecost("AND BESIDE THE PARENT BOOK", "")

#chart((
  ("", "Vampire Counts 3.0", "The Ordo Draconis"),
  ("Blood Knights", "Rare, one unit below 3,000 points", "Core, at Weapon Skill 5, Initiative 4 and one Attack, for the same 36 points"),
  ("Blood Guard", "Does not exist", "Core, new entry, 22 points"),
  ("The Sworn", "Does not exist", "An upgrade to either, carrying the printed Blood Knight profile, chosen from Special"),
  ("The Banner of the First Sworn", "Does not exist", "Magic Standard, new"),
  ("Blood Wyrms, Elder Wyrm", "Do not exist", "Rare, new entries, and the wyrms are character mounts as well"),
  ("Blood Heralds", "Does not exist", "Rare, new entry, the Sworn profile winged and on foot, 45 points"),
  ("The Porter", "Does not exist", "Rare, Grand Cathay's Terracotta Sentinel with the granite and the obsidian folded in, one only, 280 points"),
  ("Great Wyrm", "Does not exist", "Character mount, new, Blood Dragon Lord only"),
  ("Emmerich", "Does not exist", "Special Character, new entry, this list only"),
  ("Ankhara", "Does not exist", "Special Character, new entry, and available to any Vampire Counts army"),
  ("Weather Over the Keep, the Signal Fire, the Muster Roll, the Witnessed Oath, the Road Behind, the Standing Ration", "Do not exist", "Magic Items, new"),
  ("Kept Ground, On the Tally, the Long Walk, Drink Deep, Old Enough", "Do not exist", "Vampiric Powers, new"),
  ("The Varghulf", "Special", "Special, without Regeneration (4+), at 110 points"),
  ("The Red Thirst", "A Wound recovered on a 5+", "A Thirst value that rises and falls with the feeding, granting Regeneration (6+) at 1, (5+) at 2 and (4+) at 3"),
  ("The Armour of Blood", "30 points", "20 points, and requires Drink Deep"),
  ("Dire Wolves", "Core", "Not in this book"),
  ("Skeletons, Skeleton Horsemen, Zombies", "Core, and count towards the 25% minimum", "Core, and count towards nothing"),
  ("Fell Bats, Bat Swarms", "Core, and count towards the 25% minimum", "Core, and count towards it still"),
  ("Grave Guard, Black Knights, Terrorgheist", "Special, Special, Rare", "Unchanged"),
  ("Every Ghoul and every Spirit", "Core, Special and Rare", "Not in this book"),
  ("Every Chariot, Shrine and War Machine", "Core, Special and Rare", "Not in this book"),
  ("Flesh Golems, Necrofex Colossus, Zombie Dragon", "Special, Rare, Rare", "Not in this book"),
  ("Sylvanian Levy, Strigany, Skeleton Archers", "Core", "Not in this book"),
  ("Vargheists", "Special, Monstrous Infantry (Vampire), 50 points", "Special, the keep's own animal — Monstrous Beast (Chiropter), 30 points — sharing nothing but the name"),
  ("Lahmian Handmaidens", "Rare", "Not in this book"),
  ("Every Special Character in that book", "Fifteen of them", "Not available"),
  ("Characters", "Thirteen entries", "Blood Dragons, Wight Lords and Necromancers"),
  ("Vampiric Powers", "Fifty-two, in five Bloodline lists", "Thirteen, in one list, and the Ordo's own five"),
  ("Magic Items", "Eighty-six", "Sixty-one, and the Ordo's own seven"),
  ("Bows, crossbows, throwing weapons", "Options on five entries", "Not available"),
  ("Nightmare, Hellsteed, Abyssal Terror", "Undead mounts", "Not Undead"),
))

= THE DESIGN

What follows is not rules. It is the reasoning the list was built on: the argument for its existence, what every price in it is set against, and the case against the whole thing, which is worth having written down where an opponent can read it. Nothing here changes a word of the chapters above.

Throughout this chapter, _the book_ with nothing after it means *Warhammer Armies Project: Vampire Counts* 3.0. Every price in this list was set against something printed there, and where two anchors disagreed, that one won.

#namecost("WHY AN ARMY OF INFAMY", "")

Four units in *Vampire Counts* carry the Vampire keyword: Blood Knights, Vargheists, the Varghulf and the Lahmian Handmaidens. Not one of them is a Core choice.

The eleven Core entries are six kinds of Undead, two kinds of bat and three kinds of mortal, and every army chosen from that book must spend a quarter of its points among them. There is barely a rank of vampires to buy. The only Vampiric infantry are three to nine Vargheists, which are Monstrous Infantry, and five to fifteen Lahmian Handmaidens, who are Rare, Skirmishers, locked to one Bloodline and dressed in light armour. The only Vampiric cavalry is Rare and capped at one unit below 3,000 points.

Underneath that there is a deeper split, and it is the real argument. Both of the things that make a Vampire Counts army formidable are attached to the *Undead* special rule, and the Vampires have neither. Undead units are Unstable, and Unstable units are Unbreakable. Vampiric models get Fear, Immunity (Psychology) and \-1 To Wound, and Immunity (Psychology) is not immunity to Break tests: Unbreakable is defined as that immunity *and* passing Break tests, which is the book telling us they are two different things. Invocation of Nehek targets Undead, excluding mounts, so it cannot put a single Blood Knight back in the saddle.

The Vampires are the only part of a Vampire Counts army that can be broken, and the only part its magic cannot mend.

The book already knows. Walach Harkon, Grand Master of the Blood Knights, carries a rule that reads: *if Walach is included in your army, units of Blood Knights are taken as Special Units instead of Rare Units*. Prince Vhordrai lets Blood Knights within 12" re-roll a failed charge distance. The Flag of Blood Keep is Blood Knights only and requires a Blood Dragon Vampire character; so does the Cursed Pennant of Mousillon.

Four entries are written for an army of vampire knights, and one of them is the very remedy this list makes general. That book charges 490 points for half of it, and sells it to one customer.

#namecost("THE PRICES", "")

Every entry in this list was priced against a printed one. This is the working.

#field("Blood Knights", "")

This is the entry printed in the Rare Units section of the book, less a point of Weapon Skill, a point of Initiative and an Attack, at exactly the price the book charges for the whole thing. That is the trick at the centre of this list, stated plainly: an Ordo Draconis pays 36 points for a Blood Knight and gets less than 36 points buys anywhere else in the book. What it gets instead is the category.

And the category is the orthodox part. Bretonnia is an army of knightly orders and fields Knights Errant at 21 points and Knights of the Realm at 25 as Core choices, with no cap on duplicates and no obligation to bring a single peasant. Its Foot Knights are Special and its Hippogryph Knights are Rare. Every category in this list sits where its Bretonnian equivalent sits, which is not a coincidence. The man who built the order was raised in that structure and never found a reason to improve on it.

Against the rest of the game the comparison to make is a Chaos Knight, and it should be made honestly. Bare, it is 28 points for Weapon Skill 5, Strength 4, one Attack, a hand weapon, heavy armour, shield and barding, and it is a Special choice in its own book. Equipped to match, with heavy lances at +2 a model and the Mark of Nurgle at +3 for a flat +1 Toughness, it is 33 points for the same 2+ save at Toughness 5. Three points, then, buy Strength 5 and the whole of Vampiric in place of Will of Chaos. That is a much narrower margin than the bare price suggests, and it is the argument worth having.

Toughness 5 and Toughness 4 behind a \-1 To Wound are the same defence at Strength 3, 4, 5 and 6, which is most of what a battle throws. The vampire is better only against Strength 2 and against Strength 7 or more. Against that, Vampiric's modifier does not apply at all to Magical Attacks or Flaming Attacks, where the Mark's Toughness never stops applying, and a Vampiric model on foot treats every river as Deadly Terrain. What the three points actually buy is Fear, Immunity (Psychology), a point of Strength, and a defence that is conditional where the other is not.

#field("Blood Guard", "")

The same bargain as the knights, and the same anchor. *Zombie Pirates of the Vampire Coast* carries the Depth Guard at 22 points: Infantry (Vampire), Vampiric, unit size 10 to 30, the same base, and Weapon Skill 6, Strength 5, Toughness 4, one Wound, Initiative 5, two Attacks and Leadership 8. This is that entry at that price with a Weapon Skill, an Initiative and an Attack taken off it. And the Depth Guard is a Rare choice in its own book, where this is a Core one.

A Chaos Warrior is 13 points, or 15 with a shield, for Weapon Skill 5, Strength 4, one Attack and heavy armour, and is Core in its own book. Seven points buys two of Movement, a point of Strength, and Vampiric against Will of Chaos.

#field("The Sworn", "")

The upgrade restores precisely what the Core entries give up, which is to say it buys the profile the book already prints for a Blood Knight, and the profile *Zombie Pirates* prints for a Depth Guard. Nothing here is new except the price and the category.

The price is the Warriors of Chaos ladder. A Chaos Warrior is 13 points and a Chosen is 16 for a point of Weapon Skill, a point of Initiative, an Attack and two special rules, a little under a quarter again. Five points on 22 and eight on 36 are that same premium, charged for the characteristics without the special rules.

The category is the Empire's. Inner Circle Knights are upgraded at +2 points a model and may not then be taken as Core Units, and this is that clause with the arithmetic changed. It does more work here than it does there, because it is what stops the list upgrading its way out of its own restriction: the Sworn are Special, an army must spend a quarter of its points on Core, and only the vampires and the bats count towards that quarter. Whatever else an Ordo Draconis fields, a quarter of it is knights at Weapon Skill 5 with one Attack. There is no build that avoids it.

#field("Blood Wyrms", "")

Priced against the Morbheg Knights, the book's other Rare flying Monstrous Cavalry, at 35 points for a worse rider on a weaker mount with Fly (5), and against the High Elf Drakemaster, which is 200 points for one rider on one drake. Eighty-five is the answer to the second comparison rather than the first.

The arithmetic then does the rationing without a special rule. Both the Rare allowance and the ceiling on any single unit are a quarter of the army, so at 2,000 points five Blood Wyrms with a full command are 445 and fit, while six are 530 and do not. A full wing needs a game of 2,120 points or larger, and at that size it is still the only Rare choice the army can afford.

#field("Elder Wyrm", "")

Two hundred and ten points, and the working is worth printing. Set against the High Elf Drakemaster at 200, which is the model it answers. The chassis is now identical: Toughness 5, 4 Wounds, 4 Attacks on both. Four Wounds is where this animal sits on the ladder rather than a statement about wyrms in general; the Great Wyrm above it has five and the Dam has six, and none of them breathes.

What each buys with the difference does not net out to nothing, and it does not favour us. Ours has a point of Strength on the mount, two more points of Strength and one more of Toughness on the rider, and the whole of Vampiric: Fear, Immunity (Psychology) and \-1 To Wound against the model. The Drakemaster has Fiery Breath, a point of Initiative and of Leadership on both halves, three racial rules, and much the better armour. Dragon armour is heavy armour with a Magical Ward (6+) and Immunity (Flaming Attacks), and its Natural Armour (4+) combines with that and a shield, so it sits at the 2+ ceiling where ours stops at a 3+ with no ward at all.

So: ten points over the Drakemaster for a better rider and Vampiric, having given up its ward, its breath and its fire immunity. Below the Terrorgheist at 225 and the Zombie Dragon at 245, above the Coven Throne at 200, and well above the Varghulf at 110, which is this book's other Monstrous Creature (Vampire) and has no rider, no flight and no armour save.

In the book as printed this entry would have had an obvious rival, since a Vampire on a Zombie Dragon is a ridden Monstrous Creature with the same Terror and the same Stomp, and brings Leadership, challenges and a hundred points of magic items along with it. An Ordo Draconis does not field the Zombie Dragon, but it now sells the same animal as a mount, so the rival is its own Elder Wyrm with a character on it at 140 points. That is the honest comparison and this entry loses it on paper: the same creature, and the ridden one brings Leadership, challenges and magic items for a hundred and thirty points less than the unit costs. What the unit buys is a body that is not a character, in an army whose characters are rationed one non-Blood-Dragon to a Blood Dragon and whose Rare allowance is the only place a monster fits once the Lords budget is spent.

#field("Blood Heralds", "")

Forty-five is a Sworn Blood Guard at 27, what wings cost elsewhere in the corpus, and Terror. The corpus charges ten to fifteen for flight on a body this size. A Nightmare is 15 against a Hellsteed at 25. A Knight of the Realm is 25 against a Pegasus Knight at 50, and that second pair buys a far better animal along with the wings. Terror is not written on the entry because the troop type already grants it, Monstrous Infantry carrying Fear and Vampiric carrying it again.

Set against the parent book's Vargheist, which *Vampire Counts* prices at 50 for the same troop type, the same base and the same Fly (8). That one has three Wounds, four Attacks under Frenzy, and no armour at all. This one has a single Wound, three Attacks, a 4+ save, two points of Weapon Skill, one of Initiative, one of Leadership, and a command group. Five points under the beast is the right way round, and the Wounds are the reason.

The novelty is worth stating rather than hiding. No entry in the thirty-one books is Monstrous Infantry with a single Wound; the Ogres, the Trolls and the Crypt Horrors all carry three. Nothing in the rulebook forbids it and nothing here depends on it. But it is the first of its kind, and a reader will notice before we do.

#field("Vargheists", "")

Thirty is a Fell Bat grown up, and the working runs from both ends. From below: twelve buys the middling bat, and the large one is a Strength, a Toughness, a Wound, an Attack and Fear over it at two and a half times the price. From above: the parent book's Vargheist is 50, and this entry takes off Vampiric, The Red Thirst, Frenzy's extra Attack, a point of Weapon Skill, two of Leadership and four of walking pace, which is most of what the 50 was buying. What is left is the animal, and the animal is 30 — Leadership 5 and Independent besides, so it panics like an animal too, unless the man the sky answers to is on the field.

#field("The Porter", "")

Two hundred and eighty is Grand Cathay's numbers: the Terracotta Sentinel at 235, the granite at 25, the obsidian at 20. One thing in the sum is ours, and it should be stated rather than found. That book sells its upgrades one to a sentinel, and this entry buys two and pays for both. The exclusivity there is a catalogue's — pick a variant off the shelf — and the Porter is not a variant of anything: it is one object that is both old granite and unquiet ground for sorcery, so it carries both natures at their full printed prices. The Yang rule stayed in Cathay with the army rules that define it, and so did the rest of the elemental menu — jade and warpstone are a catalogue, and a catalogue implies a workshop this order does not keep.

Priced with Cathay's numbers, and worse off here than they suggest. It is not Undead, so Invocation cannot mend it, the lore attribute passes over it, and the battle standard does not soften its crumble. It may never march, and the exception for the dead is written for the dead. Once wounded, it is wounded. And six inches a turn is a different price in this book than in that one. Grand Cathay shoots, so a sentinel that cannot hurry stands in a line the enemy must come to; the Ordo Draconis is forbidden every missile weapon it might have waited behind, and goes to the enemy at a pace the Porter does not share. The same statline is simply worth less in an army that has to cross the field. The Terrorgheist at 225 flies, screams, and is knit back together every magic phase; fifty-five points over it buy a Toughness, a Strength, an Attack, the granite's immunity and the obsidian's ground, and give up the air, the shriek and every form of repair this book contains. That is the right side of the line to err on for an entry there can only be one of.

Every other entry in this list is a relationship with terms: the household swore, the Wights answered the second question, the levy signed the roll, the herd is bought and paid for in sheep. The Porter agreed to nothing, and is permitted to be the exception because it was never asked — it was there before the order, before the keep, and before anybody now arguing about it. One is a mystery; two would be a product. That is why there is one, and why the prose never uses a plural.

And the borrowing runs in the right direction. The foundation is first-age work, older than the duchies and older than both realms that proclaim against the man living on it, and of the living races only the Lizardmen ever dealt with the hands that laid such courses. Cathay's sentinels are simply the nearest thing any human book prints. The entry is borrowed from *Grand Cathay* because that book printed the right statue, not because the stone is Cathayan.

#field("The drakes as character mounts", "")

The herd was written as three unit entries and no way for a character to ride any of it, which left the Grand Master's own wing with no Grand Master in it. That was not a decision; it was an omission, and the rulebook fixes it without a special rule. A character on a Monstrous Beast is Monstrous Cavalry, a unit of Blood Wyrms is Monstrous Cavalry, both are flyers and neither has the higher Unit Strength, so a character on a Blood Wyrm may join them and a character on anything else in this book may not.

One hundred and twenty-five for the Blood Wyrm, the Abyssal Terror's price, because that is the animal it sits beside: a Toughness worse, an Initiative better, and the troop type is the difference worth paying for. One hundred and forty for the Elder Wyrm, between the Terror at 125 and the Warriors of Chaos Manticore at 150, which is Monstrous Creature and Fly (8) like ours and carries Weapon Skill 5, Initiative 5, Frenzy and Killing Blow on top; ours has a point of Strength and nothing else, so it belongs under it.

Two hundred and fifteen for the Great Wyrm, and this is the new tier. The High Elf Sun Dragon is 235 as a mount for Toughness 5, 5 Wounds, Weapon Skill 5, Leadership 7, Fiery Breath and Natural Armour (3+). Ours trades the Weapon Skill and two of the Leadership for a point of Strength and a point of Toughness, gives up the breath, and drops an armour tier; against the Tomb Kings' Necrolith Bone Dragon, which is 235 for Toughness 6, 6 Wounds, 5 Attacks and no breath either, it is a Wound and an Attack short. Below both, and a Lord's purchase rather than a Kastellan's, which is the gate *Vampire Counts* itself puts on the Zombie Dragon when it writes Count only and Master only.

And the wyrms do not get smaller as they get further from a dragon. The Great Wyrm is a Sun Dragon's size and the Dam is larger than a Moon Dragon; what makes them wyrms is that none of them breathes and none of them is anybody's peer. The Blood Wyrms entry gave up its breath weapon because the Legion does not shoot, and the same sentence turned out to be the whole taxonomy.

#field("Emmerich", "")

The price is the part worth arguing with. Adding up the items, powers and rules comes to 435, and that is not how the book prices anything. Konrad is 215 for a Magical Ward (5+), a Multiple Wounds (2) weapon and Red Fury. Vlad is 450 for a Level 3 with a Magical Ward (4+), a resurrection on a 2+ and 60 points of Vampiric Powers. Mannfred is 565 for a Level 4 who is a Loremaster in two Lores at once, with four Magic Items, before a 245-point Zombie Dragon is added. Strip the mounts out and Walach's half is about 470, Zacharias's about 475 and Vhordrai's about 370. And in every case the signature army rule is free: Walach's Grand Master, Mannfred's Drakenhof Guard and Vhordrai's Fist of Abhorash are all given away with the character.

So this follows the book. Three hundred and seventy is 215 for a Blood Dragon Lord, 70 for the second level, 5 for the shield, 30 of Vampiric Powers and 50 of Magic Items - the same purchases a Blood Dragon Lord could make from the army list. The two Lores, the Marshal, the Pass Held and the Arithmetic are the character, and are not charged for, exactly as they are not charged for on Walach. A Blood Dragon Lord who spends his full 100 points on powers and items reaches 390, so Emmerich is twenty points under the most expensive one you could build. That is the fair objection to the entry, and it is the same objection every special character in the book invites.

What it is worth is set by the same thing the Pass Held answers below. Break tests are not Psychology tests, so Vampiric's Immunity (Psychology) never reaches them, and testing on his Leadership 10 rather than a unit's own 8 is the only general remedy this list has. The Pass Held fixes one unit outright; the Marshal decides how far the lesser version carries.

The Marshal's Blade is 25 against Bretonnia's own scale, where the Lance of Artois is 15 points for Killing Blow restricted to turns in which the model charges and the Virtuous Lance is 25 for rather more. The restriction here is narrower than it looks, since Martial Honour puts him in a challenge whenever one can be had, and the Heroic part only earns its keep against a character on a Monster, where ordinary Killing Blow inflicts one Wound instead of removing the model. Whether a weapon that is inert outside a challenge is characterful or is a trap laid for the player is the question to settle.

The Pass Held is the rule that answers this list's own argument. Why an Army of Infamy, above, sets out that Vampiric models are the only part of a Vampire Counts army that can be broken and the only part its magic cannot mend. A re-roll on Break tests for the unit he is standing in fixes precisely that, for precisely one unit, and the Arithmetic then forbids him from doing it for the fodder. The two clauses are one rule read from either end.

Which unit he can be standing in is settled by the rulebook rather than by his entry, and that is the reason he has a horse at all. A character may not join a unit whose troop type has a higher Unit Strength than his own, and Infantry is 1 where Cavalry is 2, so on foot the Pass Held reaches the Blood Guard and the fodder and never once a regiment of knights. A character who is himself a Monstrous Creature or a Monster may not join anything, so on the Abyssal Terror and on the Dam it reaches nothing whatsoever. The Nightmare at 20 points and the Hellsteed at 25 are what put the rule where this list needs it, which is the front rank of the Blood Knights. Neither costs him the Blood Guard, since a mounted character may still join a unit of lower Unit Strength than his own.

The Dam is priced on Ulthuan's ladder rather than this book's, which is a departure and wants defending. The Zombie Dragon at 245 is the natural anchor and it cannot hold her, because a Star Dragon is Strength 7 and Toughness 7 on a flying Monster for 390 and she carries both. She is a Wound and an Attack below that dragon and two armour tiers below it, at Weapon Skill 5 against 7 and Leadership 6 against 9, with no breath at all. That is a long way short of a Star Dragon. It is nothing like a hundred and fifteen points short of a Moon Dragon at 300. Three hundred and twenty is where she belongs: above the Moon Dragon on the chassis that matters, well below the Star Dragon on everything else.

Six Wounds and 5 Attacks, one under a Star Dragon on each, so that the distance to Ulthuan's largest is legible on the profile and not only in the price. What is left between her and a Moon Dragon is a point of Strength, a point of Toughness and a point of Fly, against Fiery Breath, an armour tier, a point of Weapon Skill and Initiative, and two of Leadership. Weapon Skill 5 rather than a Star Dragon's 7 because her get are Weapon Skill 4 and these are stock, not the ancients of Caledor. No Breath Weapon, because the Blood Wyrms gave theirs up for the same reason and their rider will not use a weapon that kills at a distance.

Pricing the army's centrepiece up rather than down is deliberate. A list that turns out too cheap is an argument with the other players; a list that turns out too dear is an evening's arithmetic.

Six hundred and ninety mounted sits above Vhordrai at 615 and below Zacharias at 720, which is the right neighbourhood. The Lords allowance is a quarter of the army, so on the Dam he wants a game of 2,760 points or larger, where on foot he is legal from 1,480, on a Nightmare from 1,560 and on a Great Wyrm from 2,340. That is the argument for the Dam being an option rather than fixed: at 2,000 points he can be fielded on foot and lead a line, and the biggest drake in the setting can wait for a bigger table.

#field("Ankhara", "")

Weapon Skill 6 and Initiative 8 over the Lahmian Courtesan, and not a point of Strength. She is not a duellist and the profile should not let anyone read her as one.

The price follows Sekhar exactly, since he is the book's own worked example of what a Lahmian special character costs. Seventy points of Courtesan, 70 for the second level and 50 of Vampiric Powers make 190, and his familiar, his polearm, his medium armour and the Time-Swallower's Maw are all free on top. So 70, 35 for the first level and 30 of powers make 135 here. Isabella supplies the rest of the rate: 70 of Courtesan and 10 for Beguile is 80 against a printed 110, so about 30 buys a shifted statline, a Magic Item and a rule that only works alongside somebody else. One hundred and sixty, which sits where a companion piece belongs - above Isabella at 110 and below Sekhar at 190.

The Warrant is the number to argue with. Lending the General's Leadership at 12" is a Battle Standard's kind of effect and a Battle Standard is 25 points in the book, so it is most of what she is carrying over the base rate. It is also the one item on her that is not hers, which is the point of it: the woman who has three times failed to join the household is the one holding the document that proves the household has a Marshal at all. Cutting it and dropping her to about 135 is the honest alternative, and Sekhar carries no Magic Items whatsoever.

And the one thing deliberately not copied from Isabella: if Emmerich is slain, Ankhara gains no Hatred, no Frenzy and nothing else whatsoever. Neither of them would call that sentiment. Both would call it correct.

#field("The Red Thirst", "")

The rule as *Vampire Counts* prints it does nothing for this army. It recovers a Wound on a 5+, and a model with one Wound that loses it is not there to recover anything. Every rank in this list has one Wound: the Blood Knights, the Blood Guard, the Sworn and the Heralds. That book knew it. The Blood Knights and the Lahmian Handmaidens are its only two Vampiric entries at a single Wound, and the only two it never gave the rule to.

So it is rewritten as something a regiment can hold. A Thirst value rises by one on a phase the unit fed in and falls by one on a phase it did not. At one, two and three it grants Regeneration (6+), (5+) and (4+). It is slow to reach and cannot be held without going on winning. And it is one die beside the unit, not a tally kept model by model. The counterplay is the rulebook's own, since Regeneration is no save at all against Flaming Attacks or Killing Blow.

What the army gives up is the reliable heal on its characters, and Drink Deep sells that back at 15 rather than granting it. The Varghulf pays more than anyone. It carried Regeneration (4+) and The Red Thirst on the same line, and the ceiling of the track is the save it already had. So the new rule would have been dead on the one model in the book most obviously built around feeding. It gives up the printed save and earns the same one over three phases instead. That is worse on the approach, where a Monstrous Creature with no armour save is exactly what a gun line looks for. A hundred and thirty-five becomes a hundred and ten.

#field("The Oath of the Keep, and Dread, not Slaughter", "")

The two clauses are one bargain, and neither is worth writing without the other. Breaking an enemy unit is worth a great deal less to an army that cannot then run it down, so a deeper Leadership penalty costs the opponent less than the same penalty would cost him against anybody else. That is what makes \-2 affordable where the list would not have been given \-1 for nothing.

The pursuit ban was half a rule until the charge clause joined it. Charging a fleeing enemy inflicts one Wound with no saves of any kind for every point of the chargers' Unit Strength, which is not merely the same arithmetic a caught pursuit uses but the same sentence: the rulebook prices a pursuit by saying it works just as when charging a fleeing enemy. A Legion that broke a unit, restrained, and charged it the following turn while it was still running would have collected the entire massacre it had just been forbidden, one turn late and at no cost but patience.

What the clause takes is the killing and not the catch, which is the distinction the whole rule turns on and the reason it needs only one sentence. The knights still declare, still run the enemy down and still stand over him at the end of it; he walks away from it, having lost the ground rather than the men. Nothing else in the sequence is altered, and nothing else had to be. A unit that is already fleeing must declare a Flee reaction when a charge is declared against it, so being charged already costs it a Movement plus D6 away from the knights whatever they do on arrival, and the battlefield edge does the work this army has given up doing for itself. Dread, not Slaughter does not forbid the Legion its kill. It forbids the Legion the knife and leaves it the horse.

Base contact rather than a radius, because that is where dread belongs. A 12" radius is a 24" circle, and two or three of those overlap across most of any battlefield worth deploying on; every Break test, Panic test and Psychology test taken inside one would be a point worse for nothing. In base contact the penalty lands almost entirely on the Break test of the unit actually fighting him, which is the sentence the rule's title is making. The Grim Garland is the book's own grammar for it, being a Strigoi item that works on enemy units in base contact with the bearer.

#field("The Ordo's powers", "")

The powers chapter came out of the pruning as thirteen entries, eleven of them ways to kill the man in front of you. What it had lost was everything reaching past the model's own base, which is a strange shape for a list whose own argument is that its vampires break and its magic cannot mend them. These five are aimed at that, and none of them is new to the game.

Kept Ground is Hold Your Ground (6), and it buys less here than in any book that has it. Undead units are Unstable, therefore Unbreakable, and pass Break tests automatically; Vampiric models carry Immunity (Psychology) and take no Panic tests at all. So in this army the power is a Break-test re-roll for the vampires and nothing else, plus Panic cover for the bats, who are the only models in the list with neither rule. The bats need Emmerich for it. Independent models may never use Hold Your Ground, and both bat entries carry Independent from their troop type, so without Not in the Tally the one group that wants this power is the one group that cannot be given it. That is precisely the hole Why an Army of Infamy digs and then leaves open. The price is the book's own, since the Infernal Standard sells the same rule for 25 points in the chapter after this one, and Dogs of War sells a general Inspiring Presence (6) for the same.

On the Tally is Bretonnia's Virtue of Duty at Bretonnia's price, down to the clause barring the General from taking it. Combat resolution is the currency this list actually spends: it cannot run down what it breaks, so winning the shove and standing on the ground afterwards is the whole of how it scores.

The Long Walk answers the matchup The Argument Against names as the one this list was built to lose. Bare Hatred is 15 points as a Dogs of War Quirk, and Bretonnia's Virtue of Noble Disdain is 15 for the same against missile troops with a Panic clause bundled in that would be dead here.

Old Enough is Monstrous Mass, which this list cut along with the Strigoi, at the price the Strigoi paid for it. A vampire with three Wounds is not worn down in a challenge it may not refuse; it is removed once, by a Killing Blow or a Multiple Wounds weapon. Bretonnia charges 10 for the Mantle of the Damsel Elena, which is the same rule against Killing Blow and Poisoned Attacks.

Drink Deep is the rule this book took away, sold back to the models it still works for. The Red Thirst now grants Regeneration instead of a Wound, which is worth having on a regiment and worth less on a lord with three Wounds and a challenge he may not refuse. The Scabbing Plate is the anchor at 35 points, being heavy armour and an automatic Wound back on an easier trigger. Fifteen for the same recovery on a 5+, with no armour and nothing else attached, sits where that leaves it.

#field("The Ordo's items", "")

The brothers he came back for, who took the blood at the Keep while there was still time to choose. Two centuries later they are the oldest swords in the order and the only men in it who still call him Aymeric, and there are not enough of them left to be an entry in an army list. A standard is the honest shape for them: magic items are unique unless marked with an asterisk, so exactly one unit in any army can be the First Sworn, and no clause is needed to say so.

Grand Cathay's Revered Banner of the Ancestors is 25 points for +1 Weapon Skill, and Araby's Banner of Holy Fervour is 20 for +1 Movement and +1 Initiative. Thirty\-five for Weapon Skill and Initiative together sits between those and the forty\-point tier the Hell Banner and the Banner of the Barrows occupy. The gating is this book's own, twice over: the Flag of Blood Keep and the Cursed Pennant of Mousillon both name a unit and then ask for a Blood Dragon character behind it.

And it costs the regiment the other thing a regiment might have carried. A unit has one standard bearer and one Magic Standard, so a company of the Sworn on horse takes either two centuries of practice or the Flag of Blood Keep's ward against missile fire, and being made to choose is the interesting part in an army that cannot shoot back.

The Standing Ration is the household issuing blood the field did not provide. Twenty-five points buys no advance, only the refusal to give ground: a unit carrying it keeps whatever Thirst it has earned. The Banner of Doom is 25 in the chapter before this one for Regeneration (5+) against missile attacks. That one is bought outright and held from the first turn. This one has to be earned before it is worth anything, and is worth nothing at all to a unit that has not fed.

One item for each of the three keywords this list cares about, each priced against the book rather than against the other two.

Weather Over the Keep is the Helm of Commandment read the other way round. That item is 25 points for a 6+ armour save and, while the wearer is out of combat, the loan of their Weapon Skill to one Undead unit within 12". In an Ordo Draconis the beneficiaries of that loan are the fodder, so the list opens a gap exactly where a household item should be. Lending Leadership to one keyword of Leadership 5 chaff is the narrower effect, so 15. It also gives the Chiropter clause something to do at the table rather than only in the list-building: his bats borrow his nerve.

The Signal Fire is the one number here with nothing underneath it, since the book sells no deployment rule at any price. Thirty is reasoning rather than precedent: above the Pendant of the Fell Wind, which is 25 points for a permanent point of Movement on a character and any unit they are with, because a wing of Blood Wyrms arriving behind the line is worth more than that, and discounted for the two turns it spends off the table.

Ambushers rather than Scouts or Vanguard, and the choice is not decorative. A unit made up entirely of models that can Fly uses its Fly value when it Vanguards, so a Vanguard version would put Fly (8) and Devastating Charge eight inches up the table on the first turn, and a Scouts version would put them anywhere outside 12". Ambushers arrives on a 3+ on turn two, a 2+ on turn three and automatically on turn four, from a board edge, having been off the table in the meantime. Random and late is what makes it fair. The rulebook's Ambushers tax, which wants one non-Expendable, non-ambushing Core unit for every Core unit that ambushes, does not bite here, because every Draconid entry in this list is Rare.

The Witnessed Oath is gated on the one thing this list guarantees. The Oath of the Keep compels every Vampire character to issue and accept, so a ward that works only in a challenge pays out reliably rather than on a condition the opponent controls, and it answers the argument the Why section makes: the vampires are the only part of a Vampire Counts army that dies for good. Twenty-five against the Wristbands of Black Gold, which are 25 for a Magical Ward (3+) that is always on and covers one kind of attack.

The Road Behind is the Empire's Bane of the Craven with half of it already paid for. That item is 25 points and does two things: the bearer may never voluntarily flee as a charge reaction, and neither may anything the bearer charges. The first half is the Oath of the Keep, which this army has for nothing, so only the second half is being bought here. It is worth more here than there, because a Legion that can never catch a fleeing enemy needs the enemy not to flee in the first place, and twenty rather than fifteen is the honest answer to owning both rules at once.

The Muster Roll is Unbending Willpower, which went out of the book with the von Carsteins, sold as an item at the Battle Standard's range rather than the power's. That power was 10 points for six inches and the Standard of Everlasting Death is 10 for a single unit, so fifteen for twelve inches is the rate, and it is not cumulative with the Battle Standard, which is the clause the power carried and the reason this is not simply a second banner. It is also the only thing in this book written for the levy rather than the household, and the only one named after a document. The household is the order. The levy is the six duchies. An item that steadies the fodder is aimed at the thing the order exists for.

#namecost("THE ARGUMENT AGAINST", "")

The trick at the centre of this list is that its Core entries cost what the book charges for better ones, and somebody is going to point out that paying full price for less is not the same as paying more. They would be right. A Blood Knight at Weapon Skill 5 with one Attack is a worse unit than the Rare entry it is drawn from and costs the same 36 points, which reads as a discount on the category rather than a premium on the model, and the category is the thing under argument.

What answers it is the quarter. An Ordo Draconis must spend a quarter of its points on knights that hit on 4s and swing once, in every game, whatever else it buys, and no other army chosen from that book is compelled to buy anything at all.

The prices hold up worse against the rest of the game than against the book, and the Warriors of Chaos are where they hold up worst. A Chaos Warrior with a shield is 15 points for Weapon Skill 5, Strength 4, Toughness 4, one Attack and a 3+ save, and it is Core in its own book; add the Mark of Nurgle for 3 and it is 18 points at Toughness 5. The Blood Guard is 22. A Chaos Knight with heavy lances and the same Mark is 33 for a 2+ save at Toughness 5. The Blood Knight is 36. Three and four points is the real margin, and what it buys is a point of Strength, some Movement, and Vampiric in place of Will of Chaos.

That trade is closer than it reads, because Toughness 5 and Toughness 4 behind a \-1 To Wound come to the same number at Strength 3 through 6, and the Mark's Toughness cannot be switched off where Vampiric's modifier is blank against Magical Attacks and Flaming Attacks, which is to say against most enemy characters. Fear and Immunity (Psychology) are the honest remainder, and they are worth having. The wider reading is that the book prices vampires generously to begin with, that pricing new entries off its own worked examples inherits the generosity along with the anchors, and that whoever opens with the Chaos comparison has the better opening.

What answers all of that is a single number, and it is worth stating with the whole shelf behind it rather than one comparison at a time. Across the thirty-one army books in this project, and leaving named characters aside, every Cavalry entry costing 30 points or more with a single Attack on the rider is sitting on a multi-Wound mount: a demigryph, a pegasus, a hippogryph, a war bear, a giant spider, a plague drone.

There is exactly one exception, the Dark Elf Cold One Knight at 32, and its lizard has two Attacks and a Natural Armour save of its own. A Blood Knight at 36 points, with one Attack and an ordinary barded horse, would be the most expensive thing of its kind anyone has written for this game.

The infantry figure is starker still. In those same books there is no rank-and-file entry at 22 points or more with a single Attack. Everything dearer than that with one Attack is a named character, but for the Zombie Pirates' Bloated Corpse at 25, which is Expendable and exists to be walked into an enemy and burst. The elite infantry the other books do field sits between 16 and 18: the Chosen, the Swordmasters of Hoeth, the Phoenix Guard, the Hammerers, the Temple Guard. Every one of those has two Attacks for the money. The Blood Guard has one, and costs 22, and is Core.

Bretonnia is the defence and it does not cover everything. Knights of the Realm at 25 points are a Core choice with no cap on duplicates and no obligation to bring a peasant, which settles whether knights belong in the Core of a knightly order; Foot Knights in Special and Hippogryph Knights in Rare settle the rest of the ladder. What it does not settle is the payload. A Knight of the Realm is Weapon Skill 4, Strength 3 and one Attack, with the Lance Formation and the Blessing of the Lady behind him, and this list has no equivalent of either. The structural argument says the category is orthodox. It does not say the two are the same purchase.

The Sworn leaving Core is load-bearing and it is thin. Everything holding this list down runs through one clause: the upgraded unit is Special, only the vampires and the bats count towards the minimum, and so a quarter of the army is always the lesser profile. Relax the quarter, or let the Sworn stay Core, and the structure comes apart in a sentence.

Twenty-one entries is a great deal to take away, and not all of it is theme. The ghouls, the ghosts and the sorcery-engines each have an argument behind them. The rest is narrowing for its own sake, and a Legion that could still field Crypt Horrors would play differently without playing worse.

Barring every special character in the book is the same objection at its sharpest. The order's lord was made by Walach Harkon, and this list cannot field Walach Harkon. The fiction supports it, since Sylvania has never called him back and the other Bloodlines have their own plans for him, but a clause that removes fifteen entries on the strength of a story is spending real options to buy consistency. In fairness, Walach's own printed rule moves Blood Knights out of Rare, and would have had nothing to do here in any case.

Dread, Not Slaughter is the rule most likely to lose the Legion a game it deserved to win, and it is worth being exact about how much it actually costs, because the honest figure is smaller than the rule feels. Victory points are not awarded for kills alone. A unit reduced to half its Unit Strength is Decimated and worth half its cost whether it flees, rallies or stands there; a unit still fleeing at the end is worth half again, and one that is both is worth three quarters. Only the last band, Dead or Fled, wants the unit gone, and only the standard bonus explicitly asks for a pursuit.

So a Legion that breaks its enemy and lets it go still scores. What it gives up is the top quarter of the scale and the standards, which is a real handicap and not the ruin it sounds like. The sharper cost is the one nobody totals: a pursuit that catches its quarry inflicts a Wound with no saves of any kind for every point of the pursuer's Unit Strength, and that is where a Warhammer army does most of its killing. Forgoing it does not zero the scoreboard. It slows every fight the Legion is in, and against an opponent content to feed units in, break off and come back, the list has no way to finish anything except by pushing it off the board edge. The charge clause was written knowing that, and is why it takes the catch rather than the charge: a Legion barred from riding at a broken enemy would have had no finisher at all, where one that rides at him and drives him another flee move still has the board edge to work with.

The scenario decides how much of that matters, and the scenario is a D6 roll. In The Watchtower the winner is whoever holds the ground within six inches of the tower and points are only the tiebreak, which is the game this army was built to win. In Blood and Glory the winner is whoever breaks the enemy's Fortitude first, and a small army of expensive units carries few standards, which is the game it was built to lose.

Nothing in the list answers either, and the omission is deliberate. Restoring the kill means restoring the chase in one form or another, and the chase is the thing the rule gives up. A Legion takes ground and does not collect bodies.

The Core-minimum clause is the cleanest thing here, and the keywords in it are doing exact work. Written against the *Undead* special rule instead of against *Vampire* and *Chiropter*, it would have let anything still living clear the quarter. As written it leaves one narrow dodge open, because Core carries no cap on duplicates: five units of nine Fell Bats are 540 points and clear the quarter at 2,000 with a single vampire in the army.

The difference is that it does not pay. Fell Bats are Leadership 5 at Toughness 3 with no armour save and no Undead rule, so they break and they panic where a knight would have held, and an all-bat Core is legal and bad, which is a different thing from legal and better.

Emmerich is open to the objection every special character is. He is a better Blood Dragon Lord than the army list can build for less money: 370 against the 390 a Lord reaches when his full hundred points of powers and items are spent, with two Lores of Magic, three rules and a drawback on top. That is what a special character is for, and it is no worse than Walach, who is Weapon Skill 9 with a Magical Ward (5+).

The number to watch is not his cost but the Marshal's reach: eighteen inches of Leadership 10 on foot is generous, and the twenty-four he reaches on any of the larger mounts is a forty-eight-inch circle, arrived at through a rulebook clause about Line of Sight values rather than through anything written in his entry.

Ankhara has the objection that every paired character has, which is that half of what she costs is spent on a rule that does nothing unless the other model is bought as well. The Warrant is the other place to push: lending the General's Leadership at 12" is a Battle Standard's work and a Battle Standard is 25 points in the book, which is most of her margin over the base rate, and Sekhar shows that a Lahmian special character can carry no Magic Items at all and still be worth 190. Cutting it and dropping her to about 135 is the honest alternative.

The Dam has the opposite problem and the move to 320 has sharpened it. Mounted, Emmerich cannot be fielded below 2,760 points, so the largest creature this project has written will almost never be seen. The Great Wyrm is what answers that in practice, being a Lord's mount at 215 that fits from 2,340, and the honest reading is that the Dam has become a trophy for a size of game nobody plays. Either that is what a centrepiece is, or she wanted a price that could reach a table.

And taking the missile weapons out is a real loss of options for very little in return. A handful of entries lose a line each, in service of a theme rather than a mechanism. A Legion that could still bring crossbow-armed peasants would play almost identically.

The five items are the newest thing in the chapter and the least tested. Weather Over the Keep is safe and probably dull: fifteen points to make bats braver is a purchase most lists will skip until everything else is bought. The Signal Fire is the one to attack, because 30 is a guess wearing the clothes of arithmetic, and a wing of Blood Wyrms arriving on a board edge on turn two, behind a gunline that has spent two turns shooting the household instead, may be worth a great deal more than any figure in this chapter. The Witnessed Oath is a Magical Ward (5+) on the model most likely to be in a challenge, in an army whose own rule forces it into challenges.

And the Banner of the First Sworn puts Weapon Skill 7 and Initiative 6 on a regiment for 35 points, which is above the line where most things in the game stop hitting it on 3s; the Cathay and Araby anchors say the price is right, and neither of them was pricing it onto a 44-point model.

The Standing Ration is the one whose worth depends on a rule with no play behind it. Twenty-five points to stop a Thirst value falling is either the difference between Regeneration (6+) and (4+) across a long grind, or it is nothing at all. In a game where the unit is never in combat two phases running it buys nothing.

None of the five has a game behind it.

#namecost("WHAT IT TOOK", "")

A chapter of background, four new unit entries with an upgrade path shared between two of them, two special characters, seven Magic Items, five Vampiric Powers, one army rule rewritten, one requirement, one category move, one reduced profile sold at the printed price, and a paragraph in the rulebook.

That last is the part that was not about this list at all. The rulebook had no notion of an Army of Infamy, so the first one had to introduce the idea as well as the list, and _Choosing Your Army_ is where it went: a book may offer an alternative composition, both players should know which is in use before deployment, and such a composition may change which units count towards the Core minimum. That last clause is the one this list could not have been written without, since Choosing Your Army is where the quarter is set.

The same shape is waiting twice more in *Vampire Counts*. Strigany may only be taken with a Strigoi Vampire character; the Coven Throne is crewed by Lahmians. Both are lists that book is already writing for and cannot field.

#namecost("FOR EXAMPLE", "")

*An Ordo Draconis at 2,000 points.* A Blood Dragon Lord at 215 and a Kastellan at 100 lead it, and being two Blood Dragons they license two characters who are not Blood Dragons. This one takes a Wight Lord at 100 and leaves the second slot unspent.

Twenty-one Blood Guard at 462 and ten Blood Knights at 360 are the Core, which is 822 of qualifying Core against a 500-point minimum, with neither unit near the ceiling that stops any single unit costing more than a quarter of the army. An Elder Wyrm at 210 takes the Rare allowance and a Varghulf at 110 sits in Special.

That is 1,557. Thirty Zombies add 75 more and count towards nothing at all, being there to die in front of the knights. The last 368 go on command groups, the Flag of Blood Keep, powers and items across the three characters, and the 35 that make the Lord a Level 1 Wizard, because thirty Zombies are an Undead unit and The Generals of Undeath wants a Necromancer for them.

The list rations characters one to a Blood Dragon, so that Necromancer is either the Lord himself or the slot the Wight Lord is standing in. The Lord is cheaper.

*Or buy the years instead of the numbers.* Twenty-one Blood Guard at 462 and six Fell Bats at 72 are the Core, which is 534 and clears the quarter with thirty-four points in hand. Ten more Blood Guard upgraded to the Sworn at 270 leave Core to do it and sit in Special, where they are the only models in the army at Weapon Skill 6 with two Attacks.

Five Blood Wyrms at 425 take the Rare allowance. A sixth at 510 would breach that allowance and the ceiling on any single unit in the same instant, both of them being the same quarter.

With the Lord and the Kastellan at 315 that is 1,544, and the 456 left over buys command groups, the Banner of the First Sworn, and the full hundred points of powers and items each vampire can carry. It fields no Undead at all, so it owes no Necromancer. It also has no second line, so when the Sworn break there is nothing behind them.

*What is different at the table.* The legion may not choose Flee as a Charge Reaction and may never pursue: it breaks a unit, lets it go, reforms without testing to restrain, and holds what it is standing on. Anything in base contact with one of its Vampire characters is two points of Leadership down while it is there.

None of the vampires are Unstable, so unlike the Skeletons behind them they take Break tests and run when they lose. They are not destroyed for it, since a broken unit flees and may rally like anybody else's. What they cannot do is crumble in place and go on fighting, and no Invocation will bring them back afterwards.

The characters must duel whenever a duel is offered, and are healed for winning. Nothing shoots. A quarter of the army is knights at Weapon Skill 5 with a single Attack, and no build avoids it.

The dead are still there, still cost two and a half points, and no longer excuse the army from buying vampires.

= CREDITS

#unit("Written & Edited by:",
  first: true,
  subtitle: "Mathias Eliasson",
  before: [
#namecost("Based on Warhammer Fantasy by Games-Workshop", "")
#namecost("Special thanks to all the people that have contributed with feedback and ideas", "")

#v(1.4em)

#namecost("The Ordo Draconis", "")

An Army of Infamy written for our own table, on top of Mathias Eliasson's *Vampire Counts* 3.0. Unofficial, non-commercial, and carrying no endorsement from him.
  ],
)
