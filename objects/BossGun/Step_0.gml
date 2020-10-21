/// @description Insert description here
// You can write your code in this editor
if(hp<=0){
	instance_destroy();	
}

if(alarm[0] == -1){
	alarm[0] = 20
	var _inst = instance_create_layer(x,y,"lyr3D",BossBullet);
	_inst.zmov = zmov;
};
