extends CardState

func enter() -> void:
	
	card_ui.drop_point_detector.monitoring = true
	
func on_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		transition_requested.emit(self, CardState.State.DRAGGING)
