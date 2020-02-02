#	Description:
#		a pad has been triggered, tell information or start
#		I am using some gross object based stuff that goes against
#		my mcfunction philosophy of not storing data in the "phyiscal"
#		minecraft world, but otherwise this is all way too much work
#	Activator:
#		@a[tag=padTrigger]
#	Parents:
#		adversity:update

# start off pads
execute at @a[tag=padTrigger,team=a] if score @e[tag=itemPad,tag=leftLane,limit=1,sort=nearest,distance=..3] var = #FALSE var run scoreboard players operation @e[tag=itemPad,tag=leftLane,limit=1,sort=nearest,distance=..3] var = #TRUE var
execute at @a[tag=padTrigger,team=a] if score @e[tag=effectPad,tag=rightLane,limit=1,sort=nearest,distance=..3] var = #FALSE var run scoreboard players operation @e[tag=effectPad,tag=rightLane,limit=1,sort=nearest,distance=..3] var = #TRUE var

execute at @a[tag=padTrigger,team=b] if score @e[tag=itemPad,tag=rightLane,limit=1,sort=nearest,distance=..3] var = #FALSE var run scoreboard players operation @e[tag=itemPad,tag=rightLane,limit=1,sort=nearest,distance=..3] var = #TRUE var
execute at @a[tag=padTrigger,team=b] if score @e[tag=effectPad,tag=leftLane,limit=1,sort=nearest,distance=..3] var = #FALSE var run scoreboard players operation @e[tag=effectPad,tag=leftLane,limit=1,sort=nearest,distance=..3] var = #TRUE var

execute at @a[tag=padTrigger] if score @e[tag=majorPad,limit=1,sort=nearest,distance=..3] var = #FALSE var run scoreboard players operation @e[tag=majorPad,limit=1,sort=nearest,distance=..3] var = #TRUE var

execute at @a[tag=padTrigger] if score @e[tag=objectivePad,limit=1,sort=nearest,distance=..3] var = #FALSE var run scoreboard players operation @e[tag=objectivePad,limit=1,sort=nearest,distance=..3] var = #TRUE var

# status check
execute at @a[tag=padTrigger] if score @e[tag=minorPad,limit=1,sort=nearest,distance=..3] var < #MINORSUMMON var if score @e[tag=minorPad,limit=1,sort=nearest,distance=..3] var >= #TRUE var at @e[tag=minorPad,limit=1,sort=nearest,distance=..3] positioned ~-1 ~2 ~-1 run tellraw @a[dx=2,dy=1,dz=2] {"text":"summoning...","color":"gray"}
execute at @a[tag=padTrigger] if score @e[tag=minorPad,limit=1,sort=nearest,distance=..3] var > #MINORSUMMON var at @e[tag=minorPad,limit=1,sort=nearest] positioned ~-1 ~2 ~-1 run tellraw @a[dx=2,dy=1,dz=2] {"text":"cooldown...","color":"gray"}

execute at @a[tag=padTrigger] if score @e[tag=majorPad,limit=1,sort=nearest,distance=..3] var < #MAJORSUMMON var at @e[tag=majorPad,limit=1,sort=nearest] positioned ~-1 ~2 ~-1 run tellraw @a[dx=2,dy=1,dz=2] {"text":"summoning...","color":"gray"}
execute at @a[tag=padTrigger] if score @e[tag=majorPad,limit=1,sort=nearest,distance=..3] var > #MAJORSUMMON var at @e[tag=majorPad,limit=1,sort=nearest] positioned ~-1 ~2 ~-1 run tellraw @a[dx=2,dy=1,dz=2] {"text":"cooldown...","color":"gray"}

execute at @a[tag=padTrigger] if score @e[tag=objectivePad,limit=1,sort=nearest,distance=..3] var < #OBJECTIVESUMMON var at @e[tag=objectivePad,limit=1,sort=nearest] positioned ~-1 ~2 ~-1 run tellraw @a[dx=2,dy=1,dz=2] {"text":"summoning...","color":"gray"}

# close objectives
execute at @a[tag=padTrigger] if score @e[tag=pad15,limit=1,sort=nearest,distance=..3] var = #OBJECTIVECOOLDOWN var at @e[tag=pad15,limit=1] run tp @e[tag=leftObjective,limit=1,sort=nearest] ~ ~ ~
execute at @a[tag=padTrigger] if score @e[tag=pad16,limit=1,sort=nearest,distance=..3] var = #OBJECTIVECOOLDOWN var at @e[tag=pad16,limit=1] run tp @e[tag=rightObjective,limit=1,sort=nearest] ~ ~ ~
execute at @a[tag=padTrigger] if score @e[tag=pad15,limit=1,sort=nearest,distance=..3] var = #OBJECTIVECOOLDOWN var run data merge entity @e[tag=leftObjective,limit=1] {Invulnerable:1b,Silent:1b,Glowing:0b}
execute at @a[tag=padTrigger] if score @e[tag=pad16,limit=1,sort=nearest,distance=..3] var = #OBJECTIVECOOLDOWN var run data merge entity @e[tag=rightObjective,limit=1] {Invulnerable:1b,Silent:1b,Glowing:0b}

execute at @a[tag=padTrigger] if score @e[tag=objectivePad,limit=1,sort=nearest,distance=..3] var = #OBJECTIVECOOLDOWN var run scoreboard players set @e[tag=objectivePad,limit=1,sort=nearest] var 0

tag @a[tag=padTrigger] add padTriggered
tag @a[tag=padTrigger] remove padTrigger