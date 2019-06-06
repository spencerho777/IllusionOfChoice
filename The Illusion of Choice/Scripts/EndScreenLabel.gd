extends RichTextLabel

export (float) var textSpeed = 0.001

var makingVisible = false

# Called when the node enters the scene tree for the first time.
func _ready():
	set("percent_visible", 0.0)
	self.makeVisible()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if makingVisible:
		var vis = get("percent_visible")
		if vis < 1.0:
			set("percent_visible", vis + textSpeed)

func makeVisible():
	makingVisible = true