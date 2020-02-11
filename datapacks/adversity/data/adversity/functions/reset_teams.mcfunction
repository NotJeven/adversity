#	Description:
#		removes players from team a and b
#	Activator:
#		self
#	Parents:
#		

scoreboard players reset @a[team=a]
scoreboard players reset @a[team=b]
team leave @a[team=a]
team leave @a[team=b]

tellraw @a [{"text":"Teams have been ","color":"white"},{"text":"reset","color":"gray"},{"text":".","color":"white"}]
title @a subtitle [{"text":"Teams have been ","color":"white"},{"text":"reset","color":"gray"},{"text":".","color":"white"}]
title @a title ""
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1 0.7 1

tag @s add menuRequest