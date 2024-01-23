extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var data = {
		"backgroundImage": $Sprite2D,
		"hour": 20,
		"minute": 70,
	}
	var clock = Clock.new(data)
	add_child(clock)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
