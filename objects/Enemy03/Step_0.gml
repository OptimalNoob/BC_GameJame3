/// @desc
depth -= 16
zmov = depth;
if(zmov <- 200){
	instance_destroy();
};

xmov = x;
ymov = y;
zmov = depth;

//----------Shooting Player
if(alarm[0] == -1){
	alarm[0] = irandom_range(40,120);
	var _inst = instance_create_layer(x+75,y,"lyr3D",enBullet);
	_inst.zmov = zmov;
	_inst = instance_create_layer(x-75,y,"lyr3D",enBullet);
	_inst.zmov = zmov;
	
};

if(ai_decision == 1 && instance_exists(oPlayer)){
	move_towards_point(oPlayer.x, oPlayer.y, chase_speed);
};