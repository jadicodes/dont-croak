extends CharacterBody2D


@onready var sprite_frog := $SpriteFrog
@onready var splat := $Splat
const SPEED = 65.0


func _ready():
	velocity = Vector2(0, -SPEED)


func _physics_process(_delta):
	var collided := move_and_slide()
	if collided:
		velocity.y *= -1
		sprite_frog.flip_v = !sprite_frog.flip_v


func _on_area_2d_body_entered(body):
	if body.is_in_group("car") or body.is_in_group("deadly_obstacles"):
		die()


# frogs do not SPLAT
func die():
	splat.set_modulate(Color.RED)
	splat.emitting = true
	SFX.play_squish()
	$CollisionShape2D.set_deferred("disabled", true)
	$Area2D.queue_free()
	sprite_frog.visible = false
