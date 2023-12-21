extends Node2D

func _ready():
	WinOrLose.win = false
	Speed.set_speed()
	$CarAnimation.play("start")


func _on_win_zone_body_entered(body):
	if body.is_in_group("car"):
		set_win()


func set_win():
	WinOrLose.swap()
	get_tree().change_scene_to_file("res://UI/end_screen.tscn")
