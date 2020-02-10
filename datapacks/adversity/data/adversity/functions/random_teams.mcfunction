#	Description:
#		starts setting players on random teams (exluding spectators)
#	Activator:
#		self
#	Parents:
#		

tellraw @s [{"text":"Selecting ","color":"white"},{"text":"random teams","color":"dark_aqua"},{"text":".","color":"white"}]

function adversity:random_teams_r

tellraw @a ""
tellraw @a [{"text":"Random Teams","color":"dark_aqua"},{"text":" have been selected.","color":"white"}]
title @a subtitle [{"text":"Random Teams","color":"dark_aqua"},{"text":" have been selected.","color":"white"}]
title @a title ""
playsound sound master @a ~ ~ ~ 1 1 1

tag @a add menuRequest