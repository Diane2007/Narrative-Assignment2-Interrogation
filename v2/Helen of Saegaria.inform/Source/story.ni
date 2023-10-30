"Helen of Saegaria" by Diane Wang

The story headline is "The lady in armor has her own secrets". The story description is "Her home is invaded, and the invader is hiding in plain sight.

Got stuck? Try 'hint' and see if that helps." The story creation year is 2023.

Include Conversation Framework by Eric Eve.
Include Epistemology by Eric Eve.
Include Response Assistant by Aaron Reed.

Release along with a website. Release along with an interpreter.

[LAUNDRY LIST]
[1 - Remove any possibilities of the think function and move whatever useful from the previous version to this version]
[2 - pay attention to the launch verb]
[3 - unadded interactions: Crest, Elon Musk]
[4 - things you can show Helen]


[-------- GLOBAL VARIABLES --------]
sec1Fin is a truth state that varies. sec1Fin is false.
sec2Fin is a truth state that varies. sec2Fin is false.
sec3Fin is a truth state that varies. sec3Fin is false.
sec4Fin is a truth state that varies. sec4Fin is false.
sec5Fin is a truth state that varies. sec5Fin is false.
gameLaunched is a truth state that varies. gameLaunched is false.

[-------- LOCAL VARIABLES --------]
[sec2 variables]
screamed is a truth state that varies. screamed is false.
fought is a truth state that varies. fought is false.
introduced is a truth state that varies. introduced is false.
[sec4 variables]
hasInjured is a truth state that varies. hasInjured is false.

[-------- HINT FUNCTION --------]
Understand the command "hint" as something new.
Understand "hint" as asking for a hint. Asking for a hint is an action out of world. Instead of thinking, try asking for a hint.

[Just "hint"]
Carry out asking for a hint:
	if sec1Fin is false:
		say "Your plan is to play the game, Assault on Saegaria, tonight and not worry about anything else.";
	else if sec1Fin is true:
		if fought is false and screamed is false:
			say "Try fight, or scream (and hopefully your neighbors can hear you).";
		else:
			say "Ask woman about her identity may help you.";


[THE VERB THAT REPEATS IN DIFFERENT SECTIONS: LAUNCH/PLAY GAME]
Launching is an action applying to one visible thing. Understand "play [something]", "start [something]", "launch [something]" as launching.

Check launching:
	if noun is not game:
		say "But you can't possibly launch [noun].";
	else if noun is a person:
		say "We are in a civilized society (though chopping people down in video games is commonplace ), so maybe try not to launch somebody like a rocket.";
	else if noun is game:
		if gameLaunched is false:
			if sec1Fin is false:
				say "You launch the game.[paragraph break]But before you get to the point of continuing your most recent campaign, something in your computer flashes, blinding you with bright golden light. Then you realize you're not alone anymore. A woman crashes upon you.[paragraph break]And if she were slender a maiden in distress, all should have been well, but this gigantic monster of a lady is in [italic type]full medival armor[roman type] when she lands on your head.[paragraph break]You could [italic type]scream[roman type] for help (and hope your obnoxious neighbor hears you), or you could [italic type]fight[roman type]. The gun your cousin gave you is sitting right there, by the way.";
				now gameLaunched is true;
				move Helen to the Apartment;
				now sec1Fin is true;
			else if sec1Fin is true and sec2Fin is true and sec3Fin is true and sec4Fin is false:
				say "To Do";
				now gameLaunched is true;
			else if sec1Fin is true and sec2Fin is true and sec3Fin is true and sec4Fin is true and sec5Fin is true:
				say "move to the end game block";
			else:
				say "Why are you seeing this? Diane made a boo-boo.";
		else if gameLaunched is true:
			say "The game is already turned on.";
		

[		if sec1Fin is false:
			if gameLaunched is false:
				say "You launch the game.[paragraph break]But before you get to the point of continuing your most recent campaign, something in your computer flashes, blinding you with bright golden light. Then you realize you're not alone anymore. A woman crashes upon you.[paragraph break]And if she were slender a maiden in distress, all should have been well, but this gigantic monster of a lady is in [italic type]full medival armor[roman type] when she lands on your head.[paragraph break]You could [italic type]scream[roman type] for help (and hope your obnoxious neighbor hears you), or you could [italic type]fight[roman type]. The gun your cousin gave you is sitting right there, by the way.";
				now gameLaunched is true;
				move Helen to the Apartment;
				now sec1Fin is true;
			else if gameLaunched is true:
				say "The game is already turned on.";
		else if sec1Fin is true and sec2Fin is true and sec3Fin is true and sec4Fin is false:
			if gameLaunched is false:
				say "Todo";
				now gameLaunched is true;
			else:
				say "The game is already turned on.";
		else if sec1Fin is true and sec2Fin is true and sec3Fin is true and sec4Fin is true and sec5Fin is true:
			say "move to the end game block.";
	else:
		say "why are you seeing this? Diane made a boo-boo."]

[BAN THE COMMAND: TALK TO]
[Player can get some hints from this, too]
Understand "talk to [someone]" as a mistake ("Are you trying to [italic type]ask[roman type] someone about something? [italic type]Show[roman type] someone something? Or [italic type]tell[roman type] someone about something?").

Part 1 - FOR RELEASE

Section 1 - Set Up

The Apartment is a room.
The description of the Apartment is "A shitty studio apartment, but it's a cozy kind of shitty--tiny but full of warmth, old but full of character. You like it because it's [italic type]your apartment[roman type].
[paragraph break][if unvisited]The only thing that itches you about this place is that your cousin gave you a gun for Thanksgiving last year, which could be read as a kind gesture or the complete opposite, and that gun is sitting right in this room. You don't quite want to think about it, however, because the idea of a gun makes you nervous.
[paragraph break]It's a good thing you still have a place to return to after a day of dull work typing in numbers in an excel sheet. You're glad that you took accounting in college, because though it sucks, it now provides a roof over your head, food to fill your belly, and most importantly, a [italic type]beefy computer[roman type] that allows you to play the latest game, [italic type]Assault on Saegaria[roman type].[paragraph break]Playing that game has been your routine, and you don't plan to break it tonight.
[otherwise]You have a gamer PC in front of you. Playing Assault on Saegaria has been your routine, and you don't plan to break it tonight. And there is a gun in the room, which you don't want to think about.[end if][paragraph break][if gameLaunched is true]The game is running.[otherwise]The game is off.[end if]"

[The room we hide Helen in: Hidden Room]
The Hidden Room is a room. The description of the Hidden Room is "Why are you seeing this? Diane made a boo-boo."

[NPC]
Helen is an undescribed woman in the Hidden Room.
The description of Helen is "She is wearing some really fancy armor and sword."
Understand "woman", "her", "armor lady", "lady" as Helen.
	

[OBJECTS]
[Game is a kind of thing]
Game is a kind of thing.
The SaegariaGame is an undescribed fixed in place game in the Apartment. The description of the SaegariaGame is "Praised as Game of the Year. Your goal is to take the capital city of Saegaria and snatch the princess from the castle. The final battle with Princess Josephine['] personal knight is considered the toughest boss fight by almost all gamers on the internet.[paragraph break]It's AAA production, real cool stuff with a bulky white dude with brown hair as the protagonist, just the perfect image you dream for your self--a [italic type]tough[roman type] man."

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
A gun is an undescribed object in the Apartment. The description of the gun is "You're thinking about getting rid of the gun because you don't have a permit, and that is a problem in New York City."

Check taking gun:
	say "Nervously, you reach out ot the gun."

[OBJECT: EXCEL SHEET]
[for some bizarre reason Richard decided to examine excel sheet and I thought it was hilarious]
The Excel-sheet is an undescribed object in the Apartment. The description of the Excel-sheet is "You absolutely do not want to look at another Excel sheet tonight."
Understand "excel sheet", "excel", "Excel sheet" as Excel-sheet.
The printed name of the Excel sheet is "Excel sheet".



Section 2 - Who is Helen?

[-------- SCREAM ROUTE --------]
Screaming is an action applying to nothing. Understand "scream" as screaming.

Check screaming:
	if sec1Fin is false:
		say "You don't know why you want to do this, but you scream anyway. It's cathartic. It's good for your mental health as long as you get some relief from it. And you scream unti lyour next door neighbor (the ass who has loud sex and wakes you up every night) slams on your shared wall.[paragraph break]Shut the fuck up!' the neighbor bangs on the wall.";
	else if sec2Fin is false:
		now screamed is true;
		say "You scream because your head hurts like hell. Because Why the heck is this person in your room?[paragraph break]'My sincerest apologies, my lady,' the woman quickly picks her up and bows her head. 'Are you injured?'";
		if the player consents:
			say "'Just gimme a sec. My head just... ugh, hurts really bad,' you groan. 'And mind you, I am a man. And who are you, anyway?'[paragraph break]'Oh sweet goddess, where are my manners?' the woman bows again. 'Helen of Saegaria, champion and personal knight to Her Royal Highness, Princess Josephine. It is a pleasure to make you acquaintance.'[paragraph break]What in the-- You blink, and blink again. The princess['] knight, the final boss you fought and died countless times, stands right in front of you.[paragraph break]But it is only polite that you also introduce yourself.";
		else:
			say "'Of course I'm fine! I'm a real man!' you groan despite how much your head groans.[paragraph break]Helen frowns, sizing you up, 'A man? Huh.' If she's trying to stay polite you don't know, but the questioning in her look is pretty obvious to you.[paragraph break]'And who are you anyway?' you ask.[paragraph break]'Oh sweet goddess, where are my manners?' the woman bows again. 'Helen of Saegaria, champion and personal knight to Her Royal Highness, Princess Josephine. It is a pleasure to make you acquaintance.'[paragraph break]What in the-- You blink, and blink again. The princess['] knight, the final boss you fought and died countless times, stands right in front of you.[paragraph break]But it is only polite that you also introduce yourself.";
		now sec2Fin is true;
	else:
		say "You don't know why you want to do this, but you scream anyway. It's cathartic. It's good for your mental health as long as you get some relief from it. And you scream unti lyour next door neighbor (the ass who has loud sex and wakes you up every night) slams on your shared wall.[paragraph break]Shut the fuck up!' the neighbor bangs on the wall."



[-------- ASK IDENTITY ROUTE --------]
[SUBJECT: IDENTITY]
Identity is a subject. Understand "herself", "name", "who is she", "who she is", "real identity" as identity.
After quizzing Helen about identity:
	say "'Who are you? Why are you in my room?' You grumble.[paragraph break]'Oh sweet goddess, where are my manners?' the woman bows again. 'Helen of Saegaria, champion and personal knight to Her Royal Highness, Princess Josephine. It is a pleasure to make you acquaintance.'[paragraph break]What in the-- You blink, and blink again. The princess['] knight, the final boss you fought and died countless times, stands right in front of you.[paragraph break]But it is only polite that you also introduce yourself.";	now sec2Fin is true;

[--------FIGHT ROUTE --------]

[VERB: FIGHT & FIGHTING WITH]
Understand the command "fighting" as something new.

Fighting is an action applying to nothing. Understand "fight" as fighting.
Fighting it with is an action applying to two visible things.
Understand "fight [someone] with [something]" as fighting it with. 

Check fighting:
	if sec1Fin is false:
		say "You stand up and fight yourself mentally. What a struggle.";
	else if sec2Fin is false:
		if screamed is true:
			say "There is no point of fighting her since she means you no harm.";
		else:
			say "'What in the world is going on?! Why the fuck are you in my room?!' you curse and kick into the woman's abdomen.[paragraph break]But that proves to be a horrible idea because of the way she is covered by heavy armor from head to toe. Not only your head hurts, but your foot hurts, too.[paragraph break]For someone covered in so much weight, the woman is still faster than you, and she easily tackles you to the ground. Is there something nearby that you can fight her with?";
			now fought is true;
	else:
		say "Helen is literally carrying a sword. And why are you trying to fight her now?";

Check fighting someone with something:
	if screamed is false:
		if the player carries nothing:
			say "You aren't going to punch some armor with your bare hands, are you? There is nothing in your inventory!";
		else if the noun is Helen:
			if the second noun is the fire-extinguisher:
				if the player is not carrying the fire-extinguisher:
					say "You aren't carrying the fire extinguisher!";
				else:
					say "You slam the fire extinguisher into her metal chest plate, knocking her back a few steps. But just as the armor lady picks herself up, you notice the giant sword she carries, all curses are swallowed back down.[paragraph break]'I mean no harm, and hell, look at me! How in the heaven's name could I even harm you?' you gesticulate at your whole body, which is as skinny and frail as any other accountant's on Wall Street.[paragraph break]'All right. Say [']yield['] and I shall back down. A knight must not attack an enemy who yields.' the armor lady says with a frown. Her armor still immaculate without any scratches.";
			else if the second noun is the gun:
				if the player is not carrying the gun:
					say "You are't carrying the gun!";
				else:
					say "You find yourself unable to pull the trigger as your fingers shakily hold the gun. Though murdering people in a video game is commonplace, but doing it in real life is still too viscerally disturbing.[paragraph break]Is there something else in the room that you might use that is made of metal?";
			else if the second noun is the sword:
				say "You fail to steal her sword.";
			else:
				say "You can't possibly fight with that.";
	else if screamed is true:
		say "There is no point of fighting her since she means you no harm.";
		stop the action.


[VERB: YIELD]
Yielding is an action applying to nothing. Understand "say yield", "yield", "I yield", "say I yield" as yielding.
Check yielding:
	if fought is true and sec2Fin is false:
		say "'I yield!' you pant and feel relieved when Helen instantly sheathes her sword. 'And who are you, anyway?'[paragraph break]'I guess I haven't properly introduced myself,' Helen says with a bow. 'Helen of Saegaria, champion and personal knight to Her Royal Highness, Princess Josephine. It is a pleasure to make you acquaintance.'[paragraph break]What in the-- You blink, and blink again. The princess['] knight, the final boss you fought and died countless times, stands right in front of you.[paragraph break]But it is only polite that you also introduce yourself.";
		now sec2Fin is true;
		
[VERB: FLIGHT]
Flighting is an action applying to nothing. Understand "flight", "run", "flee", "escape" as flighting.
Check flighting:
	if fought is true and sec2Fin is false:
		say "The armor lady blocks the door and there is no way for you to go. Either scream or fight now.";
		stop the action;
	else:
		say "There is no reason to flight now, since Helen means you no harm."


[just to prevent players from taking the sword and armor]
Instead of taking the sword:
	say "You are too scared of the lady to steal things from her.";
	stop the action.
Instead of taking the armor:
	say "You are too scared of the lady to steal things from her.";
	stop the action.


[OBJECTS]

[OBJECT: sword]
The sword is an undescribed object. Helen holds the sword. The sword is familiar.
The description of the sword is "The sheathed sword proudly displays a family crest that you are too familiar with. The crest of House Saegaria, the very royal family in Assault on Saegaria that you are trying to defeat. [paragraph break]Who is this woman?"

After quizzing Helen about the sword:
	if sec2Fin is false:
		if fought is true:[if player fights Helen, they shouldn't be able to strke a conversation with them mid fight]
			say "Yo you're in the middle of the fight and want to start a conversation?";
		else:
			say "Why are you even carrying a sword?' you ask, still fearing for your head.[paragraph break]The armor lady gives you the look like you're stupid, 'Because I am a knight, and I am not taking off the sword my lady bestowed me when I was knighted.'[paragraph break]Maybe this woman is an actress because that is so [italic type]method[roman type]. What is her real identity, then?";
	else:
		if introduced is true:
			say "'That is some fancy sword,' you say. 'May I try?'[paragraph break]Helen sizes you up again and shakes her head, 'I am afraid if I allowed you to try, you'd tear your arm and injure your shoulders. This is very heavy.'";
		else:
			say "Helen just introduced herself and you move on asking her about stuff without at least telling her your name. Very polite, my dude.";
		

[OBJECT: armor]
The armor is a kind of thing. The armor is always wearable. The armor is familiar. Helen wears the armor.

The description of the armor is "Somehow, you think you've seen this armor before. [paragraph break]Shiny, silver, with the shinest possible metal--the kind of [italic type]expensive[roman type] stuff that no one should be able to afford--modern cosplayers and real medieval soldiers alike.[paragraph break]But unless her dad is Elon Musk and bought her this ridiculous set of armor, you can't think of another explanation.[paragraph break]You can't help but wonder about this woman's identity. Maybe you could ask her."

After quizzing Helen about the armor:
	if sec2Fin is false:
		if fought is true:[if player fights Helen, they shouldn't be able to strke a conversation with them mid fight]
			say "Yo you're in the middle of the fight and want to start a conversation?";
		else:			
			say "'Did you just get out of a cosplay event? That is some impressive armor. Did you get them from Etsy?' you tell her. If there is one in town right now, you definitely are going.[paragraph break]'Pardon me, but I do not understand what a 'cosplay' is, nor do I know about 'Ezzie'. Is that perhaps the title of a lord? These armors belong to the royal family of Saegaria and the Order of the Knights of Sun.'[paragraph break]She's either too into the whole cosplay thing, or she is totally nuts. You wonder about her identity.";
	else:
		if introduced is true:
			say "'Did the princess give you those armors, too?' you ask.[paragraph break]Helen's eyes widen, clearly offended, 'That is Her Royal Highness for you. You shall not address my lady by her name.'";
		else:
			say "Helen just introduced herself and you move on asking her about stuff without at least telling her your name. Very polite, my dude."

[VERB: ask]
[Player love to type in "ask" something instead of asking about, hence the addition]
[BUT this also appears in other error responses]
The parser error internal rule response (E) is "Who are you directing the action to? Hint: Try this structure '[bracket]the verb[close bracket] [bracket]someone[close bracket] about [bracket]something[close bracket]. Or '[bracket]the verb[close bracket] [bracket]someone[close bracket] with [bracket]something[close bracket].'"

[Customize the error message: violence is the solution here]
The block attacking rule response (A) is "Try 'fight' or 'fight someone with something' instead."
[Customize the error message: player uses the pronoun "her" but inform gets confused]
[The parser error internal rule response (J) is "Try to be more specific. Maybe you're trying to fight the armor lady?"]

Section 3 - Why is Helen here?

[VERB: Introducing self]
Introducing is an action applying to nothing. Understand "introducing self", "introducing yourself", "intro", "introducing", "introduce" as introducing.

Check introducing:
	if sec2Fin is true:
		say "'Hi, my name is Dude,' you say and offers Helen a hand to shake.[paragraph break]'Interesting name, Helen shakes your hand and says nothing more. However, you know she is only being polite. TO BE CONTINUED. AND GIVE MULTIPLE SCENARIOS";
		now introduced is true;
	else if sec1Fin is true and sec2Fin is false:
		say "You're too confused and scared to say anything to her.";
	else if sec1Fin is false:
		say "You introduce yourself to the air. Very cool, bro.";
	else:
		say "Why are you seeing this? Diane made a boo-boo.";
	

Part 2 - Testing

Test fighting with "play game / fight / fight her with sword / fight her with fire extinguisher / take fire extinguisher / fight her with gun / fight her with fire extinguisher / yield /introducing".