extends "res://scripts/enemics/enemics.gd"


export (float) var vel_torreta
export (int) var radi_visio
export (int) var radi_xoc


var vel:bool=true
var objectiu = null
var dins : bool = false
var obstacle
var desplacament := Vector2.ZERO


onready var obj = get_parent().get_node("Personatge")

func _ready():
 $Visio/CollisionShape2D.shape.radius = radi_visio
 $area_xoc/CollisionShape2D.shape.radius = radi_xoc




func _process(delta):
	var direccio_actual = Vector2(1, 0).rotated($cos.global_rotation)
	var dir_objectiu = (obj.global_position - global_position).normalized()
	$cos.global_rotation = direccio_actual.linear_interpolate(dir_objectiu, velocitat_rotacio * delta).angle()
	
	
	if dins:
		desplacament = obstacle.global_position.direction_to(global_position)
		desplacament /= obstacle.global_position.distance_to(global_position) / 50
		dir_objectiu += desplacament
		
	if vel:
		move_and_collide(dir_objectiu * velocitat * delta)

		
	if objectiu:
		var direccio_actual_cano = Vector2(1, 0).rotated($cano.global_rotation)
		var direccio_objectiu = (objectiu.global_position - global_position).normalized()
		$cano.global_rotation = direccio_actual_cano.linear_interpolate(direccio_objectiu, vel_torreta * delta).angle()


func _on_Visio_body_entered(body):
	if body.name == "Personatge":
		objectiu = body
		vel = false


func _on_Visio_body_exited(body):
	if body == objectiu:
		objectiu = null
		vel = true


func _on_area_xoc_area_entered(area):
	dins = true
	obstacle = area


func _on_area_xoc_area_exited(area):
	dins = false
	obstacle = null
	

