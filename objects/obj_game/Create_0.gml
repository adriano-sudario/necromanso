#macro RESOLUTION_WIDTH 800
#macro RESOLUTION_HEIGHT 608

display_set_gui_size(RESOLUTION_WIDTH, RESOLUTION_HEIGHT);

is_muted = false;

function toggle_fullscreen() {
	window_set_fullscreen(!window_get_fullscreen());
}