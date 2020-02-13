#	Description:
#		resets the map and transitions game to IDLE gamestate
#	Activator:
#		None
#	Parents:
#		adversity:update

tellraw @s [{"text":"Please wait while the map resets...","color":"gray"}]

function adversity:clone
# var set also sets gamestate to idle and generates new matchID
function adversity:var_set

# entity and player things
kill @e[type=skeleton]
kill @e[type=arrow]
kill @e[type=item]
kill @e[type=experience_orb]

# generic player handling 
team leave @a[team=!spectator]
gamemode spectator @a[gamemode=!spectator]
scoreboard players operation @a var = #matchID var
execute if score #menuHidden var = #FALSE var run tag @a add menuRequest
clear @a[team=!spectator]

tellraw @a ""
tellraw @a [{"text":"The map has been "},{"text":"reset","color":"light_purple"},{"text":".","color":"white"}]
title @a subtitle [{"text":"The map has been "},{"text":"reset","color":"light_purple"},{"text":".","color":"white"}]
title @a title ""
playsound minecraft:entity.cat.ambient master @a ~ ~ ~ 99 0 1