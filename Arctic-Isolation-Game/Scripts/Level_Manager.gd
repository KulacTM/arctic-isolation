extends Node

var starting_location = "game_start"

func _on_Exit_River_to_Forest_area_entered(area):
	get_tree().change_scene("res://Scenes/Levels/02_Forest.tscn")
