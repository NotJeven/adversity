#	Description:
#		Selects 2 random captains from no teams
#	Activator:
#		none
#	Parents:
#		

tag @r[team=,tag=!captain] add captain
tag @r[team=,tag=!captain] add captain
team join a @r[tag=captain]
team join b @r[tag=captain]
scoreboard players set @a[tag=captain,team=a] sidebarDisplay 4
scoreboard players set @a[tag=captain,team=b] sidebarDisplay 2

execute unless entity @a[tag=captain] run tellraw @s [{"text":"No players could be "},{"text":"selected","color":"aqua"},{"text":".","color":"white"}]
execute unless entity @a[tag=captain] run title @s subtitle [{"text":"No players could be "},{"text":"selected","color":"aqua"},{"text":".","color":"white"}]
execute unless entity @a[tag=captain] run playsound minecraft:entity.villager.no master @s ~ ~ ~ 1 1 1

execute if entity @a[tag=captain,team=a] if entity @a[tag=captain,team=b] run tellraw @a [{"text":"Selected random players "},{"selector":"@a[tag=captain]"},{"text":".","color":"white"}]
execute if entity @a[tag=captain,team=a] unless entity @a[tag=captain,team=b] run tellraw @a [{"text":"Selected random player "},{"selector":"@a[tag=captain,team=a]"},{"text":".","color":"white"}]
execute if entity @a[tag=captain,team=b] unless entity @a[tag=captain,team=a] run tellraw @a [{"text":"Selected random player "},{"selector":"@a[tag=captain,team=b]"},{"text":".","color":"white"}]
execute if entity @a[tag=captain,team=a] if entity @a[tag=captain,team=b] run title @a subtitle [{"text":"Selected random players "},{"selector":"@a[tag=captain]"},{"text":".","color":"white"}]
execute if entity @a[tag=captain,team=a] unless entity @a[tag=captain,team=b] run title @a subtitle [{"text":"Selected random player "},{"selector":"@a[tag=captain,team=a]"},{"text":".","color":"white"}]
execute if entity @a[tag=captain,team=b] unless entity @a[tag=captain,team=a] run title @a subtitle [{"text":"Selected random player "},{"selector":"@a[tag=captain,team=b]"},{"text":".","color":"white"}]
execute if entity @a[tag=captain,team=a] if entity @a[tag=captain,team=b] run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1 1
execute if entity @a[tag=captain,team=a] unless entity @a[tag=captain,team=b] run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1 1
execute if entity @a[tag=captain,team=b] unless entity @a[tag=captain,team=a] run playsound minecraft:entity.villager.yes master @s ~ ~ ~ 1 1 1
title @a title ""
tag @a[tag=captain] remove captain

tag @a add menuRequest