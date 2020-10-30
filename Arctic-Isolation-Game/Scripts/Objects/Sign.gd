extends Area2D

var can_press_e = false

var sign_in_forest = false
var sign_on_ice = false
var sign_on_lake = false

func _process(_delta):
	if can_press_e and sign_in_forest and Input.is_action_just_pressed("action"):
		get_tree().call_group("GUI", "ForestPopup")
	if can_press_e and sign_on_ice and Input.is_action_just_pressed("action"):
		get_tree().call_group("GUI", "IcePopup")
	if can_press_e and sign_on_lake and Input.is_action_just_pressed("action"):
		get_tree().call_group("GUI", "LakePopup")

func _on_ForestSign_body_entered(body):
	$Press_E.show()
	can_press_e = true
	sign_in_forest = true


func _on_ForestSign_body_exited(body):
	$Press_E.hide()
	can_press_e = false
	sign_in_forest = false


func _on_IceSign_body_entered(body):
	$Press_E.show()
	can_press_e = true
	sign_on_ice = true
	

func _on_IceSign_body_exited(body):
	$Press_E.hide()
	can_press_e = false
	sign_on_ice = false



func _on_LakeSign_body_exited(body):
	$Press_E.show()
	can_press_e = true
	sign_on_lake = true


func _on_LakeSign_body_entered(body):
	$Press_E.hide()
	can_press_e = false
	sign_on_lake = false
