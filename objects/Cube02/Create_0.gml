/// @desc
//vertex_format_begin();
//vertex_format_add_position_3d();
//vertex_format_add_normal();
//vertex_format_add_texcoord();
//vertex_format_add_color();
//vertex_format = vertex_format_end();
CubeBuffer = vertex_create_buffer();


xmov = 0;
ymov = 0;
zmov = 0;
cube_width	= BLOCK_SIZE * 3;
cube_height	= BLOCK_SIZE * 3;
cube_depth	= BLOCK_SIZE * 3;


x1 = 600;
y2 = scene.ground;
y1 = y2 - cube_height;
z1 = 10;
x2 = x1 + cube_width;
z2 = z1 + cube_depth;;

vertex_begin(CubeBuffer, Camera.format);
draw_3d_cube(CubeBuffer,
			x1 + xmov,
			y1 + ymov,
			z1 + zmov,
			x2 + xmov,
			y2 + ymov,
			z2 + zmov);
vertex_end(CubeBuffer);