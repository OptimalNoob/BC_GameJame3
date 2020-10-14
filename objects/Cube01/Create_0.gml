/// @desc
CubeBuffer = vertex_create_buffer();

cube_width	= BLOCK_SIZE * 4;
cube_height	= BLOCK_SIZE * 6;
cube_depth	= BLOCK_SIZE * 2;

xmov = 0;
ymov = scene.ground - cube_height;
zmov = 5120;
tex = sBuildling_test;


alarm[0] = 2;
