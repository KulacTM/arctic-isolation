extends Node

var items = {
	"first_battery" : false,
	"second_battery" : false,
	"third_battery" : false,
	"pickaxe" : false,
	"shovel" : false,
	"key" : false,
	"axe" : false,
	"flashlight" : false,
	"lighter" : false,
	"logs" : 0,
	"planks" : 0
}

var location = {
	"current_scene" : "",
	"current_position" : ""	
}

var saved = {
	"scene" : "",
	"position" : ""
}

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

