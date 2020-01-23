#	Description:
#		starts the game
#	Activator:
#		if #gameState = #COUNTDOWN if #gameCountdown < #0 
#	Parents:
#		adversity:update


tellraw @a {"translate":"adversity.game.start"}
#playsound <sound> <source> @a [x] [y] [z] [volume] [pitch] [minimumVolume]
scoreboard players operation #gameState var = #RUNNING var
gamemode survival @a[team=a]
gamemode survival @a[team=b]
spreadplayers 19.5 545.5 1 2 false @a[team=a]
spreadplayers -18.5 545.5 1 2 false @a[team=b]
