#	Description:
#		sets the *next* stats to sidebar
#	Activator:
#		none
#	Parents:
#		adversity:update

execute if score #currentStat var matches 0 run scoreboard objectives setdisplay sidebar killCount
execute if score #currentStat var matches 1 run scoreboard objectives setdisplay sidebar deathCount
execute if score #currentStat var matches 2 run scoreboard objectives setdisplay sidebar shotCount
execute if score #currentStat var matches 3 run scoreboard objectives setdisplay sidebar damageCount
execute if score #currentStat var matches 4 run scoreboard objectives setdisplay sidebar absorbedCount
execute if score #currentStat var matches 5 run scoreboard objectives setdisplay sidebar ritualCount
execute if score #currentStat var matches 6 run scoreboard objectives setdisplay sidebar summonCount

scoreboard players operation #statTime var = #0 var
execute if score #currentStat var matches 6 run scoreboard players set #currentStat var -1
execute unless score #currentStat var matches 6 run scoreboard players add #currentStat var 1