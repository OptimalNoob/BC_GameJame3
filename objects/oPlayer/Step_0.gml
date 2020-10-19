/// @desc

if(!LevelEnd){
	if(mouse_check_button(mb_left) && alarm[0] == -1){
		alarm[0] = FireRate;
		audio_play_sound(sndShoot01, 10, false);
		var _inst = instance_create_layer(x,y,"lyrEntities", Bullet01);
		_inst.xspawn = x;
		_inst.zmov = depth + 50;
	};
	if(PlayerHP <= 0){
		game_restart();
	};
}else{
	if(depth > 10000){
		//audio_stop_all();
		room_goto(rEndLevel);
	};
};

if(keyboard_check_pressed(ord("P"))){
	//audio_stop_all();
	room_goto(rEndLevel);
};

//if(place_meeting_3D(xmov,ymov,zmov, Cube01) && !iframes){
//	iframes = true;
//	alarm[1] = IFrameDur;
//	PlayerHP--;
//};

x = xmov;
y = ymov;
zmov = depth;