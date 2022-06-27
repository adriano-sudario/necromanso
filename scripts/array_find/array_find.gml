/// @function array_find(array, assertion, send_back_object)

function array_find(_array, _assertion){
	var item = noone;
	
	for (var i = 0; i < array_length(_array); i++) {
		var has_found = argument_count > 2 ? _assertion(_array[i], argument[2]) :
			_assertion(_array[i]);
		if (has_found) {
			item = _array[i];
			break;
		}
	}
		
	return item;
}