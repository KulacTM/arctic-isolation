extends Node

onready var pause_overlay = $PauseOverlay

func _ready():
	pause_overlay.visible = false
	
func _process(delta):
	if Input.is_action_just_pressed("esc"):
		var new_pause_state = !get_tree().paused
		get_tree().paused = new_pause_state
		if new_pause_state:
			pause_overlay.visible = true
		else:
			pause_overlay.visible = false
