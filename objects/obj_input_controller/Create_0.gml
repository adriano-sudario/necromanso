controls = controller();
controlled_unit = noone;

function set_controlled_unit(_unit) {
	if (_unit == noone || !instance_exists(_unit)) {
		controlled_unit = noone;
		return;
	}
	
	if (controlled_unit != noone)
		controlled_unit.is_in_control = false;
	
	_unit.is_in_control = true;
	controlled_unit = _unit;
	following = _unit;
}

function update_movement() {
	with (controlled_unit) {
		var controls = other.controls;
		
		if (!is_dead && can_move) {
			horizontal_direction = controls.is_right_held() - controls.is_left_held();
			horizontal_force = horizontal_direction * walk_speed;
		}

		var platform = instance_place(x, y + 1, obj_wall);
		is_on_floor = platform != noone && !is_passing_through_plank;
		var is_holding_jump = controls.is_jump_held() && !is_dead;
		if (is_on_floor 
			&& platform.object_index == obj_plank
			&& controls.is_down_held()
			&& is_holding_jump) {
			is_on_floor = false;
			is_passing_through_plank = true;
			y++;
		}
		var has_released_jump = is_jump_held && !is_holding_jump;
		is_jump_held = is_holding_jump;

		if (is_on_floor && !is_dead) {
			if (is_holding_jump && !has_jump) {
				vertical_force = JUMP_FORCE;
				has_jump = true;
				audio_sound_pitch(sfx_jump, choose(.8, 1, 1.2, 1.4));
				play_sound(sfx_jump, 5, false);
			} else {
				if (has_jump && has_released_jump)
					has_jump = false;
				vertical_force = 0;
			}
		} else {
			if (has_jump && has_released_jump) {
				var minimal_jump_force = -1.5;
				if (vertical_force < minimal_jump_force)
					vertical_force = minimal_jump_force;
				has_jump = false;
			}
		}
	}
}