extends CharacterBody2D


@onready var turtle_sprite := $SpriteTurtle
@onready var splat := $Splat

const SPEED = 50


func _ready():
	velocity = Vector2(0, -SPEED)


func _physics_process(_delta):
	var collided := move_and_slide()
	if collided:
		velocity.y *= -1
		turtle_sprite.flip_v = !turtle_sprite.flip_v
		
		
func _on_area_2d_body_entered(body):
	#if body.is_in_group("car"):
		#spawn()
	if body.is_in_group("very_deadly_obstacles"):
		die()


func die():
	splat.set_modulate(Color.RED)
	splat.emitting = true
	SFX.play_squish()
	$CollisionShape2D.set_deferred("disabled", true)
	turtle_sprite.visible = false
	var position_of_death = turtle_sprite.global_position
	print(position_of_death)
	queue_free()
	

