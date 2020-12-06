extends NinePatchRect


func _ready():
	$Dialogue.text = tr("StartPhrase")
	dialogue_opened()

func AddedBattery():
	$Dialogue.text = tr("AddedBattery")
	dialogue_opened()
	
func NoLighter():
	$Dialogue.text = tr("NoLighter")
	dialogue_opened()
	
func NoAxe():
	$Dialogue.text = tr("NoAxe")
	dialogue_opened()
	

func BrokenPlate():
	$Dialogue.text = tr("BrokenPlate")
	dialogue_opened()
	
func EmptyPort():
	$Dialogue.text = tr("EmptyPort")
	dialogue_opened()
	
func NoBatteries():
	$Dialogue.text = tr("NoBatteries")
	dialogue_opened()
	
func Lantern():
	$Dialogue.text = tr("Lantern")
	dialogue_opened()

func NoLantern():
	$Dialogue.text = tr("NoLantern")
	dialogue_opened()


func NoKey():
	$Dialogue.text = tr("NoKey")
	dialogue_opened()


func NoShovel():
	$Dialogue.text = tr("NoShovel")
	dialogue_opened()


func Snowstorm():
	if Inventory.snowstorm_said == false:
		$Dialogue.text = tr("Snowstorm")
		dialogue_opened()
		Inventory.snowstorm_said = true
	elif Inventory.snowstorm_said:
		pass

func dialogue_opened():
	show()
	$Timer.start()
	$Voice.play()
	$Voice/VoiceTimer.start()

func _on_VoiceTimer_timeout():
	$Voice.stop()

func _on_Timer_timeout():
	hide()


func TooMuchLogs():
	$Dialogue.text = tr("TooMuchLogs")
	dialogue_opened()


func NoLogs():
	$Dialogue.text = tr("NoLogs")
	dialogue_opened()
	

func NoPlanks():
	$Dialogue.text = tr("NoPlanks")
	dialogue_opened()
