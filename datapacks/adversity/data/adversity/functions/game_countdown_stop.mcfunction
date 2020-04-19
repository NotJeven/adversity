#	Description:
#		stops the game start countdown sequence
#	Activator:
#		if #gameState = #COUNTDOWN if #teamReadyAqua = #NOTREADY
#		if #gameState = #COUNTDOWN if #teamReadyPurple = #NOTREADY
#	Parents:
#		adversity:update

scoreboard players operation #gameState var = #IDLE var 
scoreboard players operation #gameCountdown var = #COUNTDOWNTIME var

# move players back to specator mode
gamemode spectator @a[gamemode=!spectator,team=!]