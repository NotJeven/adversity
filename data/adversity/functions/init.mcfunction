#	Description:
#		Initializes all of the objectives, variables, teams, and game systems
# 		should only be run once
#	Parents:
#		adversity:load

# objectives
# "scoreboard objectives add var dummy" defined in adversity:load
scoreboard objectives add sinceDeath minecraft.custom:minecraft.time_since_death

scoreboard objectives add deathCount deathCount "Deaths"

scoreboard objectives add triggerTeamJoin trigger
scoreboard objectives add triggerTeamReady trigger
scoreboard objectives add sidebarDisplay dummy "Adversity"
scoreboard objectives setdisplay sidebar sidebarDisplay

# CONSTANTS
# game states
scoreboard players set #IDLE var 0
scoreboard players set #COUNTDOWN var 1
scoreboard players set #RUNNING var 2
scoreboard players set #END var 3

# ready states
scoreboard players set #READY var 1	
scoreboard players set #NOTREADY var 0
# ready transition states
scoreboard players set #TURNREADY var 11
scoreboard players set #TURNNOTREADY var 10

# booleans
scoreboard players set #TRUE var 1
scoreboard players set #FALSE var 0

# time
scoreboard players set #1SECOND var 20
scoreboard players set #10SECONDS var 200

# numbers
scoreboard players set #1 var 1
scoreboard players set #0 var 0
scoreboard players set #20 var 20

# pad things
scoreboard players set #PADS var 16
scoreboard players set #MINORSUMMON var 120
scoreboard players set #MINORCOOLDOWN var 240
scoreboard players set #MAJORSUMMON var 280
scoreboard players set #MAJORCOOLDOWN var 560
scoreboard players set #OBJECTIVESUMMON var 20
scoreboard players set #OBJECTIVECOOLDOWN var 25
# pad lights; depends on the above variables
scoreboard players set #MINORPADL1 var 2
scoreboard players set #MINORPADL2 var 41
scoreboard players set #MINORPADL3 var 81
scoreboard players set #MINORPADL4 var 161
scoreboard players set #MINORPADL5 var 201
scoreboard players set #MINORPADL6 var 240

scoreboard players set #MAJORPADL1 var 2
scoreboard players set #MAJORPADL2 var 41
scoreboard players set #MAJORPADL3 var 81
scoreboard players set #MAJORPADL4 var 121
scoreboard players set #MAJORPADL5 var 161
scoreboard players set #MAJORPADL6 var 201
scoreboard players set #MAJORPADL7 var 241
scoreboard players set #MAJORPADL8 var 321
scoreboard players set #MAJORPADL9 var 361
scoreboard players set #MAJORPADL10 var 401
scoreboard players set #MAJORPADL11 var 441
scoreboard players set #MAJORPADL12 var 481
scoreboard players set #MAJORPADL13 var 521
scoreboard players set #MAJORPADL14 var 560
# END CONSTANTS

# things to be only defined once
scoreboard players operation #gameCountdownSecond var = #1 var
scoreboard players operation #menuHidden var = #FALSE var


# teams
team add a "Left"
team modify a color blue
team add b "Right"
team modify purple color red
team add spectator "Spectator"
team modify spectator color gray

team add ready
team modify ready color green
team add notready
team modify notready color red

# initializes/sets all the variables
function adversity:var_set