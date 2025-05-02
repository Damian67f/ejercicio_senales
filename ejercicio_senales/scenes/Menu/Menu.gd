extends Node2D


const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount:int = 0

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	pass


func _on_red_generator_button_down() -> void:
	var bloque = $RedGenerator	
	bloque.connect("button_down",bloque._generate_block)
	_count_new_instance()	
	print("funciona")





func _on_violet_generator_button_down() -> void:
	var bloque = $VioletGenerator
	bloque.connect("button_down",bloque._generate_block)
	_count_new_instance()
	print("funciona")


func _on_reset_button_down() -> void:
	get_tree().call_group("blocks","_delete")
	
	
func _count_new_instance():
	instancesCount += 1
	$CountLabel.text = str(instancesCount)
	
func _delete():
	instancesCount = 0
	$CountLabel.text = "Cantidad de Instancias:"
