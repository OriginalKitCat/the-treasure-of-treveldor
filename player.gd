extends CharacterBody2D

const run_speed = 300.0
const jump_velocity = -400.0
var windspeed = 0
@onready var _animation_player = $AnimationPlayer

var gravity: int = ProjectSettings.get_setting("physics/2d/default_gravity")


func _ready() -> void:
	_animation_player.play("standing")
	

func  _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity.y += gravity * delta
		
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = jump_velocity
		
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * run_speed
		$PlayerWaiting.flip_h = (direction == -1)
	else:
		velocity.x =move_toward(velocity.x, 0, run_speed)
	velocity.x += windspeed
	move_and_slide()

func wind_towards(wind_direction: int) -> void:
	windspeed = wind_direction
	
