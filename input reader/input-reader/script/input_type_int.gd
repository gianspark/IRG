extends InputType

func is_valid(text_ : String) -> bool:
	if (text_.is_valid_int()):
		return true
	else:
		warning()
		return false
	
func placeholder_text() -> String:
	return "modo: INT"
