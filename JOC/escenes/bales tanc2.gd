extends KinematicBody2D

export var vel_bales = 100
var dir_objectiu:Vector2

onready var obj = get_parent().get_node("Personatge")

func _ready():
	look_at(obj.global_position)
	dir_objectiu = (obj.global_position - global_position).normalized()
	

func _process(delta):
	position += dir_objectiu * vel_bales * delta
	
func _on_area_bala_area_entered(_area):
	queue_free()
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
