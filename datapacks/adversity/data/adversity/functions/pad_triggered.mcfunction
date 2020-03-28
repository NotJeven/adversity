#	Description:
#		handle triggering of pads
#	Activator:
#		@e[tag=pad,tag=!padTriggered] if block ~ ~2 ~ jungle_pressure_plate[powered=true]
#	Parents:
#		adversity:updare

execute if score @s[tag=minorPad] var < #MINORSUMMON var run scoreboard players operation #statusTime var = #MINORSUMMON var 
execute if score @s[tag=majorPad] var < #MAJORSUMMON var run scoreboard players operation #statusTime var = #MAJORSUMMON var
execute if score @s[tag=objectivePad] var < #OBJECTIVESUMMON var run scoreboard players operation #statusTime var = #OBJECTIVESUMMON var
execute if score @s[tag=minorPad] var > #MINORSUMMON var run scoreboard players operation #statusTime var = #MINORCOOLDOWN var 
execute if score @s[tag=majorPad] var > #MAJORSUMMON var run scoreboard players operation #statusTime var = #MAJORCOOLDOWN var
execute if score @s[tag=objectivePad] var > #OBJECTIVESUMMON var run scoreboard players operation #statusTime var = #OBJECTIVESUMMON var
execute if score @s[tag=objectivePad] var < #OBJECTIVESUMMON var run scoreboard players operation #statusTime var = #OBJECTIVECOOLDOWN var
scoreboard players operation #statusTime var -= @s[tag=minorPad] var
scoreboard players operation #statusTime var -= @s[tag=majorPad] var
scoreboard players operation #statusTime var -= @s[tag=objectivePad] var
scoreboard players operation #statusTime var /= #1SECOND var

execute if score @s[tag=a] var = #FALSE var positioned ~ ~2 ~ if entity @p[distance=..1,team=a] run scoreboard players operation @s[tag=a] var = #TRUE var
execute if score @s[tag=b] var = #FALSE var positioned ~ ~2 ~ if entity @p[distance=..1,team=b] run scoreboard players operation @s[tag=b] var = #TRUE var
execute if score @s[tag=a] var < #MINORSUMMON var positioned ~-2 ~2 ~-2 run tellraw @a[dx=3,dy=1,dz=3,team=a] [{"text":"Summoning (","color":"gray"},{"score":{"name":"#statusTime","objective":"var"},"color":"white"},{"text":"s","color":"white"},{"text":")","color":"gray"}]
execute if score @s[tag=b] var < #MINORSUMMON var positioned ~-2 ~2 ~-2 run tellraw @a[dx=3,dy=1,dz=3,team=b] [{"text":"Summoning (","color":"gray"},{"score":{"name":"#statusTime","objective":"var"},"color":"white"},{"text":"s","color":"white"},{"text":")","color":"gray"}]
execute if score @s[tag=a] var > #MINORSUMMON var positioned ~-2 ~2 ~-2 run tellraw @a[dx=3,dy=1,dz=3,team=a] [{"text":"Cooldown (","color":"gray"},{"score":{"name":"#statusTime","objective":"var"},"color":"white"},{"text":"s","color":"white"},{"text":")","color":"gray"}]
execute if score @s[tag=b] var > #MINORSUMMON var positioned ~-2 ~2 ~-2 run tellraw @a[dx=3,dy=1,dz=3,team=b] [{"text":"Cooldown (","color":"gray"},{"score":{"name":"#statusTime","objective":"var"},"color":"white"},{"text":"s","color":"white"},{"text":")","color":"gray"}]

execute if score @s[tag=majorPad] var = #FALSE var run scoreboard players operation @s[tag=majorPad] var = #TRUE var
execute if score @s[tag=majorPad] var < #MAJORSUMMON var positioned ~-3 ~2 ~-4 run tellraw @a[dx=5,dy=1,dz=7] [{"text":"Summoning (","color":"gray"},{"score":{"name":"#statusTime","objective":"var"},"color":"white"},{"text":"s","color":"white"},{"text":")","color":"gray"}]
execute if score @s[tag=majorPad] var > #MAJORSUMMON var positioned ~-3 ~2 ~-4 run tellraw @a[dx=5,dy=1,dz=7] [{"text":"Cooldown (","color":"gray"},{"score":{"name":"#statusTime","objective":"var"},"color":"white"},{"text":"s","color":"white"},{"text":")","color":"gray"}]

execute if score @s[tag=objectivePad] var = #FALSE var run scoreboard players operation @s[tag=objectivePad] var = #TRUE var
execute if score @s[tag=objectivePad] var = #TRUE var run playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 1 0.5 1
execute if score @s[tag=objectivePad] var = #OBJECTIVECOOLDOWN var run data merge entity @e[type=skeleton,sort=nearest,limit=1] {Invulnerable:1b,Silent:1b,Glowing:0b}
execute if score @s[tag=objectivePad] var = #OBJECTIVECOOLDOWN var run scoreboard players operation @s[tag=objectivePad] var = #FALSE var
execute if score @s[tag=objectivePad] var > #FALSE var positioned ~-2 ~2 ~-2 run tellraw @a[dx=3,dy=1,dz=3] [{"text":"Summoning (","color":"gray"},{"score":{"name":"#statusTime","objective":"var"},"color":"white"},{"text":"s","color":"white"},{"text":")","color":"gray"}]
execute if score @s[tag=objectivePad] var > #OBJECTIVESUMMON if if score @s[tag=objectivePad] var < #OBJECTIVECOOLDOWN var positioned ~-2 ~2 ~-2 run tellraw @a[dx=3,dy=1,dz=3] [{"text":"Cooldown (","color":"gray"},{"score":{"name":"#statusTime","objective":"var"},"color":"white"},{"text":"s","color":"white"},{"text":")","color":"gray"}]

tag @s[tag=!padTriggered] add padTriggered