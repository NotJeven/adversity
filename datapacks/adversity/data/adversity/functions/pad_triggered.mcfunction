#	Description:
#		handle triggering of pads
#	Activator:
#		@e[tag=pad,tag=!padTriggered] if block ~ ~2 ~ jungle_pressure_plate[powered=true]
#	Parents:
#		adversity:updare

execute if score @s[tag=a] var = #FALSE var positioned ~ ~2 ~ if entity @p[distance=..1,team=a] run scoreboard players operation @s[tag=a] var = #TRUE var
execute if score @s[tag=b] var = #FALSE var positioned ~ ~2 ~ if entity @p[distance=..1,team=b] run scoreboard players operation @s[tag=b] var = #TRUE var
execute if score @s[tag=majorPad] var = #FALSE var run scoreboard players operation @s[tag=majorPad] var = #TRUE var
execute if score @s[tag=objectivePad] var = #FALSE var run scoreboard players operation @s[tag=objectivePad] var = #TRUE var
execute if score @s[tag=objectivePad] var = #OBJECTIVECOOLDOWN var run data merge entity @e[type=skeleton,sort=nearest,limit=1] {Invulnerable:1b,Silent:1b,Glowing:0b}
execute if score @s[tag=objectivePad] var = #OBJECTIVECOOLDOWN var run scoreboard players operation @s[tag=objectivePad] var = #FALSE var

tag @s[tag=!padTriggered] add padTriggered