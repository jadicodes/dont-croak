extends CharacterBody2D

#@onready var long_car := $Sprite2D
const SPEED = 80


func _ready():
	velocity = Vector2(SPEED, 0)


func _physics_process(_delta):
	move_and_slide()


