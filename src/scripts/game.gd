extends Control


# When 'next turn' button is pressed, all classes update their data
func _on_turn_button_pressed() -> void:
	Global.nextTurn()
