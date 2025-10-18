extends Node2D

var coins_collected = 0

func _ready():
	pass
	
func _process(delta):
	pass
	
	
func collect_coin():
	coins_collected += 1
	print(coins_collected )
