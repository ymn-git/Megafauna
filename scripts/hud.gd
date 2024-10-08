extends CanvasLayer
# Notifies `Main` node that the button has been pressed

func show_message(text):
	$Message.show()
	$MessageTimer.start()
	await get_tree().create_timer(1.0).timeout
	$StartButton.show()

func _on_start_button_pressed():
	$StartButton.hide()
	var main_scene = load("res://Scenes/Instructions/instructions.tscn").instantiate()
	get_tree().root.add_child(main_scene)
	get_tree().current_scene = main_scene
	queue_free()  # Elimina el HUD después de cargar la escena principal

func _on_message_timer_timeout():
	$Message.hide()
	
