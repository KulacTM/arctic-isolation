extends CanvasLayer

func AddBatteryIcon():
	$BatteryIcon.show()
	
func AddTwoBatteryIcons():
	$BatteryIcon.texture = load("res://GFX/Tiles/Tools/key.png")
	$BatteryIcon.show()

func AddThreeBatteryIcons():
	$BatteryIcon.texture = load("res://GFX/Tiles/Tools/lantern.png")
	$BatteryIcon.show()
