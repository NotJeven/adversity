#	Description:
#		deals an admin menu
#	Activator:
#		@a[tag=menuRequest,tag=menuAdmin]
#	Parents:
#		wildflower:menu
#		wildflower:game_end
#		wildflower:update

# some padding if menus are hidden and this is not handled by the standard menu
execute if score #menuHidden var = #TRUE var run tellraw @a[tag=menuRequest,tag=menuAdmin] ""

tellraw @a[tag=menuRequest,tag=menuAdmin] [{"text":"[Admin Options] ","color":"white"},{"text":"Remove Admin","color":"red","underlined":"true","clickEvent":{"action":"run_command","value":"function adversity:remove_admin"},"hoverEvent":{"action":"show_text","value":"Remove your admin status."}},{"text":" | ","color":"white"},{"text":"Captains Selection","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/function adversity:captain_selection"},"hoverEvent":{"action":"show_text","value":"Select random team captains and start team selection. Spectators will be ignored"}},{"text":" | ","color":"white"},{"text":"Random Teams","color":"dark_aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/function adversity:random_teams"},"hoverEvent":{"action":"show_text","value":"Select random teams. Spectators will be ignored."}},{"text":" | ","color":"white"},{"text":"Reset Teams","color":"gray","underlined":"true","clickEvent":{"action":"run_command","value":"/function adversity:reset_teams"},"hoverEvent":{"action":"show_text","value":"Remove players from their teams. Spectators will be ignored."}},{"text":" | ","color":"white"},{"text":"Force Ready","color":"green","underlined":"true","clickEvent":{"action":"run_command","value":"/function adversity:force_ready"},"hoverEvent":{"action":"show_text","value":"Set all teams as ready. The game will then start."}},{"text":" | ","color":"white"},{"text":"Reset Map","color":"light_purple","underlined":"true","clickEvent":{"action":"run_command","value":"/function adversity:game_reset"},"hoverEvent":{"action":"show_text","value":"Reset the map to play again."}},{"text":" | ","color":"white"},{"text":"Toggle Reset","color":"dark_purple","underlined":"true","clickEvent":{"action":"run_command","value":"/function adversity:toggle_reset"},"hoverEvent":{"action":"show_text","value":"Toggle automatic reset at the end of a match."}},{"text":" | ","color":"white"},{"text":"Toggle Menu","color":"yellow","underlined":"true","clickEvent":{"action":"run_command","value":"/function adversity:toggle_menu"},"hoverEvent":{"action":"show_text","value":"Toggle the team options menu visibility. The admin menu is not affected."}}]
tellraw @a[tag=menuRequest,tag=menuAdmin] ""

tag @a[tag=menuRequest,tag=menuAdmin] remove menuRequest