#	Description:
#		summons the objectives
#	Activator:
#		as @e[tag=objectivePad] if score @s var = #OBJECTIVESUMMON var
#	Parents:
#		adversity:update

execute if score @e[tag=pad15,limit=1] var = #OBJECTIVESUMMON var run data merge entity @e[tag=leftObjective,limit=1] {Invulnerable:0b,Silent:0b,Glowing:1b}
execute if score @e[tag=pad16,limit=1] var = #OBJECTIVESUMMON var run data merge entity @e[tag=rightObjective,limit=1] {Invulnerable:0b,Silent:0b,Glowing:1b}

tellraw @a ""
execute if score @e[tag=pad15,limit=1] var = #OBJECTIVESUMMON var run tellraw @a [{"text":"The "},{"text":"Blue Pharaoh","color":"blue"},{"text":" has been summoned."}]
execute if score @e[tag=pad15,limit=1] var = #OBJECTIVESUMMON var run title @a subtitle [{"text":"The "},{"text":"Blue Pharaoh","color":"blue"},{"text":" has been summoned."}]
execute if score @e[tag=pad16,limit=1] var = #OBJECTIVESUMMON var run tellraw @a [{"text":"The "},{"text":"Yellow Pharaoh","color":"yellow"},{"text":" has been summoned."}]
tellraw @a ""
execute if score @e[tag=pad16,limit=1] var = #OBJECTIVESUMMON var run title @a subtitle [{"text":"The "},{"text":"Yellow Pharaoh","color":"yellow"},{"text":" has been summoned."}]
title @a title ""
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1 1
