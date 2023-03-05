extends Sprite
 
var speed = 800
var scaling = 0
 
func _ready():
	randomize()
	scaling = rand_range(0.007, 0.03)
	scale.x = scaling
	scale.y = scaling
	position = Vector2(rand_range(-500, 500), rand_range(-550, 550))
 
 
func _process(delta):
	position.x += speed * scaling * delta
 
 
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
