extends CharacterBody2D

var speed = 40
@onready var player = $player
@onready var _animated_sprite = $AnimatedSprite2D
var direction = 1
var countdown = 60
var set_countdown_to = countdown * 2 #Double change_countdown because the bird starts in the middle

func _ready() -> void:
	velocity.y = 0 
	_animated_sprite.play("fly")
	$AnimatedSprite2D.flip_h = (direction == 1)

func _physics_process(delta: float) -> void:
	velocity.x = direction * speed
	countdown -= 1 
	velocity.y = 0 
	if countdown == 0:
		countdown = set_countdown_to
		direction = -direction
		$AnimatedSprite2D.flip_h = (direction == 1)
	move_and_slide()
	
