extends Node2D

onready var pos = $Position.position
onready var player = get_tree().root.get_node("Level/Player")
onready var score = get_tree().root.get_node("Level/Score")

var objects = [preload("res://Scenes/Obstacle.tscn"), 
			   preload("res://Scenes/Egg.tscn"),
			   preload("res://Scenes/Cactus.tscn") ]
			
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
		
		var pos = randi() % 3
		var object = objects[pos].instance()

		object.velocity = velocity 
		object.pos_m  = player.position.x
		$Position.add_child(object)
		
func _on_Player_collision() -> void:
	pass
