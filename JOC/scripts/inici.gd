extends Node

#var g_variables = get_tree().get_root().get_node('GlobalVariables')
export (PackedScene) var menu_nivells

func _ready():
	$"CanvasLayer/MarginContainer/VBoxContainer/crèdits".percent_visible = 0

func _process(delta):
	$"CanvasLayer/MarginContainer/VBoxContainer/crèdits".percent_visible += 0.005

func _on_Levels_pressed():
	print(1)
	get_tree().change_scene_to(menu_nivells)
	
func _on_Quit_pressed():
	get_tree().quit()

#func _on_Continue_pressed():
#	if g_variables.current_lvl == 1:
#	get_tree().change_scene("res://escenes/nivells/nivell 1.tscn")
