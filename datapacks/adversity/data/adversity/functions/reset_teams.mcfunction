#	Description:
#		removes players from team a and b
#	Activator:
#		self
#	Parents:
#		

team leave @a[team=a]
team leave @a[team=b]

tellraw @a [{"text":"Teams have been ","color":"white"},{"text":"reset","color":"gray"},{"text":".","color":"white"}]
title @a subtitle [{"text":"Teams have been ","color":"white"},{"text":"reset","color":"gray"},{"text":".","color":"white"}]
title @a title ""
playsound sound master @a ~ ~ ~ 1 1 1

tag @s add menuRequest