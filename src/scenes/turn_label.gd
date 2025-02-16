extends Label

func _ready() -> void:
	self.text = "Turno actual: 1"

func _on_turn_button_pressed() -> void:
	self.text = "Turno actual: %d" % [Global.getCurrentTurn()]
