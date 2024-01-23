extends Node2D

var draggable = false
var is_inside_dropable = false
var body_ref

func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	if not Global.isDragging:
		draggable	= true 
		scale = Vector2(1.05,1.05)


func _on_area_2d_mouse_exited():
	if not Global.isDragging:
		draggable	= false 
		scale = Vector2(1,1)
