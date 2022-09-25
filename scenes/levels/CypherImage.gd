extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.

var bigScroll
var imageTexture
func _ready():
	bigScroll = preload("res://textures/big_scroll.jpeg").get_data()
	imageTexture = ImageTexture.new()
	imageTexture.create_from_image(bigScroll)
	
	connect("body_entered", self, "_on_Item_body_entered")
	connect("body_exited", self, "_on_Item_body_exited")
	pass

func _on_Item_body_entered(body):
	if body is Player:
		$BigScrollImage.set_texture(imageTexture)
		$BigScrollImage.show()
		$PanelContainer.show()
	pass
	
func _on_Item_body_exited(body):
	if body is Player:
		$BigScrollImage.hide()
		$PanelContainer.hide()
	pass

	
