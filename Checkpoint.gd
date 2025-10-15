extends Area2D

var checkpoint_manager

func _ready():
	checkpoint_manager = get_parent().get_parent().get_node(checkpoint_manager)


func _on_body_entered(body: Node2D) -> void:
	if body_entered.get_name() == "player":
		checkpoint_manager.lastlocation = $RespownPoint.global_position
