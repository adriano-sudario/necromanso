event_inherited();

if (sprite_index == sprites_indexes.summon_begin) {
	sprite_index = sprites_indexes.summon;
	hp -= rip_on_range.summon_cost;
	
	rip_on_range.reborn(self);
	rip_on_range = noone;
	
	if (hp <= 0) {
		is_dead = true;
		sprite_index = sprites_indexes.dead;
	}
} else if (sprite_index == sprites_indexes.summon) {
	sprite_index = sprites_indexes.trance_begin;
} else if (sprite_index == sprites_indexes.trance_begin) {
	sprite_index = sprites_indexes.trance;
} else if (sprite_index == sprites_indexes.trance_end) {
	sprite_index = sprites_indexes.idle;
	can_move = true;
	y -= image_yscale;
	obj_input_controller.set_controlled_unit(self);
	summoned_unit = noone;
}