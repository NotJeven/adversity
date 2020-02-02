#	Description:
#		ends the game and transitions map into post game state
#	Activator:
#		if #gameState var = #RUNNING var unless @e[tag=leftObjective], unless @e[tag=rightObjective]
#	Parents:
#		adversity:update
tellraw @a ""
execute if entity @e[tag=leftObjective] run tellraw @a [{"text":"Blue","color":"blue"},{"text":" victory!"}]
execute if entity @e[tag=leftObjective] run title @a subtitle [{"text":"Blue","color":"blue"},{"text":" victory!"}]
execute if entity @e[tag=rightObjective] run tellraw @a [{"text":"Yellow","color":"yellow"},{"text":" victory!"}]
execute if entity @e[tag=rightObjective] run title @a subtitle [{"text":"Yellow","color":"yellow"},{"text":" victory!"}]
title @a title ""

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5 1

tag @a[tag=menuAdmin] add menuRequest
function adversity:menu_admin

clear @a[gamemode=!spectator]
gamemode spectator @a[gamemode=!spectator]

experience set @a 0 levels
experience set @a 0

scoreboard players operation #gameState var = #END var
