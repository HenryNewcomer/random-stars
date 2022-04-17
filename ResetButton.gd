extends Button

signal reset_pressed

func _pressed():
	Signals.emit_signal("reset_pressed")

func test():
	print("button a")
