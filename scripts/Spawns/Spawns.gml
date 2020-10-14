function spawn_random_enemy(_count){
	var xx = 0; repeat(_count){
		var _x = irandom_range(16, room_width - 16);
		var _y = irandom_range(10, scene.ground - 16);
		var _sel = irandom(ds_list_size(EnList) - 1);
		var _inst = instance_create_layer(_x,_y,"lyr3D",EnList[| _sel]);
	};
};

function spawn_building(_width, _height, _depth, _id, _x, _y, _tex){
	_inst = instance_create_layer(0,0,"lyr3D",_id);
	_inst.cube_width = BLOCK_SIZE * _width;
	_inst.cube_height = BLOCK_SIZE * _height;
	_inst.cube_depth = BLOCK_SIZE * _depth;
	_inst.xmov = _x;
	_inst.ymov = _y == -1 ? scene.ground - _inst.cube_height : _y;
	_inst.tex = _tex;
};