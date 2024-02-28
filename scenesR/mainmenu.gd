extends Control


onready var iniciar = $menu/VBoxContainer2/VBoxContainer/Button
onready var sair = $menu/VBoxContainer2/VBoxContainer/Button3 
onready var nivel_inicial = preload("res://scenesR/Level1.tscn")
onready var nivel1 = preload("res://scenesR/Level1.tscn") as PackedScene

func _ready():
	pass

func _on_sair_button_down():
	get_tree().quit()

func _on_iniciar_button_down():
	get_tree().change_scene_to(nivel1)
