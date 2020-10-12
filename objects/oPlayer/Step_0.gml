/// @desc
if(mouse_check_button(mb_left) && alarm[0] == -1){
	alarm[0] = 10;
	audio_play_sound(sndShoot01, 10, false);
	var _inst = instance_create_layer(x,y,"lyrEntities", Bullet01);
	_inst.xspawn = x;
};

x = xmov;
y = ymov;
zmov = depth;

switch(ControlScheme){
	case scheme.mouse:
		xmov = lerp(x,device_mouse_x_to_gui(0),		StackOffset	 + (StackSpeed * offset));
		ymov = lerp(y,device_mouse_y_to_gui(0) + vert_off,	StackOffset	 + (StackSpeed * offset));
	break;
	case scheme.keyboard:
		
	break;
};
if(PlayerHP <= 0){
	game_restart();
};