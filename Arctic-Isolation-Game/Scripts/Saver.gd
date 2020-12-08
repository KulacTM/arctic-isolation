extends Node

var save_path = "user://save.dat"


func SaveData():
	var data = {}
	data["items"] = Inventory.items
	data["location"] = Inventory.location
	data["events"] = Inventory.events
	data["world"] = Inventory.world
	var file = File.new()
	var error = file.open(save_path, File.WRITE)
	if error == OK:
		file.store_var(data)
		file.close()
	print(data)


func LoadData():
	get_tree().call_group("FullMap", "LoadScene")
	var file = File.new()
	if file.file_exists(save_path):
		var error = file.open(save_path, File.READ)
		if error == OK:
			var player_data = file.get_var()
			file.close()
			Inventory.saved.position = player_data.location.current_position
			Inventory.saved.scene = player_data.location.current_scene
			print(player_data)
