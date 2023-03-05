extends Node2D
 
 
onready var player1_preload = preload("res://Scenes/Player1.tscn")
onready var player2_preload = preload("res://Scenes/Player2.tscn")
onready var player3_preload = preload("res://Scenes/Player3.tscn")
onready var player4_preload = preload("res://Scenes/Player4.tscn")
onready var dot_preload = preload("res://Scenes/Dot.tscn")
 
 
func _ready():
	var Player1 = player1_preload.instance()
	var Player2 = player2_preload.instance()
	var Player3 = player3_preload.instance()
	var Player4 = player4_preload.instance()
	var dot = dot_preload.instance()
	
	for i in 150:
		add_child(dot_preload.instance())
	
	match Global.winner:
		"Player1":
			$player_box.add_child(Player1)
		"Player2":
			$player_box.add_child(Player2)
		"Player3":
			$player_box.add_child(Player3)
		"Player4":
			$player_box.add_child(Player4)
	
	$player_box.position = Vector2(-1150, 0)


func _physics_process(delta):
	$player_box.rotation_degrees += 90 * delta
	$player_box.position.x += 250 * delta


func _on_star_spawn_position_timeout():
	var Dot = dot_preload.instance()
	add_child(Dot)
	Dot.position = Vector2(-600, rand_range(-550, 550))
#	Dot.position = $position.get_children()[randi() % $position.get_child_count()-1].position
