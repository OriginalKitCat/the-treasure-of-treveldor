extends Area2D

@onready var _animation_player = $AnimationPlayer

func _ready() -> void:
	_animation_player.play("spinning_coin")
	
func _process(delta: float) -> void:
	pass
	


func _on_body_entered(body: Node2D) -> void:
	get_node("/root/main").collect_coin()
	queue_free()
	
	
