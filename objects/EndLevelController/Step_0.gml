/// @desc

if(delay){
	score_out = min(PlayerPoints, score_out + 5);
	hperc_out = min((PlayerHP / PlayerMAXHP) * 100, ++hperc_out);
	kills_out = min(PlayerKills, ++kills_out);
	money_out = floor((score_out * kills_out) * (hperc_out / 100));
};