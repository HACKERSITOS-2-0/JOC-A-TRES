extends KinematicBody2D
var moviment_x = 0
var moviment_y = 0
export var velocitat=100
var en_moviment:bool = false
export var bales:int = 20 setget set_bales
var p_disparar:bool = false

export (PackedScene) var bala_personatge

#func _process(delta):
#	var dir_objectiu = get_global_mouse_position()
#	move_and_collide(dir_objectiu * velocitat * delta)

# warning-ignore:unused_argument

func _ready():
	$Camera2D/CanvasLayer/MarginContainer/HBoxContainer/MarginContainer/Label.text = str(bales)

func _process(delta):
	en_moviment = false
	moviment_x = 0
	moviment_y = 0
	look_at(get_global_mouse_position())
	#provisional per provar els nivells i les collisions
	if Input.is_action_pressed("ui_right"):
		moviment_x = 1
		en_moviment = true
	elif Input.is_action_pressed("ui_left"):
		moviment_x = -1
		en_moviment = true
	if Input.is_action_pressed("ui_down"):
		moviment_y = 1
		en_moviment = true
	elif Input.is_action_pressed("ui_up"):
		moviment_y = -1
		en_moviment = true
	var direccio=Vector2(moviment_x, moviment_y).normalized()

	var moviment = move_and_collide(direccio*delta*velocitat)
	if en_moviment:
		$animacions.play('camina')
	else:
		$animacions.play('parat')

func _input(event):
	if Input.is_action_just_pressed("click"):
		dispara()

func _on_area_personatge_area_entered(area):
	if area.name == 'area_bala':
		$Camera2D/CanvasLayer/marcador/barra_vida/HBoxContainer/TextureProgress.value -= 10
		if $Camera2D/CanvasLayer/marcador/barra_vida/HBoxContainer/TextureProgress.value == 0:
			get_tree().change_scene("res://escenes/gameover.tscn")
	
func dispara():
	if bales > 0:
		var balas = bala_personatge.instance()
		balas.position = $"boquilla pistola".global_position 
		get_parent().add_child(balas)
		var player = AudioStreamPlayer.new()
		self.add_child(player)
		player.stream = load("res://Sons i músiques/Làser.wav")
		player.play()
		p_disparar = false
		bales -= 1
		$Camera2D/CanvasLayer/MarginContainer/HBoxContainer/MarginContainer/Label.text = str(bales)
		if bales == 0:
			$Camera2D/CanvasLayer/MarginContainer/HBoxContainer/MarginContainer/Label.modulate = Color.red
	else:
		pass
		#que et surti un label i t'informi.
	

	

func set_bales(n_bales):
	bales = n_bales
	actualitza_m (n_bales)

func _on_caixes_detector_area_entered(area):
	self.bales += 8
	area.queue_free()

func actualitza_m(bales):
	$Camera2D/CanvasLayer/MarginContainer/HBoxContainer/MarginContainer/Label.text = str(bales)
	if bales == 0:
		$Camera2D/CanvasLayer/MarginContainer/HBoxContainer/MarginContainer/Label.modulate = Color.red
