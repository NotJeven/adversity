#	Description:
#		recursive for selecting random teams
#	Activator:
#		adverisity:random_teams
#	Parents:
#		adverisity:random_teams

team join a @r[team=]
team join b @r[team=]

execute if entity @a[team=] run function adversity:random_teams_r