extends Node

var score = 0
var maxScore = 0
var velocities = [600, 800, 900, 1000, 1100, 1200]
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
		count += 100	
	score += 100
	if score >= maxScore:
		maxScore = score
	updateLevel()
