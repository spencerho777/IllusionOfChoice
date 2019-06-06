extends RigidBody2D


var dead = false
export (float) var fadeSpeed = 0.01

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if dead and self.modulate.a > 0:
		self.modulate.a = self.modulate.a - fadeSpeed

func die():
	get_node("/root/Node2D/Audio").play()
	get_node("Interact Text").toggleVisible()
	dead = true