extends KinematicBody2D

var motion = Vector2()

var velocity_multiplier = 1

export var SPEED = 200 #20 и 200 было
export var MAX_SPEED = 1000
const FRICTION = 0.3

func _ready():
	$Darkness.hide()


func _physics_process(delta):
	update_movement()
	move_and_slide(motion * velocity_multiplier)


func update_movement():
#	look_at(get_global_mouse_position())
	
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
	

func In_Cave():
	print("Вошел в пещеру")
	$Light2D.shadow_enabled = true
	if Inventory.has_flashlight:
		pass
	else:
		$Light2D.texture_scale = 2.5
	$Darkness.show()
	#animate canvas modulate
	if Input.is_action_pressed("move_down"):
		$Flashlight.rotation_degrees = 90
	
func Out_Of_Cave():
	print("Вышел из пещеры")
	$Light2D.shadow_enabled = false
	$Light2D.texture_scale = 6.82
	$Darkness.hide()
