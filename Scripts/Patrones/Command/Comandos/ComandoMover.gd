extends Node
export var movimiento: Vector2
var objeto

func Hacer()-> void:
	objeto.set_position(objeto.get_position()+ movimiento)

func DesHacer()-> void:
	objeto.set_position(objeto.get_position()- movimiento)
