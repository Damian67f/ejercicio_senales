extends TextureButton

@onready var Instancia:PackedScene = preload("res://scenes/Blocks/Red/BlockRed.tscn")

func _generate_block():
	var NuevaInstancia = Instancia.instantiate()
	return NuevaInstancia



func _Cargar():pass
