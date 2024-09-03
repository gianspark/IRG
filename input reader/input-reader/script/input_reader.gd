class_name InputReader
extends LineEdit

var text_ : String = ""

@onready var STRING: InputType = $STRING
@onready var INT: Node = $INT
@onready var FLOAT: Node = $FLOAT


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	get_window().content_scale_factor = 4
	get_window().content_scale_mode = Window.CONTENT_SCALE_MODE_DISABLED
	get_window().unresizable = true
	
	get_window().size = size*4
	
	deactivate_line()
	hacer()

##Ejecuta toda la lógica en tiempo real, no usar func _ready() si esto está presente.
func hacer() -> void:
	pass

func activate_line() -> void:
	editable = true
	clean_line()

func deactivate_line() -> void:
	editable = false
	change_placeholder_text("finalizado.")
	clean_line()

func clean_line() -> void:
	clear()

func change_placeholder_text(text_ : String):
	placeholder_text = text_

func loop(type : InputType) -> String:
	activate_line()
	change_placeholder_text(type.placeholder_text())
	while true:
		await finished_asignation
		if(type.is_valid(text_)):
			break
	deactivate_line()
	return text_

##Lo introducido en la línea será leído como un FLOAT(número con coma)
func input_float() -> float:
	var text_ = await loop(FLOAT)
	return text_.to_float()

##Lo introducido en la línea será leído como un STRING(texto)
func input_string() -> String:
	var text_ = await loop(STRING)
	return text_

##Lo introducido en la línea será leído como un INT(número sin comas)
func input_int() -> int:
	var text_ = await loop(INT)
	return text_.to_int()

signal finished_asignation

func _on_text_submitted(new_text: String) -> void:
	clean_line()
	text_ = new_text
	finished_asignation.emit()
