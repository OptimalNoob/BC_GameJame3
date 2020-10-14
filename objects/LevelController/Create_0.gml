/// @desc Timeline and Other Init

// Timeline Setting
switch(room){
	case rDebug:
		timeline_index = tlLevel1;
		timeline_position = 0;
		timeline_running = true;
		timeline_loop = false;
		load_level(rDebug);
	break;
	default: break;
};