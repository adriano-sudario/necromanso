previous_down_control = current_down_control;
previous_up_control = current_up_control;
current_down_control = control.is_down_held();
current_up_control = control.is_up_held();
	
var previous_up_held = previous_up_control;
var previous_down_held = previous_down_control;
var current_up_held = current_up_control;
var current_down_held = current_down_control;
var is_up_pressed = !previous_up_held && current_up_held;
var is_down_pressed = !previous_down_held && current_down_held;

if ((is_up_pressed || is_down_pressed) && !obj_game.is_muted)
	audio_play_sound(sfx_menu_change, 5, false);

selected_item += is_up_pressed - is_down_pressed;

if (selected_item < 0)
	selected_item = array_length(items) - 1;
else if (selected_item >= array_length(items))
	selected_item = 0;
	
if (control.is_select_pressed()) {
	if (!obj_game.is_muted)
		audio_play_sound(sfx_shoot, 10, false);
	items[selected_item].on_selected(self.id);
}