extends CanvasLayer

onready var scoreLabel = get_tree().root.get_node("Level/Score")
onready var level = get_tree().root.get_node("Level")
onready var score := 0

func updateScore() -> void:	
	score += 1
	scoreLabel.get_children()[0].text = "SCORE: " + str(score)
	if score >= 15 and score <= 25:
		level.updateScore()
