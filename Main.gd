extends Node2D

export var max_stars = 1000

const STAR = preload("res://Star.tscn")

func _ready():
	for i in range(max_stars):
		add_child(STAR.instance())
