extends Area2D

export var vel_bales = 400
export (float) var tempsvida
var dir_objectiu:Vector2

onready var obj = get_parent().get_node("Personatge")

func _ready():
	global_rotation = dir_objectiu.angle()
	$tempsvida.wait_time = tempsvida
	
func _process(delta):
	position += dir_objectiu * vel_bales * delta
	
func explota():
	dir_objectiu = Vector2.ZERO


func _on_tempsvida_timeout():
	explota()

func _on_area_bala_2_area_entered(area):
	explota()
