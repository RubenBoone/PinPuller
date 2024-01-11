extends Marker2D
class_name FluidSpawnerTemplate

@export var type: Types.Fluids
@export var ball: PackedScene
@export var amount: int = 150

func _ready():
	Types.check_null_type(type, $".")
	
	for i in range(amount):
		add_child(ball.instantiate())
