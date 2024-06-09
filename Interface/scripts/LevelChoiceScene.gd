extends Node  # Or 'Control', depending on your root node type

func _ready():
	var callable_for_menu = Callable(self, "_on_BackButton1_pressed")
	$BackButton1.connect("pressed", callable_for_menu)
	
	# Initially hide all level buttons
	hide_all_level_buttons()
	

	# Connect Chapter buttons to their respective functions
	$ScrollContainer/Chapters/Chapter1Button.connect("pressed", Callable(self, "_on_chapter1_button_pressed"))
	$ScrollContainer/Chapters/Chapter2Button.connect("pressed", Callable(self, "_on_chapter2_button_pressed"))
	$ScrollContainer/Chapters/Chapter3Button.connect("pressed", Callable(self, "_on_chapter3_button_pressed"))
	$ScrollContainer/Chapters/Chapter4Button.connect("pressed", Callable(self, "_on_chapter4_button_pressed"))
	$ScrollContainer/Chapters/Chapter5Button.connect("pressed", Callable(self, "_on_chapter5_button_pressed"))
	
	# Connect level buttons to their respective functions
	$ScrollContainer/Chapters/Chapter1Levels/Level1.connect("pressed", Callable(self, "_on_level1_1_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level2.connect("pressed", Callable(self, "_on_level1_2_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level3.connect("pressed", Callable(self, "_on_level1_3_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level4.connect("pressed", Callable(self, "_on_level1_4_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level5.connect("pressed", Callable(self, "_on_level1_5_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level6.connect("pressed", Callable(self, "_on_level1_6_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level7.connect("pressed", Callable(self, "_on_level1_7_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level8.connect("pressed", Callable(self, "_on_level1_8_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level9.connect("pressed", Callable(self, "_on_level1_9_pressed"))
	$ScrollContainer/Chapters/Chapter1Levels/Level10.connect("pressed", Callable(self, "_on_level1_10_pressed"))

	$ScrollContainer/Chapters/Chapter2Levels/Level1.connect("pressed", Callable(self, "_on_level2_1_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level2.connect("pressed", Callable(self, "_on_level2_2_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level3.connect("pressed", Callable(self, "_on_level2_3_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level4.connect("pressed", Callable(self, "_on_level2_4_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level5.connect("pressed", Callable(self, "_on_level2_5_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level6.connect("pressed", Callable(self, "_on_level2_6_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level7.connect("pressed", Callable(self, "_on_level2_7_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level8.connect("pressed", Callable(self, "_on_level2_8_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level9.connect("pressed", Callable(self, "_on_level2_9_pressed"))
	$ScrollContainer/Chapters/Chapter2Levels/Level10.connect("pressed", Callable(self, "_on_level2_10_pressed"))
	
	$ScrollContainer/Chapters/Chapter3Levels/Level1.connect("pressed", Callable(self, "_on_level3_1_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level2.connect("pressed", Callable(self, "_on_level3_2_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level3.connect("pressed", Callable(self, "_on_level3_3_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level4.connect("pressed", Callable(self, "_on_level3_4_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level5.connect("pressed", Callable(self, "_on_level3_5_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level6.connect("pressed", Callable(self, "_on_level3_6_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level7.connect("pressed", Callable(self, "_on_level3_7_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level8.connect("pressed", Callable(self, "_on_level3_8_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level9.connect("pressed", Callable(self, "_on_level3_9_pressed"))
	$ScrollContainer/Chapters/Chapter3Levels/Level10.connect("pressed", Callable(self, "_on_level3_10_pressed"))
	
	$ScrollContainer/Chapters/Chapter4Levels/Level1.connect("pressed", Callable(self, "_on_level4_1_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level2.connect("pressed", Callable(self, "_on_level4_2_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level3.connect("pressed", Callable(self, "_on_level4_3_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level4.connect("pressed", Callable(self, "_on_level4_4_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level5.connect("pressed", Callable(self, "_on_level4_5_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level6.connect("pressed", Callable(self, "_on_level4_6_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level7.connect("pressed", Callable(self, "_on_level4_7_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level8.connect("pressed", Callable(self, "_on_level4_8_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level9.connect("pressed", Callable(self, "_on_level4_9_pressed"))
	$ScrollContainer/Chapters/Chapter4Levels/Level10.connect("pressed", Callable(self, "_on_level4_10_pressed"))
	
	$ScrollContainer/Chapters/Chapter5Levels/Level1.connect("pressed", Callable(self, "_on_level5_1_pressed"))
	$ScrollContainer/Chapters/Chapter5Levels/Level2.connect("pressed", Callable(self, "_on_level5_2_pressed"))
	$ScrollContainer/Chapters/Chapter5Levels/Level3.connect("pressed", Callable(self, "_on_level5_3_pressed"))
	$ScrollContainer/Chapters/Chapter5Levels/Level4.connect("pressed", Callable(self, "_on_level5_4_pressed"))
	$ScrollContainer/Chapters/Chapter5Levels/Level5.connect("pressed", Callable(self, "_on_level5_5_pressed"))
	$ScrollContainer/Chapters/Chapter5Levels/Level6.connect("pressed", Callable(self, "_on_level5_6_pressed"))
	$ScrollContainer/Chapters/Chapter5Levels/Level7.connect("pressed", Callable(self, "_on_level5_7_pressed"))
	$ScrollContainer/Chapters/Chapter5Levels/Level8.connect("pressed", Callable(self, "_on_level5_8_pressed"))
	$ScrollContainer/Chapters/Chapter5Levels/Level9.connect("pressed", Callable(self, "_on_level5_9_pressed"))
	$ScrollContainer/Chapters/Chapter5Levels/Level10.connect("pressed", Callable(self, "_on_level5_10_pressed"))
	
	
func _on_BackButton1_pressed():
	get_tree().change_scene_to_file("res://scenes-framework/Menu.tscn")

func hide_all_level_buttons():
	# Hide all level buttons initially
	print("Hiding all level buttons")
	if $ScrollContainer/Chapters/Chapter1Levels != null:
		$ScrollContainer/Chapters/Chapter1Levels.visible = false
	else:
		print("Chapter1Levels not found")

	if $ScrollContainer/Chapters/Chapter2Levels != null:
		$ScrollContainer/Chapters/Chapter2Levels.visible = false
	else:
		print("Chapter2Levels not found")

	if $ScrollContainer/Chapters/Chapter3Levels != null:
		$ScrollContainer/Chapters/Chapter3Levels.visible = false
	else:
		print("Chapter3Levels not found")

	if $ScrollContainer/Chapters/Chapter4Levels != null:
		$ScrollContainer/Chapters/Chapter4Levels.visible = false
	else:
		print("Chapter4Levels not found")
		
	if $ScrollContainer/Chapters/Chapter5Levels != null:
		$ScrollContainer/Chapters/Chapter5Levels.visible = false
	else:
		print("Chapter5Levels not found")
	
func _on_chapter1_button_pressed():
	hide_all_level_buttons()
	# Show Chapter 1 level buttons
	if $ScrollContainer/Chapters/Chapter1Levels != null:
		$ScrollContainer/Chapters/Chapter1Levels.visible = true
	else:
		print("Chapter1Levels not found")

func _on_chapter2_button_pressed():
	hide_all_level_buttons()
	# Show Chapter 2 level buttons
	if $ScrollContainer/Chapters/Chapter2Levels != null:
		$ScrollContainer/Chapters/Chapter2Levels.visible = true
	else:
		print("Chapter2Levels not found")

func _on_chapter3_button_pressed():
	hide_all_level_buttons()
	# Show Chapter 3 level buttons
	if $ScrollContainer/Chapters/Chapter3Levels != null:
		$ScrollContainer/Chapters/Chapter3Levels.visible = true
	else:
		print("Chapter3Levels not found")

func _on_chapter4_button_pressed():
	hide_all_level_buttons()
	# Show Chapter 4 level buttons
	if $ScrollContainer/Chapters/Chapter4Levels != null:
		$ScrollContainer/Chapters/Chapter4Levels.visible = true
	else:
		print("Chapter4Levels not found")
		
func _on_chapter5_button_pressed():
	hide_all_level_buttons()
	# Show Chapter 5 level buttons
	if $ScrollContainer/Chapters/Chapter5Levels != null:
		$ScrollContainer/Chapters/Chapter5Levels.visible = true
	else:
		print("Chapter5Levels not found")

func _on_level1_1_pressed():
	# Change to Level 1-1 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene1.tscn")

func _on_level1_2_pressed():
	# Change to Level 1-2 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene2.tscn")

func _on_level1_3_pressed():
	# Change to Level 1-3 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene3.tscn")

func _on_level1_4_pressed():
	# Change to Level 1-4 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene4.tscn")

func _on_level1_5_pressed():
	# Change to Level 1-5 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene5.tscn")

func _on_level1_6_pressed():
	# Change to Level 1-6 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene6.tscn")

func _on_level1_7_pressed():
	# Change to Level 1-7 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene7.tscn")

func _on_level1_8_pressed():
	# Change to Level 1-8 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene8.tscn")

func _on_level1_9_pressed():
	# Change to Level 1-9 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene9.tscn")

func _on_level1_10_pressed():
	# Change to Level 1-10 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level1Scene10.tscn")

func _on_level2_1_pressed():
	# Change to Level 2-1 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene1.tscn")

func _on_level2_2_pressed():
	# Change to Level 2-2 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene2.tscn")

func _on_level2_3_pressed():
	# Change to Level 2-3 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene3.tscn")

func _on_level2_4_pressed():
	# Change to Level 2-4 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene4.tscn")

func _on_level2_5_pressed():
	# Change to Level 2-5 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene5.tscn")

func _on_level2_6_pressed():
	# Change to Level 2-6 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene6.tscn")

func _on_level2_7_pressed():
	# Change to Level 2-7 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene7.tscn")

func _on_level2_8_pressed():
	# Change to Level 2-8 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene8.tscn")

func _on_level2_9_pressed():
	# Change to Level 2-9 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene9.tscn")

func _on_level2_10_pressed():
	# Change to Level 2-10 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level2Scene10.tscn")

func _on_level3_1_pressed():
	# Change to Level 3-1 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene1.tscn")

func _on_level3_2_pressed():
	# Change to Level 3-2 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene2.tscn")

func _on_level3_3_pressed():
	# Change to Level 3-3 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene3.tscn")

func _on_level3_4_pressed():
	# Change to Level 3-4 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene4.tscn")

func _on_level3_5_pressed():
	# Change to Level 3-5 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene5.tscn")

func _on_level3_6_pressed():
	# Change to Level 3-6 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene6.tscn")

func _on_level3_7_pressed():
	# Change to Level 3-7 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene7.tscn")

func _on_level3_8_pressed():
	# Change to Level 3-8 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene8.tscn")

func _on_level3_9_pressed():
	# Change to Level 3-9 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene9.tscn")

func _on_level3_10_pressed():
	# Change to Level 3-10 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level3Scene10.tscn")

func _on_level4_1_pressed():
	# Change to Level 4-1 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene1.tscn")

func _on_level4_2_pressed():
	# Change to Level 4-2 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene2.tscn")

func _on_level4_3_pressed():
	# Change to Level 4-3 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene3.tscn")

func _on_level4_4_pressed():
	# Change to Level 4-4 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene4.tscn")

func _on_level4_5_pressed():
	# Change to Level 4-5 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene5.tscn")

func _on_level4_6_pressed():
	# Change to Level 4-6 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene6.tscn")

func _on_level4_7_pressed():
	# Change to Level 4-7 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene7.tscn")

func _on_level4_8_pressed():
	# Change to Level 4-8 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene8.tscn")

func _on_level4_9_pressed():
	# Change to Level 4-9 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene9.tscn")

func _on_level4_10_pressed():
	# Change to Level 4-10 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level4Scene10.tscn")
	
func _on_level5_1_pressed():
	# Change to Level 5-1 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene1.tscn")

func _on_level5_2_pressed():
	# Change to Level 5-2 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene2.tscn")

func _on_level5_3_pressed():
	# Change to Level 5-3 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene3.tscn")

func _on_level5_4_pressed():
	# Change to Level 5-4 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene4.tscn")

func _on_level5_5_pressed():
	# Change to Level 5-5 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene5.tscn")

func _on_level5_6_pressed():
	# Change to Level 5-6 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene6.tscn")

func _on_level5_7_pressed():
	# Change to Level 5-7 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene7.tscn")

func _on_level5_8_pressed():
	# Change to Level 5-8 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene8.tscn")

func _on_level5_9_pressed():
	# Change to Level 5-9 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene9.tscn")

func _on_level5_10_pressed():
	# Change to Level 5-10 scene
	get_tree().change_scene_to_file("res://scenes-framework/Level5Scene10.tscn")

