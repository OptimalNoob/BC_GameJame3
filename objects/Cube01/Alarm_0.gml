/// @desc
x1 = 0;
y2 = 0;
z1 = 0;
y1 = cube_height;
x2 = cube_width;
z2 = cube_depth;
vertex_begin(CubeBuffer, Camera3D.format);
draw_3d_cube(CubeBuffer,
			x1,
			y1,
			z1,
			x2,
			y2,
			z2);
vertex_end(CubeBuffer);