extends ObjectiveTemplate

func _update_sprite():
	if hitpoints >= max_hitpoints:
		$Sprite2D.frame = 1


func _on_body_entered(body):
	if body.type == Types.Fluids.WATER and hitpoints <= max_hitpoints:
		hitpoints += 1
		body.queue_free()
		_update_sprite()
