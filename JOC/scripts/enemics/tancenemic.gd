extends "res://scripts/enemics/enemics.gd"


export (float) var vel_torreta
export (int) var radi_visio
export (int) var radi_xoc

export (PackedScene) var bala_tanc

var en_moviment:bool=true
var p_disparar:bool = false
var objectiu = null
var dins : bool = false
var obstacle
var desplacament := Vector2.ZERO
var vides:int = 5


onready var obj = get_parent().get_node("Personatge")

func _ready():
	$Visio/CollisionShape2D.shape.radius = radi_visio
	$area_xoc/CollisionShape2D.shape.radius = radi_xoc
	$Timer.start()




func _process(delta):
	var dir_actual_cano = Vector2(1, 0).rotated($cano.global_rotation)
	var direccio_actual = Vector2(1, 0).rotated($cos.global_rotation)
	var dir_objectiu = (obj.global_position - global_position).normalized()
#	$cos.global_rotation = direccio_actual.linear_interpolate(dir_objectiu, velocitat_rotacio * delta).angle()
	
	
	if dins:
		desplacament = obstacle.global_position.direction_to(global_position)
		desplacament /= obstacle.global_position.distance_to(global_position) / 50
		dir_objectiu += desplacament
		
	if en_moviment:
		move_and_collide(dir_objectiu * velocitat * delta)
		$cos.global_rotation = direccio_actual.linear_interpolate(dir_objectiu, velocitat_rotacio * delta).angle()
		$cano.global_rotation = dir_actual_cano.linear_interpolate(dir_objectiu, velocitat_rotacio * delta).angle()
		
	if objectiu:
#		var direccio_actual_cano = Vector2(1, 0).rotated($cano.global_rotation)
#		var direccio_objectiu = (objectiu.global_position - global_position).normalized()
		$cano.global_rotation = dir_actual_cano.linear_interpolate(dir_objectiu, vel_torreta * delta).angle()
		dispara()

func _on_Visio_body_entered(body):
	if body.name == "Personatge":
		objectiu = body
		en_moviment = false


func _on_Visio_body_exited(body):
	if body == objectiu:
		objectiu = null
		en_moviment = true


func _on_area_xoc_area_entered(area):
	dins = true
	obstacle = area


func _on_area_xoc_area_exited(area):
	dins = false
	obstacle = null

func dispara():
	if p_disparar:
		var balas = bala_tanc.instance()
		balas.position = $"cano/boquilla".global_position 
		get_parent().add_child(balas)
		p_disparar = false

func _on_Timer_timeout():
	p_disparar = true


func _on_area_cos_area_entered(area):
	if area.name == 'area_bala_p':
		print(1)
		vides -= 1
		if vides <= 0:
			queue_free()
			
	
