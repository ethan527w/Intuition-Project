extends Node2D

var selected = false
var detector_vf = false
var detector_vi = false
var detector_acce = false
var detector_time = false
var Ifinstantiate = false
var ifbutton = false

func _ready():
	$detector_vf.connect("detector_vf", Callable(self, "_detector_vf_ok"))
	$detector_vi.connect("detector_vi", Callable(self, "_detector_vi_ok"))
	$detector_acce.connect("detector_acce", Callable(self, "_detector_acce_ok"))
	$detector_time.connect("detector_time", Callable(self, "_detector_time_ok"))
	


func _process(delta):
	#need to consider delete the ifinstantiate 
	if ifbutton == true:
		ifbutton = false 
		if (detector_time and detector_vi and detector_acce):
			var vf = preload("res://tscn/vf.tscn").instantiate()
			vf.position = $detector_vf/area1.global_position
			get_tree().get_root().add_child(vf)
			detector_vi = false
			detector_acce = false
			detector_time = false
			
		elif (detector_vf and detector_time and detector_acce):
			var vi = preload("res://tscn/vi.tscn").instantiate()
			vi.position = $detector_vi/CollisionShape2D.global_position
			get_tree().get_root().add_child(vi)
			detector_vf = false
			detector_acce = false
			detector_time = false
			
		elif (detector_vf and detector_vi and detector_time):
			var acce = preload("res://tscn/acce.tscn").instantiate()
			acce.position = $detector_acce/CollisionShape2D.global_position
			get_tree().get_root().add_child(acce)
			detector_vi = false
			detector_vf = false
			detector_time = false
			
		elif (detector_vf and detector_vi and detector_acce):
			var time = preload("res://tscn/time.tscn").instantiate()
			time.position = $detector_time/CollisionShape2D.global_position
			get_tree().get_root().add_child(time)
			detector_vi = false
			detector_acce = false
			detector_vf = false
		#add if detector3 is activated, then synthesize different element

	else:
		detector_vf = false
		detector_vi = false
		detector_acce = false
		detector_time = false

#moving control
func _physics_process(delta):
	if selected:
		global_position = lerp(global_position, get_global_mouse_position(), 25*delta)
		
func _input(event):
	#moving control
	if event is InputEventMouseButton:
		if event.button_index == 1 and not event.pressed:
			selected = false


func _detector_vf_ok():
	
	detector_vf = true

func _detector_vi_ok():
	detector_vi = true
	
func _detector_acce_ok():
	detector_acce = true
	
func _detector_time_ok():
	detector_time = true
#synthesize button
func _on_button_pressed():
	ifbutton = true

#moving control
func _on_collision_input_event(viewport, event, shape_idx):
	if Input.is_action_just_pressed("click"):
		selected = true
