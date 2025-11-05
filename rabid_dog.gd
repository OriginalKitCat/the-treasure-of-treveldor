extends CharacterBody2D

var weed_speed = 70
var followplayer = false
@onready var _animated_sprite = $AnimatedSprite2D
var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready() -> void:
	_animated_sprite.play("waiting")
	
	
func  _physics_process(delta: float) -> void:
	velocity.x = 0
	if not is_on_floor():
		velocity.y += gravity * delta
	if followplayer:
		if Data.current_payer_pos.x < global_position.x:
			velocity.x = -weed_speed
			#print("Player is left")
			$AnimatedSprite2D.flip_h = false
		if Data.current_payer_pos.x > global_position.x:
			velocity.x += weed_speed
			#print("Player is right")
			$AnimatedSprite2D.flip_h = true
			
	#print("debug_test:")
	#print("Dog_pos:" + str(global_position.x))
	#print("Player_pos:" + str(Data.current_payer_pos))
	move_and_slide()

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		followplayer = true
		$AnimatedSprite2D.play("walking")


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "player":
		followplayer = false
		$AnimatedSprite2D.play("waiting")
