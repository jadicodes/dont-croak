extends CharacterBody2D


@export var SPEED : int = 80
@export var ySpeed : int = 80
var can_move = false

func _ready() -> void:
	velocity = Vector2(SPEED, ySpeed)


func _physics_process(_delta) -> void:
	if can_move == true:
		velocity = Vector2(SPEED, ySpeed)
	else:
		velocity = Vector2(0, 0)

	move_and_slide()


func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	can_move = true
