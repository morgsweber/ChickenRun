extends CanvasLayer

onready var scoreLabel = get_tree().root.get_node("Level/Score")
onready var level = get_tree().root.get_node("Level")
onready var score := 0
onready var aux := 0

func updateScore() -> void:	
	score += 1
	aux += 0
	scoreLabel.get_children()[0].text = "SCORE: " + str(score)
	
	if aux == 2:
		level.updateScore()
		aux = 0
