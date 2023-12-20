extends CharacterBody2D

@onready var squish := $SquishSound
@onready var sprite_frog := $SpriteFrog
const SPEED = 75.0


func _ready():
	velocity = Vector2(0, -SPEED)


func _physics_process(_delta):
	var collided := move_and_slide()
	if collided:
		velocity.y *= -1
		sprite_frog.flip_v = !sprite_frog.flip_v


func _on_area_2d_body_entered(body):
	if body.is_in_group("car"):
		die()


func die():
	squish.play()
	$CollisionShape2D.set_deferred("disabled", true)
	$Sprite2D.visible = false
	await squish.finished
	queue_free()
