/// @desc

if(position_meeting(mouse_x,mouse_y,id)){
	image_index = 2;
	if(mouse_check_button_pressed(mb_left)){
		show_debug_message(string(id));
	};
} else {
	image_index = 0;
};