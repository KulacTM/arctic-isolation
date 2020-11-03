extends KinematicBody2D

var motion = Vector2()

var velocity_multiplier = 1

var default_SPEED = 28
var default_MAXSPEED = 200
var SPEED = 28 #28-200
var MAX_SPEED = 200
const FRICTION = 0.3


func _ready():
	$Darkness.hide()
	$AnimationSprite.Idle()


func update_movement():
	if Input.is_action_pressed("move_down") and not Input.is_action_pressed("move_up"):
		motion.y = clamp(motion.y + SPEED, 0, MAX_SPEED)
	elif Input.is_action_pressed("move_up") and not Input.is_action_pressed("move_down"):
		motion.y = clamp(motion.y - SPEED, -MAX_SPEED, 0)
	else:
		motion.y = lerp(motion.y, 0, FRICTION)

	if Input.is_action_pressed("move_left") and not Input.is_action_pressed("move_right"):
		motion.x = clamp(motion.x - SPEED, -MAX_SPEED, 0)
	elif Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left"):
		motion.x = clamp(motion.x + SPEED, 0, MAX_SPEED)
	else:
		motion.x = lerp(motion.x, 0, FRICTION)
	

func _physics_process(delta):
	animate()
	update_movement()
	if Input.is_action_pressed("move_down") or Input.is_action_pressed("move_up") or Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right"):
		move_and_slide(motion.normalized() * MAX_SPEED)
	print(motion)


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
	if Inventory.has_flashlight:
		get_tree().call_group("Dialogue", "Lantern")
	else:
		get_tree().call_group("Dialogue", "NoLantern")
		$NewTimer.start()
	$Darkness.show()

	
func Out_Of_Cave():
	print("Вышел из пещеры")
	Inventory.in_cave = false
	$Light2D.shadow_enabled = false
	$Light2D.texture_scale = 6.82
	$Darkness.hide()

func StopMotion():
	SPEED = 0
	MAX_SPEED = 0
	$StartMotion.start()


func _on_StartMotion_timeout():
	SPEED = default_SPEED
	MAX_SPEED = default_MAXSPEED


func _on_NewTimer_timeout():
	if Inventory.in_cave and Inventory.has_flashlight == false:
		$Light2D.texture_scale = 2.5
