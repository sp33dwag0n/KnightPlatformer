extends AnimatableBody2D

@onready var player = %Player
@onready var timer = $Timer
@onready var collision_shape = $CollisionShape2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if player.is_on_floor() and Input.is_action_just_pressed("Sneak"):
		remove_child(collision_shape)
		timer.start()


func _on_timer_timeout():
	add_child(collision_shape)
