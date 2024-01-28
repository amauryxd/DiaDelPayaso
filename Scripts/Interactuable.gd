extends Area2D

var isTocando = false
@onready var actionable_finder: Area2D = $"."
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if not (body.name == ("PersonajeGaming")):
		isTocando = true
		#if Input.is_action_just_pressed("ui_accept"):
			#DialogueManager.show_dialogue_balloon(load("res://Dialogos/PayachaGacha.dialogue"), "Primera_Interaccion")
			#return

func _unhandled_input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
			var actionables = actionable_finder.get_overlapping_areas()
			if actionables.size() > 0:
				actionables[0].action()
				return
