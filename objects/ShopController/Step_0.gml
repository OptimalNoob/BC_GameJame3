/// @desc

var btnx_pad = 120;
var btny_pad = 140;

if(button_count < 20){
	for(i = 0; i < 5; i++){
		for(j = 0; j < 4; j++){
			instance_create_layer(24 + (i * btnx_pad),
			180 + (j * btny_pad), "lyrEntities", btn_array[button_count]);
			button_count++;
		};
	};
};

