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

var events = {
	"bridge_repaired" : false,
	"river_landslide_exist" : true,
	"in_lake_zone" : false,
	"in_popup" : false,
	"snowstorm_said" : false,
	"emptyport_dialogue" : false,
	"brokenanthena_dialogue" : false,
	"in_cave" : false,
	"can_press_pause" : true,
	"not_in_motion" : true
}

var world = {
	"logs_list" : {}
}

# REUSABLES
#var logs_list = {}

