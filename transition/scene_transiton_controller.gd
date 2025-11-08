extends CanvasLayer

signal tranition_half_compleated(targetScene:String)
signal transitoncompleted

var current_transiton: Node = null
var istransitioning: bool = false

func change_scene(targetscene: String, transitontype: String = "fade"):
	if istransitioning:
		return
	istransitioning = true
	
	var transiton_scene: Node = null
	
	match transitontype:
		"fade":
			transiton_scene = load("res://transitions/fade.tscn").instantiate()
		_:
			transiton_scene = load("res://transitions/fade.tscn").instantiate()
		
	transiton_scene.duration = duration
	transitoncompleted.connect(_on_trasion_compleded)
	tranition_half_compleated.connect(_ontransitionhalfcompleted)
	
	add_child(transiton_scene)
	
	transiton_scene.transition_in(targetscene)
	
	transiton_scene.transition_in(targetscene)
	
func _ontransitionhalfcompleted(target_scene: String):
	var in_tree_targetstring = "(ui)levels/" + target_scene
	get_tree().change_scene_to_file(in_tree_targetstring)
	
func _on_trasion_compleded():
	if current_transiton:
		current_transiton.queue_free()
		current_transiton = null
		
		tranition_half_compleated.disconnect(_ontransitionhalfcompleted)
		transitoncompleted.disconnect(_on_trasion_compleded)
		
	istransitioning = false
	
