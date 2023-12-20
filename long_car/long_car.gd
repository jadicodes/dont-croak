extends CharacterBody2D


const SPEED = 80


func _ready():
	velocity = Vector2(SPEED, -1.5)


func _physics_process(_delta):
	move_and_slide()


