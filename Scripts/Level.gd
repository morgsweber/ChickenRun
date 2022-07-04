extends Node

var score = 0
var maxScore = 0
var velocities = [600, 800, 900, 1000]
var actual = 0
var count = 0
var velocity = 600

func _physics_process(delta: float) -> void:
	velocity = velocities[actual]
	

func updateLevel():
	if count >= velocities[actual]:
		actual += 1
		count = 0

func updateScore() -> void:
	if actual < velocities.size()-1:
		count += 10	
	score += 10
	if score >= maxScore:
		maxScore = score

func _on_Player_collision() -> void:
	score = 0
	count = 0
	actual = 0
