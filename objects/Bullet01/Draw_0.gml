/// @description Insert description here
// You can write your code in this editor



var matrix = matrix_build(xmov,ymov,zmov,0,0,0,1,1,1)
matrix_set(matrix_world, matrix)

vertex_submit(bulletBuffer, pr_trianglelist, -1)


//ending statement reseting the matrix, this affects the global view matrix. Much like draw_set_color is global
matrix_set(matrix_world, matrix_build_identity())
