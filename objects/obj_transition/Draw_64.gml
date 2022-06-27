if (mode == TRANSITION_MODE.OFF)
	return;

var rectangle_height = percent * rectangle_max_height;
if (mode == TRANSITION_MODE.OPEN)
	rectangle_height = (1 - percent) * rectangle_max_height;

draw_set_color(c_black);
draw_rectangle(0, 0, gui_width, rectangle_height, false);
draw_rectangle(0, gui_height, gui_width, gui_height - rectangle_height, false);