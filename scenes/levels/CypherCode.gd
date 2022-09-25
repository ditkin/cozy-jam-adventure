extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.

var cypherImage
var imageTexture
func _ready():
	cypherImage = preload("res://textures/cypher.png").get_data()
	imageTexture = ImageTexture.new()
	imageTexture.create_from_image(cypherImage)
	
	connect("body_entered", self, "_on_Item_body_entered")
	connect("body_exited", self, "_on_Item_body_exited")
	pass

func _on_Item_body_entered(body):
	if body is Player:
		$BigCypherImage.set_texture(imageTexture)
		$BigCypherImage.show()
	pass
	
func _on_Item_body_exited(body):
	if body is Player:
		$BigCypherImage.hide()
	pass

	
