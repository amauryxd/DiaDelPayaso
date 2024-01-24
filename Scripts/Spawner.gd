extends Sprite2D

var carne = preload("res://object.tscn")
var nodo = get_parent()




# Called when the node enters the scene tree for the first time.
func _ready():
	
	print(nodo)

func _spawn():
	var instancia = carne.instantiate()
	add_sibling(instancia)
	instancia.global_position=Vector2(231,528)

func _input(event): #detecta si el botón del mouse se ha presionado
	if event is InputEventMouseButton and event.pressed:_spawn()
