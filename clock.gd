class_name Clock extends Node

var sprite_class = Sprite2D

var timeValues = {
	"minute": {
		"texture": "res://minuteHand.png",
		"degrees_per_unit": 6
	},
	"hour": {
		"texture": "res://hourHand.png",
		"degrees_per_unit": 30
	}
}

func _init(data):
	var new_data = data.duplicate(true)
	new_data.erase("backgroundImage")
	for key in new_data:
		var timeValue = timeValues[key]
		var hand = create_clock_hand(data, timeValue.texture, new_data[key], timeValue.degrees_per_unit)
		add_child(hand)

func create_clock_hand(data, texture_path, time_value, degrees_per_unit):
	var hand = sprite_class.new()
	
	hand.position = data.backgroundImage.position
	hand.texture = load(texture_path)
	hand.rotation_degrees = time_value * degrees_per_unit
	
	return hand
