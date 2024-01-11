extends Node2D

@onready var marker: Marker2D = $Marker2D
@onready var direction = marker.global_position - global_position

func _on_area_2d_input_event(_viewport, event, _shape_idx):
	if event.get_class() == "InputEventMouseButton":
		event = event as InputEventMouseButton
		if event.pressed:
			var pin_tween = create_tween()
			pin_tween.set_parallel(true)
			pin_tween.tween_property($".", "position", global_position + direction*5, 0.75)
			pin_tween.tween_property($".", "modulate:a", 0, 1) # Replace with function body.
			pin_tween.set_parallel(false)
			pin_tween.tween_callback(queue_free)
