extends Node

onready var pause_overlay = $PauseOverlay

func _ready():
	pause_overlay.visible = false
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	
func _process(delta):
	if Input.is_action_just_pressed("esc") and Inventory.events.can_press_pause:
		var new_pause_state = !get_tree().paused
		get_tree().paused = new_pause_state
		if new_pause_state:
			pause_overlay.visible = true
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		else:
			pause_overlay.visible = false
			Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
		if Inventory.events.in_popup == true:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	elif Input.is_action_just_pressed("esc") and Inventory.events.in_popup:
		get_tree().call_group("GUI", "HidePopup")
	elif Input.is_action_just_pressed("action") and Inventory.events.in_popup:
		get_tree().call_group("GUI", "HidePopup")


func _on_PlayButton_pressed():
	var new_pause_state = !get_tree().paused
	get_tree().paused = new_pause_state
	if new_pause_state:
			pause_overlay.visible = true
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		pause_overlay.visible = false
		if Inventory.events.in_popup == false:
			Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
