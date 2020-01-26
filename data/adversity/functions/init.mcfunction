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
scoreboard objectives add sidebarDisplay dummy "Wildflower"
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
scoreboard players set #OBJECTIVECOOLDOWN var 0
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