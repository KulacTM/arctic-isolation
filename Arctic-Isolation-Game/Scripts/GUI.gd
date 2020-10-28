extends CanvasLayer

func _ready():
	$Pause/PauseOverlay/PauseText.text = "Пауза"

func AddBatteryIcon():
	$IconContainer/BatteryIcon.texture = load("res://GFX/textures/battary/battery1.png")
	$IconContainer/BatteryIcon.show()


func AddTwoBatteryIcons():
	$IconContainer/BatteryIcon.texture = load("res://GFX/textures/battary/battery2.png")
	$IconContainer/BatteryIcon.show()

func AddThreeBatteryIcons():
	$IconContainer/BatteryIcon.texture = load("res://GFX/textures/battary/battery3.png")
	$IconContainer/BatteryIcon.show()


func AddAxeIcon():
	$IconContainer/AxeIcon.show()


func AddFlashlightIcon():
	$IconContainer/FlashlightIcon.show()


func AddKeyIcon():
	$IconContainer/KeyIcon.show()
	

func AddLighterIcon():
	$IconContainer/LighterIcon.show()


func AddPickaxeIcon():
	$IconContainer/PickaxeIcon.show()


func AddShovelIcon():
	$IconContainer/ShovelIcon.show()
