extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -300.0
const DECELERATION = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	
	if global.input == false:
		animated_sprite.play("Death")
		if velocity.x > 0:
			velocity.x = max(velocity.x + DECELERATION * delta, 0)
		elif velocity.x < 0:
			velocity.x = min(velocity.x - DECELERATION * delta, 0)
	else:
		# Handle jump.
		if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			
		if direction == 1:
			animated_sprite.flip_h = false
		elif direction == -1:
			animated_sprite.flip_h = true
			
		if direction == 0:
			animated_sprite.play("Idle")
		else:
			animated_sprite.play("Run")
		
		if direction:
			velocity.x = direction * SPEED
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

	
