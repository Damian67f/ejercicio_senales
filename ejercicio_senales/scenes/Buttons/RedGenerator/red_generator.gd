extends TextureButton

@onready var Instancia:PackedScene = preload("res://scenes/Blocks/Red/BlockRed.tscn")

func _generate_block():
 Instancia.instantiate()


func _Cargar():pass
