/// @function controller()

function controller() {
	return {
		is_using_gamepad: false,
		is_left_held: function() {
			if (gamepad_axis_value(0, gp_axislh) < -.5 || gamepad_button_check(0, gp_padl)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check(vk_left) || keyboard_check(ord("A"));
				if (result)
					is_using_gamepad = false;
				return result;
			}
		},
		is_right_held: function() {
			if (gamepad_axis_value(0, gp_axislh) > .5 || gamepad_button_check(0, gp_padr)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check(vk_right) || keyboard_check(ord("D"));
				if (result)
					is_using_gamepad = false;
				return result;
			}
		},
		is_up_held: function() {
			if (gamepad_axis_value(0, gp_axislv) < -.5 || gamepad_button_check(0, gp_padu)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check(vk_up) || keyboard_check(ord("W"));
				if (result)
					is_using_gamepad = false;
				return result;
			}
		},
		is_down_held: function() {
			if (gamepad_axis_value(0, gp_axislv) > .5 || gamepad_button_check(0, gp_padd)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check(vk_down) || keyboard_check(ord("S"));
				if (result)
					is_using_gamepad = false;
				return result;
			}
		},
		is_jump_held: function() {
			if (gamepad_button_check(0, gp_face1)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check(vk_space);
				if (result)
					is_using_gamepad = false;
				return result;
			}
		},
		is_x_pressed: function() {
			if (gamepad_button_check_pressed(0, gp_face3)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check_pressed(ord("X"));
				if (result)
					is_using_gamepad = false;
				return result;
			}
		},
		is_y_pressed: function() {
			if (gamepad_button_check_pressed(0, gp_face4)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check_pressed(ord("C"));
				if (result)
					is_using_gamepad = false;
				return result;
			}
		},
		is_select_pressed: function() {
			if (gamepad_button_check_pressed(0, gp_face1)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check_pressed(vk_space) || 
					keyboard_check_pressed(vk_enter);
				if (result)
					is_using_gamepad = false;
				return result;
			}
		},
		is_enter_pressed: function() {
			if (gamepad_button_check_pressed(0, gp_start)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check_pressed(vk_enter);
				if (result)
					is_using_gamepad = false;
				return result;
			}
		},
		is_back_pressed: function() {
			if (gamepad_button_check_pressed(0, gp_face2)) {
				is_using_gamepad = true;
				return true;
			} else {
				var result = keyboard_check_pressed(vk_escape);
				if (result)
					is_using_gamepad = false;
				return result;
			}
		}
	};
}