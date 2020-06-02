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
		
	var nivell5 = g_variables.nivell_5
	if nivell5 == 100:
		$VBoxContainer/levels/graella/nivells5/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells5/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells5/estrella3.visible = true
	elif nivell5 > 60:
		$VBoxContainer/levels/graella/nivells5/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells5/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells5/estrella3.visible = false
	elif nivell5 > 5:
		$VBoxContainer/levels/graella/nivells5/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells5/estrella2.visible = false
		$VBoxContainer/levels/graella/nivells5/estrella3.visible = false
		
	var nivell6 = g_variables.nivell_6
	if nivell6 == 100:
		$VBoxContainer/levels/graella/nivells6/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells6/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells6/estrella3.visible = true
	elif nivell6 > 60:
		$VBoxContainer/levels/graella/nivells6/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells6/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells6/estrella3.visible = false
	elif nivell6> 5:
		$VBoxContainer/levels/graella/nivells6/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells6/estrella2.visible = false
		$VBoxContainer/levels/graella/nivells6/estrella3.visible = false
		
	var nivell7 = g_variables.nivell_7
	if nivell7 == 100:
		$VBoxContainer/levels/graella/nivells7/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells7/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells7/estrella3.visible = true
	elif nivell7 > 60:
		$VBoxContainer/levels/graella/nivells7/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells7/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells7/estrella3.visible = false
	elif nivell7 > 0:
		$VBoxContainer/levels/graella/nivells7/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells7/estrella2.visible = false
		$VBoxContainer/levels/graella/nivells7/estrella3.visible = false
		
	var nivell8 = g_variables.nivell_8
	if nivell8 == 100:
		$VBoxContainer/levels/graella/nivells8/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells8/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells8/estrella3.visible = true
	elif nivell8 > 60:
		$VBoxContainer/levels/graella/nivells8/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells8/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells8/estrella3.visible = false
	elif nivell8 > 5:
		$VBoxContainer/levels/graella/nivells8/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells8/estrella2.visible = false
		$VBoxContainer/levels/graella/nivells8/estrella3.visible = false
		
	var nivell9 = g_variables.nivell_9
	if nivell9 == 100:
		$VBoxContainer/levels/graella/nivells9/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells9/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells9/estrella3.visible = true
	elif nivell9 > 60:
		$VBoxContainer/levels/graella/nivells9/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells9/estrella2.visible = true
		$VBoxContainer/levels/graella/nivells9/estrella3.visible = false
	elif nivell9 > 5:
		$VBoxContainer/levels/graella/nivells9/estrella1.visible = true
		$VBoxContainer/levels/graella/nivells9/estrella2.visible = false
		$VBoxContainer/levels/graella/nivells9/estrella3.visible = false
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

func _on_nivells3_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/nivells/nivell 3.tscn")

func _on_nivells4_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/nivells/nivell 4.tscn")


func _on_nivells5_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/nivells/nivell 5.tscn")

func _on_nivells6_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/nivells/nivell 6.tscn")

func _on_nivells7_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/nivells/nivell 7.tscn")

func _on_nivells8_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/nivells/nivell 8.tscn")

func _on_nivells9_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/nivells/nivell 9.tscn")
