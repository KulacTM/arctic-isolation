extends Area2D

var can_collect_pickaxe = false


func _on_Pickaxe_body_entered(body):
	$Press_E.show()
	can_collect_pickaxe = true


func _on_Pickaxe_body_exited(body):
	$Press_E.hide()
	can_collect_pickaxe = false


func _process(delta):
	if Input.is_action_just_pressed("action") and can_collect_pickaxe: # collect battery
		Inventory.has_pickaxe = true
		can_collect_pickaxe = false
		get_tree().call_group("GUI", "UI_Update")
		queue_free()
	if Inventory.has_pickaxe: # never spawn battery if its collected
		queue_free()
	


