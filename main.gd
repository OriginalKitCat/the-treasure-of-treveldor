extends Node2D

var coins_collected = 0
var lives = 3

func _ready():
	$CanvasLayer/coin_panal/Label.text = str(lives)
	
	
func collect_coin():
	coins_collected += 1
	print(coins_collected)
	$CanvasLayer/Control/Label.text = str(coins_collected)
	
func was_killed():
	lives -= 1
	$CanvasLayer/coin_panal/Label.text = str(lives)

#func wind_towards(var wind_direction):
	
