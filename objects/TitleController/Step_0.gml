/// @desc

row_1_y = lerp(row_1_y, row_1_end,let_speed / 1.2);
row_2_y = lerp(row_2_y, row_2_end,let_speed);
row_3_y = lerp(row_3_y, row_3_end,let_speed / 1.4);
let_speed += 0.005;

if(row_1_y > row_1_end - 1){
	play_title = true;
};

if(play_title && !audio_is_playing(sndTitle01)){
	audio_play_sound(sndTitle01, 10, 1);
};