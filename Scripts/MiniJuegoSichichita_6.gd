extends Area2D

var sprite : Sprite2D
var initial_scale := Vector2(1, 1) # Escala inicial del sprite.
var growth_factor := 1.2 # Crecimiento del sprite cuando es clickeado.
var custom_max_size := 0.0 # Valor máximo de crecimiento individual.

# Variables compartidas entre ambas áreas de detección
var score_label : Label
var score : int

func _ready():
	sprite = get_tree().get_root().get_node("/root/MiniJuegoSichichita/Sprite2D_6") # Obtener la referencia al Sprite2D_1
	initial_scale = sprite.scale
	custom_max_size = randf_range(2.0, 5.0) # Valor máximo individual
	score_label = get_tree().get_root().get_node("/root/MiniJuegoSichichita/Score") # Obtener la referencia al nodo Label de puntaje
	score = 0 # Puntaje compartido entre las áreas de detección

func _input(event): # Detecta si se ha presionado el botón del mouse
	if event is InputEventMouseButton and event.pressed:
		if is_inside_area(event.global_position):
			_on_GrowOnClick_mouse_button_pressed()

func _on_GrowOnClick_mouse_button_pressed(): # Se ejecuta al dar click en el mouse sobre el sprite.
	sprite.scale *= growth_factor
	# Condicional que verifica si el sprite está en el tamaño máximo, para ocultarlo.
	if sprite.scale.x >= custom_max_size or sprite.scale.y >= custom_max_size:
		sprite.hide()
		decrease_score()
	else:
		increase_score()

func is_inside_area(global_mouse_pos: Vector2) -> bool:
	var local_mouse_pos = to_local(global_mouse_pos)
	return sprite.get_rect().has_point(local_mouse_pos)

func increase_score():
	score += 1
	update_score_label()

func decrease_score():
	if score > 0:
		score -= 1
		update_score_label()

func update_score_label():
	score_label.text = "Puntaje: " + str(score)
