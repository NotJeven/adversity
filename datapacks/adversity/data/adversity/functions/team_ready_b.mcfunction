#	Description:
#		sets the b team to 'ready'
#	Activator:
#		@a[scores={triggerTeamReady=1},team=b]
#	Parents:
#		adversity:update

execute if score #teamReadyB var = #NOTREADY var run scoreboard players operation #teamReadyB var = #TURNREADY var
execute if score #teamReadyB var = #READY var run scoreboard players operation #teamReadyB var = #TURNNOTREADY var

# flavour
execute if score #teamReadyB var = #TURNREADY var run tellraw @a[scores={triggerTeamReady=1},team=b] [{"text":"Your team is ","color":"white"},{"text":"ready","color":"green"},{"text":"."}]
execute if score #teamReadyB var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=b] subtitle [{"text":"Your team is ","color":"white"},{"text":"ready","color":"green"},{"text":"."}]
execute if score #teamReadyB var = #TURNREADY var run title @a[scores={triggerTeamReady=1},team=b] title ""
execute if score #teamReadyB var = #TURNREADY var run playsound minecraft:item.trident.throw master @a[scores={triggerTeamReady=1},team=b] ~ ~ ~ 1 1 1
execute if score #teamReadyB var = #TURNREADY var run team join ready §nYellow

execute if score #teamReadyB var = #TURNNOTREADY var run tellraw @a[scores={triggerTeamReady=1},team=b] [{"text":"Your team is ","color":"white"},{"text":"not ready","color":"red"},{"text":"."}]
execute if score #teamReadyB var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=b] subtitle [{"text":"Your team is ","color":"white"},{"text":"not ready","color":"red"},{"text":"."}]
execute if score #teamReadyB var = #TURNNOTREADY var run title @a[scores={triggerTeamReady=1},team=b] title ""
execute if score #teamReadyB var = #TURNNOTREADY var run playsound minecraft:item.trident.throw master @a[scores={triggerTeamReady=1},team=b] ~ ~ ~ 1 0 1
execute if score #teamReadyB var = #TURNNOTREADY var run team join notready §nYellow

# toggle
execute if score #teamReadyB var = #TURNREADY var run scoreboard players operation #teamReadyB var = #READY var
execute if score #teamReadyB var = #TURNNOTREADY var run scoreboard players operation #teamReadyB var = #NOTREADY var

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamReady=1},team=b] add menuRequest
execute if entity @a[tag=menuRequest] run function adversity:menu

scoreboard players set @a[scores={triggerTeamReady=1},team=b] triggerTeamReady 0