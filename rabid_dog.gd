extends CharacterBody2D

var weed_speed = 30
var followplayer = false
@onready var _animated_sprite = $AnimatedSprite2D

func _ready() -> void:
	_animated_sprite.play("waiting")
	
	
func  _physics_process(_delta: float) -> void:
	if followplayer:
		if Data.current_payer_pos.x < global_position.x:
			velocity.x -= weed_speed
		if Data.current_payer_posx > global_position.x:
			velocity.x += weed_speed
	move_and_slide()


func _on_area_2d_area_exited(body: Node2D) -> void:
	if body.name == "player":
		followplayer = false


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		followplayer = true
