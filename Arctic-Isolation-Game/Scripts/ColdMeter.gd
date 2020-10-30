extends TextureProgress


var stadia1_playing = false
var stadia2_playing = false
var stadia3_playing = false

func _ready():
	value = 0
	
	
func _physics_process(delta):
	value += step * Cold.multiplier * delta
	if value >= 25 and stadia1_playing == false:
		get_tree().call_group("Sounds", "Stadia1")
		stadia1_playing = true
	elif value < 25 and stadia1_playing:
		get_tree().call_group("Sounds", "Stadia1_stop")
		$"SoundTimers/25Timer".start()

	
	if value >= 50 and stadia2_playing == false:
		get_tree().call_group("Sounds", "Stadia2")
		stadia2_playing = true
	elif value < 50 and stadia2_playing:
		get_tree().call_group("Sounds", "Stadia2_stop")
		$"SoundTimers/50Timer".start()
	
	if value >= 75 and stadia3_playing == false:
		get_tree().call_group("Sounds", "Stadia3")
		stadia3_playing = true
	elif value < 75 and stadia3_playing:
		get_tree().call_group("Sounds", "Stadia3_stop")
		$"SoundTimers/75Timer".start()
		
	if value == max_value:
		get_tree().change_scene("res://Scenes/Levels/Loose.tscn")


func _on_25Timer_timeout():
	stadia1_playing = false


func _on_50Timer_timeout():
	stadia2_playing = false


func _on_75Timer_timeout():
	stadia3_playing = false
