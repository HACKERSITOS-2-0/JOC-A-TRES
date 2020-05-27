extends Node

onready var g_variables = get_node('..').get_node('GlobalVariables')

# Called when the node enters the scene tree for the first time.
func _ready():
	g_variables.current_lvl = 2


func _on_temps_de_nivell_timeout():
	if g_variables.max_lvl <= 2:
		g_variables.max_lvl = 3
	g_variables.current_lvl = 3
	g_variables.nivell_2 = $Personatge/Camera2D/CanvasLayer/marcador/barra_vida/HBoxContainer/TextureProgress.value
	get_tree().change_scene("res://escenes/menu_levels.tscn")
