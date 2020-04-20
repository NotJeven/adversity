#	Description:
#		Deals a lobby menu
#	Activator:
#		@a[tag=menuRequest]
#	Parents:
#		adversity:update
#		adversity:team_join_purple, adversity:team_join_aqua, adversity:team_leave, adversity:team_join_spectator,
#		adversity:team_ready_aqua, adversity:team_ready_purple
#		adversity:initialize_player

# flavour
tellraw @a[tag=menuRequest] {"text":""}
tellraw @a[tag=menuRequest,team=] [{"text":"[Team Options] "},{"text":"Left/Blue","color":"blue","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamJoin set 1"},"hoverEvent":{"action":"show_text","value":"Join the blue banners in the left lane!"}},{"text":" | "},{"text":"Yellow/Right","color":"yellow","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamJoin set 2"},"hoverEvent":{"action":"show_text","value":"Join the yellow banners in the right lane!"}},{"text":" | "},{"text":"Spectate","color":"gray","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamJoin set 3"},"hoverEvent":{"action":"show_text","value":"Hide from the game."}}]
tellraw @a[tag=menuRequest,team=!] [{"text":"[Team Options] "},{"text":"Toggle Ready","color":"green","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamReady set 1"},"hoverEvent":{"action":"show_text","value":"Toggle if team is ready!"}},{"text":" | "},{"text":"Leave Team","color":"gray","underlined":"true","clickEvent":{"action":"run_command","value":"/trigger triggerTeamJoin set -1"},"hoverEvent":{"action":"show_text","value":"Abandon your team!"}}]
tellraw @a[tag=menuRequest] {"text":""}
playsound minecraft:entity.evoker.prepare_summon master @a[x=495,y=50,z=0,distance=0..1,tag=menuRequest,tag=!menuTimeout] ~ ~ ~ 1 2 1
playsound minecraft:ui.button.click master @a[x=495,y=50,z=0,distance=0..1,tag=menuRequest,tag=!menuTimeout] ~ ~ ~ 1 0.8 1

# enable triggers
scoreboard players enable @a[tag=menuRequest] triggerTeamJoin
scoreboard players enable @a[tag=menuRequest,team=!] triggerTeamReady

function adversity:menu_admin
# reset
tag @a[tag=menuRequest] remove menuRequest