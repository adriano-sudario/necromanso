event_inherited();

summon_cost = 2;
sprites_indexes = get_character_sprites(CHARACTER.SKELETON);
possessed_by = noone;

function reborn(_possessed_by) {
	instance_create_layer(x, y, "Units", obj_smoke);
	possessed_by = _possessed_by;
	sprite_index = sprites_indexes.dead;
	image_index = sprite_get_number(sprites_indexes.dead) - 1;
	image_speed = -1;
	play_sound(sfx_skeleton_reborn, 5, false);
}