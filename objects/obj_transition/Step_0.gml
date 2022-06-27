if (mode == TRANSITION_MODE.OFF)
	return;
	
if (is_on_hold) {
	elapsed_time += delta_time / 1000;
	
	if (elapsed_time >= milliseconds_before_start) {
		elapsed_time = 0;
		is_on_hold = false;
	} else {
		return;
	}
}
	
percent += min(1, max((1 - percent) / 10, .005));

if (percent > 1) {
	mode = TRANSITION_MODE.OFF;
	percent = 0;
	is_on_hold = true;
	on_finish();
	on_finish = function() { };
}