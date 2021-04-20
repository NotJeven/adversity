#	Description:
#		main game and logic loop
#	Activator:
#		none
#	Parents:
#		minecraft:tick


# deal with leaving players, first out of date ones
execute as @a[tag=initialized,scores={leftPlayer=1..}] unless score @s var = #matchID var run tag @s remove initialized
execute if entity @a[tag=initialized,scores={leftPlayer=1..}] run function adversity:left_player

# deal with new players when they log in for the first time
execute if entity @a[tag=!initialized] run function adversity:initialize_player

# FEED THEM - Moesh was using this in Calamity... it heals 0.00125 health/tick which is the same rate as 1.8 so I kind of like it.
effect give @a[scores={food=..19}] minecraft:saturation 1 0 false
effect clear @a[scores={food=20}] minecraft:saturation

# death handlers
tag @a[scores={sinceDeath=0},tag=!dead] add dead
execute if entity @a[scores={sinceDeath=1..},tag=dead] run function adversity:alive

# Menu Requests
tag @a[x=495,y=50,z=0,distance=0..1,tag=!menuRequest,tag=!menuTimeout] add menuRequest
execute if entity @a[tag=menuRequest,tag=!menuTimeout] if score #menuHidden var = #FALSE var if score #gameState var = #IDLE var run function adversity:menu
execute if entity @a[tag=menuRequest,tag=menuAdmin,tag=!menuTimeout] if score #menuHidden var = #TRUE var run function adversity:menu_admin
execute if entity @a[tag=menuRequest,tag=menuAdmin,tag=!menuTimeout] if score #menuHidden var = #FALSE var unless score #gameState var = #IDLE var run function adversity:menu_admin
tag @a[x=495,y=50,z=0,distance=0..1] add menuTimeout
tag @a[x=495,y=50,z=0,distance=2..,tag=menuTimeout] remove menuTimeout

# Menu actions
execute if entity @a[scores={triggerTeamJoin=-1}] run function adversity:team_leave
execute if entity @a[scores={triggerTeamJoin=1}] run function adversity:team_join_a
execute if entity @a[scores={triggerTeamJoin=2}] run function adversity:team_join_b
execute if entity @a[scores={triggerTeamJoin=3}] run function adversity:team_join_spectator
execute if entity @a[scores={triggerTeamReady=1},team=a] run function adversity:team_ready_a
execute if entity @a[scores={triggerTeamReady=1},team=b] run function adversity:team_ready_b
execute if entity @a[scores={triggerTeamReady=1},team=spectator] run function adversity:team_ready_spectator
execute if entity @a[scores={triggerAdmin=1}] run function adversity:remove_admin

# start/stop the game
execute if score #teamReadyA var = #READY var if score #teamReadyB var = #READY var if score #teamReadySpectator var = #READY var if score #gameState var = #IDLE var run function adversity:game_countdown_start
execute if score #gameState var = #COUNTDOWN var if score #teamReadyB var = #NOTREADY var run function adversity:game_countdown_stop
execute if score #gameState var = #COUNTDOWN var if score #teamReadyA var = #NOTREADY var run function adversity:game_countdown_stop
execute if score #gameState var = #COUNTDOWN var if score #teamReadySpectator var = #NOTREADY var run function adversity:game_countdown_stop

execute if score #gameState var = #COUNTDOWN var if score #gameCountdown var < #COUNTDOWNTIME var run function adversity:game_countdown_tick

# game win condition
execute if score #gameState var = #RUNNING var unless entity @e[tag=leftObjective] run function adversity:game_end
execute if score #gameState var = #RUNNING var unless entity @e[tag=rightObjective] run function adversity:game_end

# auto reset 
execute if score #gameState var = #END var if score #autoReset var = #TRUE var run function adversity:game_reset_auto_tick

# too far away from map
tp @a[x=550,y=50,z=0,distance=275..,gamemode=spectator] 500 51 0

# pad trigger rewrite
execute as @e[tag=pad,tag=!padTriggered] at @s if block ~ ~2 ~ #adversity:power_source[powered=true] run function adversity:pad_triggered
execute as @e[tag=pad,tag=padTriggered] at @s unless block ~ ~2 ~ #adversity:power_source[powered=true] run tag @s remove padTriggered

# pad lights; I don't like any of this
execute as @e[tag=minorPad,tag=leftLane] if score @s var = #MINORPADL1 var at @s run fill ~1 ~1 ~2 ~1 ~1 ~2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=leftLane] if score @s var = #MINORPADL2 var at @s run fill ~0 ~1 ~2 ~0 ~1 ~2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=leftLane] if score @s var = #MINORPADL3 var at @s run fill ~-1 ~1 ~2 ~-1 ~1 ~2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=leftLane] if score @s var = #MINORPADL4 var at @s run fill ~0 ~1 ~2 ~0 ~1 ~2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=leftLane] if score @s var = #MINORPADL5 var at @s run fill ~1 ~1 ~2 ~1 ~1 ~2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=leftLane] if score @s var = #MINORPADL6 var at @s run fill ~1 ~1 ~2 ~1 ~1 ~2 minecraft:redstone_lamp[lit=false] replace minecraft:redstone_lamp

execute as @e[tag=minorPad,tag=rightLane] if score @s var = #MINORPADL1 var at @s run fill ~-1 ~1 ~-2 ~-1 ~1 ~-2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=rightLane] if score @s var = #MINORPADL2 var at @s run fill ~0 ~1 ~-2 ~0 ~1 ~-2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=rightLane] if score @s var = #MINORPADL3 var at @s run fill ~1 ~1 ~-2 ~1 ~1 ~-2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=rightLane] if score @s var = #MINORPADL4 var at @s run fill ~0 ~1 ~-2 ~0 ~1 ~-2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=rightLane] if score @s var = #MINORPADL5 var at @s run fill ~-1 ~1 ~-2 ~-1 ~1 ~-2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=minorPad,tag=rightLane] if score @s var = #MINORPADL6 var at @s run fill ~-1 ~1 ~-2 ~-1 ~1 ~-2 minecraft:redstone_lamp[lit=false] replace minecraft:redstone_lamp

execute as @e[tag=majorPad] if score @s var = #MAJORPADL1 var at @s run fill ~-3 ~1 ~3 ~-3 ~1 ~3 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL2 var at @s run fill ~-3 ~1 ~2 ~-3 ~1 ~2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL3 var at @s run fill ~-3 ~1 ~1 ~-3 ~1 ~1 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL4 var at @s run fill ~-3 ~1 ~0 ~-3 ~1 ~0 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL5 var at @s run fill ~-3 ~1 ~-1 ~-3 ~1 ~-1 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL6 var at @s run fill ~-3 ~1 ~-2 ~-3 ~1 ~-2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL7 var at @s run fill ~-3 ~1 ~-3 ~-3 ~1 ~-3 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL8 var at @s run fill ~-3 ~1 ~-2 ~-3 ~1 ~-2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL9 var at @s run fill ~-3 ~1 ~-1 ~-3 ~1 ~-1 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL10 var at @s run fill ~-3 ~1 ~0 ~-3 ~1 ~0 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL11 var at @s run fill ~-3 ~1 ~1 ~-3 ~1 ~1 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL12 var at @s run fill ~-3 ~1 ~2 ~-3 ~1 ~2 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL13 var at @s run fill ~-3 ~1 ~3 ~-3 ~1 ~3 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp
execute as @e[tag=majorPad] if score @s var = #MAJORPADL14 var at @s run fill ~-3 ~1 ~3 ~-3 ~1 ~3 minecraft:redstone_lamp[lit=false] replace minecraft:redstone_lamp

# pad summon
execute as @e[tag=minorPad] if score @s var = #MINORSUMMON var run function adversity:pad_summon
execute as @e[tag=majorPad] if score @s var = #MAJORSUMMON var run function adversity:pad_summon

# pad ticks
execute if score #gameState var = #RUNNING var run scoreboard players add @e[tag=minorPad,scores={var=1..}] var 1
execute if score #gameState var = #RUNNING var run scoreboard players add @e[tag=majorPad,scores={var=1..}] var 1
execute if score #gameState var = #RUNNING var run scoreboard players add @e[tag=objectivePad,scores={var=1..69}] var 1
execute as @e[tag=minorPad] if score @s var > #MINORCOOLDOWN var run scoreboard players set @s var 0
execute as @e[tag=majorPad] if score @s var > #MAJORCOOLDOWN var run scoreboard players set @s var 0

# pad sounds
execute as @e[tag=itemPad,tag=leftLane] at @s positioned ~ ~3 ~ if score @s var = #MINORSUMMON var run playsound minecraft:entity.evoker.prepare_summon master @a[team=!b,distance=..5] ~ ~ ~ 0.5 2 0
execute as @e[tag=itemPad,tag=rightLane] at @s positioned ~ ~3 ~ if score @s var = #MINORSUMMON var run playsound minecraft:entity.evoker.prepare_summon master @a[team=!a,distance=..5] ~ ~ ~ 0.5 2 0
execute as @e[tag=minorPad,tag=a] at @s positioned ~ ~3 ~ if score @s var = #MINORPADL3 var run playsound minecraft:block.bell.resonate master @a[team=!b,distance=..5] ~ ~ ~ 0.2 1.5 0
execute as @e[tag=minorPad,tag=b] at @s positioned ~ ~3 ~ if score @s var = #MINORPADL3 var run playsound minecraft:block.bell.resonate master @a[team=!a,distance=..5] ~ ~ ~ 0.2 1.5 0
# drink
execute if score @e[tag=pad5,limit=1] var = #MINORSUMMON var at @e[tag=pad5,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=b,dx=3,dy=1,dz=3] run playsound minecraft:entity.generic.drink master @a[team=!a] ~ ~ ~ 1 1 1
execute if score @e[tag=pad6,limit=1] var = #MINORSUMMON var at @e[tag=pad6,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=b,dx=3,dy=1,dz=3] run playsound minecraft:entity.generic.drink master @a[team=!a] ~ ~ ~ 1 1 1
execute if score @e[tag=pad11,limit=1] var = #MINORSUMMON var at @e[tag=pad11,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=a,dx=3,dy=1,dz=3] run playsound minecraft:entity.generic.drink master @a[team=!b] ~ ~ ~ 1 1 1
execute if score @e[tag=pad12,limit=1] var = #MINORSUMMON var at @e[tag=pad12,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=a,dx=3,dy=1,dz=3] run playsound minecraft:entity.generic.drink master @a[team=!b] ~ ~ ~ 1 1 1
# major
execute as @e[tag=majorPad] at @s positioned ~ ~3 ~ if score @s var = #MAJORSUMMON var run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.25 1.25 0
execute as @e[tag=majorPad] at @s positioned ~ ~3 ~ if score @s var = #MAJORSOUND var run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 1.25 0 0

# summon objective
execute as @e[tag=objectivePad] if score @s var = #OBJECTIVESUMMON var run function adversity:objective_summon


# clear objective area
execute if score @e[tag=pad15,limit=1] var > #OBJECTIVESUMMON var run fill 519 33 -28 523 29 -24 minecraft:air replace #adversity:all_blocks
execute if score @e[tag=pad16,limit=1] var > #OBJECTIVESUMMON var run fill 519 33 28 523 29 24 minecraft:air replace #adversity:all_blocks

# if the pad objects die for some reason....
execute if score #padCount var > #0 var run scoreboard players set #padCount var 0
execute as @e[tag=pad] run scoreboard players add #padCount var 1
execute unless score #padCount var = #PADS var run function adversity:pad_objects

# make sure the objective doesnt move
execute if score #gameState var = #RUNNING var if entity @e[tag=objectivePad,scores={var=60..70}] at @e[tag=objectivePad,scores={var=60..70}] run tp @e[type=skeleton,sort=nearest,limit=1] ~ ~4 ~
execute if score #gameState var = #RUNNING var as @e[tag=objectivePad,scores={var=0}] at @s run tp @e[type=skeleton,sort=nearest,limit=1] ~ ~-1 ~

# map bounds; toggleBounds = true when confirmed outside of play area
tag @a[tag=inBounds] remove inBounds
execute as @a[team=!,tag=!inBounds] at @s if entity @s[y=0,dy=59] if block ~ 255 ~ minecraft:barrier run tag @s add inBounds
# in bounds but confirmed outside
execute as @a[team=!,tag=inBounds,tag=toggleBounds] if entity @s run function adversity:in_bounds
# outside bounds but not confirmed
execute as @a[team=!,tag=!inBounds,tag=!toggleBounds] if entity @s run function adversity:out_bounds
# still outside
execute as @a[team=!,tag=!inBounds,tag=toggleBounds] if entity @s run title @s actionbar [{"text":"←","color":"dark_red"},{"text":" outside building area ","color":"white"},{"text":"→","color":"dark_red"}]

# objective boss bars
execute if score #gameState var = #RUNNING var store result bossbar adversity:left value run data get entity @e[tag=leftObjective,limit=1] Health
execute if score #gameState var = #RUNNING var store result bossbar adversity:right value run data get entity @e[tag=rightObjective,limit=1] Health

# make spawn safe
fill 505 47 -27 507 49 -25 minecraft:air replace #adversity:all_blocks
fill 505 47 27 507 49 25 minecraft:air replace #adversity:all_blocks

# end game stats
execute if score #gameState var = #END var if score #statTime var = #STATLENGTH var run function adversity:stat_next
execute if score #gameState var = #END var run scoreboard players add #statTime var 1