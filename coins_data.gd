extends Node

var player
var save_location = null
var was_killed
var coins_data = 0
var wind = 0
var lives_data = 3

func setvalue(value: int):
	coins_data = value
