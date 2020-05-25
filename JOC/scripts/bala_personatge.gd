extends KinematicBody2D

export var vel_bales = 400
var dir_objectiu:Vector2

func _ready():
	look_at(get_global_mouse_position())
	dir_objectiu =  (get_global_mouse_position() - global_position).normalized()

func _process(delta):
	position += dir_objectiu * vel_bales * delta


func _on_area_bala_area_entered(area):
	queue_free()
