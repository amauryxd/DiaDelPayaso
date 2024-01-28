extends StaticBody2D

@export var divorcio = 1
@export var isParrilla = false
@export var isPlato = false
@export var num = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	modulate = Color(Color.WHITE,0.2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.is_dragging:
		visible = true	
	else: 
		visible = false



#func _on_area_2d_area_entered(area):
	#Global.isOcupado[num] = true
	



#func _on_area_2d_area_exited(area):
	#Global.isOcupado[num] = false
