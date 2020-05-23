extends CanvasLayer


func _on_retry_pressed():
	#ha de recarregar el nivell en questió.
	pass
	

func _on_levels_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endavant.wav")
	player.play()
	yield(get_tree().create_timer(0.7), "timeout")
	get_tree().change_scene("res://escenes/menu_levels.tscn")
