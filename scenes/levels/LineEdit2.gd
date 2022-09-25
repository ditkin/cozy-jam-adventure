extends LineEdit


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var answer = "dreams lie in a slice of sweetness and warmth"



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.text == answer:
		$Swirly.show()
		Globals.wizard_cypher_solved = true
		yield(get_tree().create_timer(1.0), "timeout")
		
		Globals.spawnpoint = "house_outside"
		get_tree().change_scene("res://scenes/levels/GoldenGate.tscn")
	pass
	

