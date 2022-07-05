extends Area2D

onready var score = get_tree().root.get_node("Level/Score")

var gravityValue = 2500
var skip = -1500
var limit = 460
var velocity = Vector2()
var inFloor = false
var slow = false
var fGrav = 3
var nSkip = 2
var skipA = 0

signal collision 
	
func _physics_process(delta):
	if Input.is_action_just_pressed("skip") and slow:
		velocity.y += gravityValue * delta
	else: 
		velocity.y += gravityValue * delta * fGrav
		slow = false
	
	if Input.is_action_just_pressed("skip") and skipA < nSkip:
		velocity.y = skip	
		$PlayerSprite.play("jumping")
		skipA += 1
		
	position += velocity * delta
	
	if position.y >= limit:
		position.y = limit
		slow = true
		skipA = 0
		$PlayerSprite.play("running")

func _on_Player_area_entered(area: Area2D) -> void:
	if area.get_path() == "/root/Level/RandonScene/Position/Obstacle":
		get_tree().change_scene("res://Scenes/GameOver.tscn")
	elif area.get_path() == "/root/Level/RandonScene/Position/Cactus":
		get_tree().change_scene("res://Scenes/GameOver.tscn")
	else:
		score.updateScore()
		area.queue_free()
		
	emit_signal("collision") 
