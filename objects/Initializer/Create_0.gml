/// @desc
init_globals();
audio_group_load(ag_music);
audio_group_load(ag_sfx);
instance_create_layer(0,0,"lyrCamera",Camera);
draw_set_font(fntDefault);