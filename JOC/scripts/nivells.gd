extends TextureButton

export var num_nivell = 0

func _ready():
	$Label.text = 'Level ' + str(num_nivell)
