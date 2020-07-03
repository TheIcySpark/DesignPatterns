extends Control

func CambiarEscena(nuevaEscena: String)-> void:
	get_tree().change_scene(nuevaEscena)
	print("CambaidorEsce no tiene animacion")
