/// @desc
zmov+=16

if(zmov> 4000) instance_destroy();

var hit = place_meeting_3D(xmov,ymov,zmov, EnemyParent);
if(hit != noone){
	instance_destroy(hit);
	instance_destroy();
}