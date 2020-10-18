function spawn_random_enemy(_count){
	var xx = 0; repeat(_count){
		var _x = irandom_range(16, room_width - 16);
		var _y = irandom_range(10, scene.ground - 16);
		var _sel = irandom(ds_list_size(EnList) - 1);
		var _inst = instance_create_layer(_x,_y,"lyr3D",EnList[| _sel]);
	};
};

function spawn_enemy(_id, _x, _y, _z, _ai){
	_inst = instance_create_layer(_x,_y,"lyr3D",_id);
	_inst.xmov = _x
	_inst.ymov = _y
	_inst.zmov = _z
	_inst.depth = _z
	_inst.ai_decision = _ai
}

function spawn_building(_width, _height, _depth, _id, _x, _y, _z, _tex){
	_inst = instance_create_layer(0,0,"lyr3D",_id);
	_inst.cube_width = BLOCK_SIZE * _width;
	_inst.cube_height = BLOCK_SIZE * _height;
	_inst.cube_depth = BLOCK_SIZE * _depth;
	_inst.xmov = _x;
	_inst.ymov = _y == -1 ? scene.ground - _inst.cube_height : _y;
	_inst.zmov = _z;
	_inst.tex = _tex;
};


function spawn_formation(_id, _x, _y, _z, _shape){
		switch(_shape){
			case formation.v:
				spawn_enemy(_id, _x, _y, _z - 0, 0)
				spawn_enemy(_id, _x + 200, _y, _z - 200, 0)
				spawn_enemy(_id, _x + 400, _y, _z - 500, 0)
				spawn_enemy(_id, _x + 600, _y, _z - 200, 0)
				spawn_enemy(_id, _x + 800, _y, _z - 0, 0)
			break;
			case formation.s:
				spawn_enemy(_id, _x, _y, _z, 0)
				spawn_enemy(_id, _x - 200, _y, _z + 200, 0)
				spawn_enemy(_id, _x, _y, _z + 400, 0)
				spawn_enemy(_id, _x + 200, _y, _z + 200, 0)
				spawn_enemy(_id, _x + 200, _y, _z - 200, 0)
				spawn_enemy(_id, _x, _y, _z - 400, 0)
				spawn_enemy(_id, _x - 200, _y, _z - 400, 0)
			break;
			case formation.f8:
				spawn_enemy(_id, _x - 100, _y, _z - 100, 0)
				spawn_enemy(_id, _x - 200, _y, _z - 200, 0)
				spawn_enemy(_id, _x, _y, _z - 300, 0)
				spawn_enemy(_id, _x + 200, _y, _z - 200, 0)
				spawn_enemy(_id, _x + 100, _y, _z - 100, 0)
				
				spawn_enemy(_id, _x - 100, _y, _z + 100, 0)
				spawn_enemy(_id, _x - 200, _y, _z + 200, 0)
				spawn_enemy(_id, _x, _y, _z + 300, 0)
				spawn_enemy(_id, _x + 200, _y, _z + 200, 0)
				spawn_enemy(_id, _x + 100, _y, _z + 100, 0)
				
			break;
		}
}