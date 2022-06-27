/// @function draw_outlined_text(x, y, text, text_color, alpha, border_color)

function draw_outlined_text(_x, _y, _text){
	var offset = 2;
	var alpha = 1;
	var border_color = c_black;
	var text_color = c_white;
	
	if (argument_count > 3)
		text_color = argument[3];
		
	if (argument_count > 4)
		alpha = argument[4];
		
	if (argument_count > 5)
		border_color = argument[5];
	
	for (var o = 0; o < 4; o++) {
		if (o < 2)
			draw_text_color(_x + (offset * (o % 2 == 0 ? 1 : -1)), _y, _text,
				border_color, border_color, border_color, border_color, alpha);
		else
			draw_text_color(_x, _y + (offset * (o % 2 == 0 ? 1 : -1)), _text,
				border_color, border_color, border_color, border_color, alpha);
	}
	
	draw_text_color(_x, _y, _text, 
		text_color, text_color, text_color, text_color, alpha);
}