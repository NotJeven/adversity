#	Description
#		Initializes a player when they do not have a data file (scoreboard, etc)
# 		Assumes that adveristy:init (adversity:var_set) has been run 
#	Activator:
#		@a[tag=!initialized]
#	Parents:
#		adversity:update

# actual function things
gamemode spectator @a[tag=!initialized]
clear @a[tag=!initialized]
effect give @a[tag=!initialized] minecraft:night_vision 99999 0 true
effect give @a[tag=!initialized] minecraft:saturation 99999 0 true

scoreboard players operation @a[tag=!initialized] leftPlayer = #FALSE var

scoreboard players operation @a[tag=!initialized] var = #matchID var

# move player
teleport @a[tag=!initialized] 480 60 0 -90 20
spawnpoint @a[tag=!initialized] 495 50 0

# colourful things
tellraw @a[tag=!initialized] [{"text":"Map: ","color":"white"},{"text":"Adversity","color":"gold"}]
tellraw @a[tag=!initialized] [{"text":"Author: ","color":"white"},{"text":"Jeven, MrScaryMuffin, T3hMuffinz, ","color":"gold"}]
tellraw @a[tag=!initialized] [{"text":"Download: ","color":"white"},{"text":"notjeven.github.io/adversity ","color":"gold","clickEvent":{"action":"open_url","value":"https://notjeven.github.io/adversity"},"clickEvent":{"action":"open_url","value":"https://notjeven.github.io/adversity"},"hoverEvent":{"action":"show_text","value":"Go to the Adversity webpage."}},{"text":"↗","color":"gold","underlined":"true","hoverEvent":{"action":"show_text","value":"Go to the Adversity web page."},"clickEvent":{"action":"open_url","value":"https://notjeven.github.io/adversity"}}]
tellraw @a[tag=!initialized] ""
tellraw @a[tag=!initialized] [{"text":"Access the chat menu with '"},{"keybind":"key.chat","color":"red"},{"text":"' and click an option."}]
tellraw @a[tag=!initialized] ""
tellraw @a[tag=!initialized,tag=!menuAdmin] [{"text":"Identify as a server "},{"text":"admin","color":"gold","underlined":"true","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=!menuAdmin] run function adversity:add_admin"},"hoverEvent":{"action":"show_text","value":"Identify yourself as a server admin for advanced options.\nAccessible for players with server operator status only."}},{"text":"."}]
tellraw @a[tag=!initialized,tag=menuAdmin] [{"text":"You are a server "},{"text":"admin","color":"gold"},{"text":". "},{"text":"Remove","color":"red","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerAdmin set 1"},"hoverEvent":{"action":"show_text","value":"Remove admin status and the admin menu.\nAccessible to players without server operator status."}},{"text":" admin status.","color":"white","underlined":"false"}]
scoreboard players enable @a[tag=initialized,tag=menuAdmin] triggerAdmin
playsound minecraft:entity.blaze.ambient master @a[tag=!initialized] ~ ~ ~ 1 1 1

tag @a[tag=!initialized,tag=menuAdmin] add menuRequest
execute if score #menuHidden var = #FALSE var run tag @a[tag=!initialized,tag=!menuRequest] add menuRequest

# set the player as inititialized 
tag @a[tag=!initialized] add initialized