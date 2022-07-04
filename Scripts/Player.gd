extends Area2D

var gravityValue = 1000
var skip = -800
var limit = 600
var velocity = Vector2()

func _ready() -> void:
	pass 
	

func _physics_process(delta):
	velocity.y += gravityValue * delta
	
	if Input.is_action_just_pressed("skip"):
		velocity.y = skip
		
	position += velocity * delta
	
	if position.y >= limit:
		position.y = limit
		
