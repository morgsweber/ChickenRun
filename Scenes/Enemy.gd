extends KinematicBody2D

export (int) var run_speed = 150
export var gravity = 2500
export var jump_speed = -1000

var velocity = Vector2()

onready var _animated_sprite = $AnimatedSprite

func _process(_delta):
	velocity.x = 1
	_animated_sprite.play("running")
	velocity.x *= run_speed

func _physics_process(delta):
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity, Vector2.UP)