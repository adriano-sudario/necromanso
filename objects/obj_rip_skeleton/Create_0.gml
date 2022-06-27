event_inherited();

summon_cost = 2;
death_sprite_index = get_character_sprites(CHARACTER.SKELETON_ALLY).dead;
possessed_by = noone;

function reborn(_possessed_by) {
	instance_create_layer(x, y, "Units", obj_smoke);
	possessed_by = _possessed_by;
	sprite_index = death_sprite_index;
	image_index = sprite_get_number(death_sprite_index) - 1;
	image_speed = -1;
	play_sound(sfx_skeleton_reborn, 5, false);
}