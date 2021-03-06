event_inherited();

sprites_indexes = get_character_sprites(CHARACTER.SKELETON_ALLY);
attack_instance = noone;
possessed_by = noone;
scale = {
	x: 1,
	y: 1
};
is_favorite = false;

function die() {
	sprite_index = sprites_indexes.dead;
	can_move = false;
	is_dead = true;
	cancel_movement();
	play_sound(sfx_skeleton_death, 5, false);
	
	if (attack_instance != noone) {
		is_manual_sprite_change = false;
		can_move = true;
		instance_destroy(attack_instance);
		attack_instance = noone;
	}
}

function attack() {
	if (!is_on_floor || attack_instance != noone)
		return;
	
	attack_instance = instance_create_depth(x, y, -1, obj_attack, {
		visible: false,
	});
	
	with (attack_instance) {
		origin_x = 5;
		origin_y = -13;
		owner = other;
		scale = {
			x: 12,
			y: 13
		}
		
		if (other.possessed_by != noone)
			array_push(ignored_units, other.possessed_by);
	}
	
	can_move = false;
	sprite_index = sprites_indexes.attack;
	image_index = 0;
	is_manual_sprite_change = true;
	cancel_movement();
	play_sound(choose(sfx_whoosh1, sfx_whoosh2, sfx_whoosh3), 5, false);
}

function on_attack_end() {
	sprite_index = sprites_indexes.idle;
	is_manual_sprite_change = false;
	can_move = true;
	instance_destroy(attack_instance);
	attack_instance = noone;
}

function handle_y_pressed() {
	if (!is_on_floor)
		return;
	
	die();
}

function handle_x_pressed() {
	attack();
}