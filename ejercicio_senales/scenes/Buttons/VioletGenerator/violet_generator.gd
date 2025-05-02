extends TextureButton

@onready var Instancia:PackedScene = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")

func _generate_block():
 Instancia.instantiate()
