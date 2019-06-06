extends Light2D

var turnUpEnergy = false

# Called when the node enters the scene tree for the first time.
func _ready():
	set("energy", 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if turnUpEnergy:
		set("energy", get("energy") + 0.1)
	#elif !turnUpEnergy:
	#	set("energy", 0)
		
	
	if get("energy") > 3:
		turnUpEnergy = false
		get_node("/root/Node2D/PlayerTrans").change_scene()

func toggleEnergy():
	turnUpEnergy = !turnUpEnergy