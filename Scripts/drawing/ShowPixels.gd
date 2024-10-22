extends Sprite2D

class_name Projector

@onready var pixels: Converter = $"../Converter"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pixels.array_received.connect(show_pixels)



func show_pixels():
	var img_width = 64
	var img_height = 64
	var img = Image.create(img_width, img_height, false, Image.FORMAT_RGBA8)
	Color(pixels.color_array[8][29])
	for y in range(pixels.color_array.size()):
		for x in range(pixels.color_array[y].size()):
			img.set_pixel(x, y, Color(pixels.color_array[y][x]))  
				
	texture = ImageTexture.create_from_image(img)
