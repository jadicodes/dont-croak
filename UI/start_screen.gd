extends Node2D


func _ready():
	$AnimationPlayer.play("woo")
	$CroakSound.play()
	await $CroakSound.finished
	$CrashSound.play()
	$Splat.set_modulate(Color.RED)
	$Splat2.set_modulate(Color.RED)
	$Splat3.set_modulate(Color.RED)
	$Splat4.set_modulate(Color.RED)
	$Splat.emitting = true
	$Splat2.emitting = true
	$Splat3.emitting = true
	$Splat4.emitting = true

func _on_quit_button_pressed():
	get_tree().quit()


func _on_play_game_button_pressed():
	get_tree().change_scene_to_file("res://level/level.tscn")
