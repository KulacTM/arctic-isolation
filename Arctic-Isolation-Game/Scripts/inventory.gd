extends Node

# batteries
var has_first_battery = false
var has_second_battery = false
var has_third_battery = false

# inventory items
var has_pickaxe = false
var has_shovel = false
var has_key = false
var has_axe = false
var has_flashlight = false
var has_lighter = false

# EVENTS
var bridge_repaired = false
var river_landslide_exist = true
var in_lake_zone = false
var in_popup = false
var snowstorm_said = false
var emptyport_dialogue = false
var brokenanthena_dialogue = false
var in_cave = false
var can_press_pause = true
var not_in_motion = true

func _process(_delta):
	if has_first_battery or has_second_battery or has_third_battery:
		get_tree().call_group("GUI", "AddBatteryIcon")
	if has_second_battery and has_first_battery or has_first_battery and has_third_battery or has_second_battery and has_third_battery:
		get_tree().call_group("GUI", "AddTwoBatteryIcons")
	if has_second_battery and has_first_battery and has_third_battery:
		get_tree().call_group("GUI", "AddThreeBatteryIcons")
	if has_pickaxe:
		get_tree().call_group("GUI", "AddPickaxeIcon")
	if has_shovel:
		get_tree().call_group("GUI", "AddShovelIcon")
	if has_key:
		get_tree().call_group("GUI", "AddKeyIcon")
	if has_axe:
		get_tree().call_group("GUI", "AddAxeIcon")
	if has_flashlight:
		get_tree().call_group("GUI", "AddFlashlightIcon")
	if has_lighter:
		get_tree().call_group("GUI", "AddLighterIcon")
	
		
		
