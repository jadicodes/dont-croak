extends StaticBody2D

@onready var barrier_sprite := $BarrierSprite
@onready var splat := $Splat

func _on_area_2d_body_entered(body) -> void:
	if body.is_in_group("car") or body.is_in_group("deadly_obstacles"):
		die()


func die() -> void:
	splat.set_modulate(Color.SADDLE_BROWN)
	splat.emitting = true
	SFX.play_crash()
	$CollisionShape2D.set_deferred("disabled",true)
	$Area2D.queue_free()
	barrier_sprite.visible = false
