extends Area2D

var entered_object
var ifbutton = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	for i in get_overlapping_areas():
		# Check if the overlapping object is in the "phyQuant" group
		if i.is_in_group("phyQuant") and ifbutton:
			entered_object = i.get_parent() # Get the parent node (the object that entered the area)
			entered_object.queue_free() # Delete the overlapping object
			ifbutton = false


func _on_button_pressed():
	ifbutton = true
