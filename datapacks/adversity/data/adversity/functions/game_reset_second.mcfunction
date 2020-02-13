#	Description:
#		ticks every 1 second when the reset countdown timer is true
#	Activator:
#		if #gameResetSecond = #0
#	Parents:
#		adversity:game_reset_tick

# do some math to figure out the time left in seconds
scoreboard players operation #reset5Second var = #resetCountdown var
scoreboard players operation #resetSecondTell var = #resetCountdown var
scoreboard players operation #reset5Second var %= #5SECONDS var
scoreboard players operation #resetSecondTell var /= #1SECOND var

# tell on every 5 second interval
execute if score #reset5Second var = #0 var unless score #resetSecondTell var = #0 var run tellraw @a [{"text":">>> ","color":"white"},{"score":{"name":"#resetSecondTell","objective":"var"},"color":"green"}]

# tell for seconds left 1,2,3,4
execute if score #resetSecondTell var < #5 var unless score #resetSecondTell var = #0 var run tellraw @a [{"text":">>> ","color":"white"},{"score":{"name":"#resetSecondTell","objective":"var"},"color":"green"}]

execute unless score #resetSecondTell var = #0 var if score #resetSecondTell var < #5 var run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.9 1
execute unless score #resetSecondTell var = #0 var if score #reset5Second var = #0 var run playsound minecraft:block.note_block.hat master @a ~ ~ ~ 1 0.9 1
