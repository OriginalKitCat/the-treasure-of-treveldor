extends Area2D

@onready var player
@onready var checkpoint_manager

func _ready():
	player = get_parent().get_parent().get_node("player")
	checkpoint_manager = get_parent().get_parent().get_node("CheckpointManager")
	connect("body_entered", Callable(self, "_on_body_entered"))
	
func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		killplayer()
		
func killplayer(): 
	player.global_position = checkpoint_manager.last_location
	$"../..".was_killed()
