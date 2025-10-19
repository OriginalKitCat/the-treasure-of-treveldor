extends Node2D

signal level_finished(updated_coins)

var coins = CoinsData.coins_data
var lives = 3

func _ready():
	$CanvasLayer/coin_panal/Label.text = str(lives)
	$CanvasLayer/Control/Label.text = str(coins)  # Münzen-UI beim Start anzeigen

func _physics_process(delta: float) -> void:
	if lives < 0:
		get_tree().change_scene_to_file("res://start screen.tscn")
		queue_free()
	
func collect_coin():
	coins += 1
	CoinsData.setvalue(coins)
	$CanvasLayer/Control/Label.text = str(coins)

func collect_live():
	lives += 1
	$CanvasLayer/coin_panal/Label.text = str(lives)

func was_killed():
	lives -= 1
	$CanvasLayer/coin_panal/Label.text = str(lives)

func finish_level():
	CoinsData.setvalue(coins)
	get_tree().change_scene_to_file("res://start screen.tscn")
	queue_free()
