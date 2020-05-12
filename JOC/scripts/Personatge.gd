extends KinematicBody2D
var moviment_x = 0
var moviment_y = 0
var velocitat=100

# warning-ignore:unused_argument
func _process(delta):
	look_at(get_global_mouse_position())
	#provisional per provar els nivells i les collisions
	if Input.is_action_pressed("ui_right"):
		var moviment_x = 1
	elif Input.is_action_pressed("ui_left"):
		var moviment_x = -1
	if Input.is_action_pressed("ui_down"):
		var moviment_y = 1
	elif Input.is_action_pressed("ui_up"):
		var moviment_y = -1
	var direccio=Vector2(moviment_x, moviment_y).normalized()
#	set_global_position(Vector2(x, y)+get_global_position())
	var moviment = move_and_collide(direccio*delta*velocitat)
	
