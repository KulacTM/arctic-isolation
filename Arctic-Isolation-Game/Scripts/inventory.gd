extends Node

var has_first_battery = false




func _process(_delta):
	print("Первая батарея - ", has_first_battery)
	if has_first_battery:
		get_tree().call_group("GUI", "AddBatteryIcon")
