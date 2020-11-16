extends Area2D

var can_light = false #if player can light a fire
var is_fired = false #if fire is already fired
var in_barrel_area = false

func _on_Barrel_body_entered(body):
	$Press_E.show()
	in_barrel_area = true
	if Inventory.has_lighter:
		can_light = true
	if is_fired:
		Cold.multiplier = -100
		can_light = false
		$Press_E.hide()

func _on_Barrel_body_exited(body):
	can_light = false
	in_barrel_area = false
	Cold.multiplier = Cold.default_multiplier
	$Press_E.hide()



func _process(delta):
	if can_light and Input.is_action_just_pressed("action"):
		$Sprite.texture = load("res://GFX/Objects/Barrel/barrel2.png")
		$Light2D.enabled = true
		$Press_E.hide()
		$BonfireSound.playing = true
		Cold.multiplier = -100
		$Timer.start()
		is_fired = true
		can_light = false
	elif in_barrel_area and Input.is_action_just_pressed("action") and Inventory.has_lighter == false:
		get_tree().call_group("Dialogue", "NoLighter")
		

func _on_Timer_timeout():
	Cold.multiplier = Cold.default_multiplier
	$Sprite.texture = load("res://GFX/Objects/Barrel/barrel1.png")
	$BonfireSound.playing = false
	$Light2D.enabled = false
	is_fired = false
	can_light = true
	$Press_E.show()
	


