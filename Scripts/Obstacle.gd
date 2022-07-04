extends Area2D

var velocity = 600
var direction = Vector2()

func _ready() -> void:
	direction = Vector2(-1, 0) #move the object to left side
	
	
func _physics_process(delta: float) -> void:
	position.x += direction.x * delta * velocity


func _on_Visibility_screen_exited() -> void:
	queue_free()
