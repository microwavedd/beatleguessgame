extends Node2D

var puntajes := []  # Lista de puntuaciones
var labels_jugadores := []  # Lista de Label nodes

func _ready():
	var jugadores = GameData.num_jugadores + 2
	var modo = GameData.modo_juego
	$Control/Jugadores.text = "Jugadores: %d" % jugadores
	puntajes.resize(jugadores)
	puntajes.fill(0)

	var vbox = $Control/JugadoresVBox
	vbox.clear()  

	for i in jugadores:
		var label = Label.new()
		label.name = "Jugador%dLabel" % (i + 1)
		label.text = "Jugador %d: %d" % [i + 1, puntajes[i]]
		vbox.add_child(label)
		labels_jugadores.append(label)
