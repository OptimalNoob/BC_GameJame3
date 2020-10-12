///// @desc
init_globals();
window_set_cursor(cr_none);

//fps update timer
fpsOut = "";

Cam = camera_create();
view_camera[0] = Cam;
view_enabled[0] = true;
view_visible[0] = true;

gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);
gpu_set_alphatestenable(true);
gpu_set_alphatestref(0);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_normal();
vertex_format_add_texcoord();
vertex_format_add_color();

format = vertex_format_end();

camx = room_width / 2;
camy = room_height / 2;
camz = -350;
zoom = camz;

lookx = camx;
looky = camy;
lookz = 500;
done = false;

follow = oPlayer;

surface_resize(application_surface, 1280, 720);
window_set_size(1280, 720);
display_set_gui_size(1280, 720);

display_mouse_set(display_get_width() / 2, display_get_height() / 2);

alarm[0] = 10;
var vm = matrix_build_lookat(camx,camy,camz,lookx,looky,lookz,0,1,0);
var pm = matrix_build_projection_perspective_fov(60, window_get_width() / window_get_height(), 1, 32000)
camera_set_view_mat(Cam, vm);
camera_set_proj_mat(Cam, pm);

cam_w = camera_get_view_width(Cam);
cam_h = camera_get_view_height(Cam);

