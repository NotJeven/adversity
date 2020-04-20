#	Description:
#		Sets all of the variables for a new game
#	Activator:
#		None
#	Parents:
#		adversity:init
#		adversity:game_reset

scoreboard players operation #teamReadyA var = #NOTREADY var 
scoreboard players operation #teamReadyB var = #NOTREADY var
scoreboard players operation #teamReadySpectator var = #READY var

scoreboard players operation #gameState var = #IDLE var

scoreboard players operation #gameCountdown var = #COUNTDOWNTIME var
scoreboard players operation #resetCountdown var = #RESETTIME var

scoreboard players reset * sidebarDisplay
scoreboard players reset * selectionID
team leave *

scoreboard players set @e[tag=pad] var 0

team join ready §nSpectator
team join notready §nBlue
team join notready §nYellow
# these are here since sidebarDisplay is cleared
scoreboard players set §nBlue sidebarDisplay 5
scoreboard players set §nYellow sidebarDisplay 3
scoreboard players set §nSpectator sidebarDisplay 1

scoreboard objectives setdisplay sidebar sidebarDisplay

# hide bossbar
bossbar set adversity:left visible false
bossbar set adversity:right visible false

# stats
scoreboard players operation #currentStat var = #0 var
scoreboard players operation #statTime var = #STATLENGTH var

scoreboard players reset * killCount
scoreboard players reset * deathCount
scoreboard players reset * shotCount
scoreboard players reset * damageCount
scoreboard players reset * absorbedCount
scoreboard players reset * ritualCount
scoreboard players reset * summonCount

#§e is yellow; §9 is blue
scoreboard players set §9Wood ritualCount 0
scoreboard players set §9Gold ritualCount 0
scoreboard players set §9Arrow ritualCount 0
scoreboard players set §9TNT ritualCount 0
scoreboard players set §9Strength ritualCount 0
scoreboard players set §9Resistance ritualCount 0
scoreboard players set §eWood ritualCount 0
scoreboard players set §eGold ritualCount 0
scoreboard players set §eArrow ritualCount 0
scoreboard players set §eTNT ritualCount 0
scoreboard players set §eStrength ritualCount 0
scoreboard players set §eResistance ritualCount 0
scoreboard players set §fEnchantment ritualCount 0
scoreboard players set §fIron ritualCount 0


# match id
execute store result score #matchID var run time query gametime