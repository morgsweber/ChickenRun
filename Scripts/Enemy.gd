extends Area2D

var gravityValue = 2500
var skip = -1500
var limit = 460
var velocity = Vector2()
var fGrav = 3

func _physics_process(delta):
	
	velocity.y += gravityValue * delta * fGrav
		
	position += velocity * delta
	
	if position.y >= limit:
		position.y = limit
		$AnimatedSprite.play("running")

