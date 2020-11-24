extends Area2D


var in_landslide_area = false
var can_dig = false


func _process(delta):
	if not Inventory.river_landslide_exist:
		queue_free()
	if can_dig and in_landslide_area and Input.is_action_just_pressed("action"):
		Inventory.river_landslide_exist = false
		queue_free()
	if not can_dig and in_landslide_area and Input.is_action_just_pressed("action"):
		get_tree().call_group("Dialogue", "NoShovel")


func _on_Landslide_body_entered(body):
	in_landslide_area = true
	$Press_E.visible = true
	if Inventory.has_shovel:
		can_dig = true


func _on_Landslide_body_exited(body):
	in_landslide_area = false
	$Press_E.visible = false
