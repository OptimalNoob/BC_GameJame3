/// @desc
zmov+=16

if(zmov> 4000) instance_destroy();
/*if(place_meeting_3D(xmov,ymov,zmov, EnemyTest)){
	show_debug_message("hit");
	show_debug_message(string(xmov) + ", " + string(ymov) + ", "+ string(zmov));
	instance_destroy();
};*/

var hit = place_meeting_3D(xmov,ymov,zmov, EnemyTest);
if(hit != noone){
	show_debug_message("bang");
	instance_destroy(hit);
}


//if(instance_exists(Enemy01)){
//	if(abs(abs(Enemy01.x) - abs(xmov)) <= 16){
//		if(abs(abs(Enemy01.y) - abs(ymov + 16)) <= 16){
//			if(abs(abs(Enemy01.depth) - abs(zmov)) <= 16){
//				show_debug_message("hit")
//				show_debug_message(string(xmov) + ", " + string(ymov) + ", "+ string(zmov))
//				show_debug_message(string(Enemy01.x) + ", " + string(Enemy01.y) + ", " +string(Enemy01.depth))
				
//			}
//		}
//	}
//}
