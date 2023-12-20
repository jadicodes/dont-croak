extends CharacterBody2D
@onready var squish := $SquishSound
@onready var turtle_sprite := $SpriteTurtle
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
	$Splat.set_modulate(Color.RED)
	$Splat.emitting = true
	squish.play()
	$CollisionShape2D.set_deferred("disabled", true)
	turtle_sprite.visible = false
	var positionOfDeath = turtle_sprite.global_position
	print(positionOfDeath)
	await squish.finished
	queue_free()
	

