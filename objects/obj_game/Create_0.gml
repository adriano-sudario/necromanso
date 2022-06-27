#macro RESOLUTION_WIDTH 800
#macro RESOLUTION_HEIGHT 608

display_set_gui_size(RESOLUTION_WIDTH, RESOLUTION_HEIGHT);

randomise();
dis_u = shader_get_uniform(sh_aberration, "u_Distance");
is_muted = false;
is_aberration = false;

function toggle_fullscreen() {
	window_set_fullscreen(!window_get_fullscreen());
}