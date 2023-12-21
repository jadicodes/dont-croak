extends Area2D

var slow_amount : int = 10


func _on_body_entered(body) -> void:
	if body.is_in_group("car"):
		Speed.slow_speed(slow_amount)
