extends Area2D

@onready var checkpoint_manager = get_parent().get_parent().get_node("CheckpointManager")

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		checkpoint_manager.last_location = $Marker2D.global_position
