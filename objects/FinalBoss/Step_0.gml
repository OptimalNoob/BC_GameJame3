/// @description Insert description here
// You can write your code in this editor

xmov = x;
ymov = y;
zmov = depth;

if(zmov > 3000){
	depth -= fly_speed;
	atLocation = false;
}else{
	atLocation = true;
}

if(atLocation && !instance_exists(BossGun)){
	switch(wave){
		case 0:
			_inst = instance_create_layer(x-768,y,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst = instance_create_layer(x+768,y,"lyr3D", BossGun);
			_inst.depth = zmov;
		break;
		
		default:
		break;
	}
}

if(!instance_exists(BossGun) && !instance_exists(BossWeakness) && atLocation){
		_inst = instance_create_layer(x,y - 180,"lyr3D", BossWeakness)
		_inst.depth = zmov
}

//----------Shooting Player
/*if(alarm[0] == -1){
	alarm[0] = irandom_range(40,120)
	var _inst = instance_create_layer(x,y,"lyr3D",enBullet);
	_inst.zmov = zmov;
};

if(ai_decision == 1 && instance_exists(oPlayer)){
	move_towards_point(oPlayer.x, oPlayer.y, chase_speed);
};*/
