prepare_text_draw(font, horizontal_align, vertical_align);

for (var i = 0; i < array_length(items); i++) {
	var item = items[i];
	var text = i == selected_item && show_arrow ? "> " + item.text 
		: item.text;
	
	if (outline_border_color != noone) {
		if (i == selected_item)
			draw_outlined_text(item.x, item.y, text,
				c_red, alpha, outline_border_color);
		else
			draw_outlined_text(item.x, item.y, text,
				c_white, alpha,outline_border_color);
	} else {
		var color = c_black;
		
		if (i == selected_item)
			color = c_red;
	
		draw_text_color(horizontal_position, item.y, text,
			color, color, color, color, alpha);
	}
}