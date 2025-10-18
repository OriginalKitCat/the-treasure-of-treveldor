extends Parallax2D

@export var scroll_speed := Vector2(10, 0)

func _process(delta: float) -> void:
	scroll_offset += scroll_speed * delta
