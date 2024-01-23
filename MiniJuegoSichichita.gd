extends Sprite2D
# Called when the node enters the scene tree for the first time.
var initial_scale:=Vector2(1,1) #Escala inicial del sprite.
var growth_factor:=1.2 #Crecimiento del sprite cuando es clickeado.
var max_size:= 5.0 #Valor máximo de crecimiento

func _ready():
	initial_scale=scale
	set_process_input(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
func _input(event): #detecta si el botón del mouse se ha presionado
	if event is InputEventMouseButton and event.pressed:_on_GrowOnClick_mouse_button_pressed()

func _on_GrowOnClick_mouse_button_pressed(): #esto se ejecuta al dar click en el mouse sobre el sprite.
	scale*=growth_factor
	#Condicional que verifica si el sprite está en el tamaño máximo, para ocultarlo.
	if scale.x>=max_size or scale.y >=max_size:
		hide()
