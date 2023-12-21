extends CharacterBody2D


const SPEED : int = 80


func _ready() -> void:
	velocity = Vector2(SPEED, -1.5)


func _physics_process(_delta) -> void:
	move_and_slide()


