extends "res://scripts/enemics/enemics.gd"

signal disparar


export (float) var vel_torreta
export (int) var radi_visio
export (int) var radi_xoc

export (PackedScene) var bala_tanc
export (PackedScene) var bala_tanc_2
export (PackedScene) var caixa_bales

var en_moviment:bool=true
var p_disparar:bool = false
var p_disparar2:bool = false
var in_screen : bool = false
var objectiu = null
var dins : bool = false
var obstacle
var desplacament := Vector2.ZERO
var vides:int = 3
var dir_actual_cano:Vector2
var dir_actual:Vector2


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
		$cano2.global_rotation_degrees = $cos.global_rotation_degrees		
		$cano3.global_rotation_degrees = $cos.global_rotation_degrees
	if objectiu:
		
		$cano.global_rotation = dir_actual_cano.linear_interpolate(dir_objectiu, vel_torreta * delta).angle()
		if dir_actual_cano.dot(dir_objectiu) > 0.9:
			dispara()
		if direccio_actual.dot(dir_objectiu) > 0.7:
			dispara2()
			


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
			var balas = bala_tanc.instance()
			balas.position = $"cano/boquilla".global_position
			balas.dir_objectiu = dir_actual_cano
			get_parent().add_child(balas)
			p_disparar2 = false
			
			
func dispara2():
	if p_disparar:
		if in_screen:
			var balas2 = bala_tanc_2.instance()
			var balas2_1 = bala_tanc_2.instance()
			balas2.position = $"cano3/boquilla3".global_position 
			balas2.dir_objectiu = dir_actual
			balas2_1.position = $"cano2/boquilla2".global_position 
			balas2_1.dir_objectiu = dir_actual
			get_parent().add_child(balas2)
			get_parent().add_child(balas2_1)
			p_disparar = false


func _on_Timer_timeout():
	p_disparar = true
	
func _on_area_cos_area_entered(area):
	if area.name == 'area_bala_p':
		vides -= 1
		if vides <= 0:
			var caixa = caixa_bales.instance()
			caixa.position = global_position
			get_parent().add_child(caixa)
			queue_free()


func _on_VisibilityNotifier2D_screen_entered():
	in_screen = true


func _on_Timer2_timeout():
	p_disparar2 = true 
