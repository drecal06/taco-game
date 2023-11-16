extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.

@onready var animation: AnimatedSprite2D = get_node("AnimatedSprite2D") # MAKE SURE TO ENTER THE SPRITE NAME OF YOUR SPRITE



func _physics_process(delta):
	# Add the gravity.


	# Handle Jump.
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var leftright = Input.get_axis("ui_left", "ui_right")
	var updown = Input.get_axis("ui_up", "ui_down")
	if leftright or updown:
		if leftright:
			velocity.x = leftright * SPEED
			if leftright == 1:
				animation.animation = "right"
				animation.play()
			elif leftright == -1:
				animation.animation = "left"
				animation.play()
		else:
			velocity.x = move_toward(velocity.x, 0, SPEED)
		
		if updown:
			velocity.y = updown * SPEED
			if updown == 1:
				animation.animation = "down"
				animation.play()
			elif updown == -1:
				animation.animation = "up"
				animation.play()
		else:
			velocity.y = move_toward(velocity.x, 0, SPEED)
	else:
		velocity.y = move_toward(velocity.x, 0, SPEED)
		velocity.x = move_toward(velocity.x, 0, SPEED)
		animation.animation = "idle"
		animation.play()
		

	Global.x = self.position.x
	Global.y = self.position.y
	
	animation.play()
	move_and_slide()
	

func die():
	# run the die animation
	# end the game
	get_tree().paused = true
