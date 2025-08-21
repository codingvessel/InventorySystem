extends Node2D

var items = ["sword", "potion", "shield", "mace" ,"axe"]



func _on_add_item_btn_pressed() -> void:
	var random_item = items[randi_range(0,items.size()-1)]
	
	if !Global.inventory.has(random_item):
		Global.inventory.append(random_item)
	else:
		print(random_item + " is already in your inventory!")
	
	print(Global.inventory)


func _on_go_fight_btn_pressed() -> void:
	if Global.inventory.has("sword") || Global.inventory.has("mace") || Global.inventory.has("axe"):
		print("Going to fight some Zombies!")
	else:
		print("You need to acquire a weapon first!")


func _on_change_scene_btn_pressed() -> void:
	get_tree().change_scene_to_file("res://level_2.tscn")
