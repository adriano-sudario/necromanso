event_inherited();

var _hp_bar_width = (bbox_right + 5) - (bbox_left - 5);
var _hp_bar_height = (bbox_top - 5) - (bbox_top - 10);
var _hp_bar_x = bbox_left - 5;
var _hp_bar_y = bbox_top - 10;

draw_set_colour(c_red);
if (rip_on_range == noone) {
	draw_rectangle(_hp_bar_x, _hp_bar_y,
		_hp_bar_x + floor((_hp_bar_width * (hp / max_hp))), _hp_bar_y + _hp_bar_height,
		false);
} else {
	var _hp_after_summon = max(0, hp - rip_on_range.summon_cost);
	var _hp_after_summon_width = ceil(_hp_bar_width * (_hp_after_summon / max_hp));
	var _hp_bar_x2 = _hp_bar_x + _hp_after_summon_width;
	draw_rectangle(_hp_bar_x, _hp_bar_y, _hp_bar_x2, _hp_bar_y + _hp_bar_height, false);
	
	draw_set_colour(c_orange);
	draw_rectangle(_hp_bar_x2, _hp_bar_y,
		_hp_bar_x2 + floor(_hp_bar_width * (rip_on_range.summon_cost / max_hp)),
		_hp_bar_y + _hp_bar_height,
		false);
}
draw_set_colour(c_black);
draw_rectangle(_hp_bar_x, _hp_bar_y, _hp_bar_x + _hp_bar_width, _hp_bar_y + _hp_bar_height, true);