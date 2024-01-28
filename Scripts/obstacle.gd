extends Area2D

var speed = 18 #velocidad
var velocity:Vector2 = Vector2() # tengo entendido que esta forma de declaracion sirve para los static body

func _on_body_entered(body): #Funcion para detectar que es lo que colisiono contra el body
	if body.name == "Player": #checamos que sea el player
		#aqui hay que hacer que perdiste el miniejugo o lo que sea
		body.queue_free() #Por el momento lo desaparesco
		get_tree().change_scene_to_file("res://scenes/top_down2.tscn")

func _process(delta): 
	position.x -= speed #es para que se mueva en direccion al jugador
