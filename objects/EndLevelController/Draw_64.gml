/// @desc
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_font(fntEndLevel);

if(anim_header) draw_text(header_x, header_y, "LEVEL\nCOMPLETED");

draw_set_halign(fa_left);
draw_set_font(fntCredits);

if(!anim_header){
	if(!del_1){
		draw_text(result_x,result_y + (result_pad * 0), "Score: 0");
		draw_text(result_x,result_y + (result_pad * 1), "Kills: 0");
		draw_text(result_x,result_y + (result_pad * 2), "Health: 0");
		draw_text(result_x,result_y + (result_pad * 3), "Reward: 0");
	} else {
		draw_text(result_x,result_y + (result_pad * 0), "Score: "  + string(score_out));
		draw_text(result_x,result_y + (result_pad * 1), "Kills: "  + string(kills_out));
		draw_text(result_x,result_y + (result_pad * 2), "Health: " + string(hperc_out));
		draw_text(result_x,result_y + (result_pad * 3), "Reward: " + string(money_out));
	};
};

if(draw_cont){
	draw_set_color(c_white);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(fntCredits);
	draw_text(room_width / 2, room_height - 64, "Click to Continue");
};