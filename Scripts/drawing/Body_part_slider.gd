extends HSlider

@export var num_point: int

@export var parent_node: Node 

var value_of_point: Vector2
var count_of_points: int
var central_bottom_point: int
var mirror_point: int
var part_fill
var part_border

func _ready() -> void:
	call_deferred("_initialize_values")

func _initialize_values() -> void:
	part_fill = parent_node.get_node("BodyPartTransforming/BodyPartFill")
	part_border = parent_node.get_node("BodyPartTransforming/BodyPartBorder")
	
	# Убедитесь, что part_border загружен
	if part_border and part_border.points.size() > num_point:
		value_of_point = part_border.points[num_point]
		count_of_points = part_border.get_point_count()
		central_bottom_point = count_of_points / 2
		mirror_point = count_of_points - num_point - 1
	else:
		print("Ошибка: points не готовы или num_point вне диапазона.")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_value_changed(value: float) -> void:
	print("value: ", value)
	
	part_border.points[num_point].x = value_of_point.x + value
	part_border.points[mirror_point].x = (value_of_point.x + value) * -1
	
	part_fill.polygon[num_point].x = value_of_point.x + value
	part_fill.polygon[mirror_point].x = (value_of_point.x + value) * -1
