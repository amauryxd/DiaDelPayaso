extends Control



func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/entrada_nombre.tscn")
	



func _on_credis_pressed():
	pass # Replace with function body.
	



func _on_salir_pressed():
	get_tree().quit()
