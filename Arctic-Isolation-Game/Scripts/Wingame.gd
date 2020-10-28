extends Area2D


var can_win = false
var can_click

func _on_WinGame_body_entered(body):
	can_click = true
	if Inventory.has_first_battery and Inventory.has_second_battery and Inventory.has_third_battery:
		can_win = true
		
func _on_WinGame_body_exited(body):
	can_click = false
	
	
func _process(delta):
	if can_win and can_click and Input.is_action_just_pressed("action"):
		print("Победа")
	elif !can_win and can_click and Input.is_action_just_pressed("action"):
		print("Иди собирай батареи")



