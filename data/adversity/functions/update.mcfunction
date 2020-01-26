#	Description:
#		main game and logic loop
#	Activator:
#		none
#	Parents:
#		minecraft:tick


# deal with new players when they log in for the first time
execute if entity @a[tag=!initialized] run function adversity:initialize_player

# death handlers
tag @a[scores={sinceDeath=0},tag=!dead] add dead
execute if entity @a[scores={sinceDeath=1..},tag=dead] run function adversity:alive


# Menu Requests

tag @a[x=500,y=50,z=0,distance=0..1,tag=!menuRequest] add menuRequest
execute if entity @a[x=500,y=50,z=0,distance=0..1,tag=menuRequest,tag=!menuTimeout] if score #menuHidden var = #FALSE var run function adversity:menu
execute if entity @a[x=500,y=50,z=0,distance=0..1,tag=menuRequest,tag=menuAdmin,tag=!menuTimeout] if score #menuHidden var = #TRUE var run function adversity:menu_admin
tag @a[x=500,y=50,z=0,distance=0..1] add menuTimeout
tag @a[x=500,y=50,z=0,distance=1..,tag=menuTimeout] remove menuTimeout

# Menu actions
execute if entity @a[scores={triggerTeamJoin=-1}] run function adversity:team_leave
execute if entity @a[scores={triggerTeamJoin=1}] run function adversity:team_join_a
execute if entity @a[scores={triggerTeamJoin=2}] run function adversity:team_join_b
execute if entity @a[scores={triggerTeamJoin=3}] run function adversity:team_join_spectator
execute if entity @a[scores={triggerTeamReady=1},team=a] run function adversity:team_ready_a
execute if entity @a[scores={triggerTeamReady=1},team=b] run function adversity:team_ready_b
execute if entity @a[scores={triggerTeamReady=1},team=spectator] run function adversity:team_ready_spectator


# start/stop the game
execute if score #teamReadyA var = #READY var if score #teamReadyB var = #READY var if score #teamReadySpectator var = #READY var if score #gameState var = #IDLE var run function adversity:game_countdown_start
execute if score #gameState var = #COUNTDOWN var if score #teamReadyB var = #NOTREADY var run function adversity:game_countdown_stop
execute if score #gameState var = #COUNTDOWN var if score #teamReadyA var = #NOTREADY var run function adversity:game_countdown_stop
execute if score #gameState var = #COUNTDOWN var if score #teamReadySpectator var = #NOTREADY var run function adversity:game_countdown_stop

execute if score #gameState var = #COUNTDOWN var if score #gameCountdown var < #5SECONDS var run function adversity:game_countdown_tick
execute if score #gameState var = #COUNTDOWN var if score #gameCountdown var < #0 var run function adversity:game_start

# game win condition

# auto reset 
execute if score #gameState var = #END var if score #resetCountdown var > #10SECONDS var run scoreboard players operation #resetCountdown var -= #1 var
execute if score #gameState var = #END var if score #resetCountdown var = #10SECONDS var run function adversity:game_reset_auto
execute if score #gameState var = #END var if score #resetCountdown var < #10SECONDS var run function adversity:game_reset_auto_tick
execute if score #gameState var = #END var if score #resetCountdown var < #0 var run function adversity:game_reset

# pads
execute as @a[team=a] at @s if block ~ ~ ~ minecraft:jungle_pressure_plate[powered=true] if block ~ ~-1 ~ minecraft:end_portal_frame run tag @s add padTrigger
execute as @a[team=b] at @s if block ~ ~ ~ minecraft:jungle_pressure_plate[powered=true] if block ~ ~-1 ~ minecraft:end_portal_frame run tag @s add padTrigger

execute if entity @a[tag=padTrigger] run function adversity:pad_trigger
execute if score #gameState var = #RUNNING var run function adversity:pad_tick 

# if the pad objects die for some reason....
execute as @e[type=area_effect_cloud,tag=pad] store result score #padCount var unless score #padsTotal var = #PADS var run function adversity:pad_objects