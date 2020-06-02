extends Node

onready var g_variables = get_node('..').get_node('GlobalVariables')

var powerup1:bool = false setget canvia_powerup1
var powerup2:bool = false setget canvia_powerup2
var powerup3:bool = false setget canvia_powerup3

var copia 

export (PackedScene) var tancs
export (PackedScene) var tanc2
export (PackedScene) var p_1
export (PackedScene) var p_2
export (PackedScene) var p_3

var respawn_n:int 

func canvia_powerup1(n_powerup1):
	$Personatge.powerup1 = n_powerup1
	$powerup1.start()
	powerup1 = n_powerup1
	g_variables.powerup1 = n_powerup1
func canvia_powerup2(n_powerup2):
	$Personatge.powerup2 = n_powerup2
	$powerup2.start()
	powerup2 = n_powerup2
	g_variables.powerup2 = n_powerup2
func canvia_powerup3(n_powerup3):
	$Personatge.powerup3 = n_powerup3
	$powerup3.start()
	powerup3 = n_powerup3
	g_variables.powerup3 = n_powerup3
	
func _on_tempsentretancs_timeout():
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

	
func _ready():
	g_variables.current_lvl = 8

func _on_powerup1_timeout():
	powerup1 = false
	$Personatge.powerup1 = false
func _on_powerup2_timeout():
	powerup2 = false
	$Personatge.powerup2 = false
func _on_powerup3_timeout():
	powerup3 = false
	$Personatge.powerup3 = false

func _on_tempsentrepowerups_timeout():
	print('creat')
	var power = randi() % 3 + 1
	if power == 1:
		copia = p_1.instance()
	elif power == 2:
		copia = p_2.instance()
	elif power == 3:
		copia = p_3.instance()
	copia.position = Vector2(612,300)
	add_child(copia)


func _on_temps_de_nivell_timeout():
	g_variables.max_lvl = 9
	g_variables.current_lvl = 9
	g_variables.nivell_8 = $Personatge/Camera2D/CanvasLayer/marcador/barra_vida/HBoxContainer/TextureProgress.value
	get_tree().change_scene("res://escenes/menu_levels.tscn")


func _on_tempsentretancs2_timeout():
	var tanc2_copia = tanc2.instance()
	respawn_n = randi() % 14
	if respawn_n == 0:
		tanc2_copia.position = $respawns/respawn.position
	elif respawn_n == 1:
		tanc2_copia.position = $respawns/respawn2.position
	elif respawn_n == 2:
		tanc2_copia.position = $respawns/respawn3.position
	elif respawn_n == 3:
		tanc2_copia.position = $respawns/respawn4.position
	elif respawn_n == 4:
		tanc2_copia.position = $respawns/respawn5.position
	elif respawn_n == 5:
		tanc2_copia.position = $respawns/respawn6.position
	elif respawn_n == 6:
		tanc2_copia.position = $respawns/respawn7.position
	elif respawn_n == 7:
		tanc2_copia.position = $respawns/respawn8.position
	elif respawn_n == 8:
		tanc2_copia.position = $respawns/respawn9.position
	elif respawn_n == 9:
		tanc2_copia.position = $respawns/respawn10.position
	elif respawn_n == 10:
		tanc2_copia.position = $respawns/respawn11.position
	elif respawn_n == 11:
		tanc2_copia.position = $respawns/respawn12.position
	elif respawn_n == 12:
		tanc2_copia.position = $respawns/respawn13.position
	elif respawn_n == 13:
		tanc2_copia.position = $respawns/respawn14.position
	add_child(tanc2_copia)
