extends Node2D

onready var pos = $Position.position
onready var player = get_tree().root.get_node("Level/Player")
onready var score = get_tree().root.get_node("Level/Score")

var objects = [preload("res://Scenes/Obstacle.tscn"), 
			   preload("res://Scenes/Egg.tscn"), ]
			
var time = 0.2
var interval = 0.0
var intMax = 0.8
var intMin = 2.5
var velocity = 700

func _ready() -> void:
	pass 
	
func _physics_process(delta: float) -> void:
	time += delta
	if time >= interval:
		time = 0.0
		interval = rand_range(intMin, intMax)
		
		var pos = randi() % 2
		var object = objects[pos].instance()

		object.velocity = velocity 
		object.pos_m  = player.position.x
		$Position.add_child(object)
		
func clearObjects():
	if $Position.get_child_count() > 0:
		for i in $Position.get_children():
			print()
			i.queue_free()

func _on_Player_collision() -> void:
	if $Position.get_child(0).get_path() == "/root/Level/RandonScene/Position/Obstacle":
		print("Morreu")
	else:
		score.updateScore()
		clearObjects()
