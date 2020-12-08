extends Node2D

# tile recognition
var player
var cell_coord
var cell_id
var tileset
var tile_name

func _ready():
	player = get_tree().get_root().get_node("Full Map").find_node("Player")
	tileset = $TileMap.tile_set


func _process(delta):
	RoadMovement()


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







func _on_DetectionControllerZone_body_entered(body):
	get_tree().call_group("GUI", "ShowDetection")


func _on_DetectionControllerZone_body_exited(body):
	get_tree().call_group("GUI", "HideDetection")


func _on_BrokenPlateDialogue_body_entered(body):
	if Inventory.events.brokenanthena_dialogue == false:
		get_tree().call_group("Dialogue", "BrokenPlate")
		Inventory.events.brokenanthena_dialogue = true


func _on_EmptyPortDialogue_body_entered(body):
	if Inventory.events.emptyport_dialogue == false:
		get_tree().call_group("Dialogue", "EmptyPort")
		Inventory.events.emptyport_dialogue = true


func _on_SnowStormDialogue_body_entered(body):
	get_tree().call_group("Dialogue", "Snowstorm")


func RoadMovement():
	cell_coord = $TileMap.world_to_map(player.position)
	cell_id = $TileMap.get_cellv(cell_coord)
	tile_name = tileset.tile_get_name(cell_id)
	if tile_name == "Road":
		Inventory.world.player_speed = 250
		get_tree().call_group("Player", "FootstepsIndoor")
	else:
		Inventory.world.player_speed = Inventory.world.default_player_speed
		get_tree().call_group("Player", "FootstepsSnow")
