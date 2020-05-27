extends KinematicBody2D

export var vel_bales = 100
export (float) var tempsvida
var dir_objectiu:Vector2

onready var obj = get_parent().get_node("Personatge")

func _ready():
	global_rotation = dir_objectiu.angle()
	$tempsvida.wait_time = tempsvida
	
func _process(delta):
	position += dir_objectiu * vel_bales * delta
	
func explota():
	queue_free()
	
func _on_area_bala_area_entered(_area):
	explota()

	
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_tempsvida_timeout():
	explota()
