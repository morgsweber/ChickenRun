extends CanvasLayer

onready var scoreLabel := $Score
onready var score := 0

func updateScore() -> void:	
	score += 1
	scoreLabel.text = "SCORE: " + str(score)
	
