#	Description:
#		ticks every 1 second when the game start countdown timer is true
#	Activator:
#		if #gameCountdownSecond = #0
#	Parents:
#		adversity:game_countdown_tick

playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.9 1
scoreboard players operation #gameCountSecondDisplay var = #gameCountdown var
scoreboard players operation #gameCountSecondDisplay var /= #1SECOND var
tellraw @a [{"text":">>> ","color":"white"},{"score":{"name":"#gameCountSecondDisplay","objective":"var"},"color":"green"}]