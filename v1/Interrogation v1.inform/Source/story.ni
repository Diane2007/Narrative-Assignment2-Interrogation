The story title is "Helen of Saegaria".
The story author is "Diane Wang".
The release number is 1.
The story creation year is 2023.
Release along with an interpreter.
Release along with a website.

Include Conversation Framework by Eric Eve.
Include Epistemology by Eric Eve.
Include Response Assistant by Aaron Reed.

[More "Global" Variables]
gameLaunched is a truth state that varies. gameLaunched is false.
helenIntroduced is a truth state that varies. helenIntroduced is false.
knowGame is a truth state that varies. knowGame is false.

[Variables that determine which section we are in]
section1Fin is a truth state that varies. section1Fin is false.
section2Fin is a truth state that varies. section2Fin is false.
section3Fin is a truth state that varies. section3Fin is false.

[LAUNDRY LIST]
[1- Set up a place to put the gun in]

Part 1 - Intro

Section 1 - Set up

[The Location: Apartment]
The Apartment is a room. The description of the Apartment is "A shitty studio apartment, but it's a cozy kind of shitty--tiny but full of warmth, old but full of character. You like it because it's [italic type]your apartment[roman type].
[paragraph break][if unvisited]It's a good thing you still have a place to return to after a day of dull work typing in numbers in an excel sheet. You're glad that you took accounting in college, because though it sucks, it now provides a roof over your head, food to fill your belly, and most importantly, a [italic type]beefy computer[roman type] that allows you to play the latest game, [italic type]Assault on Saegaria[roman type].[paragraph break]Playing that game has been your routine, and you don't plan to break it tonight.
[otherwise]You have a gamer PC in front of you. Playing Assault on Saegaria has been your routine, and you don't plan to break it tonight.[end if][paragraph break][if gameLaunched is true]The game is running.[otherwise]You haven't launched the game yet.[end if]"

[The room we hide Helen in: Hidden Room]
The Hidden Room is a room. The description of the Hidden Room is "Why are you seeing this? Diane made a boo-boo."

[NPC]
Helen is an undescribed woman in the Hidden Room.
The description of Helen is "She is wearing some really fancy armor and sword."

Understand "woman", "her", "armor lady", "lady" as Helen.
[A person can be annoyed or calm. Helen is calm.]

[just to prevent players from taking the sword and armor]
Instead of taking the sword:
	say "You are too scared of the lady to steal things from her.";
	stop the action.
Instead of taking the armor:
	say "You are too scared of the lady to steal things from her.";

[VERB: launch]
Launching is an action applying to one visible thing. Understand "play [something]", "start [something]" as launching.
Understand "launch [something]" as launching.
Check launching:
	if noun is not game:
		say "Excuse me, but you can't possibly launch [noun].";
	otherwise if noun is a person:
		say "We are in a civilized society (though chopping people down is commonplace in video games), so maybe try not to launch somebody like a rocket.";
	otherwise if noun is game and gameLaunched is false:
		say "You launch the game.[paragraph break]But before you get to the point of continuing your most recent campaign, something in your computer flashes, blinding you with bright golden light. Then you realize you're not alone anymore. A woman crashes upon you.[paragraph break]And if she were slender a maiden in distress, all should have been well, but this gigantic monster of a lady is in [italic type]full medival armor[roman type] when she lands on your head.[paragraph break]You are about to scream in pain. You are about to fight or flight because this is New York City, and having a stranger appearing in your place out of a sudden is a bad sign.";
		now gameLaunched is true;
		Move Helen to the Apartment;
		now section1Fin is true;
	otherwise if noun is game and gameLaunched is true:
		say "The game already launched.";
		stop the action.

[VERB: talking to]
[We don't want player to use this command because that opens up too many opportunities]
Understand "talk to [someone]" as a mistake ("Are you trying to [italic type]ask[roman type] someone about something? [italic type]Show[roman type] someone something? Or [italic type]tell[roman type] someone about something?").
	

[Game is a kind of thing]
Game is a kind of thing.

The SaegariaGame is an undescribed game in the Apartment. The description of the SaegariaGame is "Praised as Game of the Year. Your goal is to take the capital city of Saegaria and snatch the princess from the castle. The final battle with Princess Josephine['] personal knight is considered the toughest boss fight by almost all gamers on the internet.[paragraph break]It's AAA production, real cool stuff with a bulky white dude with brown hair as the protagonist, just the perfect image you dream for your self--a [italic type]tough[roman type] man."

The printed name of the SaegariaGame is "Assault on Saegaria".
Understand "the game", "game", "assault on saegaria" as the SaegariaGame.


[OBJECT: PC]
The PC is a scenery in the Apartment. The description of the PC is "Expensive machine. It's sole purpose is only for the game, Assault on Saegaria."
Understand "computer", "laptop" as the PC.

Instead of taking the PC:
	say "Pardon me, but why are you trying to fit a computer that weighs at least 40 lbs into your pocket?";
	stop the action.

[OBJECT: FIRE EXTINGUISHER]
A fire-extinguisher is an object in the Apartment. The description of the fire-extinguisher is "You bought it not just so your renter's insurance could be cheaper, but this would serve as a good weapon as well if somebody decided to break in. This is New York City after all."
Understand "fire extinguisher", "extinguisher" as fire-extinguisher.
The printed name of fire-extinguisher is "fire extinguisher".


[OBJECT: GUN]
[TODO: set up a place to store the gun and make sure player can find it]
A gun is an undescribed object in the Apartment. The description of the gun is "You're thinking about getting rid of the gun because you don't have a permit, and that is a problem in New York City."

[OBJECT: EXCEL SHEET]
[Richard examined excel sheet for some reason but I think it's really funny]
The Excel-sheet is an undescribed object in the Apartment. The description of the Excel-sheet is "You absolutely do not want to look at another Excel sheet tonight."
Understand "excel sheet", "excel", "Excel sheet" as Excel-sheet.
The printed name of the Excel sheet is "Excel sheet".


Before showing something to Helen:
	if the noun is Excel-Sheet:
		say "How pathetic are you, showing somebody your precious little accounting excel sheets? Also, aren't you under NDA?";
	else if helenIntroduced is false:
		if the noun is fire-extinguisher:
			say "You haven't even figured out who this lady is and you're talking about the fire extinguisher? Real cool, bro.";
			stop the action;
	else if helenIntroduced is true:
		if the noun is fire-extinguisher:
			say "You show Helen the fire extinguisher, though you have no idea why you want to do that.[paragraph break]'So what weapon is this?' Helen examines it closely. 'Good metal work. It is going to be useful in a battle.'[paragraph break]'We, ugh, extinguish fire with this,' you say haltingly, realizing how dumb you sound.[paragraph break]'Like putting out the fire and rage of a war? I am not one familiar with literary metaphors. They are for the lords and ladies,' Helen shakes her head.[paragraph break]Maybe talking about the fire extinguisher isn't fruitful in this situation.'";
			stop the action;

Section 2 - Who is Helen?

[-------- SCREAM ROUTE --------]
Screaming is an action applying to nothing. Understand "scream" as screaming.

[hasScreamed is a truth state that varies. hasScreamed is false.]

Check screaming:
	if helenIntroduced is false:
		say "You scream because your head hurts like hell. Because Why the heck is this person in your room?[paragraph break]'My sincerest apologies, my lady,' the woman quickly picks her up and bows her head. 'Are you injured?'";
		if the player consents:
			say "'Just gimme a sec. My head just... ugh, hurts really bad,' you groan. 'And mind you, I am a man.[paragraph break]Helen frowns, sizing you up, 'A man? Huh.' If she's trying to stay polite you don't know, but the questioning in her look is pretty obvious to you.[paragraph break]What the heck does that mean? You are about to protest, but the moment you notice the giant sword she carries, all curses are swallowed back down. Hell, you'd pretty much like your head to stay on your shoulders.";
		else:
			say "'Of course I'm fine! I'm a real man!' you groan despite how much your head groans.[paragraph break]Helen frowns, sizing you up, 'A man? Huh.' If she's trying to stay polite you don't know, but the questioning in her look is pretty obvious to you.[paragraph break]What the heck does that mean? You are about to protest, but the moment you notice the giant sword she carries, all curses are swallowed back down. Hell, you'd pretty much like your head to stay on your shoulders.";
	else:
		say "You scream and scream and scream until your next door neighbor (the ass who has loud sex and wakes you up every night) slams on your shared wall. 'Shut the fuck up!' your neighbor bangs on the wall.";

[VERB: think]
Thinking about is an action applying to one visible thing.

Understand "think about [any thing]" as thinking about.
Understand "think about [any known thing]" as thinking about.
Understand "wonder about [any thing]" as thinking about.
Understand "wonder about [any known thing]" as thinking about.

Report thinking about something unknown:
	say "[no thoughts]".

Report thinking about something known:
	say "[the thought of the noun][paragraph break]".
	
A thing has a text called thought.
Pondering is an action applying to one topic.
Understand "think about [text]" as pondering.

Report pondering:
	say "[no thoughts]".
To say no thoughts:
	say "Maybe examine that thing first, and you'll get an idea?"


[-------- FIGHT ROUTE --------]
Understand the command "fighting" as something new.
Fighting is an action applying to nothing. Understand "fight" as fighting.
Fighting it with is an action applying to two visible things.
Understand "fight [someone] with [something]" as fighting it with. 
Check fighting:
	if helenIntroduced is false:
		say "'What in the world is going on?! Why the fuck are you in my room?!' you curse and kick into the woman's abdomen.[paragraph break]But that proves to be a horrible idea because of the way she is covered by heavy armor from head to toe. Not only your head hurts, but your foot hurts, too.[paragraph break]For someone covered in so much weight, the woman is still faster than you, and she easily tackles you to the ground. You think you're getting killed, but is there something in the room that is also made of metal? Maybe you can fight her with it?";
	else:
		say "Helen is literally carrying a sword. And why are you trying to fight her now?";
	
Check fighting someone with something:
	if the player carries nothing:
		say "You aren't going to punch some armor with your bare hands, are you? There is nothing in your inventory!";
	else if the noun is Helen:
		if the second noun is the fire-extinguisher:
			if the player is not carrying the fire-extinguisher:
				say "You aren't carrying the fire extinguisher!";
			else:
				say "You slam the fire extinguisher into her metal chest plate, knocking her back a few steps. But just as the armor lady picks herself up, you notice the giant sword she carries, all curses are swallowed back down.[paragraph break]'I mean no harm, and hell, look at me! How in the heaven's name could I even harm you?' you gesticulate at your whole body, which is as skinny and frail as any other accountant's on Wall Street.[paragraph break]'All right. I must not attack an enemy who yields.' the armor lady says with a frown. Her armor still immaculate without any scratches.";
		else if the second noun is the gun:
			say "Shooting someone without a gun permit will get you into big trouble.";
		else if the second noun is the sword:
			say "You fail to steal her sword.";
		else:
			say "You can't possibly fight with that.";

[Customize the error message: violence is the solution here]
The block attacking rule response (A) is "Try 'fight' or 'fight someone with something' instead."
[Customize the error message: player uses the pronoun "her" but inform gets confused]
The parser error internal rule response (J) is "Try to be more specific. Maybe you're trying to fight the armor lady?"

[-------- bring two routes together --------]

[OBJECT: sword]
The sword is an undescribed object. Helen holds the sword. The sword is familiar.
The description of the sword is "The sword, though perfectly sheathed into the golden, well, sheath, proudly displays a family crest that you are too familiar with. The crest of House Saegaria, the very royal family in Assault on Saegaria that you are trying to defeat."

The thought of the sword is "Is it even legal to carry a sword around in New York?"

After quizzing Helen about the sword:
	if helenIntroduced is false:
		say "'Why are you even carrying a sword?' you ask, still fearing for your head.[paragraph break]The armor lady gives you the look like you're stupid, 'Because I am a knight, and I am not taking off the sword my lady bestowed me when I was knighted.'[if helenIntroduced is false][line break]Maybe this woman is an actress because that is so [italic type]method[roman type]. What is her real identity, then?";
	else:
		say "'That is some fancy sword,' you say. 'May I try?'[paragraph break]Helen sizes you up again and shakes her head, 'I am afraid if I allowed you to try, you'd tear your arm and injure your shoulders. This is very heavy.'";


[OBJECT: armor]
The armor is a kind of thing. The armor is always wearable. The armor is familiar. Helen wears the armor.
The description of the armor is "Somehow, you think you've seen this armor before. [paragraph break]Shiny, silver, with the shinest possible metal--the kind of [italic type]expensive[roman type] stuff that no one should be able to afford--modern cosplayers and real medieval soldiers alike.[paragraph break]You can't help but wonder about this woman's identity. But unless her dad is Elon Musk and bought her this ridiculous set of armor, you can't think of another explanation."

The thought of the armor is "Back in the old days, only nobles could afford such an expensive set of armors. But nobles wouldn't let their daughters fight at all... [if helenIntroduced is false]And if somebody went all the way to purchase such a flashy set of armors just for [italic type]cosplay[roman type], that is seriously impressive. [end if]Maybe you should ask Helen about the armors."

After quizzing Helen about the armor:
	if helenIntroduced is false:
		say "'Did you just get out of a cosplay event? That is some impressive armor. Did you get them from Etsy?' you tell her. If there is one in town right now, you definitely are going.[paragraph break]'Pardon me, but I do not understand what a 'cosplay' is, nor do I know about 'Ezzie'. Is that perhaps the title of a lord? These armors belong to the royal family of Saegaria and the Order of the Knights of Sun.'[paragraph break]She's either too into the whole cosplay thing, or she is totally nuts. You wonder about her identity.";
	else:
		say "'Did the princess give you those armors, too?' you ask.[paragraph break]Helen's eyes widen, clearly offended, 'That is Her Royal Highness for you. You shall not address my lady by her name.'"


[OBJECT: CREST]
The crest is an undescribed object. Helen holds the crest. The crest is familiar.
Understand "family crest" as crest.
The description of the crest is "That crest is displayed everywhere when you play the game."

After quizzing Helen about the crest:
	if helenIntroduced is false:
		say "'I serve the royal family of Saegaria, and only the most trusted allies of the royal family shall bear their crest,' the armor lady says proudly.[paragraph break]That is some weird reaction to a simple question. Just who is her?";
	else:
		say "I serve the royal family of Saegaria, and only the most trusted allies of the royal family shall bear their crest,' the armor lady says proudly.[paragraph break]But [italic type]why is she here[roman type], if she is satisfied serving the royal family of Saegaria in the game world?"

[Couldn't figure out why player cannot ask about sword/armor before examining them]
[so make the bug a feature then]
[The block asking rule response (A) is "Since you know nothing about medieval stuff and have absolutely no clue what to ask about, maybe examine that thing first just to avoid sounding like an idiot? And be specific about who you are addressing to?"]

[SUBJECTS]
Identity is a subject. The thought is "Simply wondering about this woman's identity is no use. Maybe just ask her."
Understand "herself", "name", "who is she", "who she is", "real identity" as identity.
After quizzing Helen about identity:
	say "'Who are you? Why are you in my room?' You grumble.[paragraph break]'Oh sweet goddess, where are my manners?' the woman bows again. 'Helen of Saegaria, champion and personal knight to Her Royal Highness, Princess Josephine. It is a pleasure to make you acquaintance.'[paragraph break]What in the-- You blink, and blink again. The princess['] knight, the final boss you fought and died countless times, is a woman.[paragraph break]But how did she get here? The important question: [italic type]why is she here?[roman type]";
	now helenIntroduced is true;

Knight-Order is a subject.
Understand "knight order", "the Order of the Knights of Sun", "Knights of Sun" as Knight-Order.
After quizzing Helen about Knight-Order:
	say "'It is the most prestigious knight order in the world,' she frowns. 'Do you not know about its name? Curious.'";
	
Princess is a subject.
Understand "her relationship with the princess", "Josephine" as princess.
After quizzing Helen about princess:
	if helenIntroduced is true:[player can only ask about the princess after they learn Helen's identity]
		say "'Mind you, that is Her Royal Highness, Princess Josephine for you,' she warns.";
	else:
		say "You don't even know who this lady is yet, why are you asking about somebody else already?".

Maiden is a subject.
After quizzing Helen about maiden:
	say "Her eye's widen, 'How in the goddess['] name do you even assume that I am a maiden?'";

Elon-Musk is a subject. Understand "Elon Musk" as Elon-Musk.
After quizzing Helen about Elon-Musk:
	if helenIntroduced is true:
		say "Helen quirks a brow, 'What is that? Is it a disease?'";
	else:
		say "'She quirks a brow, 'What is that? Is it a disease?'[paragraph break]So the armor lady doesn't know about Elon Musk, then who is she?";

Why-she-is-here is a subject. The thought is "You think you're going mad, and perhaps it is better to ask Helen."
Understand "why she is here", "why is she here" as why-she-is-here.
After quizzing Helen about why-she-is-here:
	say "'Holy shit,' you are amazed, 'holy shit. You're the final boss in Assault on Saegaria. How did you get here?!'[paragraph break]Helen wrinkles her nose hearing your use of language, 'What are you talking about? Not only your logic baffles me but that foul language of yours.'[paragraph break]'No, but you are the most famous and [italic type]infamous[roman type] character in this game![paragraph break]'A game?' Helen is clearly ruffled. 'Are you declaring that my honor and my service to the crown is nothing but a game to you?'[paragraph break]You begin to realize Helen will not understand or believe you without showing her any concrete proof.";
	now section2Fin is true;


Section 3 - Why is Helen here


Her-Highness is a subject.
Understand "her highness", "her royal highness", "her relationship with her highness" as her-highness.
After quizzing Helen about Her-Highness:[player can only ask about the princess after they learn Helen's identity]
	if helenIntroduced is false:
		say "You don't even know who this lady is yet, why are you asking about somebody else already?";
	else if helenIntroduced is true:
		if section2Fin is false:[before section 3, player only know this much about helen and princess' relationship]
			say "'Princess Josephine took me in despite my peasant blood. She is the heir to the throne, and one of the only open-minded member of the court who truly cares about the people, unlike her fa-' Helen pauses abruptly. 'No, it is not my place to talk about my lady nor her father.'";
		else if section2Fin is true:
			say "To be continued.";


Part 2 - Testing (NOT FOR RELEASE)

[Testing]
Test screaming with "launch game / scream / yes / ask about sword / ask about armor / ask about identity".
Test fighting with "launch game / fight/ take fire extinguisher / fight her with fire extinguisher / ask about sword / ask about armor".
Test asking with "ask her about knight order / ask her about princess / ask her about her highness".