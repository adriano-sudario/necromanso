/// @function start_aberration(_is_random)

function start_aberration(_is_random = false) {
	if (instance_exists(obj_aberration))
		return;
	
	with (instance_create_layer(0, 0, layer, obj_aberration))
		is_random = _is_random;
}