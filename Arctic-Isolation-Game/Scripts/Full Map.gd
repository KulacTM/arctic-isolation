extends Node2D


func _ready():
	Inventory.location.current_scene = "res://Scenes/Levels/01_River.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	Inventory.location.current_position = $"SceneNode/01_River/Starting_Points/Start1".position	
	$Player.position = Inventory.location.current_position


func ForestFromRiver():
	$Timers/ForestFromRiver.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")
	

func PassFromRiver():
	$Timers/PassFromRiver.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")
	
	
func RiverFromForest():
	$Timers/RiverFromForest.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func PortFromForest():
	$Timers/PortFromForest.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func CoastFromPort():
	$Timers/CoastFromPort.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func ForestFromPort():
	$Timers/ForestFromPort.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func PortFromCoast():
	$Timers/PortFromCoast.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func LighthouseFromCoast():
	$Timers/LighthouseFromCoast.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")
	
	
func CoastFromLighthouse():
	$Timers/CoastFromLighthouse.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func StationFromLighthouse():
	$Timers/StationFromLighthouse.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")

	
func LighthouseFromStation():
	$Timers/LighthouseFromStation.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func PassFromStation():
	$Timers/PassFromStation.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func TowerFromStation():
	$Timers/TowerFromStation.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func StationFromTower():
	$Timers/StationFromTower.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func LakeFromTower():
	$Timers/LakeFromTower.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func LakeFromTowerTop():
	$Timers/LakeFromTowerTop.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func TowerFromLake():
	$Timers/TowerFromLake.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")
	

func TowerFromLakeTop():
	$Timers/TowerFromLakeTop.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")

	
func RiverFromPass():
	$Timers/RiverFromPass.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func StationFromPass():
	$Timers/StationFromPass.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func _on_ForestFromRiver_timeout():
	$"SceneNode/01_River".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/02_Forest.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/02_Forest/Starting_Points/Start1".position	
	$Player.position = Inventory.location.current_position


func _on_RiverFromForest_timeout():
	$"SceneNode/02_Forest".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/01_River.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/01_River/Starting_Points/Start2".position	
	$Player.position = Inventory.location.current_position



func _on_PassFromRiver_timeout():
	$"SceneNode/01_River".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/07_Pass.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/07_Pass/Starting_Points/Start1".position	
	$Player.position = Inventory.location.current_position


func _on_PortFromForest_timeout():
	$"SceneNode/02_Forest".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/03_Port.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/03_Port/Starting_Points/Start1".position	
	$Player.position = Inventory.location.current_position


func _on_CoastFromPort_timeout():
	$"SceneNode/03_Port".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/04_Coast.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/04_Coast/Starting_Points/Start1".position	
	$Player.position = Inventory.location.current_position


func _on_ForestFromPort_timeout():
	$"SceneNode/03_Port".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/02_Forest.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/02_Forest/Starting_Points/Start2".position	
	$Player.position = Inventory.location.current_position


func _on_PortFromCoast_timeout():
	$"SceneNode/04_Coast".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/03_Port.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/03_Port/Starting_Points/Start2".position	
	$Player.position = Inventory.location.current_position


func _on_LighthouseFromCoast_timeout():
	$"SceneNode/04_Coast".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/05_Lighthouse.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/05_Lighthouse/Starting_Points/Start1".position	
	$Player.position = Inventory.location.current_position


func _on_CoastFromLighthouse_timeout():
	$"SceneNode/05_Lighthouse".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/04_Coast.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/04_Coast/Starting_Points/Start2".position	
	$Player.position = Inventory.location.current_position


func _on_StationFromLighthouse_timeout():
	$"SceneNode/05_Lighthouse".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/06_Station2.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/06_Station2/Starting_Points/Start1".position	
	$Player.position = Inventory.location.current_position


func _on_LighthouseFromStation_timeout():
	$"SceneNode/06_Station2".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/05_Lighthouse.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/05_Lighthouse/Starting_Points/Start2".position	
	$Player.position = Inventory.location.current_position


func _on_PassFromStation_timeout():
	$"SceneNode/06_Station2".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/07_Pass.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/07_Pass/Starting_Points/Start2".position	
	$Player.position = Inventory.location.current_position


func _on_TowerFromStation_timeout():
	$"SceneNode/06_Station2".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/09_RadioTower.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/09_RadioTower/Starting_Points/Start1".position	
	$Player.position = Inventory.location.current_position


func _on_StationFromTower_timeout():
	$"SceneNode/09_RadioTower".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/06_Station2.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/06_Station2/Starting_Points/Start3".position	
	$Player.position = Inventory.location.current_position


func _on_LakeFromTower_timeout():
	$"SceneNode/09_RadioTower".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/08_Lake.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/08_Lake/Starting_Points/Start1".position	
	$Player.position = Inventory.location.current_position


func _on_LakeFromTowerTop_timeout():
	$"SceneNode/09_RadioTower".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/08_Lake.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/08_Lake/Starting_Points/Start2".position	
	$Player.position = Inventory.location.current_position


func _on_TowerFromLake_timeout():
	$"SceneNode/08_Lake".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/09_RadioTower.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/09_RadioTower/Starting_Points/Start2".position	
	$Player.position = Inventory.location.current_position


func _on_TowerFromLakeTop_timeout():
	$"SceneNode/08_Lake".queue_free()

	Inventory.location.current_scene = "res://Scenes/Levels/09_RadioTower.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/09_RadioTower/Starting_Points/Start3".position	
	$Player.position = Inventory.location.current_position


func _on_RiverFromPass_timeout():
	$"SceneNode/07_Pass".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/01_River.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/01_River/Starting_Points/Start3".position	
	$Player.position = Inventory.location.current_position


func _on_StationFromPass_timeout():
	$"SceneNode/07_Pass".queue_free()
	
	Inventory.location.current_scene = "res://Scenes/Levels/06_Station2.tscn"
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	
	Inventory.location.current_position = $"SceneNode/06_Station2/Starting_Points/Start2".position	
	$Player.position = Inventory.location.current_position


func ReloadAll():
	get_tree().reload_current_scene()


func LoadScene():
	$SceneNode.add_child(load(Inventory.location.current_scene).instance())
	$Player.position = Inventory.location.current_position
