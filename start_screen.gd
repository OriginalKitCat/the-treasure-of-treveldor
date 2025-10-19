extends Node2D

var version = "0.4.1"
@onready var player = $player
var currentlevel = 0
var load_this_level

func _ready() -> void:
	$Control/version.text = version
	
	

func _on_play_button_button_down() -> void:
	var current_Scene_file = get_tree().current_scene.scene_file_path
	print(current_Scene_file)
	var next_scene = "res://level" + str(currentlevel) + ".tscn"
	get_tree().change_scene_to_file(next_scene)
	
func levelup():
	load_this_level += 1
