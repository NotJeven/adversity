#	Description:
#		team leave handler
#	Activator:
#		@a[scores={triggerTeamJoin=-1}]
#	Parents:
#		update:update

team leave @a[scores={triggerTeamJoin=-1}]
spawnpoint @a[scores={triggerTeamJoin=-1}] 500 50 0

#items 
clear @a[scores={triggerTeamJoin=-1}]

# flavour
tellraw @a[scores={triggerTeamJoin=-1}] [{"text":"You have "},{"text":"abandoned","color":"gray"},{"text":" your team."}]
title @a[scores={triggerTeamJoin=-1}] subtitle [{"text":"You have "},{"text":"abandoned","color":"gray"},{"text":" your team."}]
title @a[scores={triggerTeamJoin=-1}] title ""
playsound minecraft:entity.ender_dragon.flap master @a[scores={triggerTeamJoin=-1}] ~ ~ ~ 1 .7 1
scoreboard players reset @a[scores={triggerTeamJoin=-1}] sidebarDisplay 

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamJoin=-1}] add menuRequest
execute if entity @a[tag=menuRequest] run function adversity:menu

scoreboard players reset @a[scores={triggerTeamJoin=-1}] triggerTeamReady

scoreboard players set @a[scores={triggerTeamJoin=-1}] triggerTeamJoin 0