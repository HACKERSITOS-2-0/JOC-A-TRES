extends Node

onready var g_variables = get_node('..').get_node('GlobalVariables')

export (PackedScene) var tancs
var respawn_n:int 

func _ready():
	g_variables.current_lvl = 1

func _on_Timer_timeout():
	var tanc_copia = tancs.instance()
	respawn_n = randi() % 14
	if respawn_n == 0:
		tanc_copia.position = $respawns/respawn.position
	elif respawn_n == 1:
		tanc_copia.position = $respawns/respawn2.position
	elif respawn_n == 2:
		tanc_copia.position = $respawns/respawn3.position
	elif respawn_n == 3:
		tanc_copia.position = $respawns/respawn4.position
	elif respawn_n == 4:
		tanc_copia.position = $respawns/respawn5.position
	elif respawn_n == 5:
		tanc_copia.position = $respawns/respawn6.position
	elif respawn_n == 6:
		tanc_copia.position = $respawns/respawn7.position
	elif respawn_n == 7:
		tanc_copia.position = $respawns/respawn8.position
	elif respawn_n == 8:
		tanc_copia.position = $respawns/respawn9.position
	elif respawn_n == 9:
		tanc_copia.position = $respawns/respawn10.position
	elif respawn_n == 10:
		tanc_copia.position = $respawns/respawn11.position
	elif respawn_n == 11:
		tanc_copia.position = $respawns/respawn12.position
	elif respawn_n == 12:
		tanc_copia.position = $respawns/respawn13.position
	elif respawn_n == 13:
		tanc_copia.position = $respawns/respawn14.position

	add_child(tanc_copia)


func _on_temps_de_nivell_timeout():
	if g_variables.max_lvl <= 1:
		g_variables.max_lvl = 2
	g_variables.current_lvl = 2
	g_variables.nivell_1 = $Personatge/Camera2D/CanvasLayer/marcador/barra_vida/HBoxContainer/TextureProgress.value
	get_tree().change_scene("res://escenes/nivell_passat.tscn")
	
