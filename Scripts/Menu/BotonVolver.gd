extends Button

func _on_BotonVolver_button_up() -> void:
	get_parent().set_visible(false)
	get_parent().get_parent().get_node("BotonesPrincipales").set_visible(true)
