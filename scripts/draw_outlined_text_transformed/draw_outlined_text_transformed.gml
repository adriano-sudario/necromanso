/// @function draw_outlined_text_transformed(x, y, text, text_color, border_color, scale, angle)

function draw_outlined_text_transformed(_x, _y, _text, _scale){
	var offset = 2;
	var border_color = c_black;
	var text_color = c_white;
	var angle = 0;
	
	if (argument_count > 4)
		text_color = argument[4];
		
	if (argument_count > 5)
		border_color = argument[5];
		
	if (argument_count > 6)
		angle = argument[6];
		
	draw_set_color(border_color);
	for (var o = 0; o < 4; o++) {
		if (o < 2)
			draw_text_transformed(_x + (offset * (o % 2 == 0 ? 1 : -1)), _y,
				_text, _scale, _scale, angle);
		else
			draw_text_transformed(_x, _y + (offset * (o % 2 == 0 ? 1 : -1)),
				_text, _scale, _scale, angle);
	}
	
	draw_set_color(text_color);
	draw_text_transformed(_x, _y, _text, _scale, _scale, angle);
}