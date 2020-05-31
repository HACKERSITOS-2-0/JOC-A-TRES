extends "res://scripts/enemics/enemics.gd"

signal disparar

export (float) var vel_torreta
export (int) var radi_visio
export (int) var radi_xoc

export (PackedScene) var bala_tanc
export (PackedScene) var caixa_bales

var en_moviment:bool=true
var p_disparar:bool = false
var in_screen : bool = false
var objectiu = null
var dins : bool = false
var obstacle
var desplacament := Vector2.ZERO
var vides:int = 8
var dir_actual_cano:Vector2


onready var obj = get_parent().get_node("Personatge")

func _ready():
	$Visio/CollisionShape2D.shape.radius = radi_visio
	$area_xoc/CollisionShape2D.shape.radius = radi_xoc
	$Timer.start()




func _process(delta):
	dir_actual_cano = Vector2(1, 0).rotated($cano.global_rotation)
	var direccio_actual = Vector2(1, 0).rotated($cos.global_rotation)
	var dir_objectiu = (obj.global_position - global_position).normalized()

	
	

	
	if dins:
		desplacament = obstacle.global_position.direction_to(global_position)
		desplacament /= obstacle.global_position.distance_to(global_position) / 50
		dir_objectiu += desplacament
		
		
	if en_moviment:
		move_and_collide(dir_objectiu * velocitat * delta)
		$cos.global_rotation = direccio_actual.linear_interpolate(dir_objectiu, velocitat_rotacio * delta).angle()
		$cano.global_rotation = dir_actual_cano.linear_interpolate(dir_objectiu, velocitat_rotacio * delta).angle()
		$cano2.global_rotation = dir_actual_cano.linear_interpolate(dir_objectiu, velocitat_rotacio * delta).angle()
	if objectiu:
		
#		var direccio_actual_cano = Vector2(1, 0).rotated($cano.global_rotation)
#		var direccio_objectiu = (objectiu.global_position - global_position).normalized()
		$cano.global_rotation = dir_actual_cano.linear_interpolate(dir_objectiu, vel_torreta * delta).angle()
		$cano2.global_rotation = dir_actual_cano.linear_interpolate(dir_objectiu, vel_torreta * delta).angle()
		if dir_actual_cano.dot(dir_objectiu) > 0.9:
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
	
		if in_screen:
			pass
#			var bala1 = bala_tanc2.instance()
#			var bala2 = bala_tanc2.instance()
#			bala1.position = $"cano/boquilla".global_position 
#			bala2.position = $"cano2/boquilla2".global_position
#			bala1.dir_objectiu = dir_actual_cano
#			bala2.dir_objectiu = dir_actual_cano			
#			get_parent().add_child(bala1)
#			get_parent().add_child(bala2)			
#			p_disparar = false

func _on_Timer_timeout():
	p_disparar = true


func _on_area_cos_area_entered(area):
	if area.name == 'area_bala_p':
		print(1)
		vides -= 1
		if vides <= 0:
			var caixa = caixa_bales.instance()
			caixa.position = global_position
			get_parent().add_child(caixa)
			queue_free()
			
	


func _on_VisibilityNotifier2D_screen_entered():
	in_screen = true




func _on_area_xoc_body_entered(body):
	pass # Replace with function body.
