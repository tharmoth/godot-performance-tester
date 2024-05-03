extends Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var viewport : Viewport = get_viewport()
	var process_time : float = Performance.get_monitor(Performance.TIME_PROCESS) * 1000
	var fps : float = Performance.get_monitor(Performance.TIME_FPS)
	
	process_time = snapped(process_time, .01)
	fps = snapped(fps, .01)
	
	text = "FPS: " + str(fps) + "\n" + "Process Time (ms): " + str(process_time)
