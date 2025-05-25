extends Node2D




func _on_info_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/info.tscn")
	
	


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pre_game.tscn")
