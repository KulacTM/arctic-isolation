extends Area2D


var can_collect_battery3 = false

	
func _process(delta):
	if Input.is_action_just_pressed("action") and can_collect_battery3: # collect battery
		Inventory.has_third_battery = true
		can_collect_battery3 = false
		queue_free()
	if Inventory.has_third_battery: # never spawn battery if its collected
		queue_free()
	



func _on_Battery3_body_entered(body):
	$Press_E.show()
	can_collect_battery3 = true


func _on_Battery3_body_exited(body):
	$Press_E.hide()
	can_collect_battery3 = false
