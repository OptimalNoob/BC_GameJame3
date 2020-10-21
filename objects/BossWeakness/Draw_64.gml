/// @description Insert description here
// You can write your code in this editor
var gui_h = display_get_gui_height();
var gui_w = display_get_gui_height();

draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(fntDefault);
var hb_w = 200;
var hb_h = 40;

draw_set_color(c_black);
draw_rectangle(
			660,
			gui_h - hb_h - 40,
			90,
			gui_h - hb_h - 10,
			false);
draw_set_color(c_white);
draw_text(660, gui_h - hb_h - 34, "HULL");
draw_set_color(c_black);
draw_rectangle(
			660,
			gui_h - hb_h - 660,
			660 + hb_w,
			gui_h - hb_h - 660 + hb_h,
			false);
draw_set_color(c_red);
draw_rectangle(
			660 + 4,
			gui_h - hb_h - 660 + 4,
			(660 + hb_w - 4) * (PlayerHP / PlayerMAXHP),
			gui_h - hb_h - 660 + hb_h - 4,
			false);
draw_set_color(c_white);
draw_set_valign(fa_center);
draw_set_halign(fa_center);
draw_set_font(fntDefault);
draw_text(120, gui_h - hb_h + 6, string(PlayerHP) + " / " + string(PlayerMAXHP));


draw_set_valign(fa_top);
draw_set_halign(fa_left);