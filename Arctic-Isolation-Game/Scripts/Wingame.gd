extends Area2D


var can_win = false
var can_click

func _on_WinGame_body_entered(body):
	$Press_E.show()
	can_click = true
	if Inventory.has_first_battery and Inventory.has_second_battery and Inventory.has_third_battery:
		can_win = true
		
func _on_WinGame_body_exited(body):
	can_click = false
	$Press_E.hide()
	
func _process(delta):
	if can_win and can_click and Input.is_action_just_pressed("action"):
		get_tree().change_scene("res://Scenes/Levels/Win.tscn")
	elif !can_win and can_click and Input.is_action_just_pressed("action"):
		print("Иди собирай батареи")



