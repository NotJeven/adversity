#	Description:
#		Initializes all of the variables by setting them to 0
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
scoreboard players operation #resetCountdown var = #15SECONDS var

scoreboard players reset * deathCount
scoreboard players reset * sidebarDisplay

scoreboard players set @e[tag=pad] var 0

team join ready §nSpectator
team join notready §nBlue
team join notready §nYellow
# these are here since sidebarDisplay is cleared
scoreboard players set §nBlue sidebarDisplay 5
scoreboard players set §nYellow sidebarDisplay 3
scoreboard players set §nSpectator sidebarDisplay 1

# hide bossbar
bossbar set adversity:left visible false
bossbar set adversity:right visible false