extends Area2D

var is_warm_place = false

func _on_Warm_Zone_body_entered(body):
	is_warm_place = true
	get_tree().call_group("Player", "FootstepsIndoor")


func _on_Warm_Zone_body_exited(body):
	is_warm_place = false
	Cold.multiplier = Cold.default_multiplier
	get_tree().call_group("Player", "FootstepsSnow")


func _process(delta):
	if is_warm_place:
		Cold.multiplier = -200
