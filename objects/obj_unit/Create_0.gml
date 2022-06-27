#macro JUMP_FORCE -7.5

horizontal_force = 0;
vertical_force = 0;
grv = .3;
walk_speed = 2;
horizontal_direction = 0;
is_dead = false;
max_hp = 1;
hp = 1;
is_jump_held = false;
has_jump = false;
can_move = true;
is_passing_through_plank = false;
is_in_control = false;
sprites_indexes = noone;
is_manual_sprite_change = false;
scale = {
	x: 1,
	y: 1
};
is_on_floor = place_meeting(x, y + 1, obj_wall);
is_blinking = false;
blinks_count = 0;
max_blinks_count = 6;
is_immune = false;

function handle_x_pressed() {
	
}

function handle_y_pressed() {
	
}

function die() {
	
}

function blink() {
	is_blinking = true;
	is_immune = true;
	blinks_count++;
	
	if (blinks_count >= max_blinks_count) {
		is_blinking = false;
		blinks_count = 0;
		is_immune = false;
		return;
	}
	
	var _on_blink = function(_caller)
	{
		with(_caller)
			blink();
	}

	var _time_source = time_source_create(
		time_source_game, .1, time_source_units_seconds, _on_blink, [self]);

	time_source_start(_time_source);
}

function cancel_horizontal_movement() {
	horizontal_force = 0;
	horizontal_direction = 0;
}

function cancel_vertical_movement() {
	vertical_force = 0;
}

function cancel_movement() {
	cancel_horizontal_movement();
	cancel_vertical_movement();
}