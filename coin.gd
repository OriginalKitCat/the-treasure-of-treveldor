extends Area2D

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	pass
	


func _on_body_entered(body: Node2D) -> void:
	get_node("/root/main").collect_coin()
	queue_free()
