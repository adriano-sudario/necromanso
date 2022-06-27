if (!is_aberration)
	return;

shader_set(sh_aberration);
shader_set_uniform_f(dis_u, random_range(-1.5, 1.5));