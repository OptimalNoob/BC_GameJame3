/// @desc
if(position_meeting(mouse_x,mouse_y,id)){
	draw_text(640,32,"Price:" + string(purchasePrice[|upgrade] * (index + 1)))	
	draw_line(24,y+92, 584, y+92);
	switch(upgrade){
		case 0:
			linX = 900;
			linY = 330;
		break;
		case 1:
			linX = 816;
			linY = 380;
		break;
		case 2:
			linX = 920;
			linY = 380;
		break;
		case 3:
			linX = 1060;
			linY = 320;
		break;
		default: break;
	};
	draw_line(584,y+92, linX, linY);
};