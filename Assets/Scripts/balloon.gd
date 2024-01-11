extends ObjectiveTemplate

@export var type: Types.Fluids = Types.Fluids.AIR
@export var balloon_sprite: Texture2D

func _ready():
	hitpoints = 0
	$Sprite2D.texture = balloon_sprite


func _update_sprite():
	var percent = float(hitpoints * 100) / float(max_hitpoints)
	if  percent == 100:
		$Sprite2D.frame = 3
	elif percent < 100:
		$Sprite2D.frame = 2
	elif percent < 75:
		$Sprite2D.frame = 1
	elif percent < 33:
		$Sprite2D.frame	= 0


func _on_body_entered(body):
	if body.type == type and hitpoints < max_hitpoints:
		hitpoints += 1
		body.queue_free()
		_update_sprite()
