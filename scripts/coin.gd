extends Area2D

@onready var game_manager = %"Game Manager"

func _on_body_entered(body):
	game_manager.add_score()
	queue_free()
