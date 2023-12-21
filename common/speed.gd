extends Node

var speed = 50

func slow_speed(slow_amount):
	speed = speed - slow_amount
	return speed
	
func set_speed():
	speed = 50
	return speed
