extends Area2D



func _on_Cave_body_entered(body):
	get_tree().call_group("Player", "In_Cave")


func _on_Cave_body_exited(body):
	get_tree().call_group("Player", "Out_Of_Cave")
