extends Area2D

@onready var _animation_player = $AnimationPlayer

func _ready() -> void:
	_animation_player.play("spinning_coin")
	


func _on_body_entered(_body: Node2D) -> void:
	Data.coins_data += 1
	queue_free()
	
	
