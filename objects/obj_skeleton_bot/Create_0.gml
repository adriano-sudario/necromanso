event_inherited();

sprites_indexes = get_character_sprites(CHARACTER.SKELETON);
chase_range = 125;
attack_range = 42;
attack_cooldown = 1;
can_attack = true;
walk_speed = 1;

function on_attack_end() {
	sprite_index = sprites_indexes.idle;
	is_manual_sprite_change = false;
	can_move = true;
	instance_destroy(attack_instance);
	attack_instance = noone;
	
	var _on_attack_end = function(_caller)
	{
		_caller.can_attack = true;
	}

	var _time_source = time_source_create(
		time_source_game, attack_cooldown, time_source_units_seconds, _on_attack_end, [self]);

	time_source_start(_time_source);
}