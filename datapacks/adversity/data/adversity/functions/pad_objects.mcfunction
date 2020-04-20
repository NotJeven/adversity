#	Description:
#		summons and manages the in minecraft world objects of the pads
#	Activator:
#		none
#	Parents:
#		

kill @e[type=area_effect_cloud,tag=pad]

# blue resource
summon area_effect_cloud 541 34 -24 {Duration:2147483647,CustomName:"\"Wood\"",Tags:["pad","pad1","minorPad","itemPad","leftLane","a"]}
summon area_effect_cloud 554 31 -11 {Duration:2147483647,CustomName:"\"Gold\"",Tags:["pad","pad2","minorPad","itemPad","leftLane","a"]}
summon area_effect_cloud 565 45 -18 {Duration:2147483647,CustomName:"\"Arrow\"",Tags:["pad","pad3","minorPad","itemPad","leftLane","a"]}
summon area_effect_cloud 578 44 -20 {Duration:2147483647,CustomName:"\"TNT\"",Tags:["pad","pad4","minorPad","itemPad","leftLane","a"]}

#red effect
summon area_effect_cloud 571 23 -13 {Duration:2147483647,CustomName:"\"Resistance\"",Tags:["pad","pad5","minorPad","effectPad","leftLane","b"]}
summon area_effect_cloud 583 38 -14 {Duration:2147483647,CustomName:"\"Strength\"",Tags:["pad","pad6","minorPad","effectPad","leftLane","b"]}

# red resource
summon area_effect_cloud 541 34 24 {Duration:2147483647,CustomName:"\"Wood\"",Tags:["pad","pad7","minorPad","itemPad","rightLane","b"]}
summon area_effect_cloud 554 31 11 {Duration:2147483647,CustomName:"\"Gold\"",Tags:["pad","pad8","minorPad","itemPad","rightLane","b"]}
summon area_effect_cloud 565 45 18 {Duration:2147483647,CustomName:"\"Arrow\"",Tags:["pad","pad9","minorPad","itemPad","rightLane","b"]}
summon area_effect_cloud 578 44 20 {Duration:2147483647,CustomName:"\"TNT\"",Tags:["pad","pad10","minorPad","itemPad","rightLane","b"]}

# blue effect
summon area_effect_cloud 571 23 13 {Duration:2147483647,CustomName:"\"Resistance\"",Tags:["pad","pad11","minorPad","effectPad","rightLane","a"]}
summon area_effect_cloud 583 38 14 {Duration:2147483647,CustomName:"\"Strength\"",Tags:["pad","pad12","minorPad","effectPad","rightLane","a"]}

# majors
summon area_effect_cloud 592 41 0 {Duration:2147483647,CustomName:"\"Enchantment\"",Tags:["pad","pad13","majorPad"]}
summon area_effect_cloud 592 19 0 {Duration:2147483647,CustomName:"\"Iron\"",Tags:["pad","pad14","majorPad"]}

# objectives
summon area_effect_cloud 521 27 -26 {Duration:2147483647,CustomName:"\"Pharaoh\"",Tags:["pad","pad15","objectivePad"]}
summon area_effect_cloud 521 27 26 {Duration:2147483647,CustomName:"\"Pharaoh\"",Tags:["pad","pad16","objectivePad"]}

scoreboard players set @e[tag=pad] var 0