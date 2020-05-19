extends Area2D

export var vel_bales = 1000
var dir_objectiu:Vector2

	

func _process(delta):
	position += dir_objectiu * vel_bales * delta
	

