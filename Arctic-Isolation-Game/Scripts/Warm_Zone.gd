extends Area2D



func _on_Warm_Zone_body_entered(body):
	Cold.multiplier = -50


func _on_Warm_Zone_body_exited(body):
	Cold.multiplier = Cold.default_multiplier
