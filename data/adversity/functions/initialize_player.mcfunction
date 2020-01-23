#	Description
#		Initializes a player when they do not have a data file (scoreboard, etc)
#	Activator:
#		@a[tag=!initialized]
#	Parents:
#		adversity:update

# actual function things
gamemode spectator @a[tag=!initialized]
effect give @a[tag=!initialized] minecraft:night_vision 99999 0 true

# colourful things
tellraw @a[tag=!initialized] [{"text":"Map: ","color":"white"},{"text":"Adversity","color":"gold"}]
tellraw @a[tag=!initialized] [{"text":"Author: ","color":"white"},{"text":"Jeven, MrScaryMuffin, t3hmuffinz","color":"gold"}]
tellraw @a[tag=!initialized] [{"text":"Version: ","color":"white"},{"text":"v0.1","color":"gold"}]
playsound minecraft:block.wooden_trapdoor.open master @a[tag=!initialized] ~ ~ ~ 2 1 1

# move player
teleport @a[tag=!initialized] 0 50 500 1 25
spawnpoint @a[tag=!initialized] 0 50 500

# give menu
execute if score #menuHidden var = #FALSE var run tag @a[tag=!initialized] add menuRequest
execute if entity @a[tag=menuRequest] run function adversity:menu

# set the player as inititialized 
tag @a[tag=!initialized] add initialized