#	Description:
#		team join handler for team a
#	Activator:
#		@a[scores={triggerTeamJoin=1}]
#	Parents:
#		adversity:update


team join a @a[scores={triggerTeamJoin=1}]
clear @a[scores={triggerTeamJoin=1}]

# flavour
tellraw @a[scores={triggerTeamJoin=1}] [{"text":"You rallied with the ","color":"white"},{"text":"Blue","color":"blue"},{"text":" banners.","color":"white"}]
title @a[scores={triggerTeamJoin=1}] subtitle [{"text":"You rallied with the ","color":"white"},{"text":"Blue","color":"blue"},{"text":" banners.","color":"white"}]
title @a[scores={triggerTeamJoin=1}] title ""
playsound entity.horse.armor master @a[scores={triggerTeamJoin=1}] ~ ~ ~ 1 1 1
scoreboard players set @a[scores={triggerTeamJoin=1}] sidebarDisplay 4

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamJoin=1}] add menuRequest
execute if entity @a[tag=menuRequest] run function adversity:menu

scoreboard players set @a[scores={triggerTeamJoin=1}] triggerTeamJoin 0