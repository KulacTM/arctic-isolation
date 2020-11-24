extends Area2D

var can_collect_lighter = false


func _on_Lighter_body_entered(body):
	$Press_E.show()
	can_collect_lighter = true


func _on_Lighter_body_exited(body):
	$Press_E.hide()
	can_collect_lighter = false


func _process(delta):
	if Input.is_action_just_pressed("action") and can_collect_lighter: # collect battery
		Inventory.has_lighter = true
		can_collect_lighter = false
		get_tree().call_group("GUI", "UI_Update")
		queue_free()
	if Inventory.has_lighter: # never spawn battery if its collected
		queue_free()





