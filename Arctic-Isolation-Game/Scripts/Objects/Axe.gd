extends Area2D

var can_collect_axe = false


func _on_Axe_body_entered(body):
	$Press_E.show()
	can_collect_axe = true


func _on_Axe_body_exited(body):
	$Press_E.hide()
	can_collect_axe = false
	

func _process(delta):
	if Input.is_action_just_pressed("action") and can_collect_axe: # collect battery
		Inventory.has_axe = true
		can_collect_axe = false
		queue_free()
	if Inventory.has_axe: # never spawn battery if its collected
		queue_free()



