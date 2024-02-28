extends Control


onready var up = preload("res://Assets/Textures/up.png")
onready var down = preload("res://Assets/Textures/down.png")
onready var left = preload("res://Assets/Textures/left.png")
onready var right = preload("res://Assets/Textures/right.png")
onready var default = preload("res://Assets/Textures/frame.png")
var  cont = 0

onready var player = $"../Player"
onready var window_dialog = $"../WindowDialog"
onready var falha = $"../falha"
onready var audio = $"../audio"


# Called when the node enters the scene tree for the first time.
func _ready():
	update_feedback()
	
func update_feedback():
	var input = null
	for i in player.comandos:
			match cont:
				0: input = $input1
				1: input = $input2
				2: input = $input3
				3: input = $input4
				4: input = $input5
				5: input = $input6
			
			match i:
				"up":
					input.texture=up
				"down":
					input.texture=down
				"left":
					input.texture=left
				"right":
					input.texture=right
			cont +=1

	cont = 0	
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	update_feedback()
	
func check_status(steps):
	if steps==6:
		if not _on_chicken_area_entered(player):
			falha.popup()
			

func clear_inputs():
	print("limpando")
	$input1.texture=default
	$input2.texture=default
	$input3.texture=default
	$input4.texture=default
	$input5.texture=default
	$input6.texture=default

func _on_chest_pressed():
	pass
	 # Replace with function body.


func _on_reset_pressed():
	clear_inputs()
	player.comandos.clear()
	player.set_position(Vector2(8,8))


func _on_chicken_area_entered(area):
	window_dialog.popup()
	clear_inputs()
	player.set_position(Vector2(8,8))


func _on_galinha2_area_entered(area):
	window_dialog.popup()
	clear_inputs()
	player.comandos.clear()
	player.set_position(Vector2(8,8))


func _on_galinha3_area_entered(area):
	clear_inputs()
	player.comandos.clear()
	player.set_position(Vector2(8,8))



func _on_Button_button_down():
	get_tree().reload_current_scene()


func _on_Mute_button_down():
	if audio.playing:
		audio.stop()
	else:
		audio.play()
