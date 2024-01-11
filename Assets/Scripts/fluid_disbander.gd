extends Area2D


func _ready():
	var area: CollisionShape2D = get_child(0)
	if area == null:
		assert("No Collision shape defined for " + str($"."))


func _on_body_entered(body):
	body = body as FluidBallTemplate
	body.queue_free()
