extends TextureProgress



func _ready():
	value = 0
	
func _physics_process(delta):
	value += step * Cold.multiplier * delta
	if value == max_value:
		pass
#		print("Умри нахой")

#func in_cold_zone():
#	value += step * cold_multiplier
	

		
#func end_game():
#	get_tree().change_scene("res://Levels/Loose.tscn")
