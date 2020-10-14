function init_globals(){
	globalvar StackSpeed;		StackSpeed = 0.08;
	globalvar StackOffset;		StackOffset = 0.02;
	globalvar PlayerScale;		PlayerScale = 2;
	globalvar ControlScheme;	ControlScheme = scheme.mouse
	
	globalvar PlayerHP;			PlayerHP = 5;
	globalvar PlayerMAXHP;		PlayerMAXHP = 5;
	globalvar PlayerSpecial;	PlayerSpecial = 0;
	globalvar FireRate;			FireRate = 10;
	globalvar IFrameDur;		IFrameDur = 30;
	globalvar PlayerMoney;		PlayerMoney = 0;
	
	globalvar EnList;			EnList = ds_list_create();
								ds_list_add(EnList, EnemyTest, EnemyTest2);
	globalvar PlayerPoints;		PlayerPoints = 0;
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