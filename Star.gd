extends Area2D

export var speed = 400

var screen_size
var origin = Vector2(0, 0)
var direction = Vector2(0, 0)

func _ready():
	screen_size = get_viewport_rect().size
	#origin = Vector2(screen_size.x / 2, screen_size.y / 2)
	direction = randomize_direction()
	origin = Vector2(direction.x*screen_size.x/20, direction.y*screen_size.y/20) # super hacky
	place_at(origin)

func _process(delta):
	var velocity = Vector2(0, 0)
	velocity.x += (direction.x * speed * delta)
	velocity.y += (direction.y * speed * delta)
	
	position.x += velocity.x
	position.y += velocity.y
	
	if position.x < 0:
		position.x = screen_size.x-1
	if position.y < 0:
		position.y = screen_size.y-1
	
	if position.x > screen_size.x:
		position.x = 0
	if position.y > screen_size.y:
		position.y = 0

func place_at(move_to):
	position.x = move_to.x
	position.y = move_to.y
	print("Specifically moved to: %s" % move_to)

func randomize_direction():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	var new_dirs = Vector2(rng.randf_range(-1, 1), rng.randf_range(-1, 1))
	print("random direction: (%s, %s)" % [new_dirs.x, new_dirs.y])
	return new_dirs
	
