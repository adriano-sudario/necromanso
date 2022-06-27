enum PARTICLE_TYPE {
	DUST,
	DIRT,
	BLOOD,
	WOOD,
	ROCK
}

image_speed = random_range(.5, 1);
image_index = random_range(0, 6);
image_xscale = choose(-1, 1);
image_yscale = choose(-1, 1);
horizontal_speed = random_range(-2, 2);
vertical_speed = random_range(-2, 2);

function set_type(_type) {
	switch (_type) {
		case PARTICLE_TYPE.DIRT:
			image_blend = make_color_rgb(217, 160, 102);
			break;
		
		case PARTICLE_TYPE.WOOD:
			image_blend = make_color_rgb(143, 86, 59);
			break;
		
		case PARTICLE_TYPE.ROCK:
			image_blend = make_color_rgb(34, 32, 52);
			break;
		
		case PARTICLE_TYPE.BLOOD:
			image_blend = make_color_rgb(209, 0, 0);
			break;
		
		case PARTICLE_TYPE.DUST:
		default:
			break;
	}
}