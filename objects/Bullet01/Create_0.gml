/// @description Insert description here
// You can write your code in this editor
bulletBuffer = vertex_create_buffer();
xspawn = 0;

xmov = 0;
ymov = 0;
zmov = 0;
cube_width	= BLOCK_SIZE * 2;
cube_height	= BLOCK_SIZE * 1;
cube_depth	= BLOCK_SIZE * 4;

x1 = xspawn + 10;
y1 = y;
z1 = depth;
x2 = xspawn -10;
z2 = depth + 10;

vertex_begin(bulletBuffer, Camera.format);
/*draw_3d_cube(CubeBuffer,
			x1 + xmov,
			y1 + ymov,
			z1 + zmov,
			x2 + xmov,
			y2 + ymov,
			z2 + zmov);
*/
draw_3d_floor(bulletBuffer, x1, z1, x2, z2, y1)

vertex_end(bulletBuffer);
