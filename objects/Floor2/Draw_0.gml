/// @desc
// You can write your code in this editor
zmov -= FloorSpeed;

if(zmov<-4096-256){
	zmov = 4096-16-256
}
var matrix = matrix_build(xmov,ymov,zmov,0,0,0,1,1,1)
matrix_set(matrix_world, matrix)

vertex_submit(FloorBuffer, pr_trianglelist, sprite_get_texture(sGround01,0))


//ending statement reseting the matrix, this affects the global view matrix. Much like draw_set_color is global
matrix_set(matrix_world, matrix_build_identity())
