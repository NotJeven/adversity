#	Description:
#		forces all teams to ready which triggers game start
#	Activator:
#		self
#	Parents:
#		

execute if score #teamReadyA var = #NOTREADY var run function adversity:team_ready_a
execute if score #teamReadyB var = #NOTREADY var run function adversity:team_ready_b
execute if score #teamReadySpectator var = #NOTREADY var run function adversity:team_ready_spectator
