#	Description:
#		summons and manages the in minecraft world objects of the pads
#	Activator:
#		none
#	Parents:
#		

kill @e[type=area_effect_cloud,tag=pad]

# blue resource
summon area_effect_cloud 541 34 -24 {Duration:2147483647,Tags:["pad","pad1","minorPad"]}
summon area_effect_cloud 554 31 -11 {Duration:2147483647,Tags:["pad","pad2","minorPad"]}
summon area_effect_cloud 565 45 -18 {Duration:2147483647,Tags:["pad","pad3","minorPad"]}
summon area_effect_cloud 578 44 -20 {Duration:2147483647,Tags:["pad","pad4","minorPad"]}

#red effect
summon area_effect_cloud 571 23 -13 {Duration:2147483647,Tags:["pad","pad5","minorPad"]}
summon area_effect_cloud 583 38 -14 {Duration:2147483647,Tags:["pad","pad6","minorPad"]}

# red resource
summon area_effect_cloud 541 34 24 {Duration:2147483647,Tags:["pad","pad1","minorPad"]}
summon area_effect_cloud 554 31 11 {Duration:2147483647,Tags:["pad","pad2","minorPad"]}
summon area_effect_cloud 565 45 18 {Duration:2147483647,Tags:["pad","pad3","minorPad"]}
summon area_effect_cloud 578 44 20 {Duration:2147483647,Tags:["pad","pad4","minorPad"]}

# blue effect
summon area_effect_cloud 571 23 13 {Duration:2147483647,Tags:["pad","pad5","minorPad"]}
summon area_effect_cloud 583 38 14 {Duration:2147483647,Tags:["pad","pad6","minorPad"]}

# majors
summon area_effect_cloud 594 41 0 {Duration:2147483647,Tags:["pad","pad13","majorPad"]}
summon area_effect_cloud 592 19 0 {Duration:2147483647,Tags:["pad","pad14","majorPad"]}

# objectives
summon area_effect_cloud 521 27 -26 {Duration:2147483647,Tags:["pad","pad15","objectivePad"]}
summon area_effect_cloud 521 27 26 {Duration:2147483647,Tags:["pad","pad16","objectivePad"]}
