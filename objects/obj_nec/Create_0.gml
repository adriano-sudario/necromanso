event_inherited();

sprites_indexes = get_character_sprites(CHARACTER.NEC);
rip_on_range = noone;
max_hp = 10;
hp = 10;
summoned_unit = noone;
scale = {
	x: 1,
	y: 1
};

function die() {
	hp = 0;
	is_dead = true;
	sprite_index = sprites_indexes.dead;
}

function handle_x_pressed() {
	if (rip_on_range == noone || rip_on_range.possessed_by == self)
		return;
	
	cancel_movement();
	can_move = false;
	obj_input_controller.set_controlled_unit(noone);
	sprite_index = sprites_indexes.summon_begin;
	play_sound(choose(sfx_whoosh1, sfx_whoosh2, sfx_whoosh3), 5, false);
}