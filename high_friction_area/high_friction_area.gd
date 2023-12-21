extends Area2D

var slow_amount = 10


func _on_body_entered(body):
	if body.is_in_group("car"):
		Speed.slow_speed(slow_amount)
