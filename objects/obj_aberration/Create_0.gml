distance_uniform = shader_get_uniform(sh_aberration, "u_Distance");
distance = 0;
distance_incremenation_speed = .1;
distance_incremenation_direction = 1;
max_distance = 1;
is_random = false;

if (is_random)
	randomise();