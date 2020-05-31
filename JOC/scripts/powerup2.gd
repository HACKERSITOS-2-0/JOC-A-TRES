extends Area2D


func _on_powerup2_area_entered(area):
	if area.name == 'area_personatge':
		$"..".powerup2 = true
		queue_free()
