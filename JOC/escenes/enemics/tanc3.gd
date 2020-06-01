extends "res://scripts/enemics/enemics.gd"

signal disparar


export (float) var vel_torreta
export (int) var radi_visio
export (int) var radi_xoc

export (PackedScene) var bala_tanc
export (PackedScene) var caixa_bales

var en_moviment:bool=true
var p_disparar:bool = false
var p_disparar2:bool = false
var in_screen : bool = false
var objectiu = null
var dins : bool = false
var obstacle
var desplacament := Vector2.ZERO
var vides:int = 10
var dir_actual_cano:Vector2
var direccio_actual


onready var obj = get_parent().get_node("Personatge")

func _ready():
	$Timer.start()
	
func _process(delta):
	direccio_actual = Vector2(1, 0).rotated(global_rotation)
	var dir_objectiu = (obj.global_position - global_position).normalized()
	global_rotation = direccio_actual.linear_interpolate(dir_objectiu, velocitat_rotacio * delta).angle()
	if dins:
		desplacament = obstacle.global_position.direction_to(global_position)
		desplacament /= obstacle.global_position.distance_to(global_position) / 50
		dir_objectiu += desplacament
	if en_moviment:
		move_and_collide(dir_objectiu * velocitat * delta)
	if objectiu:
		if direccio_actual.dot(dir_objectiu) > 0.7:
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
			var copia_bala1 = bala_tanc.instance()
			var copia_bala2 = bala_tanc.instance()
			copia_bala1.position = $boquilla1.global_position
			copia_bala2.position = $boquilla2.global_position
			copia_bala1.dir_objectiu = direccio_actual
			copia_bala2.dir_objectiu = direccio_actual
			get_parent().add_child(copia_bala1)
			get_parent().add_child(copia_bala2)
			p_disparar = false
			$Timer.start()


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
