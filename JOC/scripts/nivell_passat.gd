extends Control

onready var g_variables = get_node('..').get_node('GlobalVariables')


func _ready():
	
	$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = false
	$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
	$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
	
	var nivell1 = g_variables.nivell_1
	var nivell2 = g_variables.nivell_2
	var nivell3 = g_variables.nivell_3
	var nivell4 = g_variables.nivell_4
	var nivell5 = g_variables.nivell_5
	var nivell6 = g_variables.nivell_6
	var nivell7 = g_variables.nivell_7
	var nivell8 = g_variables.nivell_8
	var nivell9 = g_variables.nivell_9
	
	if g_variables.current_lvl == 2:
		$MarginContainer/VBoxContainer/Label2.text = "t'has passat el nivell 1"
		if nivell1 == 100:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = true
		elif nivell1 > 60:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
		elif nivell1 > 5:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
	
	elif g_variables.current_lvl == 3:
		$MarginContainer/VBoxContainer/Label2.text = "t'has passat el nivell 2"
		if nivell2 == 100:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = true
		elif nivell2 > 60:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
		elif nivell2 > 5:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
	
	elif g_variables.current_lvl == 4:
		$MarginContainer/VBoxContainer/Label2.text = "t'has passat el nivell 3"
		if nivell3 == 100:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = true
		elif nivell3 > 60:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
		elif nivell3 > 5:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
	
	elif g_variables.current_lvl == 5:
		$MarginContainer/VBoxContainer/Label2.text = "t'has passat el nivell 4"
		if nivell4 == 100:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = true
		elif nivell4 > 60:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
		elif nivell4 > 5:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
	
	elif g_variables.current_lvl == 6:
		$MarginContainer/VBoxContainer/Label2.text = "t'has passat el nivell 5"
		if nivell5 == 100:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = true
		elif nivell5 > 60:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
		elif nivell5 > 5:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
	
	elif g_variables.current_lvl == 7:
		$MarginContainer/VBoxContainer/Label2.text = "t'has passat el nivell 6"
		if nivell6 == 100:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = true
		elif nivell6 > 60:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
		elif nivell6 > 5:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false

	elif g_variables.current_lvl == 8:
		$MarginContainer/VBoxContainer/Label2.text = "t'has passat el nivell 7"
		if nivell7 == 100:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = true
		elif nivell7 > 60:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
		elif nivell7 > 5:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
	
	elif g_variables.current_lvl == 9:
		$MarginContainer/VBoxContainer/Label2.text = "t'has passat el nivell 8"
		if nivell8 == 100:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = true
		elif nivell8 > 60:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
		elif nivell8 > 5:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
	
	elif g_variables.current_lvl == 10:
		$MarginContainer/VBoxContainer/Label2.text = "t'has passat el nivell 9"
		if nivell9 == 100:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = true
		elif nivell9 > 60:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
		elif nivell9 > 5:
			$MarginContainer/VBoxContainer/HBoxContainer/estrella1.visible = true
			$MarginContainer/VBoxContainer/HBoxContainer/estrella2.visible = false
			$MarginContainer/VBoxContainer/HBoxContainer/estrella3.visible = false
			
func _on_temps_de_veure_aix_timeout():
	get_tree().change_scene("res://escenes/menu_levels.tscn")
