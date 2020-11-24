extends Area2D


var can_collect_battery2 = false

	
func _process(delta):
	if Input.is_action_just_pressed("action") and can_collect_battery2: # collect battery
		Inventory.has_second_battery = true
		can_collect_battery2 = false
		get_tree().call_group("GUI", "UI_Update")
		queue_free()
	if Inventory.has_second_battery: # never spawn battery if its collected
		queue_free()
	



func _on_Battery2_body_entered(body):
	$Press_E.show()
	can_collect_battery2 = true


func _on_Battery2_body_exited(body):
	$Press_E.hide()
	can_collect_battery2 = false
