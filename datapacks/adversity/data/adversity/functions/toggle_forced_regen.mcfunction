#	Description:
#		Toggles forced regeneration
#	Activator:
#		none
#	Parents:
#		

execute if score #forcedRegen var = #TRUE var run scoreboard players operation #forcedRegen var = #TURNFALSE var
execute if score #forcedRegen var = #FALSE var run scoreboard players operation #forcedRegen var = #TURNTRUE var

# tasks
execute if score #forcedRegen var = #TURNTRUE var run gamerule naturalRegeneration false
execute if score #forcedRegen var = #TURNTRUE var run effect give @a minecraft:regeneration 99999 0 true

execute if score #forcedRegen var = #TURNFALSE var run gamerule naturalRegeneration true
execute if score #forcedRegen var = #TURNFALSE var run effect clear @a minecraft:regeneration

# flavour
tellraw @s ""
execute if score #forcedRegen var = #TURNFALSE var run tellraw @s [{"text":"Using ","color":"white"},{"text":"default Minecraft","color":"dark_red"},{"text":" regeneration rules.","color":"white"}]
execute if score #forcedRegen var = #TURNFALSE var run playsound minecraft:block.chest.close master @s ~ ~ ~ 2 .6 1

execute if score #forcedRegen var = #TURNTRUE var run tellraw @s [{"text":"Using ","color":"white"},{"text":"custom","color":"dark_green"},{"text":" regeneration rules.","color":"white"}]
execute if score #forcedRegen var = #TURNTRUE var run playsound minecraft:block.chest.open master @s ~ ~ ~ 2 .6 1
tellraw @s ""
# toggle
execute if score #forcedRegen var = #TURNTRUE var run scoreboard players operation #forcedRegen var = #TRUE var
execute if score #forcedRegen var = #TURNFALSE var run scoreboard players operation #forcedRegen var = #FALSE var

