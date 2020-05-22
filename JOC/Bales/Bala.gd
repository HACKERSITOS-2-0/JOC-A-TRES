extends Area2D
 
export (int) var velocitat
export (int) var mal
export (float) var temps

var moviment = Vector2.ZERO


func start(_position, _direction): 
	position = _position
	rotation = _direction.angle()
	$Temps.wait_time = temps
	moviment = _direction * velocitat
	
func _process(delta):
	position += velocitat * delta

func explota():
	queue_free()

func _on_Bala_body_entered(body):
	explota()

func _on_Temps_timeout():
	explota()
