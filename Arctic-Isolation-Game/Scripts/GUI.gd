extends CanvasLayer

func _ready():
	$Pause/PauseOverlay/PauseText.text = "Пауза"
	$DetectionControl/TextureProgress.hide()
	$Popup.hide()

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

func ForestPopup():
	Inventory.in_popup = true
	$"Popup/Popup_Text".text = """Вы находитесь на лесном перекрестке
База на реке на севере 
Поселение 'Маяк' на востоке (закрыто)
Порт на юге
	"""
	$Popup.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
func IcePopup():
	Inventory.in_popup = true
	$"Popup/Popup_Text".text = """Осторожно! Тонкий лёд!
Если услышите треск под ногами - постарайтесь обойти опасную зону."""
	$Popup.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_Popup_Button_pressed():
	Inventory.in_popup = false
	$Popup.hide()
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


func _on_Button_pressed():
	get_tree().quit()

