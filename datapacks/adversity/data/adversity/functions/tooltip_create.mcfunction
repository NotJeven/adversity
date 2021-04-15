#	Description:
#		Kills then creates the tooltip area effect clouds
#	Activator:
#		none
#	Parents:
#		

kill @e[tag=tooltip]

#spawns
summon minecraft:area_effect_cloud 506 50 -26 {CustomNameVisible:1,CustomName:"\"§nBlue Spawn\"",Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 506 49.5 -26 {CustomNameVisible:1,CustomName:"\"The Blue team will start the match here.\"",Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 506 49.25 -26 {CustomNameVisible:1,CustomName:"\"After Death they will respawn here with\"",Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 506 49 -26 {CustomNameVisible:1,CustomName:"\"12 health (6 hearts) of absorption.\"",Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 506 50 26 {CustomNameVisible:1,CustomName:"\"§nYellow Spawn\"",Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 506 49.5 26 {CustomNameVisible:1,CustomName:"\"The Yellow team will start the match here.\"",Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 506 49.25 26 {CustomNameVisible:1,CustomName:"\"After Death they will respawn here with\"",Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 506 49 26 {CustomNameVisible:1,CustomName:"\"12 health (6 hearts) of absorption.\"",Duration:2147483647,Tags:["tooltip"]}

#temples
summon minecraft:area_effect_cloud 521 40 -26 {CustomName:"\"§nBlue Temple\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 39.5 -26 {CustomName:"\"The Ritual for summoning the Blue Pharaoh\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 39.25 -26 {CustomName:"\"is on the lower level of the Blue temple.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 39 -26 {CustomName:"\"The objective for the Yellow team.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 521 40 26 {CustomName:"\"§nYellow Temple\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 39.5 26 {CustomName:"\"The Ritual for summoning the Yellow Pharaoh\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 39.25 26 {CustomName:"\"is on the lower level of the Yellow temple.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 39 26 {CustomName:"\"The objective for the Blue team.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#courtyard
summon minecraft:area_effect_cloud 536 45 -25 {CustomName:"\"§nBlue Courtyard\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 536 44.5 -25 {CustomName:"\"A forward base of operations\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 536 44.25 -25 {CustomName:"\"for establishing supplies,\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 536 44 -25 {CustomName:"\"tools, and equipment.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 536 45 25 {CustomName:"\"§nYellow Courtyard\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 536 44.5 25 {CustomName:"\"A forward base of operations\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 536 44.25 25 {CustomName:"\"for establishing supplies,\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 536 44 25 {CustomName:"\"tools, and equipment.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#top
summon minecraft:area_effect_cloud 572 55 -15 {CustomName:"\"§nBlue Top Lane\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 572 54.5 -15 {CustomName:"\"A great vantage point for bow\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 572 54.25 -15 {CustomName:"\"players to control the map. Apply\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 572 54 -15 {CustomName:"\"supporting fire on the major rituals.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 572 55 15 {CustomName:"\"§nYellow Top Lane\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 572 54.5 15 {CustomName:"\"A great vantage point for bow\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 572 54.25 15 {CustomName:"\"players to control the map. Apply\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 572 54 15 {CustomName:"\"supporting fire on the major rituals.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#objective
summon minecraft:area_effect_cloud 521 32 -26 {CustomName:"\"§nBlue Pharaoh Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 31.5 -26 {CustomName:"\"A 3 second ritual. Summons a 255 health skeleton with\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 31.25 -26 {CustomName:"\"a power 1, punch 1, flame 1 bow. It will only attack enemy\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 31 -26 {CustomName:"\"players and can be dismissed by reactivating the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 30.75 -26 {CustomName:"\"This ritual does not have a pressure plate when the match starts.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 30.5 -26 {CustomName:"\"The first team to kill the enemy Pharaoh wins.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 521 32 26 {CustomName:"\"§nYellow Pharaoh Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 31.5 26 {CustomName:"\"A 3 second ritual. Summons a 255 health skeleton with\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 31.25 26 {CustomName:"\"a power 1, punch 1, flame 1 bow. It will only attack enemy\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 31 26 {CustomName:"\"players and can be dismissed by reactivating the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 30.75 26 {CustomName:"\"This ritual does not have a pressure plate when the match starts.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 521 30.5 26 {CustomName:"\"The first team to kill the enemy Pharaoh wins.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#bottom
summon minecraft:area_effect_cloud 583 33 -9 {CustomName:"\"§nBlue Bottom Lane\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 32.5 -9 {CustomName:"\"Control of this lane is vital for\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 32.25 -9 {CustomName:"\"contesting the iron ritual. A strong\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 32 -9 {CustomName:"\"staging area for aggressive pushes.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 583 33 9 {CustomName:"\"§nYellow Bottom Lane\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 32.5 9 {CustomName:"\"Control of this lane is vital for\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 32.25 9 {CustomName:"\"contesting the iron ritual. A strong\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 32 9 {CustomName:"\"staging area for aggressive pushes.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#back
summon minecraft:area_effect_cloud 567 41 -27 {CustomName:"\"§nBlue Side Lane\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 567 40.5 -27 {CustomName:"\"A covered, safe, and direct passage\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 567 40.25 -27 {CustomName:"\"for traversing between the temple\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 567 40 -27 {CustomName:"\"and the enchantment ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 567 41 27 {CustomName:"\"§nYellow Side Lane\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 567 40.5 27 {CustomName:"\"A covered, safe, and direct passage\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 567 40.25 27 {CustomName:"\"for traversing between the temple\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 567 40 27 {CustomName:"\"and the enchantment ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#wood pad
summon minecraft:area_effect_cloud 541 39 -24 {CustomName:"\"§nBlue Wood Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 541 38.5 -24 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 541 38.25 -24 {CustomName:"\"Gives 5 logs to each Blue player on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 541 38 -24 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 541 39 24 {CustomName:"\"§nYellow Wood Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 541 38.5 24 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 541 38.25 24 {CustomName:"\"Gives 5 logs to each Yellow player on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 541 38 24 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#gold pad
summon minecraft:area_effect_cloud 554 36 -11 {CustomName:"\"§nBlue Gold Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 554 35.5 -11 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 554 35.25 -11 {CustomName:"\"Gives 3 gold blocks to each Blue player on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 554 35 -11 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 554 36 11 {CustomName:"\"§nYellow Gold Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 554 35.5 11 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 554 35.25 11 {CustomName:"\"Gives 3 gold blocks to each Yellow player on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 554 35 11 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#arrow pad
summon minecraft:area_effect_cloud 565 50 -18 {CustomName:"\"§nBlue Arrow Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 565 49.5 -18 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 565 49.25 -18 {CustomName:"\"Gives 10 arrows to each Blue player on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 565 49 -18 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 565 50 18 {CustomName:"\"§nYellow Arrow Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 565 49.5 18 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 565 49.25 18 {CustomName:"\"Gives 10 arrows to each Yellow player on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 565 49 18 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#tnt pad
summon minecraft:area_effect_cloud 578 49 -20 {CustomName:"\"§nBlue TNT Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 578 48.5 -20 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 578 48.25 -20 {CustomName:"\"Gives 5 TNT and 1 fire charge to each Blue player on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 578 48 -20 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 578 49 20 {CustomName:"\"§nYellow TNT Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 578 48.5 20 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 578 48.25 20 {CustomName:"\"Gives 5 TNT and 1 fire charge to each Yellow player on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 578 48 20 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#top effect
summon minecraft:area_effect_cloud 583 43 -14 {CustomName:"\"§nYellow Strength Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 42.5 -14 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 42.25 -14 {CustomName:"\"Applies strength 1 for 12 seconds to all Yellow players.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 42 -14 {CustomName:"\"It will only summon when at least 1 team member is on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 41.75 -14 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 583 43 14 {CustomName:"\"§nBlue Strength Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 42.5 14 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 42.25 14 {CustomName:"\"Applies strength 1 for 12 seconds to all Blue players.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 42 14 {CustomName:"\"It will only summon when at least 1 team member is on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 583 41.75 14 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

#bottom effect
summon minecraft:area_effect_cloud 571 28 -13 {CustomName:"\"§nYellow Resistance Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 571 27.5 -13 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 571 27.25 -13 {CustomName:"\"Applies resistance 1 and fire resistance 1 for 12 seconds to all Yellow players.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 571 27 -13 {CustomName:"\"It will only summon when at least 1 team member is on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 571 26.75 -13 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 571 28 13 {CustomName:"\"Blue Resistance Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 571 27.5 13 {CustomName:"\"A 6 second summon with a 6 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 571 27.25 13 {CustomName:"\"Applies resistance 1 and fire resistance 1 for 12 seconds to all Blue players.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 571 27 13 {CustomName:"\"It will only summon when at least 1 team member is on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 571 26.75 13 {CustomName:"\"Activate with the pressure plate in the center.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}


#major pads
summon minecraft:area_effect_cloud 592 46 0 {CustomName:"\"§nEnchantment Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 592 45.5 0 {CustomName:"\"A 21 second summon with a 21 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 592 45.25 0 {CustomName:"\"Applies fire aspect 1, flame 1, or fire protection 2\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 592 45 0 {CustomName:"\"on the held item of all players on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 592 44.75 0 {CustomName:"\"This ritual is does not have a pressure plate when the match starts.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 592 24 0 {CustomName:"\"§nIron Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 592 23.5 0 {CustomName:"\"A 21 second summon with a 21 second cooldown.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 592 23.25 0 {CustomName:"\"Summons 1 iron block for every player on the ritual.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 592 23 0 {CustomName:"\"This ritual is does not have a pressure plate when the match starts.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}


#no build
summon minecraft:area_effect_cloud 528 48 0 {CustomName:"\"§nOutside Building Area\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 528 47.5 0 {CustomName:"\"Players are not able to build over the large void\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 528 47.25 0 {CustomName:"\"area between sides or above the map height limit.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 528 47 0 {CustomName:"\"z=-5 to z=5 or y=60+\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}

summon minecraft:area_effect_cloud 566 40 0 {CustomName:"\"§nOutside Building Area\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 566 39.5 0 {CustomName:"\"Players are not able to build over the large void\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 566 39.25 0 {CustomName:"\"area between sides or above the map height limit.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 566 39 0 {CustomName:"\"z=-5 to z=5 or y=60+\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}


#menu ritual
summon minecraft:area_effect_cloud 495 53 0 {CustomName:"\"§nChat Menu Ritual\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 495 52.5 0 {CustomName:"\"Rituals are activated by triggering their pressure plate.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 495 52.25 0 {CustomName:"\"The menu ritual gives a menu to players in the lobby.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}
summon minecraft:area_effect_cloud 495 52 0 {CustomName:"\"A ritual applies to players on the ritual's bedrock.\"",CustomNameVisible:1,Duration:2147483647,Tags:["tooltip"]}