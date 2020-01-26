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
execute at @a[tag=padTrigger] if score @e[tag=pad,limit=1,sort=nearest] var = #FALSE var run scoreboard players operation @e[tag=pad,limit=1,sort=nearest] var = #TRUE var

# status check
execute at @a[tag=padTrigger] if score @e[tag=minorPad,limit=1,sort=nearest] var < #MINORSUMMON var at @e[tag=minorPad,limit=1,sort=nearest] positioned ~-1 ~2 ~-1 run tellraw @a[dx=2,dy=1,dz=2] {"text":"summoning...","color":"gray"}
execute at @a[tag=padTrigger] if score @e[tag=minorPad,limit=1,sort=nearest] var > #MINORSUMMON var at @e[tag=minorPad,limit=1,sort=nearest] positioned ~-1 ~2 ~-1 run tellraw @a[dx=2,dy=1,dz=2] {"text":"cooldown...","color":"gray"}

execute at @a[tag=padTrigger] if score @e[tag=majorPad,limit=1,sort=nearest] var < #MAJORSUMMON var at @e[tag=majorPad,limit=1,sort=nearest] positioned ~-1 ~2 ~-1 run tellraw @a[dx=2,dy=1,dz=2] {"text":"summoning...","color":"gray"}
execute at @a[tag=padTrigger] if score @e[tag=majorPad,limit=1,sort=nearest] var > #MAJORSUMMON var at @e[tag=majorPad,limit=1,sort=nearest] positioned ~-1 ~2 ~-1 run tellraw @a[dx=2,dy=1,dz=2] {"text":"cooldown...","color":"gray"}

tag @a[tag=padTrigger] remove padTrigger