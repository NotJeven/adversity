#	Description:
#		activates if a pad has summoned
#	Activator:
#		@e[tag=minorPad] var = #MINORSUMMON var
# 		@e[tag=majorPad] var = #MAJORSUMMON var
#	Parents:
#		adversity:update

# pad summons
execute if score @e[tag=pad1,limit=1] var = #MINORSUMMON var at @e[tag=pad1,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=a,dx=3,dy=1,dz=3] minecraft:jungle_log 5
execute if score @e[tag=pad2,limit=1] var = #MINORSUMMON var at @e[tag=pad2,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=a,dx=3,dy=1,dz=3] minecraft:gold_block 3
execute if score @e[tag=pad3,limit=1] var = #MINORSUMMON var at @e[tag=pad3,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=a,dx=3,dy=1,dz=3] minecraft:arrow 10
execute if score @e[tag=pad4,limit=1] var = #MINORSUMMON var at @e[tag=pad4,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=a,dx=3,dy=1,dz=3] minecraft:tnt 5
execute if score @e[tag=pad4,limit=1] var = #MINORSUMMON var at @e[tag=pad4,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=a,dx=3,dy=1,dz=3] minecraft:fire_charge 1

execute if score @e[tag=pad5,limit=1] var = #MINORSUMMON var at @e[tag=pad5,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=b,dx=3,dy=1,dz=3] run effect give @a[team=b] minecraft:resistance 12 0 false
execute if score @e[tag=pad5,limit=1] var = #MINORSUMMON var at @e[tag=pad5,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=b,dx=3,dy=1,dz=3] run effect give @a[team=b] minecraft:fire_resistance 12 0 false
execute if score @e[tag=pad6,limit=1] var = #MINORSUMMON var at @e[tag=pad6,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=b,dx=3,dy=1,dz=3] run effect give @a[team=b] minecraft:strength 12 0 false

execute if score @e[tag=pad7,limit=1] var = #MINORSUMMON var at @e[tag=pad7,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=b,dx=3,dy=1,dz=3] minecraft:jungle_log 5
execute if score @e[tag=pad8,limit=1] var = #MINORSUMMON var at @e[tag=pad8,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=b,dx=3,dy=1,dz=3] minecraft:gold_block 3
execute if score @e[tag=pad9,limit=1] var = #MINORSUMMON var at @e[tag=pad9,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=b,dx=3,dy=1,dz=3] minecraft:arrow 10
execute if score @e[tag=pad10,limit=1] var = #MINORSUMMON var at @e[tag=pad10,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=b,dx=3,dy=1,dz=3] minecraft:tnt 5
execute if score @e[tag=pad10,limit=1] var = #MINORSUMMON var at @e[tag=pad10,limit=1] positioned ~-2 ~2 ~-2 run give @a[team=b,dx=3,dy=1,dz=3] minecraft:fire_charge 1

execute if score @e[tag=pad11,limit=1] var = #MINORSUMMON var at @e[tag=pad11,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=a,dx=3,dy=1,dz=3] run effect give @a[team=a] minecraft:resistance 12 0 false
execute if score @e[tag=pad11,limit=1] var = #MINORSUMMON var at @e[tag=pad11,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=a,dx=3,dy=1,dz=3] run effect give @a[team=a] minecraft:fire_resistance 12 0 false
execute if score @e[tag=pad12,limit=1] var = #MINORSUMMON var at @e[tag=pad12,limit=1] positioned ~-2 ~2 ~-2 if entity @a[team=a,dx=3,dy=1,dz=3] run effect give @a[team=a] minecraft:strength 12 0 false

execute if score @e[tag=pad13,limit=1] var = #MAJORSUMMON var at @e[tag=pad13,limit=1] positioned ~-3 ~2 ~-4 run enchant @a[dx=5,dy=1,dz=7] minecraft:flame 1
execute if score @e[tag=pad13,limit=1] var = #MAJORSUMMON var at @e[tag=pad13,limit=1] positioned ~-3 ~2 ~-4 run enchant @a[dx=5,dy=1,dz=7] minecraft:fire_aspect 1
execute if score @e[tag=pad13,limit=1] var = #MAJORSUMMON var at @e[tag=pad13,limit=1] positioned ~-3 ~2 ~-4 run enchant @a[dx=5,dy=1,dz=7] minecraft:fire_protection 2
execute if score @e[tag=pad14,limit=1] var = #MAJORSUMMON var at @e[tag=pad14,limit=1] positioned ~-3 ~2 ~-4 run give @a[dx=5,dy=1,dz=7] minecraft:iron_block 1

# pad stats
execute if score @e[tag=pad1,limit=1] var = #MINORSUMMON var at @e[tag=pad1,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=a,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad2,limit=1] var = #MINORSUMMON var at @e[tag=pad2,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=a,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad3,limit=1] var = #MINORSUMMON var at @e[tag=pad3,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=a,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad4,limit=1] var = #MINORSUMMON var at @e[tag=pad4,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=a,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad5,limit=1] var = #MINORSUMMON var at @e[tag=pad5,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=b,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad6,limit=1] var = #MINORSUMMON var at @e[tag=pad6,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=b,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad7,limit=1] var = #MINORSUMMON var at @e[tag=pad7,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=b,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad8,limit=1] var = #MINORSUMMON var at @e[tag=pad8,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=b,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad9,limit=1] var = #MINORSUMMON var at @e[tag=pad9,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=b,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad10,limit=1] var = #MINORSUMMON var at @e[tag=pad10,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=b,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad11,limit=1] var = #MINORSUMMON var at @e[tag=pad11,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=a,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad12,limit=1] var = #MINORSUMMON var at @e[tag=pad12,limit=1] positioned ~-2 ~2 ~-2 run scoreboard players add @a[team=a,dx=3,dy=1,dz=3] summonCount 1
execute if score @e[tag=pad13,limit=1] var = #MAJORSUMMON var at @e[tag=pad13,limit=1] positioned ~-3 ~2 ~-4 run scoreboard players add @a[dx=5,dy=1,dz=7] summonCount 1
execute if score @e[tag=pad14,limit=1] var = #MAJORSUMMON var at @e[tag=pad14,limit=1] positioned ~-3 ~2 ~-4 run scoreboard players add @a[dx=5,dy=1,dz=7] summonCount 1

execute if score @e[tag=pad1,limit=1] var = #MINORSUMMON var run scoreboard players add §9Wood ritualCount 1
execute if score @e[tag=pad2,limit=1] var = #MINORSUMMON var run scoreboard players add §9Gold ritualCount 1
execute if score @e[tag=pad3,limit=1] var = #MINORSUMMON var run scoreboard players add §9Arrow ritualCount 1
execute if score @e[tag=pad4,limit=1] var = #MINORSUMMON var run scoreboard players add §9TNT ritualCount 1
execute if score @e[tag=pad5,limit=1] var = #MINORSUMMON var run scoreboard players add §eResistance ritualCount 1
execute if score @e[tag=pad6,limit=1] var = #MINORSUMMON var run scoreboard players add §eStrength ritualCount 1
execute if score @e[tag=pad7,limit=1] var = #MINORSUMMON var run scoreboard players add §eWood ritualCount 1
execute if score @e[tag=pad8,limit=1] var = #MINORSUMMON var run scoreboard players add §eGold ritualCount 1
execute if score @e[tag=pad9,limit=1] var = #MINORSUMMON var run scoreboard players add §eArrow ritualCount 1
execute if score @e[tag=pad10,limit=1] var = #MINORSUMMON var run scoreboard players add §eTNT ritualCount 1
execute if score @e[tag=pad11,limit=1] var = #MINORSUMMON var run scoreboard players add §9Resistance ritualCount 1
execute if score @e[tag=pad12,limit=1] var = #MINORSUMMON var run scoreboard players add §9Strength ritualCount 1
execute if score @e[tag=pad13,limit=1] var = #MAJORSUMMON var run scoreboard players add §fEnchantment ritualCount 1
execute if score @e[tag=pad14,limit=1] var = #MAJORSUMMON var run scoreboard players add §fIron ritualCount 1

# pad summon text
execute if score @e[tag=pad1,limit=1] var = #MINORSUMMON var at @e[tag=pad1,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=a,dx=3,dy=1,dz=3] [{"text":"Received ","color":"gray"},{"text":"5 logs","color":"white"},{"text":".","color":"gray"}]
execute if score @e[tag=pad2,limit=1] var = #MINORSUMMON var at @e[tag=pad2,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=a,dx=3,dy=1,dz=3] [{"text":"Received ","color":"gray"},{"text":"3 gold blocks","color":"white"},{"text":".","color":"gray"}]
execute if score @e[tag=pad3,limit=1] var = #MINORSUMMON var at @e[tag=pad3,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=a,dx=3,dy=1,dz=3] [{"text":"Received ","color":"gray"},{"text":"10 arrows","color":"white"},{"text":".","color":"gray"}]
execute if score @e[tag=pad4,limit=1] var = #MINORSUMMON var at @e[tag=pad4,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=a,dx=3,dy=1,dz=3] [{"text":"Received ","color":"gray"},{"text":"5 TNT","color":"white"},{"text":" and ","color":"gray"},{"text":"1 fire charge","color":"white"},{"text":".","color":"gray"}]

execute if score @e[tag=pad5,limit=1] var = #MINORSUMMON var at @e[tag=pad5,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=b] [{"text":"Gained ","color":"gray"},{"text":"resistance","color":"white"},{"text":" and ","color":"gray"},{"text":"fire resistance","color":"white"},{"text":".","color":"gray"}]
execute if score @e[tag=pad6,limit=1] var = #MINORSUMMON var at @e[tag=pad6,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=b] [{"text":"Gained ","color":"gray"},{"text":"strength","color":"white"},{"text":".","color":"gray"}]

execute if score @e[tag=pad7,limit=1] var = #MINORSUMMON var at @e[tag=pad7,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=b,dx=3,dy=1,dz=3] [{"text":"Received ","color":"gray"},{"text":"5 logs","color":"white"},{"text":".","color":"gray"}]
execute if score @e[tag=pad8,limit=1] var = #MINORSUMMON var at @e[tag=pad8,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=b,dx=3,dy=1,dz=3] [{"text":"Received ","color":"gray"},{"text":"3 gold blocks","color":"white"},{"text":".","color":"gray"}]
execute if score @e[tag=pad9,limit=1] var = #MINORSUMMON var at @e[tag=pad9,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=b,dx=3,dy=1,dz=3] [{"text":"Received ","color":"gray"},{"text":"10 arrows","color":"white"},{"text":".","color":"gray"}]
execute if score @e[tag=pad10,limit=1] var = #MINORSUMMON var at @e[tag=pad10,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=b,dx=3,dy=1,dz=3] [{"text":"Received ","color":"gray"},{"text":"5 TNT","color":"white"},{"text":" and ","color":"gray"},{"text":"1 fire charge","color":"white"},{"text":".","color":"gray"}]

execute if score @e[tag=pad11,limit=1] var = #MINORSUMMON var at @e[tag=pad11,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=a,dx=3,dy=1,dz=3] [{"text":"Gained ","color":"gray"},{"text":"resistance","color":"white"},{"text":" and ","color":"gray"},{"text":"fire resistance","color":"white"},{"text":".","color":"gray"}]
execute if score @e[tag=pad12,limit=1] var = #MINORSUMMON var at @e[tag=pad12,limit=1] positioned ~-2 ~2 ~-2 run tellraw @a[team=a,dx=3,dy=1,dz=3] [{"text":"Gained ","color":"gray"},{"text":"strength","color":"white"},{"text":".","color":"gray"}]

execute if score @e[tag=pad13,limit=1] var = #MAJORSUMMON var at @e[tag=pad13,limit=1] positioned ~-3 ~2 ~-4 run tellraw @a[dx=5,dy=1,dz=7] [{"text":"Offered a fire ","color":"gray"},{"text":"enchantment","color":"white"},{"text":" on held item.","color":"gray"}]
execute if score @e[tag=pad14,limit=1] var = #MAJORSUMMON var at @e[tag=pad14,limit=1] positioned ~-3 ~2 ~-4 run tellraw @a[dx=5,dy=1,dz=7] [{"text":"Received ","color":"gray"},{"text":"1 iron block","color":"white"},{"text":".","color":"gray"}]
