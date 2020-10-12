/// @desc
CubeBuffer = vertex_create_buffer();
xmov = 0;
ymov = 0;
zmov = 0;
cube_width	= BLOCK_SIZE * 4;
cube_height	= BLOCK_SIZE * 6;
cube_depth	= BLOCK_SIZE * 2;


x1 = 900;
y2 = scene.ground;
z1 = 50;
y1 = y2 - cube_height;
x2 = x1 + cube_width;
z2 = z1 + cube_depth;;

vertex_begin(CubeBuffer, Camera.format);
draw_3d_cube(CubeBuffer,
			x1 + xmov,
			y1 + ymov,
			z1 + zmov,
			x2 + xmov,
			y2 + ymov,
			z2 + zmov,
			255,255,255);
vertex_end(CubeBuffer);