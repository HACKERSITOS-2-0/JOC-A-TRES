extends CanvasLayer

export (PackedScene) var inici

func _on_Back_pressed():
	get_tree().change_scene_to(inici)
	
