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

scoreboard players operation #gameCountdown var = #5SECONDS var
scoreboard players operation #resetCountdown var = #15SECONDS var

scoreboard players reset * deathCount
scoreboard players reset * sidebarDisplay

team join ready §nSpectator
team join notready §nLeft
team join notready §nRight
# these are here since sidebarDisplay is cleared
scoreboard players set §nLeft sidebarDisplay 5
scoreboard players set §nRight sidebarDisplay 3
scoreboard players set §nSpectator sidebarDisplay 1
