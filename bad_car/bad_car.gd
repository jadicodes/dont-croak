extends CharacterBody2D

@onready var bad_car_sprite := $SpriteBadCar
const SPEED = 200.0


func _ready():
	velocity = Vector2(0, -SPEED)


func _physics_process(_delta):
	var collided := move_and_slide()
	if collided:
		velocity.y *= -1
		bad_car_sprite.flip_v = !bad_car_sprite.flip_vw
