extends Node2D
class_name FluidBallTemplate

@export var type: Types.Fluids

func _ready():
	Types.check_null_type(type, $".")
		
	if type == Types.Fluids.AIR or type == Types.Fluids.GAS:
		$".".gravity_scale = -1
