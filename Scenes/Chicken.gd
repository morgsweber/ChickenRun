extends KinematicBody2D

export (int) var run_speed = 350
export var gravity = 2500
export var jump_speed = -1000

var velocity = Vector2()

onready var _animated_sprite = $AnimatedSprite

func _process(_delta):
	if Input.is_action_pressed("ui_right"):
		_animated_sprite.play("run")
	else:
		_animated_sprite.stop()

func get_input():
	velocity.x = Input.get_action_strength("ui_right")
	velocity.y = Input.get_action_strength("ui_up")

	velocity *= run_speed
	
	if velocity.y < 0:
		_animated_sprite.play("ui_up")
	elif velocity.x > 0:
		_animated_sprite.play("run")
	else:
		_animated_sprite.stop()
		_animated_sprite.frame = 0


func get_input_side():
	velocity.x = Input.get_action_strength("ui_right")
	velocity.x *= run_speed
	
	#if is_on_floor() and Input.is_action_just_pressed("jump"):
	#	velocity.y = jump_speed
		
		#get_tree().call_group("HUD", "updateScore")
	
	if velocity.x > 0:
		_animated_sprite.play("run")
	else:
		_animated_sprite.stop()
		_animated_sprite.frame = 0
		
func _physics_process(delta):
	velocity.y += gravity * delta
	get_input_side()
	velocity = move_and_slide(velocity, Vector2.UP)
	
	#var collision_info = move_and_collide(velocity)
	#if collision_info.Enemy:
	#	print("morreu")
		#get_tree().change_scene("res://Scenes/GameOver.tscn")

		
