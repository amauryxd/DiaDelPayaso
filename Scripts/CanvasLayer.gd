extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label/Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "Tiempo restante: " + str(int($Label/Timer.time_left))



func _on_timer_timeout():
	#print("mamastek")
	get_tree().change_scene_to_file("res://scenes/top_down2.tscn")
