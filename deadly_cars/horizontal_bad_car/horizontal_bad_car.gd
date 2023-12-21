extends CharacterBody2D

@export var SPEED = 200

@onready var h_bad_car_sprite := $SpriteHorizontalBadCar
@onready var splat := $Splat

var can_move = false


func _physics_process(_delta):
	if can_move == true:
		velocity = Vector2(-SPEED, 0)
	
	else:
		velocity = Vector2(0, 0)
	
	move_and_slide()

func _on_area_2d_body_entered(body):
	if body.is_in_group("very_deadly_obstacles"):
		die()


func die():
	splat.set_modulate(Color.SADDLE_BROWN)
	splat.emitting = true
	SFX.play_crash()
	$CollisionShape2D.set_deferred("disabled", true)
	h_bad_car_sprite.visible = false


func _on_on_screen_notifier_screen_entered():
	can_move = true
