extends Area2D


var can_collect_battery = false

func _on_Battery_body_entered(body):
	$Press_E.show()
	can_collect_battery = true


func _on_Battery_body_exited(body):
	$Press_E.hide()
	can_collect_battery = false
	
func _process(delta):
	if Input.is_action_just_pressed("action") and can_collect_battery: # collect battery
		Inventory.has_first_battery = true
		get_tree().call_group("Inventory", "AddBattery1")
		can_collect_battery = false
		queue_free()
	if Inventory.has_first_battery: # never spawn battery if its collected
		queue_free()
	

