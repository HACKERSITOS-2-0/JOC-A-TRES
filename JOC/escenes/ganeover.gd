extends CanvasLayer


onready var g_variables = get_node('..').get_node('GlobalVariables')


func _on_levels_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.7), "timeout")
	get_tree().change_scene("res://escenes/menu_levels.tscn")


func _on_RETRY_pressed():
	if g_variables.current_lvl == 1:
		get_tree().change_scene("res://escenes/nivells/nivell 1.tscn")
	elif g_variables.current_lvl == 1:
		get_tree().change_scene("res://escenes/nivells/nivell 2.tscn")
