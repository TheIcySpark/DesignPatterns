extends Button

onready var comando= preload(\
	"res://Escenas/Patrones/Command/Comandos/ComandoMovimiento.tscn")

onready var pilaComandos= get_parent().get_parent().get_parent().\
	get_node("PilaComandos")

func EjecutarComando(objeto, movimiento) -> void:
	var nuevoComando= comando.instance()
	nuevoComando.objeto= objeto
	nuevoComando.movimiento= movimiento
	pilaComandos.AgregarComando(nuevoComando)
