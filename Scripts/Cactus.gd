extends Area2D

onready var level = get_tree().root.get_node("Level")
var velocity = 600
var direction = Vector2()
var pos_m = 0
var points = true

func _ready() -> void:
	direction = Vector2(-1, 0) #move the object to left side
	
func _physics_process(delta: float) -> void:
	velocity = level.velocity
	position.x += direction.x * delta * velocity
	if global_position.x <= pos_m and points:
		level.updateScore()
		points = false 

func _on_Visibility_screen_exited() -> void:
	queue_free()
