/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_pressed(mb_left) && alarm[0] == -1){
	alarm[0] = 5;
	var _inst = instance_create_layer(x,y,"lyrEntities", Bullet01);
	_inst.xspawn = x;
};