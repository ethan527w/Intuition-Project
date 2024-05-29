extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$quant1.modulate = Color(1, 1, 1, 0)
	$quant2.modulate = Color(1, 1, 1, 0)
	$period.modulate = Color(1, 1, 1, 0)
	$tool.modulate = Color(1, 1, 1, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	pass


func _on_quant_1_pressed():
	$quant1.modulate = Color(0, 1, 1)
	var phy_quant1 = preload("res://tscn/vi.tscn").instantiate()
	phy_quant1.position = $"spawn point".global_position
	get_tree().get_root().add_child(phy_quant1)


func _on_quant_2_pressed():
	$quant2.modulate = Color(0, 1, 1)
	var phy_quant2 = preload("res://tscn/acce.tscn").instantiate()
	phy_quant2.position = $"spawn point".global_position
	get_tree().get_root().add_child(phy_quant2)


func _on_tool_pressed():
	$tool.modulate = Color(1, 1, 0)
	var tool = preload("res://tscn/OneDimensionFormula1.tscn").instantiate()
	tool.global_position = Vector2(190, 90)
	get_tree().get_root().add_child(tool)


func _on_period_pressed():
	$period.modulate = Color(0, 1, 1)
	var period = preload("res://tscn/time.tscn").instantiate()
	period.position = $"spawn point".global_position
	get_tree().get_root().add_child(period)
