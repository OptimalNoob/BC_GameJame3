/// @desc

if(position_meeting(mouse_x,mouse_y,id)){
	image_index = 2;
	if(mouse_check_button_pressed(mb_left)){
		show_debug_message(string(id));
		if(purchaseList[|upgrade] == index - 1){
			//This is where we check to see if you have enough money for upgrade
			if(purchasePrice[|upgrade] * (index + 1) <= PlayerMoney){
				purchaseList[|upgrade]++;
				PlayerMoney -= purchasePrice[|upgrade] * (index + 1)
			}
		}
	};
} else {
	image_index = 0;
};

if(purchaseList[|upgrade] >= index){
	image_index = 1;	
}