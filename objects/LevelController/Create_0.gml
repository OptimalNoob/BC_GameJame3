/// @desc Timeline and Other Init

// Timeline Setting
switch(room){
	case rDebug:
		InLevel = true;
		LevelEnd = false;
		NextLevel = rTitle;
		
		timeline_set(tlDebug, 0, false);
		load_level(rDebug);
	break;
	case rLevel1:
		InLevel = true;
		LevelEnd = false;
		NextLevel = rTitle;
		
		timeline_set(tlLevel1, 0, false);
		load_level(rLevel1);
	break;
	default: break;
};