extends Node2D

export var max_stars = 100

const STAR = preload("res://Star.tscn")

func _ready():
	for i in range(max_stars):
		add_child(STAR.instance())

"""
func _input(event):
	if event is InputEventMouseMotion:
		pass
		#$"Star".origin = event.position
"""
