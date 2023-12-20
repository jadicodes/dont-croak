extends CharacterBody2D

@onready var h_bad_car_sprite := $SpriteHorizontalBadCar
const SPEED = 200.0


func _ready():
	velocity = Vector2(SPEED, 0)


func _physics_process(_delta):
	var collided := move_and_slide()
	if collided:
		velocity.x *= -1
		h_bad_car_sprite.flip_v = !h_bad_car_sprite.flip_v
