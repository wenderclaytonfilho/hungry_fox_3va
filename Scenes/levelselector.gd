extends Control

onready var nivel_1 = $"../Comandos/nivel1"
onready var nivel_3 = $"../Comandos/nivel3"
onready var nivel_2 = $"../Comandos/nivel2"
onready var player = $"../Player"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_voltar_button_down():
	get_tree().change_scene("res://Scenes/Game.tscn")


func _on_1_button_down():
	player.set_visible(true)
	hide()

func _on_2_button_down():
	player.set_visible(true)
	queue_free()
	nivel_1.queue_free()

func _on_3_button_down():
	player.set_visible(true)
	hide()
	nivel_1.queue_free()
	nivel_2.queue_free()

