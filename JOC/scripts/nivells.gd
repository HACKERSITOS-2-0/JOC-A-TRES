extends TextureButton

export var num_nivell = 0

func _ready():
	$Label.text = 'Level ' + str(num_nivell)
	
func _process(delta):
	if disabled == true:
		$candau.visible = true
		$Label.visible = false
		$estrella1.visible = false
		$estrella2.visible = false
		$estrella3.visible = false
	else:
		$candau.visible = false
		$Label.visible = true
