/// @desc

zmov -= FloorSpeed
var matrix = matrix_build(xmov,ymov,zmov,0,0,0,1,1,1)
matrix_set(matrix_world, matrix)
vertex_submit(CubeBuffer, pr_trianglelist, sprite_get_texture(sBuildling_test,0))
matrix_set(matrix_world, matrix_build_identity())
