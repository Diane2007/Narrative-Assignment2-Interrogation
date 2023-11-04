"Helen of Saegaria" by Diane Wang

The story headline is "The lady in armor has her own secrets". The story description is "Her home is invaded, and the invader is hiding in plain sight.

Got stuck? Try 'hint' and see if that helps." The story creation year is 2023.

Include Conversation Framework by Eric Eve.
Include Epistemology by Eric Eve.
Include Response Assistant by Aaron Reed.

Release along with a website. Release along with an interpreter.

[LAUNDRY LIST]
[2 - pay attention to the launch verb]
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
injured is a truth state that varies. injured is false.

[-------- HINT FUNCTION --------]
[Understand the command "hint" as something new.
Understand "hint" as asking for a hint. Asking for a hint is an action out of world. Instead of thinking, try asking for a hint.

[Just "hint"]
Carry out asking for a hint:
	if sec1Fin is false:
		say "Your plan is to play the game, Assault on Saegaria, tonight and not worry about anything else.";
	else if sec1Fin is true:
		if fought is false and screamed is false:
			say "Try fight, or scream (and hopefully your neighbors can hear you).";
		else:
			say "Ask woman about her identity may help you.";]


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
				say "You launch the game.[paragraph break]But before you get to the point of continuing your most recent campaign, something in your computer flashes, blinding you with bright golden light. Then you realize you're not alone anymore. A woman crashes upon you.[paragraph break]And if she were slender a maiden in distress, all should have been well, but this gigantic monster of a lady is in [italic type]full medieval armor[roman type] when she lands on your head.[paragraph break]You could [italic type]scream[roman type] for help (and hope your obnoxious neighbor hears you), or you could [italic type]fight[roman type]. The gun your cousin gave you is sitting right there, by the way.";
				now gameLaunched is true;
				move Helen to the Apartment;
				now sec1Fin is true;
			else if sec3Fin is true and sec4Fin is false:
				say "You launch the game just in time when Helen jumps in and blocks that player's giant axe with her shield. Seeing her in action, now that you've known her personally, makes you feel different now.[paragraph break]You would've cheered whoever challenging the princess['] personal knight in the past, considering you never managed to defeat Helen.[paragraph break]But Helen is clearly at disadvantage right now. You recognize the player's armors and equipment--the full set requires at least $3000 or some extremely good luck. And with those armors, Helen stands no chance. And eventually, Helen collapses into her own pool of blood.[paragraph break]'Josie,' she whispers in desperation when the player snatches the princess.[paragraph break]And the next second, Helen reappears in your apartment, bloodied and barely alive.[paragraph break]Is something that you can help her with the bleeding?";
				now gameLaunched is true;
				move Helen to the Apartment;
				now injured is true;
			else if sec5Fin is true:
				say "move to the end game block";
			else:
				say "Why are you seeing this? Diane made a boo-boo.";
		else if gameLaunched is true:
			say "The game is already turned on.";
		


[BAN THE COMMAND: TALK TO]
[Player can get some hints from this, too]
Understand "talk to [someone]" as a mistake ("Are you trying to [italic type]ask[roman type] someone about something? [italic type]Show[roman type] someone something? Or [italic type]tell[roman type] someone about something?").

Part 1 - FOR RELEASE

Section 1 - Set Up

The Apartment is a room.
The description of the Apartment is "A shitty studio apartment, but it's a cozy kind of shitty--tiny but full of warmth, old but full of character. You like it because it's [italic type]your apartment[roman type].
[paragraph break][if unvisited]The only thing that itches you about this place is that your cousin gave you a gun for Thanksgiving last year, which could be read as a kind gesture or the complete opposite, and that gun is sitting right in this room. You don't quite want to think about it, however, because the idea of a gun makes you nervous.
[paragraph break]It's a good thing you still have a place to return to after a day of dull work typing in numbers in an excel sheet. You're glad that you took accounting in college, because though it sucks, it now provides a roof over your head, food to fill your belly, and most importantly, a [italic type]beefy computer[roman type] that allows you to play the latest game, [italic type]Assault on Saegaria[roman type].[paragraph break]Playing that game has been your routine, and you don't plan to break it tonight.
[otherwise]You have a gamer PC in front of you. Playing Assault on Saegaria has been your routine, and you don't plan to break it tonight. And there is a gun in the room, which you don't want to think about.[end if][paragraph break][if gameLaunched is true]The game is running.[otherwise]You haven't launched the game yet.[end if]"

[The room we hide Helen in: Hidden Room]
The Hidden Room is a room. The description of the Hidden Room is "Why are you seeing this? Diane made a boo-boo."

[NPC]
Helen is a woman in the Hidden Room.
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
	say "Nervously, you reach out to the gun."

[OBJECT: FIRST AID]
A first-aid is an object in the Apartment. The description of the first-aid is "Bandages. Dressings. Gloves. Tweezers. All things you need to stop bleeding."
Understand "first aid" and "first aid kit" as first-aid.
The printed name of first-aid is "first aid kit".

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
Identity is a subject. Understand "herself", "name", "who is she", "who she is", "identity" as identity.
After quizzing Helen about identity:
	if sec2Fin is false:
		if fought is false:
			say "'Who are you? Why are you in my room?' You grumble.[paragraph break]'Oh sweet goddess, where are my manners?' the woman bows again. 'Helen of Saegaria, champion and personal knight to Her Royal Highness, Princess Josephine. It is a pleasure to make you acquaintance.'[paragraph break]What in the-- You blink, and blink again. The princess['] knight, the final boss you fought and died countless times, stands right in front of you.[paragraph break]But it is only polite that you also introduce yourself.";
			now sec2Fin is true;
		else if fought is true:
			say "Yo you're in the middle of the fight and want to start a conversation?";
	else if sec2Fin is true:
		if introduced is true:
			say "'Me?' Helen didn't expect you to ask about her life. 'Well, I tend to Her Highness, making sure she is safe in any situation. She hasn't been too happy since betrothed, so... I strive to make her happy. Sometimes it's flowers, sometimes...' She stops. 'Forgive me. I digress.'";
		else:
			say "Helen just introduced herself and you move on asking her about stuff without at least telling her your name. Very polite, my dude.";			


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
The description of the sword is "The sheathed sword proudly displays a family crest that you are too familiar with. The crest of House Saegaria, the very royal family in Assault on Saegaria that you are trying to defeat."

After quizzing Helen about the sword:
	if sec2Fin is false:
		if fought is true:[if player fights Helen, they shouldn't be able to strke a conversation with them mid fight]
			say "Yo you're in the middle of the fight and want to start a conversation?";
		else:
			say "Why are you even carrying a sword?' you ask, still fearing for your head.[paragraph break]The armor lady gives you the look like you're stupid, 'Because I am a knight, and I am not taking off the sword my lady bestowed me when I was knighted.'[paragraph break]Maybe this woman is an actress because that is so [italic type]method[roman type].";
	else:
		if introduced is true:
			say "'That is some fancy sword,' you say. 'May I try?'[paragraph break]Helen sizes you up again and shakes her head, 'I am afraid if I allowed you to try, you'd tear your arm and injure your shoulders. This is very heavy.'";
		else:
			say "Helen just introduced herself and you move on asking her about stuff without at least telling her your name. Very polite, my dude.";
		

[OBJECT: armor]
The armor is a kind of thing. The armor is always wearable. The armor is familiar. Helen wears the armor.

The description of the armor is "Somehow, you think you've seen this armor before. [paragraph break]Shiny, silver, with the shinnest possible metal--the kind of [italic type]expensive[roman type] stuff that no one should be able to afford--modern cosplayers and real medieval soldiers alike.[if sec2Fin is false][paragraph break]But unless her dad is Elon Musk and bought her this ridiculous set of armor, you can't think of another explanation.[paragraph break]You can't help but wonder about this woman's identity. Maybe you could ask her.[end if]"

After quizzing Helen about the armor:
	if sec2Fin is false:
		if fought is true:[if player fights Helen, they shouldn't be able to strke a conversation with them mid fight]
			say "Yo you're in the middle of the fight and want to start a conversation?";
		else:[before Helen and Player properly introduce themselves, Player should assume Helen just came from a Cosplay event]			
			say "'Did you just get out of a cosplay event? That is some impressive armor. Did you get them from Etsy?' you tell her. If there is one in town right now, you definitely are going.[paragraph break]'Pardon me, but I do not understand what a 'cosplay' is, nor do I know about 'Ezzie'. Is that perhaps the title of a lord? These armors belong to the royal family of Saegaria and the Order of the Knights of Sun.'[if sec2Fin is false][paragraph break]She's either too into the whole cosplay thing, or she is totally nuts. You wonder about her identity.";
	else:
		if introduced is true:
			say "'Did the princess give you those armors, too?' you ask.[paragraph break]Helen's eyes widen, clearly offended, 'That is Her Royal Highness for you. You shall not address my lady by her name.'";
		else:
			say "Helen just introduced herself and you move on asking her about stuff without at least telling her your name. Very polite, my dude."
			



[OBJECT: CREST]
The crest is an undescribed object. Helen holds the crest. The crest is familiar.
Understand "family crest" as crest.
The description of the crest is "That crest is displayed everywhere when you play the game."

After quizzing Helen about the crest:
	if sec2Fin is false:
		if fought is true:
			say "Yo you're in the middle of the fight and want to start a conversation?";
		else:
			say "'I serve the royal family of Saegaria, and only the most trusted allies of the royal family shall bear their crest,' the armor lady says proudly.";
	else:
		if introduced is true:
			say "'I serve the royal family of Saegaria, and only the most trusted allies of the royal family shall bear their crest,' the armor lady says proudly.";
		else:
			say "Helen just introduced herself and you move on asking her about stuff without at least telling her your name. Very polite, my dude."

[SUBJECT: what's up?]
Sup is a subject.
After quizzing Helen about sup:
	if sec2Fin is false:
		if fought is true:
			say "'WHAT'S UP?!' you shout at her loudly.[paragraph break]'I will not get distracted by an enemy who attempts to distract and daunt me to look up during a duel!' Helen shouts back with equal volume.";
		else:
			say "'What's up?' you nod at her.[paragraph break]The lady knight looks up, 'I don't see anything up there.'";
	else:
		say "'What's up?' you nod at her.[paragraph break]The lady knight looks up, 'I don't see anything up there.'";

[SUBJECT: Elon Musk]
Elon-Musk is a subject. Understand "Elon Musk" as Elon-Musk.
After quizzing Helen about Elon-Musk:
	if sec2Fin is false:
		if fought is true:
			say "Yo you're in the middle of the fight and want to ask her about Elon Musk?";
		else:
			say "Helen quirks a brow, 'What is that? Is it a disease?'";
	else:
		say "Yo you're in the middle of the fight and want to ask her about Elon Musk?";

[SUBJECT: SAEGARIA]
Saegaria is a subject.
After quizzing Helen about Saegaria:
	if sec2Fin is false:
		if fought is true:
			say "Yo you're in the middle of the fight and want to start a conversation?";
		else:
			say "'It's my home,' she nods. 'She has her good and her bad, but Her Royal Highness is doing her best to correct what her... ancestors have destroyed.'";
	else if sec3Fin is false:
		say "'Saegaria is the most beautiful place in the world, and certainly [italic type]not[roman type] a game,' Helen huffs and stresses the word.";
	else if sec5Fin is false:
		say "'...I only hope everybody is safe--[italic type]she[roman type], is safe,' Helen closes her eyes."

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
Introducing is an action applying to nothing. Understand "introducing self", "introducing yourself", "introduce self", "introduce yourself", "intro", "introducing", "introduce" as introducing.

Check introducing:
	if sec1Fin is false:
		say "You introduce yourself to the air. Very cool, bro.";
	else if sec1Fin is true and sec2Fin is false:
		say "You're too confused and scared to say anything to her.";
	else if sec2Fin is true:
		say "'Hi, my name is Dude,' you say and offers Helen a hand to shake.[paragraph break]'Interesting name, Helen shakes your hand and says nothing more. However, you know she is only being polite.[paragraph break]'Erm, so, why are you here?' you ask. 'I mean, you're the final boss in Assault on Saegaria. How did you get here?'[paragraph break]Helen's brows furrow, 'What are you even talking about? Did I hit your head too hard?'[paragraph break]'No, but you are the most famous and [italic type]infamous[roman type] character in this game![paragraph break]'A game?' Helen is clearly ruffled. 'Are you declaring that my honor and my service to the crown is nothing but a game to you?'[paragraph break]Is there a way to tell her about the game, so she understands what you're talking about? Or you can just show her the game?";
		now introduced is true;
	else:
		say "Why are you seeing this? Diane made a boo-boo.";

[COMMAND: TELL ABOUT GAME]
After informing Helen about the SaegariaGame:
	if sec2Fin is false:
		say "Helen gives you a blank stare. 'I have not a clue what you are talking about.'";
	else if sec3Fin is false:
		say "Helen stares at you, 'What you just told me might be the most ludicrous thing I have ever been told.'[paragraph break]Maybe the only way to convince Helen is to show her the game.";
	else:
		say "'Please, don't remind me of that blasted game again,' Helen sighs deeply. 'To think, my princess['] life, our country, our existence are just a game...'";


[COMMAND: ASK ABOUT GAME]
After quizzing Helen about the SaegariaGame:
	if sec2Fin is false:
		say "Helen gives you a blank stare. 'I have not a clue what you are talking about.'";
	else if sec3Fin is false:
		say "Helen is annoyed, 'I fail to fathom why you are so fixated on the idea of this game.'[paragraph break]It's probably a better idea just to show her the game.";
	else:
		say "'Whoever created this game so people kill us for fun, I detest them,' Helen grits her teeth.";
		

[COMMAND: SHOW HELEN THE GAME]
Before showing the SaegariaGame to Helen:
	if sec2Fin is false:
		say "Why are you trying to show her the game now, out of a sudden?";
	else if sec3Fin is false:
		say "'Just look!' you turn the computer monitor to Helen's direction.[paragraph break]'What form of sorcery is this?' Helen jumps back, flashed and confused and alarmed by the animation.[paragraph break]'No! Look at that avatar! That is you!' you points and turns your face to the screen and-- No, the tile Helen is supposed to be standing on is empty, and you suddenly recall that is because she is right here with you.[paragraph break]But Helen stops, her eyes fixed on the NPC standing on the castle balcony. [italic type]Princess Josephine [roman type]looks out of the window, distressed and lonely.[paragraph break]'Josie must be wondering where I am...' You seem to hear her whisper.[paragraph break]'Josie?' you frown. That name doesn't ring a bell at all. Is it a new NPC in the next update that Helen is aware of (because hell, she is literally [italic type]from that world[roman type])?[paragraph break]'No, I didn't say anything,' Helen clears her throat, looking stern once again.'[paragraph break]But the next second, another player appears behind Princess Josephine, and at the same moment, Helen disappears into the ether.[paragraph break]Is she back in the game?";
		Move Helen to the Hidden Room;
		now sec3Fin is true;
		now gameLaunched is false;
		stop the action;

Section 4 - The Princess

[player can't talk to Helen when she is bleeding badly]
Check quizzing Helen about:
	if injured is true:
		say "Helen is bleeding so much! Stop wasting time and heal her!";
		stop the action;
	else:										
		continue the action.

Check showing something to Helen:
	if sec2Fin is false:
		if fought is true:
			say "Maybe show her this thing at another time when you are not fighting for your life!";
			stop the action;
		else:
			continue the action;
	else:
		if injured is true:
			say "Helen is bleeding so much! Stop wasting time and heal her!";
			stop the action;
		else:
			continue the action.


[ACTION: help Helen]
Helping it with is an action applying to two visible things.
Understand "helping [someone] with [something]" as helping it with.
Understand "help [someone] with [something]" as helping it with.

Check helping someone with something:
	if the noun is not Helen:
		say "They don't need help.";
	else:
		if injured is false:
			say "She doesn't need help right now.";
		else:
			if the second noun is first-aid:
				if player carries the first-aid:
					say "Miraculously, Helen's wounds start fading once the dressing touches her skin. Maybe it's a game NPC superpower or something.[paragraph break]'You gotta learn to pick your fight wisely,' you tell her. 'One look at that guy, you should've known you stood no chance. Pay-to-win has been a big issue with this game.'[paragraph break]'But I can't let anyone hurt my princess. At first I just thought it was her betrothed causing trouble at the border that caused the invasion, but now...' Helen sighs. 'I can't understand why you people found killing us fun, taking Josie like a-.'[paragraph break]Helen stops, realizing she has slipped.";
					now injured is false;
				else:
					say "You aren't carrying the first aid kit!";
			else:
				say "You can't possibly heal her with this thing."

[SUBJECT: PRINCESS]
Princess is a subject.
Understand "Josephine" as princess.
After quizzing Helen about the princess:
	say "'Mind you, that is Her Royal Highness, Princess Josephine for you,' she warns.";

[SUBJECT: HER ROYAL HIGHNESS]
Royal-Highness is a subject. Understand "Her Highness", "Her Royal Highness", "Highness", "Her Royal Highness Princess Josephine", "Princess Josephine" as Royal-Highness.
After quizzing Helen about Royal-Highness:
	if sec2Fin is false:
		say "'Princess Josephine took me in despite my peasant blood. She is the heir to the throne, and one of the only open-minded member of the court who truly cares about the people, unlike her fa-' the lady knight pauses abruptly. 'No, it is not my place to remark on my lady or her father.'";
	else if sec3Fin is false:
		say "'Our people have been waiting for Her Royal Highness['] coming of age. Saegaria is... struggling under the King's rule,' Helen looks away. 'I am telling you this because none of our lives should be treated as a game or a joke.";
	else if sec4Fin is false:
		say "'She is my princess, but she is my Josie, too,' Helen lowers her gaze.[paragraph break]'May I ask about Josie?' you ask, carefully.[paragraph break]Helen sighs, 'You saved me, so... you may.'";

[SUBJECT: betrothed]
Betrothed is a subject. Understand "her betrothed", "her fiance", "her fiancé", "fiance" as betrothed.
After quizzing Helen about betrothed:
	say "'Tell me more about her fiancé,' you say.[paragraph break]'He is the pinnacle of hubris and vulgarity, the very example of the nobles at court,' Helen huffs in contempt.";
	
[SUBJECT: FLOWERS]
Flowers is a subject. Understand "flower", "gardenias" as flowers.
After quizzing Helen about flowers:
	say "'Her favorite flowers are gardenias,' Helen says. 'She likes to put them on the nightstand when she goes to sleep."


[SUBJECT: JOSIE]
Josie is a subject.
After quizzing Helen about Josie:
	if sec2Fin is false:
		say "Helen, shocked by your action, does not respond.";
	else if sec3Fin is false:
		say "'You shall not address my lady with her name,' Helen warns.";
	else if sec4Fin is false:
		say "'At first I thought I could just stay by her side forever, as a knight, even if she was to wed her betrothed. That would've been better than everything I could get' She pauses. 'But then the war broke out. The enemy king wants Josie as his bride. And turns out it is only a game to you people.'[paragraph break]'Do you have feelings for Josie?' you ask.[paragraph break]Helen, seemingly startled by the way you ask, shakes under your gaze. 'I do,' Helen says. 'But she is the princess and heir to the throne, while I am only a lowly-born knight. And our gender...' Helen looks away. 'Forgive me.'[paragraph break]But now that you think about it: If players can pay to win, is there anything that can give Helen an absolutely edge in the medieval warfare? Can you give it to Helen?";
		now sec4Fin is true;


Section 5 - Defend Saegaria

[show, ask, and give stuff to Helen]

[PC]
After quizzing Helen about the PC:
	if sec2Fin is false:
		if fought is true:
			say "Yo you're in the middle of the fight and want to start a conversation?";
	else:
		say "Helen gives the machine a look, 'I have not a clue what sorcery you are attempting to perform in this... dungeon.'[paragraph break]'This is not a dungeon!' you protest.[paragraph break]'It looks barely habitable,' Helen says.'"

Before showing the PC to Helen:
	say "'Not interested,' Helen tell you.";
	stop the action;


[fire extinguisher]
After quizzing Helen about the fire-extinguisher:
	if sec2Fin is false:
		if fought is true:
			say "Yo you're in the middle of the fight and want to start a conversation?";
	else:
		say "'I have not an idea what you are inquiring about,' Helen says.";
		
Before showing the fire-extinguisher to Helen:
	say "'What is this object? A mallet, perhaps?' Helen asks.[paragraph break]'It supposedly puts out a fire.'[paragraph break]'What does [']supposedly['] mean?' Helen frowns.[paragraph break]'I never read the manual, so I don't know how to use it anyway. Let's just hope my apartment doesn't get burned down when I cook.'[paragraph break]Helen gives you a look that says 'Please get your life together.'";
	stop the action;

[first aid]
After quizzing Helen about the first-aid:
	if sec2Fin is false:
		if fought is true:
			say "Yo you're in the middle of the fight and want to start a conversation?";
	else:
		say "Helen shakes her head, 'We do have our medicine box back in where I am from. Bandages, potions, herbs...'";

Before showing the first-aid to Helen:
	if sec4Fin is false:	
		say "something."
		


[excel sheet]
After quizzing Helen about the Excel-sheet:
	say "How pathetic are you, showing somebody your precious little accounting excel sheets? Also, aren't you under NDA?"
	
After showing the Excel-sheet to Helen:
	say "How pathetic are you, showing somebody your precious little accounting excel sheets? Also, aren't you under NDA?";
	stop the action.


[gun]


Part 2 - Testing

Test identity with "play game / ask about her identity / introduce".
Test fighting with "play game / fight / fight her with sword / fight her with fire extinguisher / take fire extinguisher / fight her with gun / fight her with fire extinguisher / yield /introducing".

Test showing with "tell her about game / show her the game".