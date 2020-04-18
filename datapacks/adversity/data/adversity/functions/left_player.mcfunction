#	Description:
#		handles players that have left the game and returned
#	Activator:
#		@a[scores={leftPlayer=1..},tag=initialized]
#	Parents:
#		adversity:update

tellraw @a[scores={leftPlayer=1},tag=initialized,tag=!menuAdmin] [{"text":"Identify as a server "},{"text":"admin","color":"gold","underlined":"true","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=!menuAdmin] run function adversity:add_admin"},"hoverEvent":{"action":"show_text","value":"Identify yourself as a server admin for advanced options. Accessable for players with server operator status only."}},{"text":"."}]
tellraw @a[scores={leftPlayer=1},tag=initialized,tag=menuAdmin] [{"text":"You are a server "},{"text":"admin","color":"gold"},{"text":". "},{"text":"Remove","color":"red","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerAdmin set 1"},"hoverEvent":{"action":"show_text","value":"Remove admin status and the admin menu. Accessable to players without server operator status."}},{"text":" admin status.","color":"white","underlined":"false"}]
scoreboard players enable @a[scores={leftPlayer=1},tag=initialized] triggerAdmin

# give menu
execute if score #gameState var = #IDLE var run tag @a[scores={leftPlayer=1..},tag=initialized] add menuRequest
execute if score #gameState var = #COUNTDOWN var run tag @a[scores={leftPlayer=1..},tag=initialized] add menuRequest
execute if score #gameState var = #RUNNING var run tag @a[scores={leftPlayer=1..},tag=initialized,tag=menuAdmin] add menuRequest
execute if score #gameState var = #END var run tag @a[scores={leftPlayer=1..},tag=initialized,tag=menuAdmin] add menuRequest

# set gamemode
execute if score #gameState var = #IDLE var run gamemode spectator @a[scores={leftPlayer=1..},tag=initialized]
execute if score #gameState var = #END var run gamemode spectator @a[scores={leftPlayer=1..},tag=initialized]
execute if score #gameState var = #COUNTDOWN var run gamemode spectator @a[scores={leftPlayer=1..},tag=initialized]

# lockdown menu
execute if score #gameState var = #END var run scoreboard players reset @a triggerTeamJoin
execute if score #gameState var = #END var run scoreboard players reset @a triggerTeamReady
execute if score #gameState var = #RUNNING var run scoreboard players reset @a triggerTeamJoin
execute if score #gameState var = #RUNNING var run scoreboard players reset @a triggerTeamReady

scoreboard players operation @a[scores={leftPlayer=1..},tag=initialized] leftPlayer = #FALSE var
