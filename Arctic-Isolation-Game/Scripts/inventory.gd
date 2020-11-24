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
var logs = 0
var planks = 0

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

# REUSABLES
var logs_list = {}
