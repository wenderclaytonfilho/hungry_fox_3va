extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var chickens =2


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	update()


func update():
	if chickens ==0:
		hide()

func _on_galinha_area_entered(area):
	chickens-=1
	


func _on_galinha2_area_entered(area):
	chickens-=1
