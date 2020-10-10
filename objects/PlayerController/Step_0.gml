/// @desc
if(instance_exists(Player)){
	x = Player.x;
	y = Player.y;
};

if(keyboard_check_pressed(vk_enter)){
	var _inst = instance_create_layer(x,y,"lyrEntities", Bullet01);
	_inst.xspawn = x;
};