/// @description Insert description here
// You can write your code in this editor
depth -= FloorSpeed
zmov = depth;
if(zmov <- 200){
	instance_destroy();
};

if(alarm[0] == -1){
	alarm[0] = irandom_range(10, 20)
	var _inst = instance_create_layer(x,y-64,"lyr3D",enBulletGround);
	_inst.zmov = zmov;
	_inst.xspeed = irandom_range(-3,3)
};

if(ai_decision == 1 && instance_exists(oPlayer)){
	move_towards_point(oPlayer.x, y, chase_speed);
};

xmov = x;
ymov = y;
zmov = depth;
