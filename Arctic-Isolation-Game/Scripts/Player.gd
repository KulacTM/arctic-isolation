extends KinematicBody2D

var speed = 2000
var friction = 0.2
var acceleration = 0.1

var velocity = Vector2()

func get_input():
	var input = Vector2()
	if Input.is_action_pressed('move_right'):
		input.x += 1
	if Input.is_action_pressed('move_left'):
		input.x -= 1
	if Input.is_action_pressed('move_down'):
		input.y += 1
	if Input.is_action_pressed('move_up'):
		input.y -= 1
	
	if Input.is_action_pressed('move_right') or Input.is_action_pressed('move_left') or Input.is_action_pressed('move_down') or Input.is_action_pressed('move_up'):
		FootstepsOn()
	else:
		FootstepsOff()
	return input


func _ready():
	$Darkness.hide()
	$AnimationSprite.Idle()


func _physics_process(delta):
	var direction = get_input()
	if direction.length() > 0:
		velocity = lerp(velocity, direction.normalized() * speed, acceleration)
	else:
		velocity = lerp(velocity, Vector2.ZERO, friction)
	velocity = move_and_slide(velocity)
	animate()


func animate():
	#just one button
	if Input.is_action_pressed("move_down") and not Input.is_action_pressed("move_up") and not Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_left"):
		$AnimationSprite.GoDown()
	if Input.is_action_pressed("move_up") and not Input.is_action_pressed("move_down") and not Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right") :
		$AnimationSprite.GoUp()
	if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_up") and not Input.is_action_pressed("move_down"):
		$AnimationSprite.GoLeft()
	if Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_up") and not Input.is_action_pressed("move_down"):
		$AnimationSprite.GoRight()
	
	# two opposite button and one not opposite
	if Input.is_action_pressed("move_left") and Input.is_action_pressed("move_up") and Input.is_action_pressed("move_down"):
		$AnimationSprite.GoLeft()
	if Input.is_action_pressed("move_right") and Input.is_action_pressed("move_up") and Input.is_action_pressed("move_down"):
		$AnimationSprite.GoRight()
	if Input.is_action_pressed("move_up") and Input.is_action_pressed("move_right") and Input.is_action_pressed("move_left"):
		$AnimationSprite.GoUp()
	if Input.is_action_pressed("move_down") and Input.is_action_pressed("move_right") and Input.is_action_pressed("move_left"):
		$AnimationSprite.GoDown()

	#IDLES
	# two opposite buttons
	if Input.is_action_pressed("move_down") and Input.is_action_pressed("move_up") and not Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
		$AnimationSprite.Idle()
	if Input.is_action_pressed("move_left") and Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_up") and not Input.is_action_pressed("move_down"):
		$AnimationSprite.Idle()
	# all pressed
	if  Input.is_action_pressed("move_left") and Input.is_action_pressed("move_right") and Input.is_action_pressed("move_up") and Input.is_action_pressed("move_down"):
		$AnimationSprite.Idle()
	# none pressed
	if not Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_up") and not Input.is_action_pressed("move_down"):
		$AnimationSprite.Idle()


func In_Cave():
	Inventory.in_cave = true
	$Light2D.shadow_enabled = true
	if Inventory.items.flashlight:
		get_tree().call_group("Dialogue", "Lantern")
	else:
		get_tree().call_group("Dialogue", "NoLantern")
		$NewTimer.start()
	FootstepsIndoor()
	$Darkness.show()


func Out_Of_Cave():
	print("Вышел из пещеры")
	Inventory.in_cave = false
	$Light2D.shadow_enabled = false
	$Light2D.texture_scale = 6.82
	$Darkness.hide()
	FootstepsSnow()


func StopMotion():
	speed = 0
	$StartMotion.start()


func _on_StartMotion_timeout():
	speed = 2000


func _on_NewTimer_timeout():
	if Inventory.in_cave and Inventory.items.flashlight == false:
		$Light2D.texture_scale = 2.5


func FootstepsOn():
	if Inventory.not_in_motion:
		$Footsteps.playing = true
		Inventory.not_in_motion = false


func FootstepsOff():
	$Footsteps.playing = false
	Inventory.not_in_motion = true


func FootstepsSnow():
	$Footsteps.playing = false
	$Footsteps.stream = load("res://SFX/Effects/Footsteps/snowFootsteps.ogg")
	$Footsteps.playing = true


func FootstepsIndoor():
	$Footsteps.playing = false
	$Footsteps.stream = load("res://SFX/Effects/Footsteps/indoorFootsteps.ogg")
	$Footsteps.playing = true
