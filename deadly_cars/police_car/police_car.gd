extends CharacterBody2D


@onready var h_bad_car_sprite := $SpriteHorizontalBadCar

const SPEED : int = 200


func _ready() -> void:
	velocity = Vector2(-SPEED, 0)


func _physics_process(_delta) -> void:
	move_and_slide()
