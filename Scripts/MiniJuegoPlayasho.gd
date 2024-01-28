extends Node2D

var obstacle = preload("res://PlayashoRes/area_2d.tscn") #precargar la escena de los obstaculos

var max_obstacle = 100 # cantidad maxima de obstaculos

func _ready():
	$Timer.start()

func _on_timer_timeout():
	var Obstacle_Scene=obstacle.instantiate() 
	randomize()
	Obstacle_Scene.global_position = Vector2(1218,randi_range(104,646))#randi()%600)
	$obstacle_container.add_child(Obstacle_Scene)
