#	Description:
#		toggles the visibility of the team options menu
#	Activator:
#		self
#	Parents:
#		

execute if score #menuHidden var = #TRUE var run scoreboard players operation #menuHidden var = #TURNFALSE var
execute if score #menuHidden var = #FALSE var run scoreboard players operation #menuHidden var = #TURNTRUE var

# tasks
execute if score #menuHidden var = #TURNTRUE var run scoreboard players reset * triggerTeamJoin
execute if score #menuHidden var = #TURNTRUE var run scoreboard players reset * triggerTeamReady

execute if score #menuHidden var = #TURNFALSE var run scoreboard players enable @a triggerTeamReady
execute if score #menuHidden var = #TURNFALSE var run scoreboard players enable @a triggerTeamReady

# flavour
execute if score #menuHidden var = #TURNTRUE var run tellraw @a [{"text":"Menus have been ","color":"white"},{"text":"disabled","color":"dark_red"},{"text":" by an admin.","color":"white"}]
execute if score #menuHidden var = #TURNTRUE var run title @a subtitle [{"text":"Menus have been ","color":"white"},{"text":"disabled","color":"dark_red"},{"text":" by an admin.","color":"white"}]
execute if score #menuHidden var = #TURNTRUE var run title @a title ""
execute if score #menuHidden var = #TURNTRUE var run playsound minecraft:block.chest.close master @a ~ ~ ~ 2 .6 1

execute if score #menuHidden var = #TURNFALSE var run tellraw @a [{"text":"Menus have been ","color":"white"},{"text":"enabled","color":"dark_green"},{"text":" by an admin.","color":"white"}]
execute if score #menuHidden var = #TURNFALSE var run title @a subtitle [{"text":"Menus have been ","color":"white"},{"text":"enabled","color":"dark_green"},{"text":" by an admin.","color":"white"}]
execute if score #menuHidden var = #TURNFALSE var run title @a title ""
execute if score #menuHidden var = #TURNFALSE var run playsound minecraft:block.chest.open master @a ~ ~ ~ 2 .6 1

# toggle
execute if score #menuHidden var = #TURNTRUE var run scoreboard players operation #menuHidden var = #TRUE var
execute if score #menuHidden var = #TURNFALSE var run scoreboard players operation #menuHidden var = #FALSE var

# menu
execute if score #menuHidden var = #FALSE var run tag @a add menuRequest
execute if score #menuHidden var = #TRUE var run tag @a[tag=menuAdmin] add menuRequest

