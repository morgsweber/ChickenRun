extends CanvasLayer

onready var scoreLabel = get_tree().root.get_node("Level/Score")
onready var score := 0

func updateScore() -> void:	
	score += 1
	scoreLabel.get_children()[0].text = "SCORE: " + str(score)
	
