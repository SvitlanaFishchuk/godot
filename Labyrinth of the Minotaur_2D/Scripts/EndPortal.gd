extends Node2D



func _on_Area2D_body_entered(body):
	if "Player" in body.name:
		Global.win = true
		Global.winner = body.name
		get_tree().change_scene("res://Scenes/EndScene.tscn")
