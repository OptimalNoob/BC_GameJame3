// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_3D_collision(_inst){
	if(place_meeting(xmov,ymov,_inst)){
			if(zmov==_inst.depth){
				return true	
			}
	}
	return false
}