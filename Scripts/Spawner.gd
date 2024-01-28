extends Sprite2D

var carne = preload("res://Prefabs/object.tscn")
var nodo = get_parent()
var isSolo = false



# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _spawn():
	if not isSolo:
		var instancia = carne.instantiate()
		add_sibling(instancia)
		instancia.global_position=Vector2($".".position)


func _input(event): #detecta si el botón del mouse se ha presionado
	if event is InputEventMouseButton and event.pressed:_spawn()


func _on_area_2d_body_entered(body):
	isSolo = true
	print(body.name)


func _on_area_2d_area_entered(area):
	isSolo = true

func _on_area_2d_area_exited(area):
	isSolo = false
