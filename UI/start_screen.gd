extends Node2D


func _ready():
	$TitleAnimation.play("woo")
	$FrogAnimation.play("default")

func _on_quit_button_pressed():
	get_tree().quit()


func _on_play_game_button_pressed():
	get_tree().change_scene_to_file("res://level/level.tscn")
