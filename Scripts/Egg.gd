extends Area2D

onready var level = get_tree().root.get_node("Level")
var velocity = 600
var direction = Vector2()
var pos_m = 0

func _ready() -> void:
	direction = Vector2(-1, 0) #move the object to left side
	
	
func _physics_process(delta: float) -> void:
	velocity = level.velocity
	position.x += direction.x * delta * velocity

