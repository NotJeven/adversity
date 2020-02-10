#	Description:
#		removes admin status from the executer
#	Activator:
#		self
#	Parents:
#		

tag @s remove menuAdmin
execute if score #menuHidden var = #FALSE var run tag @s add menuRequest

playsound sound master @s ~ ~ ~ 1 1 1

tellraw @s [{"text":"Admin status ","color":"white"},{"text":"removed","color":"red"},{"text":".","color":"white"}]

title @s subtitle [{"text":"Admin status ","color":"white"},{"text":"removed","color":"red"},{"text":".","color":"white"}]
title @s title ""