extends Area2D

@onready var coin_manager = $".."

func _on_body_entered(body):
	coin_manager.add_score()
	queue_free()
