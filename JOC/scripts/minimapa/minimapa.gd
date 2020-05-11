extends MarginContainer

export (NodePath) var personatge
export var zoom = 1.5

onready var graella = $MarginContainer/graella
onready var senyal_personatge = $MarginContainer/graella/personatge
onready var senyal_enemic = $MarginContainer/graella/enemics
onready var senyal_bala = $MarginContainer/graella/bales
onready var icones = {"enemic": senyal_enemic, "bala": senyal_bala}

var escala_graella
var senyals = {}

func _ready():
	senyal_personatge.position = graella.rect_size / 2
	escala_graella = graella.rect_size / (get_viewport_rect().size * zoom)
	var map_objects = get_tree().get_nodes_in_group("minimap_objects")
	for item in map_objects:
		var nova_senyal = icones[item.minimap_icon].duplicate()
		graella.add_child(nova_senyal)
		nova_senyal.show()
		senyals[item] = nova_senyal

func _process(delta):
	if !personatge:
		pass
	senyal_personatge.rotation = get_node(personatge).rotation + PI/2
	for item in senyals:
		var pos_real = (item.position - get_node(personatge).position) + graella.rect_size / 2
		if graella.get_rect().has_point(pos_real + graella.rect_position):
			senyals[item].scale = Vector2(0.75, 0.75)
		else:
			senyals[item].scale = Vector2(1, 1)
		pos_real.x = clamp(pos_real.x, 0, graella.rect_size.x)
		pos_real.y = clamp(pos_real.y, 0, graella.rect_size.y)
		senyals[item].position = pos_real

