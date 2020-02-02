#	Description:
#		sets a playing into an in bounds (play area) state
#	Activator:
#		@a[tag=inBounds,tag=toggleBounds]
#	Parents:
#		adversity:update

gamemode survival @s[gamemode=adventure]
title @s actionbar {"text":"☃ inside building area ☃"}
tag @s remove toggleBounds