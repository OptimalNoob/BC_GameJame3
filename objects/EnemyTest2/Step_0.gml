/// @desc
depth -= 16
zmov = depth;
if(zmov <- 200){
	instance_destroy();
};

xmov = x;
ymov = y;
zmov = depth;

if(alarm[0] == -1){
	alarm[0] = 40;
	var _inst = instance_create_layer(x,y,"lyr3D",enBullet);
	_inst.zmov = zmov;
};

if(ai_decision == 1 && instance_exists(oPlayer)){
	move_towards_point(oPlayer.x, oPlayer.y, 1);
};