extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Tiempo.text = str(int($Timer.time_left))
	$Score.text = str(int(Global.score))
	if Global.score > 30:
		get_tree().change_scene_to_file("res://scenes/top_down2.tscn")
		$"../Ganaste".visible = true
		
	print($"../cambio".time_left)



func _on_timer_timeout():
	#print("perdisteunu")
	$"../Perdiste".visible = true
	$"../cambio".start()



func _on_cambio_timeout():
	get_tree().change_scene_to_file("res://scenes/top_down2.tscn")
