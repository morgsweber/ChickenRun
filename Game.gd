extends Node2D

func _ready() -> void:
	pass # Replace with function body.


func _on_Area2D_body_entered(body: Node) -> void:
	get_tree().change_scene("res://Scenes/GameOver.tscn")
	pass # Replace with function body.
