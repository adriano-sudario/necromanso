if (sprite_index == death_sprite_index) {
	var _unit = instance_create_layer(x, y - 1, "Units", obj_skeleton);
	with (_unit) {
		possessed_by = other.possessed_by;
		image_xscale = other.image_xscale;
		is_favorite = other.is_favorite;
	}
	obj_input_controller.set_controlled_unit(_unit);
	possessed_by.summoned_unit = _unit;
	
	if (is_favorite)
		play_sound(stk_papai, 100, true);
	else
		play_sound(stk_skeleton, 100, true);
	
	audio_stop_sound(sfx_ambience);
	image_speed = 0;
	instance_destroy();
}