vertical_force += grv;

if (is_passing_through_plank)
	is_passing_through_plank = place_meeting(x, y, obj_plank);

var horizontal_blocks = ds_list_create();
instance_place_list(x + horizontal_force, y, obj_wall, horizontal_blocks, false);

for (var i = 0; i < ds_list_size(horizontal_blocks); ++i;)
{
	var horizontal_block = horizontal_blocks[| i];
	if (horizontal_block.object_index == obj_plank) {
		is_passing_through_plank = true;
	} else {
		if (horizontal_direction < 0)
			x = horizontal_block.bbox_right + (x - bbox_left) + 1;
		else if (horizontal_direction > 0)
			x = horizontal_block.bbox_left - (bbox_right - x) - 1;
	
		horizontal_force = 0;
	}
}

var vertical_blocks = ds_list_create();
instance_place_list(x, y + vertical_force, obj_wall, vertical_blocks, false);

for (var i = 0; i < ds_list_size(vertical_blocks); ++i;)
{
	var vertical_block = vertical_blocks[| i];
	var vertical_direction = sign(vertical_force);
	if (vertical_direction < 0) {
		if (vertical_block.object_index == obj_plank)
			is_passing_through_plank = true;
		else
			y = vertical_block.bbox_bottom - (bbox_top - y) + 1;
	} else if (vertical_direction > 0 && !is_passing_through_plank) {
		y = vertical_block.bbox_top + (y - bbox_bottom) - 1;
	}
	
	if (!is_passing_through_plank) {
		vertical_force = 0;
		is_on_floor = vertical_direction > 0;
	}
}

ds_list_destroy(horizontal_blocks);
ds_list_destroy(vertical_blocks);

x += horizontal_force;
y += vertical_force;

if (is_dead) {
	if (!is_manual_sprite_change)
		sprite_index = sprites_indexes.dead;
} else if (!is_on_floor) {
	if (!is_manual_sprite_change) {
		if (vertical_force > 0 && sprite_index != sprites_indexes.air_down) {
			image_speed = 1;
			image_index = 0;
			sprite_index = sprites_indexes.air_down;
		} else if (vertical_force <= 0 && sprite_index != sprites_indexes.air_up) {
			image_speed = 1;
			image_index = 0;
			sprite_index = sprites_indexes.air_up;
		}
	}
} else if (can_move) {
	if ((sprite_index == sprites_indexes.air_up || sprite_index == sprites_indexes.air_down)
		&& !is_passing_through_plank)
		repeat(round(random_range(4, 7)))
			with (instance_create_layer(x, bbox_bottom, layer, obj_particle))
				vertical_speed = 0;
	
	image_speed = 1;
	
	if (!is_manual_sprite_change) {
		if (horizontal_direction != 0)
			sprite_index = sprites_indexes.run;
		else
			sprite_index = sprites_indexes.idle;
	}
}

if (horizontal_direction != 0)
	image_xscale = scale.x * (is_dead ? -horizontal_direction : horizontal_direction);
else
	image_xscale = scale.x * sign(image_xscale);

image_yscale = scale.y;