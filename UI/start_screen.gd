extends Node2D
@onready var how_to_play := $ControlsButton/ControlsLabel/HowToPlayRect
@onready var sfw_label := $SFWButton/SFWLabel
@onready var nsfw_label := $SFWButton/NSFWLabel


func _ready() -> void:
	$TitleAnimation.play("woo")
	$FrogAnimation.play("default")
	how_to_play.hide()
	nsfw_label.hide()

func _on_quit_button_pressed() -> void:
	get_tree().quit()


func _on_play_game_button_pressed() -> void:
	get_tree().change_scene_to_file("res://level/level.tscn")


func _on_controls_button_pressed() -> void:
	how_to_play.show()


func _on_ok_button_pressed() -> void:
	how_to_play.hide()



func _on_sfw_button_toggled(_button_pressed) -> void:
	SFX.nsfw_mode = !SFX.nsfw_mode
	if SFX.nsfw_mode == true:
		nsfw_label.show()
		sfw_label.hide()
	else:
		nsfw_label.hide()
		sfw_label.show()
