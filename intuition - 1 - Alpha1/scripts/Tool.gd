extends Node2D

var selected = false
var detector1 = false
var detector2 = false
var Ifinstantiate = false
var ifbutton = false

func _ready():
	$detector1.connect("detector1", Callable(self, "_detector1ok"))
	$detector2.connect("detector2", Callable(self, "_detector2ok"))

func _process(delta):
	if ifbutton == true and Ifinstantiate == false:
		Ifinstantiate = true
		ifbutton = false 
		if (detector1 and detector2):
			var phy_quant3 = preload("res://tscn/a.tscn").instantiate()
			phy_quant3.position = $mark2d/mark.global_position
			get_tree().get_root().add_child(phy_quant3)
			detector1 = false
			detector2 = false
		#add if detector3 is activated, then synthesize different element

	else:
		detector1 = false
		detector2 = false

	pass

func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25*delta)
		
func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == 1 and not event.pressed:
			selected = false


func detector_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true

func _detector1ok():

	detector1 = true

func _detector2ok():

	detector2 = true


func _on_button_pressed():
	ifbutton = true
