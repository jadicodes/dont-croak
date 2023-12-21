extends CharacterBody2D


var can_move = false
var _slow_factor := 25


func _physics_process(delta) -> void:
	var direction := Vector2(0,0)
	if can_move == true:
		direction = Vector2(1,0)
		
		if Input.is_action_pressed("move_up"):
			direction.y -= 1
		if Input.is_action_pressed("move_down"):
			direction.y += 1

		move_and_collide(direction * Speed.speed * delta)
	
	move_and_collide(direction * Speed.speed * delta)


func _on_start_timer_timeout() -> void:
	can_move = true


func _on_area_2d_body_entered(body) -> void:
	if body.is_in_group("deadly_obstacles"):
		die()
	if body.is_in_group("friction"):
		slow()


func die() -> void:
	get_tree().change_scene_to_file("res://UI/end_screen.tscn")


func slow() -> void:
	Speed.speed -= _slow_factor
