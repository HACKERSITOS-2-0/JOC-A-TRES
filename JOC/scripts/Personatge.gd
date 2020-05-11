extends Node2D
var x = 0
var y = 0

func _process(delta):
	look_at(get_global_mouse_position())
	#provisional per provar els nivells i les collisions
	if Input.is_action_pressed("ui_right"):
		var x = 1
	elif Input.is_action_pressed("ui_left"):
		var x = -1
	if Input.is_action_pressed("ui_down"):
		var y = 1
	elif Input.is_action_pressed("ui_up"):
		var y = -1
#	move_and_slide(Vector2(x,y))
	
