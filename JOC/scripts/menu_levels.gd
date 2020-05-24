extends CanvasLayer

onready var g_variables = get_node('..').get_node('GlobalVariables')


func _ready():
	var nivell1 = g_variables.nivell_1
	if nivell1 == 100:
		$VBoxContainer/levels/graella/nivells1/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells1/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells1/estrella3.visible = true
	elif nivell1 > 60:
		$VBoxContainer/levels/graella/nivells1/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells1/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells1/estrella3.visible = false
	elif nivell1 > 5:
		$VBoxContainer/levels/graella/nivells1/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells1/estrella2.visible = false
		$VBoxContainer/levels/graella/nivells1/estrella3.visible = false

func _on_Back_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endarrere.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/inici.tscn")
	
func _on_nivells_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/nivells/nivell 1.tscn")

func _on_nivells2_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/nivells/nivell 2.tscn")
