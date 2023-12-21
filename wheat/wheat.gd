extends StaticBody2D

@onready var standing_sprite := $Wheat1
@onready var fallen_sprite := $Wheat2

func _ready():
	fallen_sprite.visible = false

func _on_area_2d_body_entered(body):
	if body.is_in_group("car") or body.is_in_group("deadly_obstacles"): 
		swap()
		
func swap():
	$Area2D.queue_free()
	standing_sprite.visible = false
	fallen_sprite.visible = true
