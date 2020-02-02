#	Description:
#		times for an auto reset
#	Activator:
#		if #gameState = #END
#	Parents:
#		adversity:update

tellraw @a {"translate":"adversity.game.reset.auto"}

scoreboard players operation #resetCountdown var = #30SECONDS var
scoreboard players operation #resetCountdown var -= #1 var