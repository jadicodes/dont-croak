extends CharacterBody2D


@onready var h_bad_car_sprite := $SpriteHorizontalBadCar
const SPEED = 200


func _ready():
	velocity = Vector2(-SPEED, 0)


func _physics_process(_delta):
	move_and_slide()
