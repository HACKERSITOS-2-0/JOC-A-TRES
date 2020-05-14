extends KinematicBody2D
var moviment_x = 0
var moviment_y = 0
var velocitat=100

#func _process(delta):
#	var dir_objectiu = get_global_mouse_position()
#	move_and_collide(dir_objectiu * velocitat * delta)

# warning-ignore:unused_argument
func _process(delta):
	moviment_x = 0
	moviment_y = 0
	look_at(get_global_mouse_position())
	#provisional per provar els nivells i les collisions
	if Input.is_action_pressed("ui_right"):
		moviment_x = 1
	elif Input.is_action_pressed("ui_left"):
		moviment_x = -1
	if Input.is_action_pressed("ui_down"):
		moviment_y = 1
	elif Input.is_action_pressed("ui_up"):
		moviment_y = -1
	var direccio=Vector2(moviment_x, moviment_y).normalized()
#	set_global_position(Vector2(x, y)+get_global_position())
	var moviment = move_and_collide(direccio*delta*velocitat)
#

#extends KinematicBody2D
#
#
#
#export (int) var speed
#var velocidad = Vector2()
#var size_pantalla
#
#
#func _ready():
#	hide()
#	size_pantalla = get_viewport_rect().size
#
#func _process(delta):
#	var moviment = mou(delta)
#
#
#func mou(delta):
#	velocidad = Vector2()
#	if Input.is_action_pressed("dreta"):
#		velocidad.x += 1
#
#	if Input.is_action_pressed("esquerra"):
#		velocidad.x -= 1
#
#	if Input.is_action_pressed("enrrera"):
#		velocidad.y += 1
#
#	if Input.is_action_pressed("endavant"):
#
#		velocidad.y -= 1
#
#
#	velocidad = velocidad.normalized() * speed
#	position += velocidad * delta
#	move_and_collide(velocidad*delta)
##	return position
##	position.x = clamp(position.x, 0, size_pantalla.x)
##	position.y = clamp(position.y, 0, size_pantalla.y)
##	return position

