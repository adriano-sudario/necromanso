event_inherited();

if (sprite_index == sprites_indexes.dead) {
	with (instance_create_layer(x, y, "Interactives", obj_rip_skeleton, {
		image_xscale: image_xscale,
		image_yscale: image_yscale,
	})) {
		is_favorite = other.is_favorite;
	}
	
	if (possessed_by != noone) {
		possessed_by.sprite_index = possessed_by.sprites_indexes.trance_end;
		obj_input_controller.set_controlled_unit(noone);
	}
	
	instance_destroy();
} else if (sprite_index == sprites_indexes.attack) {
	on_attack_end();
}