extends Area2D

@onready var timer = $Timer
const DeathMenu = preload("res://scenes/death_menu.tscn")


func _on_body_entered(body):
	if global.input:
		global.disable_input()
		Engine.time_scale = 0.5
		body.get_node("AnimatedSprite2D").play("Death")
		await get_tree().create_timer(1.0).timeout
		body.get_node("AnimatedSprite2D").speed_scale = 0
		
		print("timer timeout")
		var death_screen = DeathMenu.instantiate()
		add_child(death_screen)
	
	
