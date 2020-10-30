extends ColorRect

func _ready():
	hide()

func Fadeout():
	show()
	$AnimationPlayer.play("Fadeout")
