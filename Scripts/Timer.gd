extends Node2D

var time_left = 60
var timer_running = true

# Called when the node enters the scene tree for the first time.
func _ready():
	# Iniciar el temporizador
	$Timer.start()

# Función para manejar la lógica del temporizador
func _process(delta):
	if timer_running:
		time_left -= delta
	# Verificar si el tiempo ha llegado a cero
	if time_left <= 0:
		print("¡Tiempo agotado!")
		# Puedes agregar acciones adicionales aquí cuando el tiempo llega a cero
		timer_running = false
	else:
		print("Tiempo restante: ", time_left)
