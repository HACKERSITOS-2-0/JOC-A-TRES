extends Node


func _ready():
	$"CanvasLayer/VBoxContainer2/Label".percent_visible = 0

func _process(delta):
	$"CanvasLayer/VBoxContainer2/Label".percent_visible += 0.005


func _on_Button_pressed():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Sons i músiques/Endarrere.wav")
	player.play()
	yield(get_tree().create_timer(0.5), "timeout")
	get_tree().change_scene("res://escenes/inici.tscn")
