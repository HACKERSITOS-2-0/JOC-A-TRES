extends CanvasLayer


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
