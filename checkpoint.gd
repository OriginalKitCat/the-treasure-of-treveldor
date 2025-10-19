extends Area2D

@onready var checkpoint_manager = $"../CheckpointManager"

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))
	set_lantern_off()


func _on_body_entered(body: Node2D) -> void:
	if body.name == "player":
		checkpoint_manager.last_location = $Marker2D.global_position
		set_lantern_on()

func set_lantern_off():
	$Laterna_image.texture = load("res://images/laterna_off.PNG")

func set_lantern_on():
	$Laterna_image.texture = load("res://images/laterna_on.PNG")
