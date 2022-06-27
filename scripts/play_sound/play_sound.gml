/// @function play_sound(id, priority, is_loop)

function play_sound(_id, _priority, _is_loop) {
	if (obj_game.is_muted)
		return;
	
	audio_play_sound(_id, _priority, _is_loop);
}