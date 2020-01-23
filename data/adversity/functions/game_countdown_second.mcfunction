#	Description:
#		ticks every 1 second when the game start countdown timer is true
#	Activator:
#		if #gameCountdownSecond = #0
#	Parents:
#		adversity:game_countdown_tick

#playsound <sound> <source> <player> [x] [y] [z] [volume] [pitch] [minimumVolume]
#tellraw <player> <raw json message>
tellraw @a ">>> 1 second less than last time"