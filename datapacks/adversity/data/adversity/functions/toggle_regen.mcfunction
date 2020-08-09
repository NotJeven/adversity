#	Description:
#		toggles the custom regeneration and natural regeneration
#	Activator:
#		self
#	Parents:
#		

execute if score #customRegen var = #FALSE var run scoreboard players operation #customRegen var = #TURNTRUE var
execute if score #customRegen var = #TRUE var run scoreboard players operation #customRegen var = #TURNFALSE var

# flavour
execute if score #customRegen var = #TURNTRUE var run title @a[tag=menuAdmin] subtitle {"text":"Custom regeneration has been ","color":"white","extra":[{"text":"enabled","color":"green","extra":[{"text":".","color":"white"}]}]}
execute if score #customRegen var = #TURNFALSE var run title @a[tag=menuAdmin] subtitle {"text":"Custom regeneration has been ","color":"white","extra":[{"text":"disabled","color":"red","extra":[{"text":".","color":"white"}]}]}
title @a[tag=menuAdmin] title ""
execute if score #customRegen var = #TURNTRUE var run tellraw @a[tag=menuAdmin] {"text":"Custom regeneration has been ","color":"white","extra":[{"text":"enabled","color":"green","extra":[{"text":".","color":"white"}]}]}
execute if score #customRegen var = #TURNFALSE var run tellraw @a[tag=menuAdmin] {"text":"Custom regeneration has been ","color":"white","extra":[{"text":"disabled","color":"red","extra":[{"text":".","color":"white"}]}]}
execute if score #customRegen var = #TURNTRUE var at @s run playsound minecraft:entity.generic.drink master @a[tag=menuAdmin] ~ ~ ~ 1 1 1
execute if score #customRegen var = #TURNFALSE var at @s run playsound minecraft:entity.generic.drink master @a[tag=menuAdmin] ~ ~ ~ 1 0 1

# tasks
execute if score #customRegen var = #TURNTRUE var run effect give @a minecraft:regeneration 999999 0 true
execute if score #customRegen var = #TURNTRUE var run gamerule naturalRegeneration false
execute if score #customRegen var = #TURNFALSE var run effect clear @a minecraft:regeneration
execute if score #customRegen var = #TURNFALSE var run gamerule naturalRegeneration true

# toggle
execute if score #customRegen var = #TURNTRUE var run scoreboard players operation #customRegen var = #TRUE var
execute if score #customRegen var = #TURNFALSE var run scoreboard players operation #customRegen var = #FALSE var

# menu
tag @a[tag=menuAdmin] add menuRequest

