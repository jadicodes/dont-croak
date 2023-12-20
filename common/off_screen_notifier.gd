extends Node2D

func _on_visible_on_screen_notifier_2d_screen_exited():
	get_parent().queue_free()
