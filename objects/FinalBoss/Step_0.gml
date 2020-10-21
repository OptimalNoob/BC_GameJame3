/// @description Insert description here
// You can write your code in this editor

xmov = x;
ymov = y;
zmov = depth;
depth -= fly_speed;
/*
if(zmov > 3000 && !flyAway && !waveActive){
	atLocation = false;
	fly_speed = 16;
}else{
	atLocation = true;
	fly_speed = 0;
}
*/

if(!flyAway && !waveActive && !atLocation){
	fly_speed = 16;	
}

if(flyAway && !waveActive){
	fly_speed = -16;
}

if(zmov>4400 && !waveActive){
	atLocation = false;
	fly_speed = 16;
	if(flyAway){
		waveActive = true;
		timeline_set(tlBoss01, 0, false);
	}
}else if(zmov<3000){
	atLocation = true;
	fly_speed = 0;
}

if(atLocation && !instance_exists(BossGun) && !gunSpawned){
	switch(wave){
		case 0:
			_inst = instance_create_layer(x-512,y,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
			_inst = instance_create_layer(x+512,y,"lyr3D", BossGun);
			_inst.depth = zmov;
			_inst.zmov = zmov;
			
		break;
		
		default:
		break;
	}
	gunSpawned = true;
}

if(!instance_exists(BossGun) && !instance_exists(BossWeakness) && atLocation && gunSpawned && !flyAway){
		_inst = instance_create_layer(x,y - 134,"lyr3D", BossWeakness)
		_inst.depth = zmov;
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
