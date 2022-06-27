event_inherited();

if (!is_on_floor || is_dead
	|| sprite_index == sprites_indexes.attack_preparation
	|| sprite_index == sprites_indexes.attack)
	return;

for (var i = 0; i < instance_number(obj_unit); i++;)
{
    var _unit = instance_find(obj_unit, i);
	
	if (point_distance(x, y, _unit.x, _unit.y) > chase_range)
		continue;
	
	if (_unit.object_index == obj_nec || _unit.possessed_by != noone) {
		horizontal_direction = sign(_unit.x - x);
		horizontal_force = horizontal_direction * walk_speed;
		
		if (instance_place(x + (horizontal_force * 4), y + 1, obj_wall) == noone
		 || abs(_unit.x - x) <= attack_range)
			cancel_horizontal_movement();
		
		if (point_distance(x, y, _unit.x, _unit.y) <= attack_range && can_attack) {
			is_manual_sprite_change = true;
			sprite_index = sprites_indexes.attack_preparation;
		}
		
		break;
	}
}