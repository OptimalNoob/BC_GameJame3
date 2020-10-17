/// @desc


draw_set_color(c_white);
draw_set_halign(fa_left);

draw_set_valign(fa_top);
draw_set_font(fntEndLevel);
draw_text(24,48,"SHOP");

draw_set_valign(fa_center);
draw_set_font(fntDefault);
draw_text(24,160,"HULL:");
draw_text(24,300,"GUN:");
draw_text(24,440,"SPECIAL:");
draw_text(24,580,"SHIELD:");

draw_text(640, 8, "Money: " + string(PlayerMoney))
draw_set_valign(fa_top);

draw_set_halign(fa_right);
draw_set_font(fntDefault);
draw_text(room_width - 16, room_height - 24, "Space - Continue");