extends Button

func _on_BotonSeleccionarNivel_button_up() -> void:
	get_parent().set_visible(false)
	get_parent().get_parent().get_node("Patrones").set_visible(true)

