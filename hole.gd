extends Area2D

@onready var player
@onready var checkpoint_manager

func _ready():
	player = get_parent().get_parent().get_parent().get_node("player")
	connect("body_entered", Callable(self, "_on_body_entered"))
	
func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		Data.was_killed = true
	
	
