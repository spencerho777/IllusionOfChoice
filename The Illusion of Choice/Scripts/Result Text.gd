extends "res://Scripts/Title Label.gd"

var wait_time = 0

func changeText( string ):
	self.text = string
	self.makeVisible()
	wait_time = OS.get_ticks_msec()
	
func _process(delta):
	if makingVisible:
		var vis = get("percent_visible")
		if vis < 1.0:
			set("percent_visible", vis + textSpeed)
		elif OS.get_ticks_msec() - wait_time >= 2000:
			nextScene()
			
			
func nextScene():
	get_node("/root/Node2D/Player").toggleLight()