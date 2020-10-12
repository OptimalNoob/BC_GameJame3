/// @desc

for(i=0;i<5;i++){
	matrix[i] = matrix_build(xmov,ymov,zmov + i,0,0,270,1,1,1);
	matrix_set(matrix_world, matrix[i]);
	vertex_submit(playerBuffer[i], pr_trianglelist, sprite_get_texture(sShip, i));
}
matrix_set(matrix_world, matrix_build_identity());

if(DebugMode){
	draw_set_color(c_red);
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
};
draw_set_color(c_white);