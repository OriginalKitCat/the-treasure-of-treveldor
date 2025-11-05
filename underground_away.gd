extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		Data.travel_with_underground = true 
