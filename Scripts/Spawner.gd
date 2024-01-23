extends Sprite2D

var carne = preload("res://object.tscn")
var instancia = carne.instantiate()
var nodo = get_parent()




# Called when the node enters the scene tree for the first time.
func _ready():
	
	print(nodo)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _spawn():
	instancia.position=Vector2(231,528)
	$"..".add_child.call_deferred(instancia)

func _input(event): #detecta si el botón del mouse se ha presionado
	if event is InputEventMouseButton and event.pressed:_spawn()
	
