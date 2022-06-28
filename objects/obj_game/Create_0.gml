#macro RESOLUTION_WIDTH 800
#macro RESOLUTION_HEIGHT 608

display_set_gui_size(RESOLUTION_WIDTH, RESOLUTION_HEIGHT);

//randomise();
//distance_uniform = shader_get_uniform(sh_aberration, "u_Distance");
//distance = 0;
//dis_direction = 1;
//is_aberration = false;
is_muted = false;

function toggle_fullscreen() {
	window_set_fullscreen(!window_get_fullscreen());
}