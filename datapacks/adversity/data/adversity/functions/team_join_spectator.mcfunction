#	Description:
#		team join handler for team spec
#	Activator:
#		@a[scores={triggerTeamJoin=3}]
#	Parents:
#		wildflower:update


team join spectator @a[scores={triggerTeamJoin=3}]
spawnpoint @a[scores={triggerTeamJoin=3}] 500 50 0

# items
tag @a[scores={triggerTeamJoin=3}] add giveItems
function wildflower:give_items

# flavour
tellraw @a[scores={triggerTeamJoin=3}] [{"text":"You hid with the ","color":"white"},{"text":"Spectators","color":"gray"},{"text":".","color":"white"}]
title @a[scores={triggerTeamJoin=3}] subtitle [{"text":"You hid with the ","color":"white"},{"text":"Spectators","color":"gray"},{"text":".","color":"white"}]
title @a[scores={triggerTeamJoin=3}] title ""
playsound entity.horse.armor master @a[scores={triggerTeamJoin=3}] ~ ~ ~ 1 1 1
scoreboard players set @a[scores={triggerTeamJoin=3}] sidebarDisplay 0

# menu
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerTeamJoin=3}] add menuRequest
execute if entity @a[tag=menuRequest] run function wildflower:menu


scoreboard players set @a[scores={triggerTeamJoin=3}] triggerTeamJoin 0