/// @desc Timeline and Other Init

LevelEnd = false;
InLevel = true;
FloorSpeed = 34;
// Timeline Setting
switch(room){
	case rDebug:
		load_level();
		NextLevel = rTitle;
		CurrentLevel = "LEVEL DEBUG";
		timeline_set(tlDebug, 0, false);
	break;
	case rLevel01:
		load_level();
		NextLevel = rLevel02;
		CurrentLevel = "LEVEL 1";
		timeline_set(tlLevel01, 0, false);
	break;
	case rLevel02:
		load_level();
		NextLevel = rLevel03;
		CurrentLevel = "LEVEL 2";
		timeline_set(tlLevel02, 0, false);
	break;
	case rLevel03:
		load_level();
		NextLevel = rLevel04;
		CurrentLevel = "LEVEL 3";
		timeline_set(tlLevel03, 0, false);
	break;
	case rLevel04:
		load_level();
		NextLevel = rLevel05;
		CurrentLevel = "LEVEL 4";
		timeline_set(tlLevel04, 0, false);
	break;
	case rLevel05:
		load_level();
		NextLevel = rLevel06;
		CurrentLevel = "LEVEL 5";
		timeline_set(tlLevel05, 0, false);
	break;
	case rLevel06:
		load_level();
		NextLevel = rLevel07;
		CurrentLevel = "LEVEL 6";
		timeline_set(tlLevel06, 0, false);
	break;
	case rLevel07:
		load_level();
		NextLevel = rLevel08;
		CurrentLevel = "LEVEL 7";
		timeline_set(tlLevel07, 0, false);
	break;
	case rLevel08:
		FloorSpeed = 100;
		load_level_final();
		NextLevel = rCutscene02;
		CurrentLevel = "FINAL LEVEL";
		timeline_set(tlLevel08, 0, false);
	break;
	default: break;
};