if (owner == noone) {
	instance_destroy();
	return;
}

x = owner.x + (origin_x * owner.image_xscale);
y = owner.y + (origin_y * owner.image_yscale);
image_xscale = scale.x * owner.image_xscale;
image_yscale = scale.y * owner.image_yscale;