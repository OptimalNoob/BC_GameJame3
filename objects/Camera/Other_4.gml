/// @desc
if(InLevel){
	var vm = matrix_build_lookat(camx,camy,camz,lookx,looky,lookz,0,1,0);
	var pm = matrix_build_projection_perspective_fov(60, window_get_width() / window_get_height(), 1, 32000)
	camera_set_view_mat(Cam, vm);
	camera_set_proj_mat(Cam, pm);
}else{
	var vm = matrix_build_lookat(camx,camy,camz,lookx,looky,lookz,0,1,0);
	var pm = matrix_build_projection_ortho(1280,720, 0, 5000);
	camera_set_view_mat(Cam, vm);
	camera_set_proj_mat(Cam, pm);
};