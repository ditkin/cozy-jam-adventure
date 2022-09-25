extends LineEdit


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var answer = "apple"



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.text == answer:
		$Swirly.show()
		Globals.rat_king_solved = true
		yield(get_tree().create_timer(1.0), "timeout")
		
		Globals.spawnpoint = "house_outside"
		get_tree().change_scene("res://scenes/levels/HouseInside.tscn")
		emit_signal("dialog_ended")
	pass
	

