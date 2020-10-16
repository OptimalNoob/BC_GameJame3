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
	score_out = min(PlayerPoints, score_out + 1);
	hperc_out = min((PlayerHP / PlayerMAXHP) * 100, ++hperc_out);
	kills_out = min(PlayerKills, ++kills_out);
	money_out = floor((score_out * kills_out) * (hperc_out / 100));
};