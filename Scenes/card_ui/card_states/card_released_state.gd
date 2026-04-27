extends CardState

var played: bool

func enter() -> void:
	
	
	played = false
	
	if not card_ui.targets.is_empty():
		played = true
		card_ui.play()
		
		
func on_input(_event: InputEvent) -> void:
	if played:
		return
		
	transition_requested.emit(self, CardState.State.BASE)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
