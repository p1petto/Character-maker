extends Node2D


var grid_size = 64.0  # Размер сетки 64x64

func _draw():
	var line_thickness = 0.01  # Толщина линий

	# Рисуем вертикальные линии
	for x in range(grid_size):
		draw_line(Vector2(x, 0.0), Vector2(x, grid_size), Color.WHITE, 0.05)

	# Рисуем горизонтальные линии
	for y in range(grid_size):
		draw_line(Vector2(0.0, y), Vector2(grid_size, y), Color.WHITE, 0.05)
