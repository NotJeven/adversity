#	Description:
#		team join handler for team b
#	Activator:
#		@a[scores={triggerTeamJoin=2}]
#	Parents:
#		adversity:update


team join b @a[scores={triggerTeamJoin=2}]

# flavour
tellraw @a[scores={triggerTeamJoin=2}] [{"text":"Joined Right/Red"}]
title @a[scores={triggerTeamJoin=2}] subtitle [{"text":"Joined Right/Red"}]
title @a[scores={triggerTeamJoin=2}] title ""
playsound entity.horse.armor master @a[scores={triggerTeamJoin=2}] ~ ~ ~ 1 1 1
scoreboard players set @a[scores={triggerTeamJoin=2}] sidebarDisplay 4

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamJoin=2}] add menuRequest
execute if entity @a[tag=menuRequest] run function adversity:menu

scoreboard players set @a[scores={triggerTeamJoin=2}] triggerTeamJoin 0