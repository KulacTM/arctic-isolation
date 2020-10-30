extends Node2D


func _ready():
	$SceneNode.add_child(load("res://Scenes/Levels/01_River.tscn").instance())
	$Player.position = $"SceneNode/01_River/Starting_Points/Start1".position	
	

func ForestFromRiver():
	$Timers/ForestFromRiver.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")
	

func PassFromRiver():
	$"SceneNode/01_River".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/07_Pass.tscn").instance())
	$Player.position = $"SceneNode/07_Pass/Starting_Points/Start1".position
	
	
func RiverFromForest():
	$Timers/RiverFromForest.start()
	get_tree().call_group("Player", "StopMotion")
	get_tree().call_group("BlackScreen", "Fadeout")


func PortFromForest():
	$"SceneNode/02_Forest".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/03_Port.tscn").instance())
	$Player.position = $"SceneNode/03_Port/Starting_Points/Start1".position
	

func CoastFromPort():
	$"SceneNode/03_Port".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/04_Coast.tscn").instance())
	$Player.position = $"SceneNode/04_Coast/Starting_Points/Start1".position


func ForestFromPort():
	$"SceneNode/03_Port".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/02_Forest.tscn").instance())
	$Player.position = $"SceneNode/02_Forest/Starting_Points/Start2".position
	

func PortFromCoast():
	$"SceneNode/04_Coast".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/03_Port.tscn").instance())
	$Player.position = $"SceneNode/03_Port/Starting_Points/Start2".position


func LighthouseFromCoast():
	$"SceneNode/04_Coast".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/05_Lighthouse.tscn").instance())
	$Player.position = $"SceneNode/05_Lighthouse/Starting_Points/Start1".position
	
	
func CoastFromLighthouse():
	$"SceneNode/05_Lighthouse".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/04_Coast.tscn").instance())
	$Player.position = $"SceneNode/04_Coast/Starting_Points/Start2".position

	
func StationFromLighthouse():
	$"SceneNode/05_Lighthouse".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/06_Station2.tscn").instance())
	$Player.position = $"SceneNode/06_Station2/Starting_Points/Start1".position
	
func LighthouseFromStation():
	$"SceneNode/06_Station2".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/05_Lighthouse.tscn").instance())
	$Player.position = $"SceneNode/05_Lighthouse/Starting_Points/Start2".position

func PassFromStation():
	$"SceneNode/06_Station2".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/07_Pass.tscn").instance())
	$Player.position = $"SceneNode/07_Pass/Starting_Points/Start2".position

func TowerFromStation():
	$"SceneNode/06_Station2".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/09_RadioTower.tscn").instance())
	$Player.position = $"SceneNode/09_RadioTower/Starting_Points/Start1".position


func StationFromTower():
	$"SceneNode/09_RadioTower".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/06_Station2.tscn").instance())
	$Player.position = $"SceneNode/06_Station2/Starting_Points/Start3".position
	
func LakeFromTower():
	$"SceneNode/09_RadioTower".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/08_Lake.tscn").instance())
	$Player.position = $"SceneNode/08_Lake/Starting_Points/Start1".position


func LakeFromTowerTop():
	$"SceneNode/09_RadioTower".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/08_Lake.tscn").instance())
	$Player.position = $"SceneNode/08_Lake/Starting_Points/Start2".position


func TowerFromLake():
	$"SceneNode/08_Lake".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/09_RadioTower.tscn").instance())
	$Player.position = $"SceneNode/09_RadioTower/Starting_Points/Start2".position
	

func TowerFromLakeTop():
	$"SceneNode/08_Lake".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/09_RadioTower.tscn").instance())
	$Player.position = $"SceneNode/09_RadioTower/Starting_Points/Start3".position
	
func RiverFromPass():
	$"SceneNode/07_Pass".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/01_River.tscn").instance())
	$Player.position = $"SceneNode/01_River/Starting_Points/Start3".position

func StationFromPass():
	$"SceneNode/07_Pass".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/06_Station2.tscn").instance())
	$Player.position = $"SceneNode/06_Station2/Starting_Points/Start2".position


func _on_ForestFromRiver_timeout():
	$"SceneNode/01_River".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/02_Forest.tscn").instance())
	$Player.position = $"SceneNode/02_Forest/Starting_Points/Start1".position


func _on_RiverFromForest_timeout():
	$"SceneNode/02_Forest".queue_free()
	$SceneNode.add_child(load("res://Scenes/Levels/01_River.tscn").instance())
	$Player.position = $"SceneNode/01_River/Starting_Points/Start2".position

