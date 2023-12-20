extends CharacterBody2D

const SPEED = 100.0
var can_move = false

func _physics_process(delta):
	if can_move == true:
		var direction := Vector2(1,0)
		
		if Input.is_action_pressed("move_up"):
			direction.y -= 1
		if Input.is_action_pressed("move_down"):
			direction.y += 1

		move_and_collide(direction * SPEED * delta)
	else:
		var direction := Vector2(0,0)
		move_and_collide(direction * SPEED * delta)


func _on_start_timer_timeout():
	can_move = true


func _on_area_2d_body_entered(body):
	if body.is_in_group("deadly_obstacles"):
		die()


func die():
	get_tree().change_scene_to_file("res://UI/end_screen.tscn")
