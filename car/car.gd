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
