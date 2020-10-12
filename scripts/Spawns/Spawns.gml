function spawn_random_enemy(_count){
	var xx = 0; repeat(_count){
		var _x = irandom_range(16, room_width - 16);
		var _y = irandom_range(10, scene.ground - 16);
		var _sel = irandom(ds_list_size(EnList) - 1);
		var _inst = instance_create_layer(_x,_y,"lyr3D",EnList[| _sel]);
	};
};