extends CharacterBody2D

const SPEED = 500.0 # velocidad del jugador

func _physics_process(delta):
	#metemos la deteccion de inputs
	var direction = Input.get_axis("MovimientoGamingArriba", "MovimientoGamingAbajo")
	if direction:
		velocity.y = direction * SPEED #si hay un input, decimos que se mueva
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED) # cancelamos cuelquier movimiento

	move_and_slide() #funcion que sirve para el movimeinto no entiendo la vea
