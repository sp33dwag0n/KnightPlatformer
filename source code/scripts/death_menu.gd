extends CanvasLayer



func _on_respawn_button_down():
	Engine.time_scale = 1
	global.enable_input()
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	queue_free()



func _on_menu_button_down():
	Engine.time_scale = 1
	global.enable_input()
	get_tree().change_scene_to_file("res://scenes/main.tscn")
	queue_free()
