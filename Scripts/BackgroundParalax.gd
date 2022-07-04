extends ParallaxBackground

var velocity = 600

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	scroll_offset.x -= velocity * delta
