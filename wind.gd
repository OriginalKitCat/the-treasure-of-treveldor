extends Area2D

@onready var player
@onready var _animated_sprite = $AnimatedSprite2D
 
func  _ready():
	player = $"../../player"
	_animated_sprite.play("wind")



func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		Data.wind = 30

func _on_body_exited(body: Node2D) -> void:
	if body.name == "player":
		Data.wind = 0
