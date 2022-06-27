if (controlled_unit == noone)
		return;

update_movement();

if (controls.is_x_pressed())
	controlled_unit.handle_x_pressed();

if (controls.is_y_pressed())
	controlled_unit.handle_y_pressed();