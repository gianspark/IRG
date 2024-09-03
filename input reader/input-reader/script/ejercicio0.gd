extends InputReader

#ANTES DE USAR ESTE SCRIPT, HACER UN DUPLICADO O VAS A TENER QUE BORRAR EL CODIGO QUE HAYAS ESCRITO

#instrucciones para usarlo:
#1: sustraer el script actual del nodo llamado EditorDeLinea
#2: duplicar este script y pegarselo al EditorDeLinea
#3: poner el inicio de toda la logica en la funcion hacer()

#acá va la lógica, no usamos el _ready()
func hacer() -> void:
	
	#EJEMPLO
	
	var INT : int = await input_int()
	print(INT)
