if (sprite_index == sprites_indexes.air_up || sprite_index == sprites_indexes.air_down) {
	image_speed = 0;
	if (sprite_index == sprites_indexes.air_up)
		image_index = sprite_get_number(sprites_indexes.air_up) - 1;
	else
		image_index = sprite_get_number(sprites_indexes.air_down) - 1;
} else if (sprite_index == sprites_indexes.dead) {
	image_speed = 0;
	image_index = sprite_get_number(sprites_indexes.dead) - 1;
}