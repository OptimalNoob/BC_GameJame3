/// @desc Timeline and Other Init

// Timeline Setting
switch(room){
	case rDebug:
		InLevel = true;
		LevelEnd = false;
		
		timeline_set(tlLevel1, 0, false);
		load_level(rDebug);
	break;
	default: break;
};