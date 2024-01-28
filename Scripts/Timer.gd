extends Node2D

var time_left = 30
var timer_running = true
var time_label # Referencia al nodo Label
var panel # Referencia al nodo Panel
var control # Referencia al nodo Control

# Called when the node enters the scene tree for the first time.
func _ready():
	# Obtener la referencia al nodo Label, Panel y Control
	time_label = $Time #Este es el nodo donde se muestra el tiempo restante.
	panel = $Control/Panel
	control = $Control
	
	# Ocultar el panel al principio
	panel.visible = false
	# Desactivar la interacción con el control al principio
	control.set_process_input(false)

# Función para manejar la lógica del temporizador
func _process(delta):
	if timer_running:
		time_left -= delta
		# Verificar si el tiempo ha llegado a cero
		if time_left <= 0:
			print("¡Se acabó!")
			# Más acciones cc el tiempo llege a 0.
			time_label.text = "¡Se acabó!"
			timer_running = false
			# Mostrar el panel
			panel.visible = true
			# Activar la interacción con el control
			control.set_process_input(true)
		else:
			# Actualizar el texto del Label (Time) con el tiempo restante
			time_label.text = "Tiempo: " + str(int(time_left))
			#print("Tiempo: ", time_left)
