extends StaticBody2D


func _on_Area2D_area_entered(body):
	queue_free()
	
