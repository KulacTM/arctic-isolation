extends Node

onready var start_1 = $"../Starting_Points/Start1"
onready var start_2 = $"../Starting_Points/Start2"
onready var start_3 = $"../Starting_Points/Start3"
onready var player = $"../Player"

var start_point

func _physics_process(delta):
	print(start_point)


func _on_Exit_River_to_Forest_body_entered(body):
	start_point = 1
	get_tree().change_scene("res://Scenes/Levels/02_Forest.tscn")
	change_start_point()
	
func change_start_point():
	if start_point == 1:
		player.position == start_1.position
	
