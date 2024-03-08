extends Node2D


func _ready():
	pass
	
	
func _process(delta):
	pass


func _on_cliffside_transition_point_body_entered(body):
	if body.has_method("player"):
		global.transition_scene = true


func _on_cliffside_transition_point_body_exited(body):
	if body.has_method("player"):
		global.transition_scene = false
		
		
		
