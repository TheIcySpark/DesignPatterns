extends Node
var numeroComando: int= 0

func AgregarComando(nuevoComando)-> void:
	while numeroComando< get_child_count():
		var comando= get_child(get_child_count() -1)
		comando.queue_free()
		yield(comando, "tree_exited")
	add_child(nuevoComando)
	nuevoComando.Hacer()
	numeroComando+= 1

func DesHacer()-> void:
	if numeroComando== 0: return
	var comando= get_child(numeroComando- 1)
	comando.DesHacer()
	numeroComando-= 1

func ReHacer()-> void:
	if numeroComando== get_child_count(): return
	var comando= get_child(numeroComando)
	comando.Hacer()
	numeroComando+= 1
