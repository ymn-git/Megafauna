extends CanvasLayer
# Notifies `Main` node that the button has been pressed


func _on_comenzar_juego_pressed():
	$ButtonComenzar.hide()
	var main_scene = load("res://juego/Scenes/Niveles/miramar.tscn").instantiate()
	get_tree().root.add_child(main_scene)
	get_tree().current_scene = main_scene
	queue_free()  # Elimina el instructions después de cargar la escena principal
	



