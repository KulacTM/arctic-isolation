extends Area2D

var can_light = false #if player can light a fire
var is_fired = false #if fire is already fired

func _on_Barrel_body_entered(body):
	if Inventory.has_lighter:
		can_light = true
	if is_fired:
		Cold.multiplier = -50
		can_light = false

func _on_Barrel_body_exited(body):
	can_light = false
	Cold.multiplier = Cold.default_multiplier



func _process(delta):
	if can_light and Input.is_action_just_pressed("action"):
		$Sprite.texture = load("res://GFX/textures/bochka/bochka2.png")
		$Light2D.enabled = true
		$BonfireSound.playing = true
		Cold.multiplier = -50
		$Timer.start()
		is_fired = true
		can_light = false
		

func _on_Timer_timeout():
	Cold.multiplier = Cold.default_multiplier
	$Sprite.texture = load("res://GFX/textures/bochka/bochka1.png")
	$BonfireSound.playing = false
	$Light2D.enabled = false
	is_fired = false
	can_light = true



