extends Node

var has_first_battery = false
var has_second_battery = false
var has_third_battery = false


func _process(_delta):
	if has_first_battery or has_second_battery:
		get_tree().call_group("GUI", "AddBatteryIcon")
	if has_second_battery and has_first_battery or has_first_battery and has_third_battery or has_second_battery and has_third_battery:
		get_tree().call_group("GUI", "AddTwoBatteryIcons")
	if has_second_battery and has_first_battery and has_third_battery:
		get_tree().call_group("GUI", "AddThreeBatteryIcons")
	
		
		
