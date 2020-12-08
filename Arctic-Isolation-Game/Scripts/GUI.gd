extends CanvasLayer

func _ready():
	$Pause/PauseOverlay/PauseText.text = "Пауза"
	$DetectionControl/TextureProgress.hide()
	$Popup.hide()
	$Loose/LooseOverlay.visible = false



func AddBatteryIcon():
	$IconContainer/BatteryIcon.texture = load("res://GFX/Items/battery/battery1.png")
	$IconContainer/BatteryIcon.show()


func AddTwoBatteryIcons():
	$IconContainer/BatteryIcon.texture = load("res://GFX/Items/battery/battery2.png")
	$IconContainer/BatteryIcon.show()

func AddThreeBatteryIcons():
	$IconContainer/BatteryIcon.texture = load("res://GFX/Items/battery/battery3.png")
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

func LogIcon():
	if Inventory.items.logs == 1:
		$IconContainer/LogIcon.texture = load("res://GFX/Items/materials/wood/log1.png")
	elif Inventory.items.logs == 2:
		$IconContainer/LogIcon.texture = load("res://GFX/Items/materials/wood/log2.png")
	elif Inventory.items.logs == 3:
		$IconContainer/LogIcon.texture = load("res://GFX/Items/materials/wood/log3.png")
	
	if Inventory.items.logs >= 1:
		$IconContainer/LogIcon.show()
	else:
		$IconContainer/LogIcon.hide()


func PlankIcon():
	if Inventory.items.planks == 1:
		$IconContainer/PlankIcon.texture = load("res://GFX/Items/materials/wood/plank1.png")
	elif Inventory.items.planks == 2:
		$IconContainer/PlankIcon.texture = load("res://GFX/Items/materials/wood/plank2.png")
	elif Inventory.items.planks == 3:
		$IconContainer/PlankIcon.texture = load("res://GFX/Items/materials/wood/plank3.png")
	
	if Inventory.items.planks >= 1:
		$IconContainer/PlankIcon.show()
	else:
		$IconContainer/PlankIcon.hide()


func ForestPopup():
	Inventory.events.in_popup = true
	InPopup()
	$"Popup/Popup_Text".text = """Вы находитесь на лесном перекрестке
База на реке на севере 
Поселение 'Маяк' на востоке (закрыто)
Порт на юге
	"""
	$Popup.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
func IcePopup():
	Inventory.events.in_popup = true
	$"Popup/Popup_Text".text = """Осторожно! Тонкий лёд!
Если услышите треск под ногами - вернитесь на безопасное место и постарайтесь обойти опасную зону."""
	$Popup.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	
func LakePopup():
	Inventory.events.in_popup = true
	$"Popup/Popup_Text".text = """Осторожно! Здесь живут медведи.
	В это время года они очень голодные. Постарайтесь к ним не подходить."""
	$Popup.show()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_Popup_Button_pressed():
	Inventory.events.in_popup = false
	$Popup.hide()
	Inventory.events.can_press_pause = true
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)


func HidePopup():
	Inventory.events.in_popup = false
	$Popup.hide()
	Inventory.events.can_press_pause = true


func _on_Button3_pressed():
	get_tree().quit()


func InPopup():
	if Inventory.events.in_popup:
		Inventory.events.can_press_pause = false
	else:
		Inventory.events.can_press_pause = true


func UI_Update():
	if Inventory.items.first_battery or Inventory.items.second_battery or Inventory.items.third_battery:
		get_tree().call_group("GUI", "AddBatteryIcon")
	if Inventory.items.second_battery and Inventory.items.first_battery or Inventory.items.first_battery and Inventory.items.third_battery or Inventory.items.second_battery and Inventory.items.third_battery:
		get_tree().call_group("GUI", "AddTwoBatteryIcons")
	if Inventory.items.second_battery and Inventory.items.first_battery and Inventory.items.third_battery:
		get_tree().call_group("GUI", "AddThreeBatteryIcons")
	if Inventory.items.pickaxe:
		get_tree().call_group("GUI", "AddPickaxeIcon")
	if Inventory.items.shovel:
		get_tree().call_group("GUI", "AddShovelIcon")
	if Inventory.items.key:
		get_tree().call_group("GUI", "AddKeyIcon")
	if Inventory.items.axe:
		get_tree().call_group("GUI", "AddAxeIcon")
	if Inventory.items.flashlight:
		get_tree().call_group("GUI", "AddFlashlightIcon")
	if Inventory.items.lighter:
		get_tree().call_group("GUI", "AddLighterIcon")


func ShowWoodcuttingGame():
	$Minigames.add_child(load("res://Scenes/Minigames/Woodcutting.tscn").instance())
	$Minigames/Woodcutting.show()


func _on_Save_pressed():
	get_tree().call_group("Saver", "SaveData")


func _on_Load_pressed():
	get_tree().call_group("Saver", "LoadData")
	

func ShowLoose():
	$Loose/LooseOverlay.visible = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	Inventory.events.can_press_pause = false

func HideLoose():
	$Loose/LooseOverlay.visible = false
	get_tree().paused = false
	Inventory.events.can_press_pause = true
