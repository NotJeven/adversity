#	Description:
#		starts the game
#	Activator:
#		if #gameState = #COUNTDOWN if #gameCountdown < #0 
#	Parents:
#		adversity:update


tellraw @a {"translate":"adversity.game.start"}
#playsound <sound> <source> @a [x] [y] [z] [volume] [pitch] [minimumVolume]
scoreboard players operation #gameState var = #RUNNING var
gamemode survival @a[team=a]
gamemode survival @a[team=b]
#spreadplayers 504 -26 1 1 true @a[team=a]
#spreadplayers 504 26 1 1 true @a[team=b]
tp @a[team=a] 504 37 -26 -90 0
tp @a[team=b] 504 37 26 -90 0

spawnpoint @a[team=a] 504 37 -26
spawnpoint @a[team=b] 504 37 26
execute as @a[team=a] at @s run tp @a[team=a] ~ ~ ~ -90 0
execute as @a[team=b] at @s run tp @a[team=b] ~ ~ ~ -90 0
kill @e[type=blaze]
scoreboard objectives setdisplay sidebar
execute at @e[tag=pad15] run summon blaze ~ ~ ~ {Attributes:[{Base:300.0d,Name:"generic.maxHealth"}],Health:300.0f,PersistenceRequired:true,Tags:["leftObjective"],Invulnerable:1b,Silent:1b,Glowing:0b}
execute at @e[tag=pad16] run summon blaze ~ ~ ~ {Attributes:[{Base:300.0d,Name:"generic.maxHealth"}],Health:300.0f,PersistenceRequired:true,Tags:["rightObjective"],Invulnerable:1b,Silent:1b,Glowing:0b}
team join a @e[tag=leftObjective]
team join b @e[tag=rightObjective]
bossbar set adversity:left players @a
bossbar set adversity:right players @a