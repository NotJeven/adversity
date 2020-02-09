#	Description:
#		resets the map and transitions game to IDLE gamestate
#	Activator:
#		None
#	Parents:
#		adversity:update

tellraw @a [{"text":"Adversity is ","color":"white"},{"text":"resetting","color":"light_purple"},{"text":", please wait.","color":"white"}]

function adversity:clone
# var set also sets gamestate to idle and generates new matchID
function adversity:var_set

# entity and player things
kill @e[type=skeleton]
kill @e[type=arrow]
kill @e[type=item]
gamemode spectator @a[gamemode=!spectator]

# generic player handling 
team leave @a[team=!spectator]
gamemode spectator @a[gamemode=!spectator]
scoreboard players operation @a var = #matchID var
execute if score #menuHidden var = #FALSE var run tag @a add menuRequest