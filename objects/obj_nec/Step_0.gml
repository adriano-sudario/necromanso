event_inherited();

if (is_dead
	|| sprite_index == sprites_indexes.summon
	|| sprite_index == sprites_indexes.trance_begin
	|| sprite_index == sprites_indexes.trance
	|| sprite_index == sprites_indexes.trance_end)
	return;

rip_on_range = noone;

for (var i = 0; i < instance_number(obj_rip); i++;)
{
    var _rip = instance_find(obj_rip, i);
	var _interaction_range = 50;
	
	if (point_distance(x, y, _rip.x, _rip.y) < _interaction_range) {
		rip_on_range = _rip;
		_rip.image_index = 1;
	} else {
		_rip.image_index = 0;
	}
}