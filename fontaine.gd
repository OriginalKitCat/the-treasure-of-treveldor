extends Area2D

@onready var _animated_sprite = $Sprite2D

func _ready() -> void:
	_animated_sprite.play("fontaine")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_parent().finish_level()
		print("test")
