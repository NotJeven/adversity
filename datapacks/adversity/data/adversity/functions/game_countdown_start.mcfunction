#	Description:
#		starts the countdown sequence to start the game
#	Activator:
#		if #gameState = #IDLE if #teamReadyPurple = #READY if #teamReadyAqua = #READY
#	Parents:
#		adversity:update

tellraw @a [{"text":"The match will ","color":"white"},{"text":"start","color":"green"},{"text":" in...","color":"white"}]

scoreboard players operation #gameState var = #COUNTDOWN var

scoreboard players operation #gameCountdown var = #COUNTDOWNTIME var
scoreboard players operation #gameCountdown var -= #1 var