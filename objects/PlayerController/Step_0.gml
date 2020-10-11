/// @desc
if(instance_exists(Player)){
	x = Player.x;
	y = Player.y;
};

if(mouse_check_button(mb_left) && alarm[0] == -1){
	alarm[0] = 5;
	var _inst = instance_create_layer(x,y,"lyrEntities", Bullet01);
	_inst.xspawn = x;
};