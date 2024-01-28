extends Node2D

var draggable = false
var is_inside_dropable = false
var body_ref
var offset: Vector2
var initialPos : Vector2
@export var isCruda = true
@export var isCocida = false
@export var isQuemada = false
@export var idDivorcio = 0
var numplat = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if draggable :
		if Input.is_action_just_pressed("click"):
			initialPos = global_position
			offset = get_global_mouse_position() - global_position
			Global.is_dragging = true
		if Input.is_action_pressed("click"):
			global_position = get_global_mouse_position() - offset
		elif Input.is_action_just_released("click"):
			Global.is_dragging = false
			var tween = get_tree().create_tween()
			if is_inside_dropable and Global.isOcupado[numplat] == false:
				tween.tween_property(self,"position", body_ref.position,0.2).set_ease(Tween.EASE_OUT)
			else:
				tween.tween_property(self,"global_position",initialPos,0.2).set_ease(Tween.EASE_OUT)
	if $Timer.time_left > 2.8 and $Timer.time_left < 3.2:
		isCruda = false
		isCocida = true
		#print("isCruda ",isCruda)
		#print("isCocida ",isCocida)
	if isCocida:
		$Sprite2D.texture = load("res://Imgs/cocida.png")
	if isQuemada:
		$Sprite2D.texture = load("res://Imgs/quemada.png")



func _on_area_2d_mouse_entered():
	if not Global.is_dragging:
		draggable = true
		scale = Vector2(1.05,1.05)


func _on_area_2d_mouse_exited():
	if not Global.is_dragging:
		draggable = false
		scale = Vector2(1,1)



func _on_area_2d_body_entered(body:StaticBody2D):
	numplat = body.num
	if body.is_in_group('dropable') && body.divorcio == 1:
		#print("Si se puede")
		is_inside_dropable = true
		body.modulate = Color(Color.WHITE, 0.5)
		body_ref = body
		if $Timer.time_left == 0 and isQuemada == false:
			$Timer.start()
		else:
			$Timer.set_paused(false)
	else:
		print("No se puede")
	if body.isPlato == true:
		#score++
		if isCruda == true or isQuemada == true:
			Global.score = Global.score-3
		else:
			Global.score = Global.score+5
			
		Global.is_dragging = false
		$".".queue_free()#position = Vector2(10000,10000)
		



func _on_area_2d_body_exited(body):
	if body.is_in_group('dropable'):
		is_inside_dropable = false
		$Timer.set_paused(true)
		body.modulate = Color(Color.WHITE, 0.3)
		


func _on_timer_timeout():
	isCocida = false
	isQuemada = true
	#print("isquemada ",isQuemada)
