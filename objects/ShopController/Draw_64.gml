/// @desc

draw_set_color(c_white);
draw_set_halign(fa_left);

draw_set_valign(fa_top);
draw_set_font(fntEndLevel);
draw_text(174,48,"SHOP");

draw_set_valign(fa_center);
draw_set_font(fntShop);
draw_text(24,166,"HULL:");
draw_text(24,306,"GUN:");
draw_text(24,446,"SPECIAL:");
draw_text(24,586,"SHIELD:");

draw_set_halign(fa_right);
draw_text(586, 78, string(PlayerMoney))
draw_set_valign(fa_top);

draw_set_font(fntDefault);
draw_text(room_width - 16, room_height - 24, "Space - Continue");

draw_set_valign(fa_top);
draw_set_halign(fa_left);