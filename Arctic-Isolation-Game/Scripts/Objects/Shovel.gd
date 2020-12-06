extends Area2D

var can_collect_shovel = false


func _on_Shovel_body_entered(body):
	$Press_E.show()
	can_collect_shovel = true


func _on_Shovel_body_exited(body):
	$Press_E.hide()
	can_collect_shovel = false


func _process(delta):
	if Input.is_action_just_pressed("action") and can_collect_shovel: # collect shovel
		Inventory.items.shovel = true
		can_collect_shovel = false
		get_tree().call_group("GUI", "UI_Update")
		queue_free()
	if Inventory.items.shovel: # never spawn battery if its collected
		queue_free()



