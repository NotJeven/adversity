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

# move players to boxes
gamemode survival @a[team=a]
gamemode survival @a[team=b]
effect give @a[team=a] minecraft:resistance 5 100 true
effect give @a[team=b] minecraft:resistance 5 100 true
tp @a[team=a] 506 50 -26 -90 0
tp @a[team=b] 506 50 26 -90 0