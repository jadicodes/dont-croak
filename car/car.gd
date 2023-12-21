extends CharacterBody2D


@onready var animation_player := $AnimationPlayer

var can_move = false


func _physics_process(delta):
	var direction := Vector2(0,0)
	if can_move == true:
		animation_player.stop()
		direction = Vector2(1,0)
		
		if Input.is_action_pressed("move_up"):
			direction.y -= 1
		if Input.is_action_pressed("move_down"):
			direction.y += 1

		move_and_collide(direction * Speed.speed * delta)
	else:
		animation_player.play("shake")
	
	move_and_collide(direction * Speed.speed * delta)


func _on_start_timer_timeout():
	can_move = true


func _on_area_2d_body_entered(body):
	if body.is_in_group("deadly_obstacles"):
		die()
	if body.is_in_group("friction"):
		slow()


func die():
	get_tree().change_scene_to_file("res://UI/end_screen.tscn")


func slow():
	Speed.speed -= 25
