enum TRANSITION_MODE {
	OFF,
	OPEN,
	CLOSE
}

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
rectangle_max_height = gui_height * .5;
is_on_hold = true;
elapsed_time = 0;
milliseconds_before_start = 500;
mode = TRANSITION_MODE.OFF;
percent = 0;
on_finish = function() { };