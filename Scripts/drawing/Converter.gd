extends Node2D

class_name Converter

@export var img: Texture2D

signal array_received
var color_array: Array = []

func _ready() -> void:
	if img:
		var image: Image = img.get_image()

		

		for y in range(image.get_height()):
			var row: Array = []
			for x in range(image.get_width()):
				var color: Color = image.get_pixel(x, y)
				row.append(color)
			color_array.append(row)
		
		array_received.emit()
