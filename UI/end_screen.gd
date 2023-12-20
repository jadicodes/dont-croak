extends Control
@onready var crash := $CrashSound
@onready var win := $WinSound


func _ready():
	if WinOrLose.win == true:
		win.play()
		$WinLoseLabel.text = "You win!"
	else:
		crash.play()
		$WinLoseLabel.text = "Get rekt"


func _on_button_pressed():
	get_tree().change_scene_to_file("res://level/level.tscn")



func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://UI/start_screen.tscn")


