extends Node



func _on_portal_body_entered(body):
	
	var level2 = load("res://Scenes/Niveles/miramar3.tscn").instantiate()
	get_tree().root.add_child(level2)
	get_tree().current_scene = level2
	queue_free()
