function init_globals(){
	globalvar StackSpeed;		StackSpeed = 0.08;
	globalvar StackOffset;		StackOffset = 0.02;
	globalvar PlayerScale;		PlayerScale = 2;
	globalvar ControlScheme;	ControlScheme = scheme.mouse
	globalvar PlayerHP;			PlayerHP = 5;
	globalvar PlayerMAXHP;		PlayerMAXHP = 5;
	globalvar PlayerSpecial;	PlayerSpecial = 0;	
};
function init_globals_newgame(){
	PlayerHP = 5;
	PlayerMAXHP = 5;
	PlayerSpecial = 0;
};