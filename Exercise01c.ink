/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
 
 
 Variable Checking!
 
 Equality: "Spot" == "Spot" 
 Not equality: 1 != 2
 Greater: >
 Less: <
 Great or equal: >=
 Less od equal: <=
 
 
*/

VAR health = 5
VAR pet_name = ""
VAR torches = 0
VAR intelligence = 9
VAR hunger = 1
VAR dehydration = 2


-> memory

== memory ==
Before you stands the cavern of Josh. You wish your childhood pet was with you. The cave mighe be less intimidating then. What was your pet's name

* [Charlie] 
    ~ pet_name = "Charlie" 
    -> cave_mouth
* [Susan]
    ~ pet_name = "Susan"
    -> cave_mouth
* [Spot]
    ~ pet_name = "Spot"
    -> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.

You made it to the cave. If only {pet_name} could see you now!

You have {torches} torches

+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup
+ [Take the north tunnel] -> north_tunnel
+ [ Take the south tunnel] -> south_tunnel

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torches > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west

{ pet_name == "Spot": Scout would love it here in the west| }
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
~ torches = torches + 1
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

=== north_tunnel ===
You enter the north tunnel and see a bear in front of you. You have high intelligence so you choose not to challenge it. You live another day
* [Go Back] -> cave_mouth
-> END

=== south_tunnel ===
You enter the south tunnel and see some leftover food on the ground. It looks rotten. You chose to not eat it despite being hungry.
{ pet_name == "Spot": Scout would probably eat it he isn't picky like me| }
You continue down the south tunnel and approach a river. You are very thirsty
* [drink water] -> player_hydrated
* [Go Back] -> cave_mouth
-> END

=== player_hydrated ===
The taste of water is immaculate. Your dehydration is now gone 
You spot a fish below your feet. You are starving and attempt to grab it.
* [grab fish] -> player_fed
* [Go Back] -> cave_mouth
-> END

=== player_fed ===
The taste of the fish is digusting but necessary. Your hunger is now replenished and you chose to take a rest for the night. 
-> END


