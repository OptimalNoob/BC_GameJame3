/// @desc

row_1_y = lerp(row_1_y, row_1_end,let_speed);
row_2_y = lerp(row_2_y, row_2_end,let_speed);
row_3_y = lerp(row_3_y, row_3_end,let_speed);
let_speed += 0.0045;

if(row_1_y > row_1_end - 0.5){
	play_title = true;
};

if(play_title && !audio_is_playing(sndTitle01)){
	audio_play_sound(sndTitle01, 10, 1);
};

if(keyboard_check_pressed(ord("R"))) game_restart();