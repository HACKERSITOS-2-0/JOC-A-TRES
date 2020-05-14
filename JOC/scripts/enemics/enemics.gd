extends KinematicBody2D

signal canvi_salud
signal mort

export (int) var velocitat
export (float) var velocitat_rotacio
export (float) var temporitzador_pistola
export (int) var salut

var moviment = Vector2()
var pot_disparar = true
var viu = true

func _ready():
	$temporitzador.wait_time = temporitzador_pistola

func control(delta):
	pass

func _physics_process(delta):
	if not viu:
		return
	control(delta)
	move_and_slide(moviment)
	


