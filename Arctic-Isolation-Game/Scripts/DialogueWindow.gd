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
	

func dialogue_opened():
	show()
	$Timer.start()
	$Voice.play()
	$Voice/VoiceTimer.start()

func _on_VoiceTimer_timeout():
	$Voice.stop()

func _on_Timer_timeout():
	hide()


#Ну и метель...нужно постараться не замерзнуть насмерть, пока


