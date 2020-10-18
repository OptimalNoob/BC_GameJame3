/// @desc Timeline and Other Init

LevelEnd = false;
InLevel = true;
load_level();
// Timeline Setting
switch(room){
	case rDebug:
		NextLevel = rTitle;
		CurrentLevel = "LEVEL DEBUG";
		timeline_set(tlDebug, 0, false);
	break;
	case rLevel01:
		NextLevel = rLevel02;
		CurrentLevel = "LEVEL 1";
		timeline_set(tlLevel01, 0, false);
	break;
	case rLevel02:
		NextLevel = rTitle;
		CurrentLevel = "LEVEL 2";
		timeline_set(tlLevel02, 0, false);
	break;
	case rLevel03:
		NextLevel = rTitle;
		CurrentLevel = "LEVEL 3";
		timeline_set(tlLevel03, 0, false);
	break;
	default: break;
};