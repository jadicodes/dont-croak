extends CharacterBody2D


const SPEED = 300.0


func _physics_process(delta):

	var direction := Vector2(0,0)
	
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_right"):
		direction.x += 1
		
		
	direction = direction.normalized()

	move_and_collide(direction * SPEED * delta)


func _on_area_2d_body_entered(body):
	if body.is_in_group("deadly_obstacles"):
		kill()
	


func kill():
	queue_free()
	#do end_screen please
	get_tree().change_scene_to_file("res://UI/end_screen.tscn")
	

