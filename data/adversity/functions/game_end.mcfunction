#	Description:
#		ends the game and transitions map into post game state
#	Activator:
#		if #gameState var = #RUNNING var unless @e[tag=leftObjective], unless @e[tag=rightObjective]
#	Parents:
#		adversity:update
tellraw @a "game ended"
execute if entity @e[tag=leftObjective] run tellraw @a {"translate":"Left/Blue victory!"}
execute if entity @e[tag=rightObjective] run tellraw @a {"translate":"Right/Red victory!"}

#playsound <sound> <source> @a [x] [y] [z] [volume] [pitch] [minimumVolume]

tag @a[tag=menuAdmin] add menuRequest
function adversity:menu_admin

clear @a[gamemode=!spectator]
gamemode spectator @a[gamemode=!spectator]

scoreboard players operation #gameState var = #END var
