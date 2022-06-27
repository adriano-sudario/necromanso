/// @function slide_transition(mode, on_finish, delay)

function slide_transition(_mode) {
	with (obj_transition) {
		mode = _mode;
		
		if (argument_count > 1 && is_method(argument[1]))
			on_finish = argument[1];
			
		if (argument_count > 2 && is_real(argument[2]))
			milliseconds_before_start = argument[2];
		else
			milliseconds_before_start = 500;
	}
}