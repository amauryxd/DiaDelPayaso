extends Node2D

var is_dragging = false

var playername = "Pancho"

var score = 0

var isOcupado = [false,false,false,false]

var scoregobos = 0

var isChica = false

func _CHMinijuegoPlayasho():
	get_tree().change_scene_to_file("res://scenes/MiniJuegoPlayasho.tscn")
	
func PayasadaGame():
	get_tree().change_scene_to_file("res://scenes/MiniJuegoPayasada.tscn")
	
func sichiGame():
	get_tree().change_scene_to_file("res://scenes/MiniJuegoSichichita.tscn")

var pla = false
var paya = false
var sichi = false
