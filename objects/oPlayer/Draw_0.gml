/// @description Insert description here
// You can write your code in this editor


for(i=0;i<5;i++){
	matrix[i] = matrix_build(xmov,ymov,zmov+4*i,0,0,270,1,1,1)
	matrix_set(matrix_world, matrix[i])
	vertex_submit(playerBuffer[i], pr_trianglelist, sprite_get_texture(sShip, i))
}
//ending statement reseting the matrix, this affects the global view matrix. Much like draw_set_color is global
matrix_set(matrix_world, matrix_build_identity())
