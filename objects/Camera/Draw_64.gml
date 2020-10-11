/// @desc
draw_set_color(c_white);
var mouse_gui_x = device_mouse_x_to_gui(0);
var mouse_gui_y = device_mouse_y_to_gui(0);
var gui_h = display_get_gui_height();
var gui_w = display_get_gui_height();
draw_text(16,16 * 1,		"FPS: "		+ string(fpsOut));
draw_text(16,16 * 3,		"[Camera]");
draw_text(16,16 * 4,		"X: "		+ string(camx));
draw_text(16,16 * 5,		"Y: "		+ string(camy));
draw_text(16,16 * 6,		"Z: "		+ string(camz));
draw_text(16,16 * 7,		"Zoom: "	+ string(zoom));

if(follow != noone){
	draw_text(16,16 * 9,	"[Player]");
	draw_text(16,16 * 10,	"X: "	+ string(follow.x));
	draw_text(16,16 * 11,	"Y: "	+ string(follow.y));
};

draw_text(16,16 * 13, "[Mouse GUI]");
draw_text(16,16 * 14, "X: " + string(mouse_gui_x));
draw_text(16,16 * 15, "Y: " + string(mouse_gui_y));

//draw_sprite_ext(sReticle, 0, mouse_gui_x, mouse_gui_y,
//				1,1,0,c_white, 1);
				
var hb_w = 200;
var hb_h = 40;
draw_set_color(c_black);
draw_rectangle(
			16,
			gui_h - hb_h - 40,
			90,
			gui_h - hb_h - 10,
			false);
draw_set_color(c_white);
draw_text(24, gui_h - hb_h - 38, "Health");
draw_set_color(c_black);
draw_rectangle(
			16,
			gui_h - hb_h - 16,
			16 + hb_w,
			gui_h - hb_h - 16 + hb_h,
			false);
draw_set_color(c_red);
draw_rectangle(
			16 + 4,
			gui_h - hb_h - 16 + 4,
			(16 + hb_w - 4) * (PlayerHP / PlayerMAXHP),
			gui_h - hb_h - 16 + hb_h - 4,
			false);