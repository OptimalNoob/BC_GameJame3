/// @desc
FloorBuffer = vertex_create_buffer();
xmov = 0;
ymov = 0;
zmov = 4096;
cube_width	= BLOCK_SIZE * 2;
cube_height	= BLOCK_SIZE * 1;
cube_depth	= BLOCK_SIZE * 4;


x1 = -4096 * 1.5;
y1 = scene.ground;
z1 = 0;
x2 = -x1;
z2 = 4096;

vertex_begin(FloorBuffer, Camera.format);
draw_3d_floor(FloorBuffer, x1, z1, x2, z2, y1, c_white)

vertex_end(FloorBuffer);
