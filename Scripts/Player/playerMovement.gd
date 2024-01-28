extends CharacterBody2D


const SPEED = 400.0

var si = Vector2(0,0)

# Get the gravity from the project settings to be synced with RigidBody nodes.
func _ready():
	print(Global.playername)
	if Global.isChica:
		$Sprite2D.texture = load("res://Imgs/PlayerM/Frente/Frente frame 1.png")
	else:
		$Sprite2D.texture = load("res://Imgs/PlayerH/Frente/Frente frame 1.png")

func _physics_process(delta):
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("MovimientoGamingIzquierda", "movimientoGamingDerecha")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	if velocity.y > 0.1 and Global.isChica == false:
		$Sprite2D/AnimationPlayer.play("PlayerFrente")
	if velocity.y < -0.1 and Global.isChica == false:
		$Sprite2D/AnimationPlayer.play("PlayerAtras")
	if velocity.x > 0.1 and Global.isChica == false:
		$Sprite2D/AnimationPlayer.play("PlayerDerecha")
	if velocity.x < -0.1 and Global.isChica == false:
		$Sprite2D/AnimationPlayer.play("PLayerIzq")
	if velocity == si:
		$Sprite2D/AnimationPlayer.stop()
	
	if velocity.y > 0.1 and Global.isChica == true:
		$Sprite2D/AnimationPlayer.play("ChicaFrente")
	if velocity.y < -0.1 and Global.isChica == true:
		$Sprite2D/AnimationPlayer.play("ChicaAtras")
	if velocity.x > 0.1 and Global.isChica == true:
		$Sprite2D/AnimationPlayer.play("ChicaDerecha")
	if velocity.x < -0.1 and Global.isChica == true:
		$Sprite2D/AnimationPlayer.play("ChicaIzq")
	
	
	var directiony = Input.get_axis("MovimientoGamingArriba", "MovimientoGamingAbajo")
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
