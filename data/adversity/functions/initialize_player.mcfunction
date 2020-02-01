#	Description
#		Initializes a player when they do not have a data file (scoreboard, etc)
#	Activator:
#		@a[tag=!initialized]
#	Parents:
#		adversity:update

# actual function things
gamemode spectator @a[tag=!initialized]
effect give @a[tag=!initialized] minecraft:night_vision 99999 0 true
effect give @a[tag=!initialized] minecraft:saturation 99999 0 true

# move player
teleport @a[tag=!initialized] 500 50 0 -90 10
spawnpoint @a[tag=!initialized] 500 50 0

# colourful things
tellraw @a[tag=!initialized] [{"text":"Map: ","color":"white"},{"text":"Adversity","color":"gold"}]
tellraw @a[tag=!initialized] [{"text":"Author: ","color":"white"},{"text":"Jeven, MrScaryMuffin, T3hMuffinz","color":"gold"}]
tellraw @a[tag=!initialized] [{"text":"Version: ","color":"white"},{"text":"v0.1","color":"gold"}]
tellraw @a[tag=!initialized] ""
tellraw @a[tag=!initialized] [{"text":"Identify as a server "},{"text":"admin","color":"gold","underlined":"true","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=!menuAdmin] run tag @s add menuAdmin"},"hoverEvent":{"action":"show_text","value":"Mark yourself as a server admin for advanced options."}},{"text":"."}]
execute as @a[tag=!initialized] at @s run playsound minecraft:block.wooden_trapdoor.open master @s ~ ~ ~ 2 1 1


# give menu
#execute if score #menuHidden var = #FALSE var run tag @a[tag=!initialized] add menuRequest
#execute if entity @a[tag=menuRequest] run function adversity:menu

# set the player as inititialized 
tag @a[tag=!initialized] add initialized