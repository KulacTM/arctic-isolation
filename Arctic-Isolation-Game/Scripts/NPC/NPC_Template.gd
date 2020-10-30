extends KinematicBody2D

var near_bear

#func _ready():
	

func _process(delta):
	if near_bear:
		print("near_bear")
		get_tree().call_group("Detection", "AddBearSus")



func _on_Area2D_body_entered(body):
	near_bear = true
	


func _on_Area2D_body_exited(body):
	near_bear = false
	get_tree().call_group("Detection", "RemoveBearSus")
