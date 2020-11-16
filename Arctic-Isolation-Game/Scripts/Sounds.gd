extends Node

func _ready():
	$Background_Music.volume_db = -10
	$Background_Music.play()
	
	
func Stadia1():
	$Stadia1.playing  = true
	$Stadia1.volume_db = -10
	$Background_Music.volume_db = -12
	
func Stadia1_stop():
#	$Stadia1.playing  = false
	$Stadia1.volume_db -= 0.5
	$Background_Music.volume_db = -10
	
func Stadia2():
	$Stadia2.playing  = true
	$Stadia2.volume_db = -10
	$Background_Music.volume_db = -12
	$Stadia1.volume_db = -15
	
func Stadia2_stop():
#	$Stadia2.playing  = false
	$Stadia2.volume_db -= 0.5
#	$Background_Music.volume_db = -10
#	$Stadia1.volume_db = -10

func Stadia3():
	$Stadia3.playing  = true
	$Stadia3.volume_db = -10
	$Background_Music.volume_db = -12
#	$Stadia2.volume_db = -15
	
func Stadia3_stop():
#	$Stadia3.playing  = false
	$Stadia3.volume_db -= 0.5
	$Background_Music.volume_db = -10
#	$Stadia1.volume_db = -10


#func SnowFootsteps():
#	$Footsteps.playing = true



