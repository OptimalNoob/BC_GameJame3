/// @desc
zmov += bull_speed;

if(zmov> 4000) instance_destroy();

var _hit = place_meeting_3D(xmov,ymov,zmov, EnemyParent);
if(_hit != noone){
	PlayerKills++;
	PlayerPoints += _hit.score_points;
	audio_play_sound(sndExplode01, 9, false);
	instance_destroy(_hit);
	instance_destroy();
}