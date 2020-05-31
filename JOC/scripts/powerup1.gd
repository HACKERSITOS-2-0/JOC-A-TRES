extends Area2D

func _on_powerup1_area_entered(area):
	if area.name == 'area_personatge':
		$"..".powerup1 = true
		queue_free()
