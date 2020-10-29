extends Control

var multiplier = 1


func AddSus():
	$TextureProgress.value += $TextureProgress.step * multiplier 

func RemoveSus():
	$TextureProgress.value -= $TextureProgress.step * multiplier
