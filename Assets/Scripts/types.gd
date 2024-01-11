extends Node

enum Fluids {NULL, WATER, LAVA, GAS, AIR}

func get_type_name(key: Fluids) -> String:
	return Fluids.find_key(key)

func check_null_type(type: Fluids, node: Node2D):
	if type == Types.Fluids.NULL: 
		assert(false, "No type defined on " + str(node))
