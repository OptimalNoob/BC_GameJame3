function load_level(_roomID){
	switch (_roomID){
		case rDebug:
			instance_create_layer(room_width / 2,room_height / 2,"lyr3D",Floor);
			instance_create_layer(room_width / 2,room_height / 2,"lyr3D",Floor2);
			instance_create_layer(0,0,"lyr3D",Sky);
			instance_create_layer(0,0,"lyr3D",Cube03);
			instance_create_layer(room_width / 2,room_height / 2,"lyr3D",oPlayer);
		default: break;
	};
};