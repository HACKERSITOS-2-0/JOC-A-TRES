extends Area2D

func _on_powerup3_area_entered(area):
	if area.name == 'area_personatge':
		$"..".powerup3 = true
		queue_free()
