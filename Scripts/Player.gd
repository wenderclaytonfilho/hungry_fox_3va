extends Area2D

export var comandos = []
var running = false
var tile_size = 16
var inputs = {"right": Vector2.RIGHT,
			"left": Vector2.LEFT,
			"up": Vector2.UP,
			"down": Vector2.DOWN}
			
			
func _ready():
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2

func _physics_process(delta):
	pass

func move(dir):
	position += inputs[dir] * tile_size
		
func wait(time):
	var t = Timer.new()
	t.set_wait_time(time)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")

	
func run():
	print(comandos)
	for i in comandos:
		print(i)
		yield(wait(1),"completed")
		move(i)
		
	comandos.clear()	
		
func update_feedback():
	pass
	
func _on_left_pressed():
	if comandos.size()<6:
		comandos.append("right")
	


func _on_right_pressed():
	if comandos.size()<6:
		comandos.append("left")


func _on_up_pressed():
	if comandos.size()<6:
		comandos.append("up")


func _on_down_pressed():
	if comandos.size()<6:
		comandos.append("down")


func _on_run_pressed():
	set_visible(true)
	running = true
	update_feedback()
	run()
