extends CharacterBody2D


const SPEED = 300.0
var collided := false


#func _physics_process(delta):
#
#	collided = move_and_collide()
#	if direction:
#		velocity.x = direction * SPEED
#	else:
#		velocity.x = move_toward(velocity.x, 0, SPEED)
#
#	move_and_collide()
