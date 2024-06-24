extends Area2D

@onready var timer = $Timer
@onready var game_manager = %"Game Manager"


func _on_body_entered(body):
	print("Died")
	Engine.time_scale = 0.5
	#body.get_node("CollisionShape2D").queue_free()
	body.get_node("AnimatedSprite2D").play("Death")
	game_manager.reset_score()
	timer.start()
	


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
