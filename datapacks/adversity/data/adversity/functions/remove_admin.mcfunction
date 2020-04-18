#	Description:
#		removes admin status from the executer
#	Activator:
#		@a[scores={triggerAdmin=1}]
#	Parents:
#		

tag @a[scores={triggerAdmin=1}] remove menuAdmin
execute if score #menuHidden var = #FALSE var run tag @a[scores={triggerAdmin=1}] add menuRequest

playsound minecraft:ambient.underwater.exit master @a[scores={triggerAdmin=1}] ~ ~ ~ 1 1 1

tellraw @a[scores={triggerAdmin=1}] [{"text":"Admin status has been ","color":"white"},{"text":"removed","color":"red"},{"text":". ","color":"white"},{"text":"Identify as a server "},{"text":"admin","color":"gold","underlined":"true","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=!menuAdmin] run function adversity:add_admin"},"hoverEvent":{"action":"show_text","value":"Identify yourself as a server admin for advanced options. Accessable for players with server operator status only."}},{"text":"."}]
title @a[scores={triggerAdmin=1}] subtitle [{"text":"Admin status has been ","color":"white"},{"text":"removed","color":"red"},{"text":".","color":"white"}]
title @a[scores={triggerAdmin=1}] title ""

tag @a[scores={triggerAdmin=1}] remove menuAdmin 
scoreboard players reset @a[scores={triggerAdmin=1}] triggerAdmin