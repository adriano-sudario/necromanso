/// @function get_ending_menu_items()

function get_ending_menu_items(){
	var rematch_item = {
		x: 0,
		y: 0,
		text: "Rematch",
		on_selected: function() {
			audio_stop_all();
			room_restart();
		}
	};
	var back_to_main_menu_item = {
		x: 0,
		y: 0,
		text: "Back to main menu",
		on_selected: function(_menu_id) {
			audio_stop_all();
			instance_destroy(_menu_id);
			slide_transition(TRANSITION_MODE.CLOSE, function() {
				room_goto(Menu);
				slide_transition(TRANSITION_MODE.OPEN);
			}, 250);
		}
	};
	
	return {
		rematch: rematch_item,
		back_to_main_menu: back_to_main_menu_item
	};
}