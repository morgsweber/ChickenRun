extends Area2D

func _on_Area2D_body_entered(body: Node) -> void:
	if body.name == "Chicken":
		#audio
		get_tree().call_group("SCORE", "updateScore")
		queue_free()
