extends Area2D

var can_collect_flashlight = false


func _process(delta):
	if Input.is_action_just_pressed("action") and can_collect_flashlight: # collect battery
		Inventory.has_flashlight = true
		can_collect_flashlight = false
		queue_free()
	if Inventory.has_flashlight: # never spawn battery if its collected
		queue_free()


func _on_Flashlight_body_entered(body):
	$Press_E.show()
	can_collect_flashlight = true


func _on_Flashlight_body_exited():
	$Press_E.hide()
	can_collect_flashlight = false



