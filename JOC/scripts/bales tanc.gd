extends Area2D

export var vel_bales = 1000
var dir_objectiu:Vector2

onready var obj = get_parent().get_parent().get_node("Personatge")

func _ready():
	dir_objectiu = (obj.global_position - global_position).normalized()
	

func _process(delta):
	position += dir_objectiu * vel_bales * delta
