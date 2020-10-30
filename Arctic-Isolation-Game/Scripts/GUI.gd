extends CanvasLayer

func _ready():
	$Pause/PauseOverlay/PauseText.text = "Пауза"
	$DetectionControl/TextureProgress.hide()

func AddBatteryIcon():
	$IconContainer/BatteryIcon.texture = load("res://GFX/textures/battery/battery1.png")
	$IconContainer/BatteryIcon.show()


func AddTwoBatteryIcons():
	$IconContainer/BatteryIcon.texture = load("res://GFX/textures/battery/battery2.png")
	$IconContainer/BatteryIcon.show()

func AddThreeBatteryIcons():
	$IconContainer/BatteryIcon.texture = load("res://GFX/textures/battery/battery3.png")
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

func ShowDetection():
	$DetectionControl/TextureProgress.show()
	

func HideDetection():
	$DetectionControl/TextureProgress.hide()

