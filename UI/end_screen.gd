extends Control


@onready var win := $WinSound
@onready var lose := $LoseSound
@onready var win_lose_label := $WinLoseLabel
@onready var real_credits := $CreditsButton/CreditsForReal


func _ready() -> void:
	if WinOrLose.win == true:
		win.play()
		win_lose_label.text = "You win!"
	else:
		SFX.play_crash()
		win_lose_label.text = "YOU CROAKED!"
		if SFX.nsfw_mode == false:
			lose.play()
		else:
			$LoseNSFWSound.play()

	real_credits.hide()


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://level/level.tscn")


func _on_main_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://UI/start_screen.tscn")


func _on_credits_button_pressed() -> void:
	real_credits.show()


func _on_ok_button_pressed() -> void:
	real_credits.hide()
