extends Sprite2D

# рисуем по координатам

var border: Array = [
	[0, 0, 0, 0, 0, 1, 1, 1, 1],
	[0, 0, 0, 0, 1, 0, 0, 0, 0],
	[0, 0, 1, 1, 0, 0, 0, 0, 0],
	[0, 1, 0, 0, 0, 0, 0, 0, 0],
	[0, 1, 0, 0, 0, 0, 0, 0, 0],
	[0, 1, 0, 0, 0, 0, 0, 0, 0],
	[0, 1, 0, 0, 0, 0, 0, 0, 0],
	[0, 1, 0, 0, 0, 0, 0, 0, 0],
	[0, 1, 0, 0, 0, 0, 0, 0, 0],
	[0, 1, 0, 0, 0, 0, 0, 0, 0],
	[1, 0, 1, 0, 0, 0, 0, 0, 0],
	[1, 0, 1, 0, 0, 0, 0, 0, 0],
	[0, 1, 1, 0, 0, 0, 0, 0, 0],
	[0, 0, 1, 0, 0, 0, 0, 0, 0],
	[0, 0, 0, 1, 0, 0, 0, 0, 0],
	[0, 0, 0, 0, 1, 1, 0, 0, 0],
	[0, 0, 0, 0, 0, 0, 0, 1, 1]
]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	# Создаем изображение размером 9x17 (размер массива border)

	var img_width = 9
	var img_height = 17
	var img = Image.create(img_width, img_height, false, Image.FORMAT_RGBA8)


	## Заполняем изображение в соответствии с массивом
	for y in range(border.size()):
		for x in range(border[y].size()):
			if border[y][x] == 1:
				img.set_pixel(x, y, Color.BLACK)  # Черные пиксели
				
	
	texture = ImageTexture.create_from_image(img)
