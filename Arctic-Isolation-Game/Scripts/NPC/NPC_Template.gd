extends KinematicBody2D

var near_bear = false

func _ready():
	near_bear = false
	

func _process(delta):
	if near_bear:
		get_tree().call_group("Detection", "AddBearSus")

	if near_bear == false:
		get_tree().call_group("Detection", "RemoveBearSus")


func _on_Area2D_body_entered(body):
	near_bear = true
	print("ты возле медведя")


func _on_Area2D_body_exited(body):
	near_bear = false
