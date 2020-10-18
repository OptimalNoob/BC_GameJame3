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
		NextLevel = rLevel03;
		CurrentLevel = "LEVEL 2";
		timeline_set(tlLevel02, 0, false);
	break;
	case rLevel03:
		NextLevel = rLevel04;
		CurrentLevel = "LEVEL 3";
		timeline_set(tlLevel03, 0, false);
	break;
	case rLevel04:
		NextLevel = rLevel05;
		CurrentLevel = "LEVEL 4";
		timeline_set(tlLevel04, 0, false);
	break;
	case rLevel05:
		NextLevel = rLevel06;
		CurrentLevel = "LEVEL 5";
		timeline_set(tlLevel05, 0, false);
	break;
	case rLevel06:
		NextLevel = rLevel07;
		CurrentLevel = "LEVEL 6";
		timeline_set(tlLevel06, 0, false);
	break;
	case rLevel07:
		NextLevel = rLevel08;
		CurrentLevel = "LEVEL 7";
		timeline_set(tlLevel07, 0, false);
	break;
	case rLevel08:
		NextLevel = rLevel09;
		CurrentLevel = "LEVEL 8";
		timeline_set(tlLevel08, 0, false);
	break;
	case rLevel09:
		NextLevel = rLevel10;
		CurrentLevel = "LEVEL 9";
		timeline_set(tlLevel03, 0, false);
	break;
	case rLevel10:
		NextLevel = rTitle;
		CurrentLevel = "FINAL STAGE";
		timeline_set(tlLevel10, 0, false);
	break;
	default: break;
};