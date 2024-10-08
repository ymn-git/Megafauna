extends Node

var playerLife = 3

func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func lost_life():
	playerLife-=1
	if playerLife==0:
		var hud = load("res://Scenes/fondo/hud.tscn").instantiate()
		get_tree().root.add_child(hud)
		get_tree().current_scene = hud
		
		
