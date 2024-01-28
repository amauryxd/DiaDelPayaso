extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Tiempo.text = str(int($Timer.time_left))
	$Score.text = str(int(Global.score))



func _on_timer_timeout():
	print("perdisteunu")
