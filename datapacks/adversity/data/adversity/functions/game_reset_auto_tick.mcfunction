#	Description:
#		runs when the auto reset ticks (every game tick while a countdown is true)
#	Activator:
#		#gameState = #END if #resetCountdown < #30SECONDS
#	Parents:
#		adversity:update

execute if score #resetCountdown var = #RESETTIMEBUF var run tellraw @a [{"text":"The map will ","color":"white"},{"text":"auto reset","color":"dark_purple"},{"text":" in...","color":"white"}]

# do a tick of feedback (sound, text) every second
scoreboard players operation #gameResetSecond var = #resetCountdown var
scoreboard players operation #gameResetSecond var %= #1SECOND var
execute if score #gameResetSecond var = #0 var if score #resetCountdown var <= #RESETTIMEBUF var run function adversity:game_reset_second


execute if score #resetCountdown var = #0 var run function adversity:game_reset

# decrease the counter
execute if score #gameState var = #END var run scoreboard players operation #resetCountdown var -= #1 var

