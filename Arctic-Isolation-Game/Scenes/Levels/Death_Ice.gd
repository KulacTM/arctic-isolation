extends Node2D

var on_death_ice = false

func _physics_process(_delta):
	if on_death_ice:
		get_tree().call_group("Detection", "AddSus")

	elif on_death_ice == false and Inventory.in_lake_zone == false:
		get_tree().call_group("Detection", "RemoveSus")
	

func _on_Area2D_body_entered(body):
	$Ice.playing = true
	on_death_ice = true
	$TreshTimer.start()


func _on_Area2D_body_exited(body):
	$Ice.playing = false
	on_death_ice = false


func _on_TreshStart_timeout():
	var tresh = add_child(load("res://Scenes/Treshinki.tscn").instance())
	
