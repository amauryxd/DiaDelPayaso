extends Node2D





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.pla:
		$PersonajeGaming/PlayasoNeutral.visible = true
	else:
		$PersonajeGaming/PlayasoNeutral.visible = false
	
	if Global.paya:
		$PersonajeGaming/PayasadaNeutral.visible = true
	else:
		$PersonajeGaming/PayasadaNeutral.visible = false
		
	if Global.sichi:
		$PersonajeGaming/PayasitaSinChichitaNeutral.visible = true
	else:
		$PersonajeGaming/PayasitaSinChichitaNeutral.visible = false
