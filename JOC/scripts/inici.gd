extends Node

onready var g_variables = get_node('..').get_node('GlobalVariables')

export (PackedScene) var menu_nivells

func _ready():
	$"CanvasLayer/MarginContainer/VBoxContainer/crèdits".percent_visible = 0

func _process(delta):
	$"CanvasLayer/MarginContainer/VBoxContainer/crèdits".percent_visible += 0.005

func _on_Levels_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.7), "timeout")
	print(1)
	get_tree().change_scene_to(menu_nivells)
	
func _on_Quit_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endarrere.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().quit()

func _on_Continue_pressed():
	if g_variables.current_lvl == 1:
		get_tree().change_scene("res://escenes/nivells/nivell 1.tscn")
	elif g_variables.current_lvl == 2:
		get_tree().change_scene("res://escenes/nivells/nivell 2.tscn")
	elif g_variables.current_lvl == 3:
		get_tree().change_scene("res://escenes/nivells/nivell 3.tscn")
	elif g_variables.current_lvl == 4:
		get_tree().change_scene("res://escenes/nivells/nivell 4.tscn")
	elif g_variables.current_lvl == 5:
		get_tree().change_scene("res://escenes/nivells/nivell 5.tscn")
	elif g_variables.current_lvl == 6:
		get_tree().change_scene("res://escenes/nivells/nivell 6.tscn")
	elif g_variables.current_lvl == 7:
		get_tree().change_scene("res://escenes/nivells/nivell 7.tscn")
	elif g_variables.current_lvl == 8:
		get_tree().change_scene("res://escenes/nivells/nivell 8.tscn")
	elif g_variables.current_lvl == 9:
		get_tree().change_scene("res://escenes/nivells/nivell 9.tscn")

func _on_Controls_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.7), "timeout")
	get_tree().change_scene("res://escenes/EscenaControls.tscn")
