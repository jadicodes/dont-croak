extends Node

var speed : int = 50

func slow_speed(slow_amount) -> int:
	speed = speed - slow_amount
	return speed
	
func set_speed() -> int:
	speed = 50
	return speed
