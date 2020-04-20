#	Description:
#		starts the game
#	Activator:
#		if #gameState = #COUNTDOWN if #gameCountdown < #0 
#	Parents:
#		adversity:game_countdown_tick

tellraw @a [{"text":">>>"},{"text":" Go","color":"green"},{"text":"!","color":"white"}]
tellraw @a ""
playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0 1
playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0 1
playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0 1
playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0 1
playsound minecraft:block.bell.use master @a ~ ~ ~ 1 0 1

scoreboard players operation #gameState var = #RUNNING var

# player things
gamemode survival @a[team=a]
gamemode survival @a[team=b]
spawnpoint @a[team=a] 506 47 -26
spawnpoint @a[team=b] 506 47 26

# objective things
kill @e[type=skeleton]
scoreboard objectives setdisplay sidebar
execute at @e[tag=pad15] run summon skeleton ~ ~ ~ {Attributes:[{Base:255.0d,Name:"generic.maxHealth"},{Base:1.0d,Name:"generic.knockbackResistance"}],Health:255.0f,PersistenceRequired:true,Tags:["leftObjective"],Invulnerable:1b,Silent:1b,Glowing:0b,NoGravity:1b,CanPickUpLoot:1b,HandItems:[{Count:1b,id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:2},{id:"minecraft:flame",lvl:2},{id:"minecraft:power",lvl:2}]}}]}
execute at @e[tag=pad16] run summon skeleton ~ ~ ~ {Attributes:[{Base:255.0d,Name:"generic.maxHealth"},{Base:1.0d,Name:"generic.knockbackResistance"}],Health:255.0f,PersistenceRequired:true,Tags:["rightObjective"],Invulnerable:1b,Silent:1b,Glowing:0b,NoGravity:1b,CanPickUpLoot:1b,HandItems:[{Count:1b,id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:punch",lvl:2},{id:"minecraft:flame",lvl:2},{id:"minecraft:power",lvl:2}]}}]}
team join a @e[tag=leftObjective]
team join b @e[tag=rightObjective]

kill @e[tag=tooltip]

# bossbars visible
bossbar set adversity:left players @a
bossbar set adversity:right players @a

bossbar set adversity:left visible true
bossbar set adversity:right visible true

# menu lockdown
scoreboard players reset @a triggerTeamJoin
scoreboard players reset @a triggerTeamReady

# open the boxes
fill 504 49 -24 508 52 -28 minecraft:air replace minecraft:barrier
fill 504 49 24 508 52 28 minecraft:air replace minecraft:barrier

# set stats
scoreboard players set @a killCount 0
scoreboard players set @a deathCount 0
scoreboard players set @a shotCount 0
scoreboard players set @a damageCount 0
scoreboard players set @a absorbedCount 0
scoreboard players set @a summonCount 0