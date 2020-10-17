function init_globals(){
	globalvar StackSpeed;		StackSpeed = 0.08;
	globalvar StackOffset;		StackOffset = 0.02;
	globalvar PlayerScale;		PlayerScale = 2;
	globalvar ControlScheme;	ControlScheme = scheme.mouse
	
	
	/* SHOP AFFECTED VARIABLES */
	globalvar upg_HP;			upg_HP		= ds_list_create();
	globalvar upg_Spec;			upg_Spec	= ds_list_create();
	globalvar upg_Rate;			upg_Rate	= ds_list_create();
	globalvar upg_IFram;		upg_IFram	= ds_list_create();
	
	ds_list_add(upg_HP, 5, 10, 25, 40, 75);
	ds_list_add(upg_Spec, 1, 2, 3, 4, 5);
	ds_list_add(upg_Rate, 10, 9, 7, 4, 2);
	ds_list_add(upg_IFram, 30, 45, 60, 90, 150);
	
	globalvar PlayerMAXHP;		PlayerMAXHP		= upg_HP[| upg.lvl1];
	globalvar PlayerSpecial;	PlayerSpecial	= upg_Spec[| upg.lvl1];
	globalvar FireRate;			FireRate		= upg_Rate[| upg.lvl1];
	globalvar IFrameDur;		IFrameDur		= upg_IFram[| upg.lvl1];
	
	
	globalvar PlayerHP;			PlayerHP = 5;
	globalvar PlayerTotalScore;	PlayerTotalScore = 0;
	globalvar PlayerPoints;		PlayerPoints = 0;
	globalvar PlayerKills;		PlayerKills = 0;
	globalvar PlayerMoney;		PlayerMoney = 0;
	
	globalvar EnList;			EnList = ds_list_create();
								ds_list_add(EnList, EnemyTest, EnemyTest2);
	globalvar FloorSpeed;		FloorSpeed = 54;
	globalvar DebugMode;		DebugMode = false;
	
	globalvar LevelEnd;			LevelEnd = false;
	globalvar InLevel;			InLevel = false;
};
function init_globals_newgame(){
	PlayerHP = 5;
	PlayerMAXHP = 5;
	PlayerSpecial = 0;
};