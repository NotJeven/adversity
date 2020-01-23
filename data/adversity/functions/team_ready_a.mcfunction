#	Description:
#		makes the aqua team 'ready'
#	Activator:
#		@a[scores={triggerTeamReady=1},team=a]
#	Parents:
#		adversity:update


execute if score #teamReadyA var = #NOTREADY var run scoreboard players operation #teamReadyA var = #TURNREADY var
execute if score #teamReadyA var = #READY var run scoreboard players operation #teamReadyA var = #TURNNOTREADY var

# flavour
execute if score #teamReadyA var = #TURNREADY var run tellraw @a[scores={triggerTeamReady=1},team=a] [{"text":"Your team is ready"}]
execute if score #teamReadyA var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=a] subtitle [{"text":"Your team is ready"}]
execute if score #teamReadyA var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=a] title ""
execute if score #teamReadyA var = #TURNREADY var run playsound entity.horse.armor master @a[scores={triggerTeamReady=1},team=a] ~ ~ ~ 1 1 1
execute if score #teamReadyA var = #TURNREADY var run team join ready §nLeft

execute if score #teamReadyA var = #TURNNOTREADY var run tellraw @a[scores={triggerTeamReady=1},team=a] [{"text":"Your team is not ready"}]
execute if score #teamReadyA var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=a] subtitle [{"text":"Your team is not ready"}]
execute if score #teamReadyA var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=a] title ""
execute if score #teamReadyA var = #TURNNOTREADY var run playsound entity.horse.armor master @a[scores={triggerTeamReady=1},team=a] ~ ~ ~ 1 1 1
execute if score #teamReadyA var = #TURNNOTREADY var run team join notready §nLeft

# toggle
execute if score #teamReadyA var = #TURNREADY var run scoreboard players operation #teamReadyA var = #READY var
execute if score #teamReadyA var = #TURNNOTREADY var run scoreboard players operation #teamReadyA var = #NOTREADY var

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamReady=1},team=a] add menuRequest
execute if entity @a[tag=menuRequest] run function adversity:menu


scoreboard players set @a[scores={triggerTeamReady=1},team=a] triggerTeamReady 0