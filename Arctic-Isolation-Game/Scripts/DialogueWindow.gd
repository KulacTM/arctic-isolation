extends NinePatchRect


func _ready():
	$Dialogue.text = "Вот и закончилась моя смена. Корабль уже наверняка ждёт. Скоро я буду дома!"
	dialogue_opened()

func AddedBattery():
	$Dialogue.text = "Кто знает, что может пригодиться в пути..."
	dialogue_opened()
	
func NoLighter():
	$Dialogue.text = "Зажечь нечем. Кажется, я оставил свою зажигалку в пещере у реки..."
	dialogue_opened()
	
func NoAxe():
	$Dialogue.text = "Здесь мне нужен топор. Думаю, его можно найти на лесопилке в лесу."
	dialogue_opened()
	

func BrokenPlate():
	$Dialogue.text = "Еще одна жертва метели. Да уж, теперь эта штука не поможет мне связаться с остальными..."
	dialogue_opened()
	
func EmptyPort():
	$Dialogue.text = "Нет-нет-нет, корабль уже отчалил! Мне нужно срочно связаться с ним и сообщить, что я все ещё здесь!"
	dialogue_opened()
	
func NoBatteries():
	$Dialogue.text = "Кажется, не хватает питания. Нужно найти еще батарейки. Если искать в зданиях - наверняка найду"
	dialogue_opened()
	
func Lantern():
	$Dialogue.text = "Хорошо, что у меня есть фонарь. Без него бы я сейчас тут совсем потерялся."
	dialogue_opened()

func NoLantern():
	$Dialogue.text = "Без фонаря совсем туго. Слышал, у смотрителя маяка есть такой. По крайней мере, был..."
	dialogue_opened()
	

func Snowstorm():
	if Inventory.snowstorm_said == false:
		$Dialogue.text = "Ну и метель...нужно постараться не замерзнуть насмерть, пока добираюсь до корабля.."
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



