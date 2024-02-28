extends Control

func _ready():
	pass # Replace with function body.

func _on_Iniciar_pressed():
	hide()

func _on_Sair_button_down():
	get_tree().quit()


func _on_Sobre_button_down():
	get_tree().change_scene("res://Scenes/Sobre.tscn")
