extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var chicken = $chicken

onready var player = $"../../Player"

onready var nivel_1 = $"../nivel1"

var chickens = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_chicken_area_entered(area):
	chickens -=1
	if chickens ==0:
		chicken.hide()
		nivel_1.hide()
		

