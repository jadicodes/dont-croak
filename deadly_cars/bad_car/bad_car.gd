extends CharacterBody2D


@onready var bad_car_sprite := $SpriteBadCar
@onready var splat := $Splat
var SPEED = 200.0
var can_move = false


func _physics_process(_delta):
	var collided := move_and_slide()
	if can_move == true:
		if collided:
			SPEED *= -1
			bad_car_sprite.flip_v = !bad_car_sprite.flip_v
		velocity = Vector2(0, -SPEED)
	
	else:
		velocity = Vector2(0, 0)
		

func _on_area_2d_body_entered(body):
	if body.is_in_group("very_deadly_obstacles"):
		die()


func die():
	splat.set_modulate(Color.BLUE)
	splat.emitting = true
	SFX.play_crash()
	$CollisionShape2D.set_deferred("disabled", true)
	bad_car_sprite.visible = false


func _on_on_screen_notifier_screen_entered():
	can_move = true
