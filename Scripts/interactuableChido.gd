extends Area2D


@export var daialogue_resource: DialogueResource
@export var dialogue_start: String = "start"

func action() -> void:
	DialogueManager.show_dialogue_balloon(daialogue_resource,dialogue_start)
