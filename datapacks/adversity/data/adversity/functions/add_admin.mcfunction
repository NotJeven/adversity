#	Description:
#		applies admin status to the su
#	Activator:
#		none
#	Parents:
#		self

tag @s add menuAdmin
scoreboard players enable @s triggerAdmin 
tellraw @s [{"text":"You are a server "},{"text":"admin","color":"gold"},{"text":". "},{"text":"Remove","color":"red","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerAdmin set 1"},"hoverEvent":{"action":"show_text","value":"Remove admin status and the admin menu.\nAccessible to players without server operator status."}},{"text":" admin status.","color":"white","underlined":"false"}]
title @s subtitle [{"text":"You are a server ","color":"white"},{"text":"admin","color":"gold"},{"text":".","color":"white"}]
title @s title ""
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1 1
tag @s add menuRequest
