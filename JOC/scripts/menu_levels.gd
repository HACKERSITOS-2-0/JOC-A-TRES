extends CanvasLayer


func _on_Back_pressed():
	get_tree().change_scene("res://escenes/inici.tscn")
	
func _on_nivells_pressed():
	get_tree().change_scene("res://escenes/nivells/nivell 1.tscn")
