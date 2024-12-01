extends Node
const SERVER_PORT = 8080
const SERVER_IP = "27.0.0.1"	

func become_host():
	print("Starting host!")
	var server_peer = ENetMultiplayerPeer.new()
	server_peer.create_server(SERVER_PORT)
	multiplayer.multiplayer_peer = server_peer
	
	multiplayer.peer_connected.connect(_add_player_to_game)	
	multiplayer.peer_disconnected.connect(_del_player)
	
	
func join_as_player_2():
	print("PLayer 2 joining")
	
	
	
func _add_player_to_game(id: int)
