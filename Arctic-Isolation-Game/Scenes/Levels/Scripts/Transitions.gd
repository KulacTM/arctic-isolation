extends Node2D


func _on_River_To_Forest_Exit(body):
	get_tree().call_group("FullMap", "ForestFromRiver")


func _on_River_To_Pass(body):
	get_tree().call_group("FullMap", "PassFromRiver")


func _on_Forest_To_River(body):
	get_tree().call_group("FullMap", "RiverFromForest")


func _on_Forest_To_Port(body):
	get_tree().call_group("FullMap", "PortFromForest")


func _on_Port_to_Forest(body):
	get_tree().call_group("FullMap", "ForestFromPort")


func _on_Port_to_Coast(body):
	get_tree().call_group("FullMap", "CoastFromPort")


func _on_Coast_to_Port(body):
	get_tree().call_group("FullMap", "PortFromCoast")


func _on_Coast_to_Lighthouse(body):
	get_tree().call_group("FullMap", "LighthouseFromCoast")


func _on_Lighthouse_to_Coast(body):
	get_tree().call_group("FullMap", "CoastFromLighthouse")


func _on_Lighthouse_to_Station_body_entered(body):
	get_tree().call_group("FullMap", "StationFromLighthouse")


func _on_Station_to_Lighthouse(body):
	get_tree().call_group("FullMap", "LighthouseFromStation")


func _on_Station_to_Pass(body):
	get_tree().call_group("FullMap", "PassFromStation")


func _on_Station_to_Tower(body):
	get_tree().call_group("FullMap", "TowerFromStation")


func _on_Tower_to_Station(body):
	get_tree().call_group("FullMap", "StationFromTower")


func _on_Tower_to_Lake(body):
	get_tree().call_group("FullMap", "LakeFromTower")


func _on_Tower_to_LakeTop(body):
	get_tree().call_group("FullMap", "LakeFromTowerTop")


func _on_LakeToTower(body):
	get_tree().call_group("FullMap", "TowerFromLake")


func _on_LakeToTowerTop(body):
	get_tree().call_group("FullMap", "TowerFromLakeTop")


func _on_PassToRiver(body):
	get_tree().call_group("FullMap", "RiverFromPass")


func _on_PassToStation(body):
	get_tree().call_group("FullMap", "StationFromPass")
