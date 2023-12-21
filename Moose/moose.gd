extends CharacterBody2D


@export var SPEED = 80
@export var ySpeed = 80
var can_move = false

func _physics_process(_delta):
	if can_move == true:
		velocity = Vector2(SPEED, ySpeed)
	else:
		velocity = Vector2(0, 0)

	move_and_slide()


func _on_visible_on_screen_notifier_2d_screen_entered():
	can_move = true
