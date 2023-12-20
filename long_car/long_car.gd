extends CharacterBody2D

#@onready var long_car := $Sprite2D
const SPEED = 80


func _ready():
	velocity = Vector2(SPEED, 0)


func _physics_process(_delta):
	print(velocity)
	move_and_slide()
