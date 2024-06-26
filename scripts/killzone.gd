extends Area2D

@onready var timer = $Timer


func _on_body_entered(body):
	if global.input:
		global.switch_input()
		Engine.time_scale = 0.5
		body.get_node("AnimatedSprite2D").play("Death")
		timer.start()
	


func _on_timer_timeout():
	Engine.time_scale = 1
	global.switch_input()
	get_tree().change_scene_to_file("res://scenes/main.tscn")
