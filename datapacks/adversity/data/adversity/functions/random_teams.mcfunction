#	Description:
#		starts setting players on random teams (exluding spectators)
#	Activator:
#		self
#	Parents:
#		

tellraw @s [{"text":"Selecting random teams...","color":"gray"}]

function adversity:random_teams_r
scoreboard players set @a[team=a] sidebarDisplay 4
scoreboard players set @a[team=b] sidebarDisplay 2
clear @a[team=!spectator]
tellraw @a ""
tellraw @a [{"text":"Random Teams","color":"dark_aqua"},{"text":" have been selected.","color":"white"}]
title @a subtitle [{"text":"Random Teams","color":"dark_aqua"},{"text":" have been selected.","color":"white"}]
title @a title ""
playsound block.brewing_stand.brew master @a ~ ~ ~ 1 0.7 1

tag @a add menuRequest