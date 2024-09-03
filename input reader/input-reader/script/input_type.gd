class_name InputType
extends Node

func is_valid(text_ : String) -> bool:
	return true

func warning() -> void:
	printerr("LO INGRESADO NO CONCUERDA CON EL MODO")

func placeholder_text() -> String:
	return "modo: STRING"
