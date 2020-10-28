extends Node2D


func _on_River_To_Forest_Exit(_body):
	get_tree().call_group("FullMap", "ForestFromRiver")


func _on_River_To_Pass(_body):
	get_tree().call_group("FullMap", "PassFromRiver")


func _on_Forest_To_River(_body):
	get_tree().call_group("FullMap", "RiverFromForest")


func _on_Forest_To_Port(_body):
	get_tree().call_group("FullMap", "PortFromForest")


func _on_Port_to_Forest(_body):
	get_tree().call_group("FullMap", "ForestFromPort")


func _on_Port_to_Coast(_body):
	get_tree().call_group("FullMap", "CoastFromPort")


func _on_Coast_to_Port(_body):
	get_tree().call_group("FullMap", "PortFromCoast")


func _on_Coast_to_Lighthouse(_body):
	get_tree().call_group("FullMap", "LighthouseFromCoast")


func _on_Lighthouse_to_Coast(_body):
	get_tree().call_group("FullMap", "CoastFromLighthouse")


func _on_Lighthouse_to_Station_body_entered(_body):
	get_tree().call_group("FullMap", "StationFromLighthouse")


func _on_Station_to_Lighthouse(_body):
	get_tree().call_group("FullMap", "LighthouseFromStation")


func _on_Station_to_Pass(_body):
	get_tree().call_group("FullMap", "PassFromStation")


func _on_Station_to_Tower(_body):
	get_tree().call_group("FullMap", "TowerFromStation")


func _on_Tower_to_Station(_body):
	get_tree().call_group("FullMap", "StationFromTower")


func _on_Tower_to_Lake(_body):
	get_tree().call_group("FullMap", "LakeFromTower")


func _on_Tower_to_LakeTop(_body):
	get_tree().call_group("FullMap", "LakeFromTowerTop")


func _on_LakeToTower(_body):
	get_tree().call_group("FullMap", "TowerFromLake")


func _on_LakeToTowerTop(_body):
	get_tree().call_group("FullMap", "TowerFromLakeTop")


func _on_PassToRiver(_body):
	get_tree().call_group("FullMap", "RiverFromPass")


func _on_PassToStation(_body):
	get_tree().call_group("FullMap", "StationFromPass")



