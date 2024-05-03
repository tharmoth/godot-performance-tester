extends Node2D

func _ready() -> void:
	var button : OptionButton = %OptionButton
	button.item_selected.connect(func(index : int):
		if button.get_item_text(index) == "GDScript":
			_spawn()
		else:
			_clear()
			)
	

func _spawn():
	for i in range(100000):
		add_child(EmptyScript.new())
		
func _clear():
	for node in get_children():
		node.queue_free()
