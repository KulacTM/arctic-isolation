extends Area2D

var is_warm_place = false

func _on_Warm_Zone_body_entered(body):
	is_warm_place = true


func _on_Warm_Zone_body_exited(body):
	is_warm_place = false
	Cold.multiplier = Cold.default_multiplier


func _process(delta):
	if is_warm_place:
		Cold.multiplier = -300
