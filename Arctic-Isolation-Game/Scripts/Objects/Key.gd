extends Area2D

var can_collect_key = false


func _on_Key_body_entered(body):
	$Press_E.show()
	can_collect_key = true


func _on_Key_body_exited(body):
	$Press_E.hide()
	can_collect_key = false


func _process(delta):
	if Input.is_action_just_pressed("action") and can_collect_key: # collect key
		Inventory.has_key = true
		can_collect_key = false
		get_tree().call_group("GUI", "UI_Update")
		queue_free()
	if Inventory.has_key: # never spawn battery if its collected
		queue_free()



