#	Description:
#		handles players that have left the game and returned
#	Activator:
#		@a[scores={leftPlayer=1..},tag=initialized]
#	Parents:
#		adversity:update

tellraw @a[scores={leftPlayer=1..},tag=initialized,tag=!menuAdmin] [{"text":"Identify as a server "},{"text":"admin","color":"gold","underlined":"true","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=!menuAdmin] run tag @s add menuAdmin"},"hoverEvent":{"action":"show_text","value":"Identify yourself as a server admin for advanced options."}},{"text":"."}]
tag @a[scores={leftPlayer=1..},tag=initialized,team=] add menuRequest
execute if score #gameState var = #IDLE var run gamemode spectator @a[scores={leftPlayer=1..},tag=initialized]
execute if score #gameState var = #END var run gamemode spectator @a[scores={leftPlayer=1..},tag=initialized]
execute if score #gameState var = #COUNTDOWN var run gamemode spectator @a[scores={leftPlayer=1..},tag=initialized]

# lockdown menu
execute unless score #gameState var = #IDLE var run scoreboard players reset @a triggerTeamJoin
execute unless score #gameState var = #IDLE var run scoreboard players reset @a triggerTeamReady

scoreboard players operation @a[scores={leftPlayer=1..},tag=initialized] leftPlayer = #FALSE var
