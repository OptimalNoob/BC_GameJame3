/// @desc
draw_set_font(fntDefault);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(16,16 * 1, "Score:" + string(score_out));
draw_text(16,16 * 2, "Kills:" + string(kills_out));
draw_text(16,16 * 3, "Health:" + string(hperc_out));
draw_text(16,16 * 5, "Reward:" + string(money_out));