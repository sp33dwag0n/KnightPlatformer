extends Node2D

const SPEED = 30
var direction = 1

@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_bottom_right = $RayCastBottomRight
@onready var ray_cast_bottom_left = $RayCastBottomLeft

@onready var animated_sprite = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding() or ray_cast_left.is_colliding() or not ray_cast_bottom_left.is_colliding() or not ray_cast_bottom_right.is_colliding():
		direction *= -1
		animated_sprite.flip_h = !animated_sprite.flip_h
	
	position.x += direction * SPEED * delta
	
