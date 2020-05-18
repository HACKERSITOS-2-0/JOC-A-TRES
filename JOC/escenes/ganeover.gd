extends CanvasLayer


func _on_retry_pressed():
	#ha de recarregar el nivell en questió.
	pass
	

func _on_levels_pressed():
	get_tree().change_scene("res://escenes/menu_levels.tscn")
