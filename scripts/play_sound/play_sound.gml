/// @function play_sound(id, priority, is_loop)

function play_sound(_id, _priority, _is_loop) {
	if (obj_game.is_muted)
		return;
	
	switch (_id) {
		case stk_papai:
			audio_sound_gain(stk_papai, .4, 0);
			break;
		
		case stk_skeleton:
			audio_sound_gain(stk_skeleton, .4, 0);
			break;
	}
	
	audio_play_sound(_id, _priority, _is_loop);
}