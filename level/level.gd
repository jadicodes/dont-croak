extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	WinOrLose.win = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_win_zone_body_entered(body):
	if body.is_in_group("car"):
		set_win()


func set_win():
	WinOrLose.swap()
	get_tree().change_scene_to_file("res://UI/end_screen.tscn")
