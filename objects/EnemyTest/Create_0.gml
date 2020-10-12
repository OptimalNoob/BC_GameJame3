/// @desc
for(i=0;i<6;i++){
	enemyBuffer[i] = vertex_create_buffer();
};
mask_index = Enemy01;
matrix = 0;
xmov = 300;
ymov = scene.ground - 500;
zmov = 1000;
depth = 500;
xmov = x;
ymov = y;

show_debug_message(string("enemy: ")+ string(x) + ", " + string(y));


var sSize = 128;

for(i=0;i<6;i++){
	vertex_begin(enemyBuffer[i], Camera.format);
	draw_3d_wall(enemyBuffer[i], -sSize,-sSize,sSize,sSize, 0, c_white)
	vertex_end(enemyBuffer[i]);
}