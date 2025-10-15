extends Camera2D

@onready var player = $".."

var target_zoom = Vector2(2,  2)
var zoom_speed = 2.0

func _process(delta: float) -> void:
	global_position = player.global_position
	zoom = lerp(zoom, target_zoom, delta * zoom_speed)
	


	
