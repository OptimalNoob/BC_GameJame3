/// @desc
playerBuffer[0] = vertex_create_buffer();
playerBuffer[1] = vertex_create_buffer();
playerBuffer[2] = vertex_create_buffer();
playerBuffer[3] = vertex_create_buffer();
playerBuffer[4] = vertex_create_buffer();
mask_index = sShip;
matrix = 0;
xmov = x;
ymov = y;
zmov = 0;
depth = 0;
show_debug_message(string("enemy: ")+ string(x) + ", " + string(y))
var sSize = 128;

for(i=0;i<5;i++){
	vertex_begin(playerBuffer[i], Camera.format);
	draw_3d_wall(playerBuffer[i], -sSize,-sSize,sSize,sSize, 0, c_white)
	vertex_end(playerBuffer[i]);
}