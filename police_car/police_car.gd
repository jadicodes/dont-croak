extends CharacterBody2D


@onready var police_sprite := $PoliceCarSprite
var can_move = false
const SPEED = 85
 
func _physics_process(_delta):
	if can_move == true:
		velocity = Vector2(SPEED, 1)
	else:
		velocity = Vector2(0,0)
		
	move_and_slide()


func _on_visible_on_screen_notifier_2d_screen_entered():
	SFX.play_siren()
	can_move = true
	