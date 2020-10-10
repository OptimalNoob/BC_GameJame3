/// @description Insert description here
// You can write your code in this editor
CubeBuffer = vertex_create_buffer();


cube_width	= BLOCK_SIZE * 4;
cube_height	= BLOCK_SIZE * 6;
cube_depth	= BLOCK_SIZE * 2;

xmov = 0;
ymov = scene.ground - cube_height;
zmov = 5120;

x1 = 0;
y2 = 0;
z1 = 0;
y1 = cube_height;
x2 = cube_width;
z2 = cube_depth;;

vertex_begin(CubeBuffer, Camera.format);
draw_3d_cube(CubeBuffer,
			x1,
			y1,
			z1,
			x2,
			y2,
			z2);
vertex_end(CubeBuffer);