/// @desc

row_1_y = lerp(row_1_y, row_1_end,let_speed);
row_2_y = lerp(row_2_y, row_2_end,let_speed);
row_3_y = lerp(row_3_y, row_3_end,let_speed);
let_speed += 0.0045;

if(row_1_y > row_1_end - 0.5){
	play_title = true;
};

if(play_title && !audio_is_playing(sndTitle01)){
	//audio_play_sound(sndTitle01, 10, 1);
};

if(keyboard_check_pressed(ord("R"))) game_restart();

if(keyboard_check_pressed(vk_escape)){
	game_end();
}

if(keyboard_check_pressed(vk_enter)){
	room_goto(rDebug);
}

if(spawn_buttons){
	if(!instance_exists(oBTN_startgame)){
		for(i = 0;i<4;i++){
			instance_create_layer(16,but_y[i], "lyrEntities",title_but[i]);
		};
	};
	if(!instance_exists(oBTN_moregames)){
		instance_create_layer(room_width - 16, room_height - 16, "lyrEntities", oBTN_moregames);
	};
};