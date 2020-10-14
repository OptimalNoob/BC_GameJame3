/// @desc

if(!LevelEnd){
	if(mouse_check_button(mb_left) && alarm[0] == -1){
		alarm[0] = FireRate;
		audio_play_sound(sndShoot01, 10, false);
		var _inst = instance_create_layer(x,y+32,"lyrEntities", Bullet01);
		_inst.xspawn = x;
	};
	if(PlayerHP <= 0){
		game_restart();
	};
}else{
	if(depth > 10000) room_goto(rTitle);
};

if(place_meeting_3D(xmov,ymov,zmov, Cube01) && !iframes){
	iframes = true;
	alarm[1] = IFrameDur;
	PlayerHP--;
};

x = xmov;
y = ymov;
zmov = depth;