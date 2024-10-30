extends HSlider

@export var num_point: int

@onready var part_fill = $"../../BodyPartTransforming/BodyPartFill"
@onready var part_border = $"../../BodyPartTransforming/BodyPartBorder"

var value_of_point: Vector2
var count_of_points: int
var central_bottom_point: int
var mirror_point: int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	value_of_point = part_border.points[num_point]
	count_of_points = part_border.get_point_count()
	central_bottom_point = count_of_points / 2
	mirror_point = count_of_points - num_point 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_value_changed(value: float) -> void:
	print("value: ", value)
	
	part_border.points[num_point].x = value_of_point.x + value
	part_border.points[mirror_point].x = (value_of_point.x + value) * -1
	
	part_fill.polygon[num_point].x = value_of_point.x + value
	part_fill.polygon[mirror_point].x = (value_of_point.x + value) * -1
