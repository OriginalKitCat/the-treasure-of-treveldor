extends Node2D

var lives
@onready var levelalreadycollectedcoins = Data.coins_data

func _physics_process(_delta: float) -> void:
	lives = Data.lives_data
	$CanvasLayer/coin_panal/Label.text = str(Data.coins_data)
	$CanvasLayer/live_panal/Label.text = str(lives)
	if lives < 0:
		Data.coins_data = levelalreadycollectedcoins
		get_tree().change_scene_to_file("res://start screen.tscn")
		queue_free()

func collect_live():
	Data.lives_data += 1

func was_killed():
	Data.lives_data -= 1


func finish_level():
	get_tree().change_scene_to_file("res://start screen.tscn")
	queue_free()
