extends ObjectiveTemplate

@export var should_turn_on: bool = false


func _ready():
	if should_turn_on:
		hitpoints = 0
		_update_sprite()


func _update_sprite():
	if hitpoints <= 0:
		$Sprite2D.frame = 1
		hitpoints = 0
	elif hitpoints >= max_hitpoints:
		$Sprite2D.frame = 0
		hitpoints = max_hitpoints


func _on_body_entered(body):
	if body.type == Types.Fluids.WATER and hitpoints > 0:
		hitpoints -= 1
		body.queue_free()
	elif body.type == Types.Fluids.LAVA and hitpoints < max_hitpoints:
		hitpoints += 1
		body.queue_free()
		
	_update_sprite()
