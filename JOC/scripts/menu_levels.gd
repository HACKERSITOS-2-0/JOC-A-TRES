extends CanvasLayer

onready var g_variables = get_node('..').get_node('GlobalVariables')


func _process(delta):
	var max_level = g_variables.max_lvl
	if max_level == 1:
		$VBoxContainer/levels/graella/nivells1.disabled = false
		$VBoxContainer/levels/graella/nivells2.disabled = true
		$VBoxContainer/levels/graella/nivells3.disabled = true
		$VBoxContainer/levels/graella/nivells4.disabled = true
		$VBoxContainer/levels/graella/nivells5.disabled = true
		$VBoxContainer/levels/graella/nivells6.disabled = true
		$VBoxContainer/levels/graella/nivells7.disabled = true
		$VBoxContainer/levels/graella/nivells8.disabled = true
		$VBoxContainer/levels/graella/nivells9.disabled = true
		
	elif max_level == 2:
		$VBoxContainer/levels/graella/nivells1.disabled = false
		$VBoxContainer/levels/graella/nivells2.disabled = false
		$VBoxContainer/levels/graella/nivells3.disabled = true
		$VBoxContainer/levels/graella/nivells4.disabled = true
		$VBoxContainer/levels/graella/nivells5.disabled = true
		$VBoxContainer/levels/graella/nivells6.disabled = true
		$VBoxContainer/levels/graella/nivells7.disabled = true
		$VBoxContainer/levels/graella/nivells8.disabled = true
		$VBoxContainer/levels/graella/nivells9.disabled = true
		
	elif max_level == 3:
		$VBoxContainer/levels/graella/nivells1.disabled = false
		$VBoxContainer/levels/graella/nivells2.disabled = false
		$VBoxContainer/levels/graella/nivells3.disabled = false
		$VBoxContainer/levels/graella/nivells4.disabled = true
		$VBoxContainer/levels/graella/nivells5.disabled = true
		$VBoxContainer/levels/graella/nivells6.disabled = true
		$VBoxContainer/levels/graella/nivells7.disabled = true
		$VBoxContainer/levels/graella/nivells8.disabled = true
		$VBoxContainer/levels/graella/nivells9.disabled = true
	
	elif max_level == 4:
		$VBoxContainer/levels/graella/nivells1.disabled = false
		$VBoxContainer/levels/graella/nivells2.disabled = false
		$VBoxContainer/levels/graella/nivells3.disabled = false
		$VBoxContainer/levels/graella/nivells4.disabled = false
		$VBoxContainer/levels/graella/nivells5.disabled = true
		$VBoxContainer/levels/graella/nivells6.disabled = true
		$VBoxContainer/levels/graella/nivells7.disabled = true
		$VBoxContainer/levels/graella/nivells8.disabled = true
		$VBoxContainer/levels/graella/nivells9.disabled = true
	
	elif max_level == 5:
		$VBoxContainer/levels/graella/nivells1.disabled = false
		$VBoxContainer/levels/graella/nivells2.disabled = false
		$VBoxContainer/levels/graella/nivells3.disabled = false
		$VBoxContainer/levels/graella/nivells4.disabled = false
		$VBoxContainer/levels/graella/nivells5.disabled = false
		$VBoxContainer/levels/graella/nivells6.disabled = true
		$VBoxContainer/levels/graella/nivells7.disabled = true
		$VBoxContainer/levels/graella/nivells8.disabled = true
		$VBoxContainer/levels/graella/nivells9.disabled = true
	
	elif max_level == 6:
		$VBoxContainer/levels/graella/nivells1.disabled = false
		$VBoxContainer/levels/graella/nivells2.disabled = false
		$VBoxContainer/levels/graella/nivells3.disabled = false
		$VBoxContainer/levels/graella/nivells4.disabled = false
		$VBoxContainer/levels/graella/nivells5.disabled = false
		$VBoxContainer/levels/graella/nivells6.disabled = false
		$VBoxContainer/levels/graella/nivells7.disabled = true
		$VBoxContainer/levels/graella/nivells8.disabled = true
		$VBoxContainer/levels/graella/nivells9.disabled = true
	
	elif max_level == 7:
		$VBoxContainer/levels/graella/nivells1.disabled = false
		$VBoxContainer/levels/graella/nivells2.disabled = false
		$VBoxContainer/levels/graella/nivells3.disabled = false
		$VBoxContainer/levels/graella/nivells4.disabled = false
		$VBoxContainer/levels/graella/nivells5.disabled = false
		$VBoxContainer/levels/graella/nivells6.disabled = false
		$VBoxContainer/levels/graella/nivells7.disabled = false
		$VBoxContainer/levels/graella/nivells8.disabled = true
		$VBoxContainer/levels/graella/nivells9.disabled = true
		
	elif max_level == 8:
		$VBoxContainer/levels/graella/nivells1.disabled = false
		$VBoxContainer/levels/graella/nivells2.disabled = false
		$VBoxContainer/levels/graella/nivells3.disabled = false
		$VBoxContainer/levels/graella/nivells4.disabled = false
		$VBoxContainer/levels/graella/nivells5.disabled = false
		$VBoxContainer/levels/graella/nivells6.disabled = false
		$VBoxContainer/levels/graella/nivells7.disabled = false
		$VBoxContainer/levels/graella/nivells8.disabled = false
		$VBoxContainer/levels/graella/nivells9.disabled = true
		
	elif max_level == 9:
		$VBoxContainer/levels/graella/nivells1.disabled = false
		$VBoxContainer/levels/graella/nivells2.disabled = false
		$VBoxContainer/levels/graella/nivells3.disabled = false
		$VBoxContainer/levels/graella/nivells4.disabled = false
		$VBoxContainer/levels/graella/nivells5.disabled = false
		$VBoxContainer/levels/graella/nivells6.disabled = false
		$VBoxContainer/levels/graella/nivells7.disabled = false
		$VBoxContainer/levels/graella/nivells8.disabled = false
		$VBoxContainer/levels/graella/nivells9.disabled = false
		
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
		
	var nivell2 = g_variables.nivell_2
	if nivell2 == 100:
		$VBoxContainer/levels/graella/nivells2/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells2/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells2/estrella3.visible = true
	elif nivell2 > 60:
		$VBoxContainer/levels/graella/nivells2/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells2/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells2/estrella3.visible = false
	elif nivell2 > 5:
		$VBoxContainer/levels/graella/nivells2/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells2/estrella2.visible = false
		$VBoxContainer/levels/graella/nivells2/estrella3.visible = false
	
	var nivell3 = g_variables.nivell_3
	if nivell3 == 100:
		$VBoxContainer/levels/graella/nivells3/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells3/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells3/estrella3.visible = true
	elif nivell3 > 60:
		$VBoxContainer/levels/graella/nivells3/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells3/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells3/estrella3.visible = false
	elif nivell3 > 5:
		$VBoxContainer/levels/graella/nivells3/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells3/estrella2.visible = false
		$VBoxContainer/levels/graella/nivells3/estrella3.visible = false
	
	var nivell4 = g_variables.nivell_4
	if nivell4 == 100:
		$VBoxContainer/levels/graella/nivells4/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells4/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells4/estrella3.visible = true
	elif nivell4 > 60:
		$VBoxContainer/levels/graella/nivells4/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells4/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells4/estrella3.visible = false
	elif nivell4 > 5:
		$VBoxContainer/levels/graella/nivells4/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells4/estrella2.visible = false
		$VBoxContainer/levels/graella/nivells4/estrella3.visible = false

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
