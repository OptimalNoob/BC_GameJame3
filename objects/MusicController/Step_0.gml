/// @desc
if(!audio_is_playing(sndLevelMusic01)){
	audio_sound_gain(sndLevelMusic01, 0.5,1);
	audio_play_sound(sndLevelMusic01, 10, 1);
};