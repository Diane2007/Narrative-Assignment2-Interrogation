"DialoguePractice" by Diane Wang

Include Conversation Framework by Eric Eve.
Include Epistemology by Eric Eve.

[Variables]
gameLaunched is a truth state that varies. gameLaunched is false.

[Verbs]
Launching is an action applying to one visible thing. Understand "play [something]", "start [something]" as launching.
Understand "launch [something]" as launching.
Check launching:
	if noun is not game:
		say "Excuse me, but you can't possibly launch [noun].";
	otherwise if noun is a person:
		say "We are in a civilized society (though chopping people down is commonplace in video games), so maybe try not to launch somebody like a rocket.";
	otherwise if noun is game and gameLaunched is false:
		say "You launch the game.";
		now gameLaunched is true;
	otherwise if noun is game and gameLaunched is true:
		say "The game is already launched.";
		stop the action.


[The Location: Apartment]
The Apartment is a room. The description of the Apartment is "A shitty studio apartment, but it's a cozy kind of shitty--tiny but full of warmth, old but full of character. You like it because it's [italic type]your apartment[roman type].
[paragraph break][if unvisited]It's a good thing you still have a place to return to after a day of dull work typing in numbers in an excel sheet. You're glad that you took accounting in college, because though it sucks, it now provides a roof over your head, food to fill your belly, and most importantly, a [italic type]beefy laptop[roman type] that allows you to play the latest game, [italic type]Assault on Saegaria[roman type].
[otherwise]You have a gamer PC in front of you, displaying the latest version of the game, Assault on Saegaria."



[Types of Things]
Game is a kind of thing.
The SaegariaGame is an undescribed game in the Apartment. The description of the SaegariaGame is "Praised as Game of the Year. AAA production, real cool stuff with a bulky white dude with brown hair as the protagonist.Your goal is to take the capital city of Saegaria and snatch the princess from the castle. The final battle with princess' personal knight is considered the toughest boss fight by almost all gamers on the internet."
The printed name of the SaegariaGame is "Assault on Saegaria".
Understand "assault", "the game", "game", "assault on saegaria", "saegaria" as the SaegariaGame.



[Basic Objects at Start]

The PC is a scenery in the Apartment. The description of the PC is "Expensive machine. It's sole purpose recently is only for the game, Assault on Saegaria."
Understand "computer" as the PC.

Instead of taking the PC:
	say "Pardon me, but why are you trying to fit a computer that weighs at least 40 lbs into your pocket?";
	stop the action.



[NPC]
Helen is an undescribed woman in the Apartment.


[Topics]



[Tests]
Test game with "x the game / x game / x assault / x assault on saegaria / launch game / launch game".
