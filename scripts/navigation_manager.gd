extends Node

const scene_lobby = preload("res://Game/lobby.tscn")
const scene_level1 = preload("res://Game/Scenes/registrar.tscn")
const scene_level2 = preload("res://Game/Scenes/counselor's_office.tscn")

signal on_trigger_player_spawn

var spawn_door_tag

func go_to_level(level_tag, destination_tag):
	var scene_to_load
	
	match level_tag:
		"lobby":
			scene_to_load = scene_lobby
		"registrar":
			scene_to_load = scene_level1
		"counselor":
			scene_to_load = scene_level2
		
	if scene_to_load != null:
		spawn_door_tag = destination_tag
		get_tree().change_scene_to_packed(scene_to_load)

func trigger_player_spawn(position: Vector2, direction: String):
	on_trigger_player_spawn.emit(position, direction)
	
	
	
	
	
	
	
