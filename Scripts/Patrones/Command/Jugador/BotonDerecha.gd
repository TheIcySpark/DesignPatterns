extends "res://Scripts/Patrones/Command/Jugador/BotonComando.gd"

onready var movimiento: Vector2= Vector2.RIGHT* 64
onready var objeto: Sprite= get_parent().get_parent()

func _ready() -> void:
	connect("button_down", self, "EjecutarComando", 
		[objeto, movimiento])
