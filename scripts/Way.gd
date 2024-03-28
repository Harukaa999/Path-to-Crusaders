class_name Way extends Area2D


@export var connected_scene: String
var scene_folder = "res://Game/Scenes/"


func _on_body_entered(body):
	var full_path = scene_folder + connected_scene + ".tscn"
	var scene_tree = get_tree()
	scene_tree.call_deffered("change_scene_to_file", full_path)
	print("hi")
