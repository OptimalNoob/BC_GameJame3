/// @desc
for(i=0;i<6;i++){
	enemyBuffer[i] = vertex_create_buffer();
};
mask_index = sEnemy01;
matrix = 0;
xmov = 300;
ymov = scene.ground - 500;
zmov = 5000;
depth = zmov;
xmov = x;
ymov = y;

zbound = 16;
ai_decision = irandom(1);

var sSize = 128;

for(i=0;i<6;i++){
	vertex_begin(enemyBuffer[i], Camera.format);
	draw_3d_wall(enemyBuffer[i], -sSize,-sSize,sSize,sSize, 0, c_white)
	vertex_end(enemyBuffer[i]);
}