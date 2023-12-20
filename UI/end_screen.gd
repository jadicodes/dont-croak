extends Control


func _process(_delta):
	if WinOrLose.win == true:
		$WinLoseLabel.text = "You win!"
	else:
		$WinLoseLabel.text = "Get rekt"


func _on_button_pressed():
	get_tree().change_scene_to_file("res://level/level.tscn")



func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://UI/start_screen.tscn")
