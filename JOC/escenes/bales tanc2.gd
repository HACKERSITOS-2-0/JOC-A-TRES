extends KinematicBody2D



func _on_bales_tanc_area_entered(area):
	queue_free()
