extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_line_edit_text_submitted(new_text):
	Global.playername = $LineEdit.text
	get_tree().change_scene_to_file("res://scenes/top_down2.tscn")






func _on_check_button_toggled(toggled_on):
	Global.isChica = !Global.isChica
