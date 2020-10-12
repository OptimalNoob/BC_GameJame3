var camera = camera_get_active();
var vm = matrix_build_lookat(camx,camy,camz,lookx,looky,lookz,0,1,0);
camera_set_view_mat(Cam,vm);

