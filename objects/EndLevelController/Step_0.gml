/// @desc

if(anim_header){
	if(header_x < header_lbound && header_x < header_rbound){
		header_x += 60;
	} else if(header_x < header_rbound){
		header_x += header_speed;
	} else if(header_x >= header_rbound){
		header_x = min(3000, header_x + 60);
	};
	if(header_x >= 3000) anim_header = false;
};

if(!anim_header && !del_1 && alarm[0] == -1){
	alarm[0] = 120;
};

if(!anim_header && del_1){
	if(!count_delay){
		count_delay = true;
		alarm[1] = 300;
	};
	score_out = min(PlayerPoints, score_out + 1);
	hperc_out = min((PlayerHP / PlayerMAXHP) * 100, ++hperc_out);
	kills_out = min(PlayerKills, ++kills_out);
	money_out = floor((score_out * kills_out) * (hperc_out / 100));
	if(score_out != PlayerPoints && alarm[2] == -1){
		alarm[2] = 8;
		audio_play_sound(sndCounter, 10, false);
	};
};

if(draw_cont && mouse_check_button_pressed(mb_left)){
	audio_stop_all();
	room_goto(rTitle);
};

audio_sound_gain(sndLevelMusic01, 0, 500);