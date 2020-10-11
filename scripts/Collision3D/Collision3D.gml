// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_meeting_3D(_x,_y,_z,_inst){
		if(instance_exists(_inst)){
		if(abs(abs(_inst.x) - abs(_x)) <= 16){
			if(abs(abs(_inst.y) - abs(_y + 16)) <= 16){
				if(abs(abs(_inst.depth) - abs(_z)) <= 16){
					return true;
				};
			};
		};
	};
};