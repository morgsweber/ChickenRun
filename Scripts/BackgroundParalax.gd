extends ParallaxBackground

onready var level = get_tree().root.get_node("Level")
var velocity = 600

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	scroll_offset.x -= velocity * delta
	velocity = level.velocity
