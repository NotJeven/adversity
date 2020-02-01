#	Description:
#		resets the map and transitions game to IDLE gamestate
#	Activator:
#		None
#	Parents:
#		adversity:update

kill @e[type=arrow]
kill @e[type=item]
# var set also sets gamestate to idle
function adversity:var_set
execute if score #menuHidden var = #FALSE var run tag @a add menuRequest
team leave @a[team=!spectator]
gamemode spectator @a[gamemode=!spectator]
scoreboard objectives setdisplay sidebar sidebarDisplay
