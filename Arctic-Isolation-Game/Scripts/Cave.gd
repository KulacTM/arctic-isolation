extends Area2D



func _on_Cave_body_entered(body):
	get_tree().call_group("Player", "In_Cave")
	get_tree().call_group("Snowstorm", "Snowstorm_off")
	


func _on_Cave_body_exited(body):
	get_tree().call_group("Player", "Out_Of_Cave")
	get_tree().call_group("Snowstorm", "Snowstorm_on")
