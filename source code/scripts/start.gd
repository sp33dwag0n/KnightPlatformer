extends Node

@onready var death_popup = %"Death Popup"

func _on_start_button_down():
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_quit_button_down():
	get_tree().quit()
