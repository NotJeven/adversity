#	Description:
#		toggle auto reset
#	Activator:
#		self
#	Parents:
#		

execute if score #autoReset var = #TRUE var run scoreboard players operation #autoReset var = #TURNFALSE var
execute if score #autoReset var = #FALSE var run scoreboard players operation #autoReset var = #TURNTRUE var

# tasks
execute if score #autoReset var = #TURNFALSE var run scoreboard players operation #resetCountdown var = #RESETTIME var
execute if score #autoReset var = #TURNTRUE var run scoreboard players operation #resetCountdown var = #RESETTIME var

# flavour
execute if score #autoReset var = #TURNFALSE var run tellraw @a [{"text":"Automatic reset is ","color":"white"},{"text":"disabled","color":"dark_red"},{"text":".","color":"white"}]
execute if score #autoReset var = #TURNFALSE var run title @a subtitle [{"text":"Automatic reset is ","color":"white"},{"text":"disabled","color":"dark_red"},{"text":".","color":"white"}]
execute if score #autoReset var = #TURNFALSE var run title @a title ""
execute if score #autoReset var = #TURNFALSE var run playsound minecraft:entity.item.break master @a ~ ~ ~ 1 0.4 1

execute if score #autoReset var = #TURNTRUE var run tellraw @a [{"text":"Automatic reset is ","color":"white"},{"text":"enabled","color":"dark_green"},{"text":".","color":"white"}]
execute if score #autoReset var = #TURNTRUE var run title @a subtitle [{"text":"Automatic reset is ","color":"white"},{"text":"enabled","color":"dark_green"},{"text":".","color":"white"}]
execute if score #autoReset var = #TURNTRUE var run title @a title ""
execute if score #autoReset var = #TURNTRUE var run playsound minecraft:block.anvil.use master @a ~ ~ ~ 0.4 0.7 1

# toggle
execute if score #autoReset var = #TURNTRUE var run scoreboard players operation #autoReset var = #TRUE var
execute if score #autoReset var = #TURNFALSE var run scoreboard players operation #autoReset var = #FALSE var

# menu
tag @a add menuRequest
