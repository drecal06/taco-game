extends Area2D
var speed =3 


@onready var animation: AnimatedSprite2D = get_node("AnimationPlayer") # MAKE SURE TO ENTER THE SPRITE NAME OF YOUR SPRITE



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.position.x>Global.x:
		self.position.x -= speed
		animation.play("right")
		

	if self.position.x<Global.x:
		self.position.x += speed
		animation.play("left")
		
		
	if self.position.y>Global.y:
		self.position.y -= speed
		
	if self.position.y<Global.y:
		self.position.y += speed



func _on_body_entered(body):
	if body.has_method("die"):
		body.die()
