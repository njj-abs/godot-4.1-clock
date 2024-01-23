class_name Clock extends Node

var sprite_class = Sprite2D

func _init(data):
	var minute_hand = create_clock_hand(data, "res://minuteHand.png", data.minute, 6)
	var hour_hand = create_clock_hand(data, "res://hourHand.png", data.hour, 30)
	
	add_child(hour_hand)
	add_child(minute_hand)

func create_clock_hand(data, texture_path, time_value, degrees_per_unit):
	var hand = sprite_class.new()
	
	hand.position = data.backgroundImage.position
	hand.texture = load(texture_path)
	hand.rotation_degrees = time_value * degrees_per_unit
	
	return hand
