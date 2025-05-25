extends Node2D


var BoolGamemodeDone = false
var BoolPlayerNumberDone = false

func _on_pre_game_back_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_start_button_pressed() -> void:
	if BoolGamemodeDone and BoolPlayerNumberDone:
		GameData.modo_juego = $Control/Gamemode.get_selected_id()
		GameData.num_jugadores = $Control/PlayerNumberButton.get_selected_id()
		#Debugging
		print(GameData.modo_juego, GameData.num_jugadores)
		
		get_tree().change_scene_to_file("res://scenes/game.tscn")
	else:
		pass


func _on_player_number_button_item_selected(index: int) -> void:
	BoolPlayerNumberDone = true

func _on_gamemode_item_selected(index: int) -> void:
	BoolGamemodeDone = true
