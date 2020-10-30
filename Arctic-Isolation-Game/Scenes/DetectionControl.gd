extends Control

var multiplier = 1


func AddSus():
	$TextureProgress.value += $TextureProgress.step * multiplier 
	if $TextureProgress.value == $TextureProgress.max_value:
		print("сдох от льда")

func RemoveSus():
	$TextureProgress.value -= $TextureProgress.step * multiplier

func AddBearSus():
	$TextureProgress.value += $TextureProgress.step * multiplier 
	if $TextureProgress.value == $TextureProgress.max_value:
		print("сдох от медведя")
	
func RemoveBearSus():
	$TextureProgress.value += $TextureProgress.step * multiplier
