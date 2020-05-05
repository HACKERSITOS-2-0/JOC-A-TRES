extends Node

func _ready():
	$"CanvasLayer/MarginContainer/VBoxContainer/crèdits".percent_visible = 0

func _process(delta):
	$"CanvasLayer/MarginContainer/VBoxContainer/crèdits".percent_visible += 0.005
