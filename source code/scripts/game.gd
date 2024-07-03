extends Node2D

const PauseMenu = preload("res://scenes/pause_menu.tscn")

func _process(delta):
	if global.input and Input.is_action_just_pressed("pause"):
		global.disable_input()
		Engine.time_scale = 0
		var pause_screen = PauseMenu.instantiate()
		add_child(pause_screen)
