#	Description:
#		ends the game and transitions map into post game state
#	Activator:
#		if #gameState var = #RUNNING var unless @e[tag=leftObjective], unless @e[tag=rightObjective]
#	Parents:
#		adversity:update
tellraw @a ""
execute if entity @e[tag=leftObjective] run tellraw @a [{"text":"The "},{"text":"Blue","color":"blue"},{"text":" banners are victorious!","color":"white"}]
execute if entity @e[tag=leftObjective] run title @a subtitle [{"text":"The "},{"text":"Blue","color":"blue"},{"text":" banners are victorious!","color":"white"}]
execute if entity @e[tag=rightObjective] run tellraw @a [{"text":"The "},{"text":"Yellow","color":"yellow"},{"text":" banners are victorious!","color":"white"}]
execute if entity @e[tag=rightObjective] run title @a subtitle [{"text":"The "},{"text":"Yellow","color":"yellow"},{"text":" banners are victorious!","color":"white"}]
title @a title ""
tellraw @a ""

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.5 1

effect give @a minecraft:blindness 3 1 true

tag @a[tag=menuAdmin] add menuRequest
function adversity:menu_admin

clear @a[gamemode=!spectator]
gamemode spectator @a[gamemode=!spectator]

experience set @a 0 levels
experience set @a 0

scoreboard players operation #gameState var = #END var
