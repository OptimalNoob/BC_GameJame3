/// @desc

var btnx_pad = 120;
var btny_pad = 140;

if(button_count < 20){
	for(i = 0; i < 5; i++){
		for(j = 0; j < 4; j++){
			_inst = instance_create_layer(24 + (i * btnx_pad),
			180 + (j * btny_pad), "lyrEntities", btn_array[button_count]);
			button_count++;
			_inst.upgrade = j;
			_inst.index = i
		};
	};
};

PlayerMAXHP		= upg_HP[| purchaseList[| 0]];
FireRate		= upg_Rate[| purchaseList[| 1]];
PlayerSpecial	= upg_Spec[| purchaseList[| 2]];
IFrameDur		= upg_IFram[| purchaseList[| 3]];
PlayerHP = PlayerMAXHP;

if(keyboard_check_pressed(ord("S"))){
	room_goto(rDebug);	
}
if(keyboard_check_pressed(ord("M"))){
	PlayerMoney+=2500;	
}