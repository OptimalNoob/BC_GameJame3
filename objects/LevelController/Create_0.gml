/// @desc Timeline and Other Init

// Timeline Setting
switch(room){
	case rDebug:
		InLevel = true;
		LevelEnd = false;
		NextLevel = rTitle;
		CurrentLevel = "LEVEL DEBUG";
		
		timeline_set(tlDebug, 0, false);
		load_level();
	break;
	case rLevel01:
		InLevel = true;
		LevelEnd = false;
		NextLevel = rLevel02;
		CurrentLevel = "LEVEL 1";
		
		timeline_set(tlLevel01, 0, false);
		load_level();
	break;
	case rLevel02:
		InLevel = true;
		LevelEnd = false;
		NextLevel = rTitle;
		CurrentLevel = "LEVEL 2";
		
		timeline_set(tlLevel02, 0, false);
		load_level();
	break;
	case rLevel03:
		InLevel = true;
		LevelEnd = false;
		NextLevel = rTitle;
		CurrentLevel = "LEVEL 1";
		
		timeline_set(tlLevel1, 0, false);
		load_level(rLevel01);
	break;
	default: break;
};